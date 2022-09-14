-- VARGLBARGL'S CUSTOM PLAYER ANIMATION CLIENT

local KEYFRAMES = script:GetCustomProperty("Keyframes"):WaitForObject()
local ANIMATION_DURATION = script:GetCustomProperty("AnimationDuration")

local ATTACH_TO_SOCKET = script:GetCustomProperty("AttachToSocket")
local PLAY_EVENT = script:GetCustomProperty("PlayEvent")
local STOP_EVENT = script:GetCustomProperty("StopEvent")
local LOOP = script:GetCustomProperty("Loop")
local INITIAL_START_DELAY = script:GetCustomProperty("InitialStartDelay")
local AUTO_PLAY_ON_NEAREST_PLAYER = script:GetCustomProperty("AutoPlayOnNearestPlayer")
local ACTION_BINDING = script:GetCustomProperty("ActionBinding")
local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local USE_ABILITY_PHASE_TIMING = script:GetCustomProperty("UseAbilityPhaseTiming")
local PLAY_TRIGGER = script:GetCustomProperty("PlayTrigger"):WaitForObject()
local STOP_TRIGGER = script:GetCustomProperty("StopTrigger"):WaitForObject()
local MIRROR = script:GetCustomProperty("Mirror")
local RANDOMLY_MIRROR = script:GetCustomProperty("RandomlyMirror")
local CACHE_KEY = script:GetCustomProperty("CacheKey")
local NETWORK_ANIMATION = script:GetCustomProperty("NetworkAnimation")

local keyframes = KEYFRAMES:GetChildren()
local frameTiming = {}
local anchors = {}
local tweenCurves = {}

local playerBeingAnimated = nil
local currentFrame = nil
local shouldStop = false

function initFrameTiming()
  -- all we need to do to make sure to make sure everything in the loop ends exactly where it began
  if LOOP then
    table.insert(keyframes, keyframes[1])
  end

  if ABILITY and USE_ABILITY_PHASE_TIMING then
    frameTiming = {
      0,
      ABILITY.castPhaseSettings.duration,
      ABILITY.castPhaseSettings.duration + ABILITY.executePhaseSettings.duration,
      ABILITY.castPhaseSettings.duration + ABILITY.executePhaseSettings.duration + ABILITY.recoveryPhaseSettings.duration,
      ABILITY.castPhaseSettings.duration + ABILITY.executePhaseSettings.duration + ABILITY.recoveryPhaseSettings.duration + ABILITY.cooldownPhaseSettings.duration
    }
  else
    if USE_ABILITY_PHASE_TIMING and not Object.IsValid(ABILITY) then
      warn(script.name.." attempted to play an animation with UseAbilityPhaseTiming enabled but no Ability provided. Default timing based on AnimationDuration will be used instead.")
    end

    for i = 1, #keyframes do
      frameTiming[i] = ANIMATION_DURATION / #keyframes * (i - 1)
    end
  end
end

-- This function converts the positions, rotations, aim offsets, and weights of all the IK Anchors in your keyframes into
function initTweenCurves()
  -- We use SimpleCurves to smooth out the animation and SimpleCurves can only use numbers as values.
  -- So for Rotations and Vector3s, we gotta split them into 3 curves for the x, y, and z.
  local frameData = {
    [IKAnchorType.LEFT_HAND] = {posX = {}, posY = {}, posZ = {}, rotX = {}, rotY = {}, rotZ = {}, offX = {}, offY = {}, offZ = {}, wt = {}},
    [IKAnchorType.RIGHT_HAND] = {posX = {}, posY = {}, posZ = {}, rotX = {}, rotY = {}, rotZ = {}, offX = {}, offY = {}, offZ = {}, wt = {}},
    [IKAnchorType.LEFT_FOOT] = {posX = {}, posY = {}, posZ = {}, rotX = {}, rotY = {}, rotZ = {}, offX = {}, offY = {}, offZ = {}, wt = {}},
    [IKAnchorType.RIGHT_FOOT] = {posX = {}, posY = {}, posZ = {}, rotX = {}, rotY = {}, rotZ = {}, offX = {}, offY = {}, offZ = {}, wt = {}},
    [IKAnchorType.PELVIS] = {posX = {}, posY = {}, posZ = {}, rotX = {}, rotY = {}, rotZ = {}, wt = {}}
  }

  local rotationOffsets = {
    [IKAnchorType.LEFT_HAND] = {offset = Vector3.New(), previous = Vector3.New()},
    [IKAnchorType.RIGHT_HAND] = {offset = Vector3.New(), previous = Vector3.New()},
    [IKAnchorType.LEFT_FOOT] = {offset = Vector3.New(), previous = Vector3.New()},
    [IKAnchorType.RIGHT_FOOT] = {offset = Vector3.New(), previous = Vector3.New()},
    [IKAnchorType.PELVIS] = {offset = Vector3.New(), previous = Vector3.New()}
  }

  -- We don't want anchors to rotate from 179 degrees to -179 degrees the long way around...
  -- so we keep track of every time something crosses that boundary line and +/- 360 degrees depending on the direction.
  -- Yes I tried just using quaternions instead. It didn't help. But I feel like there's a better way to do this...
  local function chaseInvisibleBoundaryLines(anchorType, thisRotation)
    local rotationOffset = rotationOffsets[anchorType].offset
    local previousRotation = rotationOffsets[anchorType].previous
    local thisRotationAsVector = Vector3.New(thisRotation.x, thisRotation.y, thisRotation.z)

    if thisRotationAsVector.x > 90 and previousRotation.x < -90 then
      rotationOffset.x = rotationOffset.x - 360
    elseif thisRotationAsVector.x < -90 and previousRotation.x > 90 then
      rotationOffset.x = rotationOffset.x + 360
    end

    if thisRotationAsVector.y > 90 and previousRotation.y < -90 then
      rotationOffset.y = rotationOffset.y - 360
    elseif thisRotationAsVector.y < -90 and previousRotation.y > 90 then
      rotationOffset.y = rotationOffset.y + 360
    end

    if thisRotationAsVector.z > 90 and previousRotation.z < -90 then
      rotationOffset.z = rotationOffset.z - 360
    elseif thisRotationAsVector.z < -90 and previousRotation.z > 90 then
      rotationOffset.z = rotationOffset.z + 360
    end

    rotationOffsets[anchorType].previous = thisRotationAsVector
    return rotationOffset + rotationOffsets[anchorType].previous
  end

  -- SimpleCurve.New takes a table of CurveKeys so here we need to make those tables.
  for fNum, keyframe in ipairs(keyframes) do
    for _, child in ipairs(keyframe:GetChildren()) do
      if child:IsA("IKAnchor") then

        local thisOffset = chaseInvisibleBoundaryLines(child.anchorType, child:GetRotation())

        table.insert(frameData[child.anchorType].posX, CurveKey.New(frameTiming[fNum], child:GetPosition().x + keyframe:GetPosition().x, {interpolation = CurveInterpolation.CUBIC}))
        table.insert(frameData[child.anchorType].posY, CurveKey.New(frameTiming[fNum], child:GetPosition().y + keyframe:GetPosition().y, {interpolation = CurveInterpolation.CUBIC}))
        table.insert(frameData[child.anchorType].posZ, CurveKey.New(frameTiming[fNum], child:GetPosition().z + keyframe:GetPosition().z, {interpolation = CurveInterpolation.CUBIC}))
        table.insert(frameData[child.anchorType].rotX, CurveKey.New(frameTiming[fNum], thisOffset.x, {interpolation = CurveInterpolation.CUBIC}))
        table.insert(frameData[child.anchorType].rotY, CurveKey.New(frameTiming[fNum], thisOffset.y, {interpolation = CurveInterpolation.CUBIC}))
        table.insert(frameData[child.anchorType].rotZ, CurveKey.New(frameTiming[fNum], thisOffset.z, {interpolation = CurveInterpolation.CUBIC}))

        if child.anchorType ~= IKAnchorType.PELVIS then
          table.insert(frameData[child.anchorType].offX, CurveKey.New(frameTiming[fNum], child:GetAimOffset().x, {interpolation = CurveInterpolation.CUBIC}))
          table.insert(frameData[child.anchorType].offY, CurveKey.New(frameTiming[fNum], child:GetAimOffset().y, {interpolation = CurveInterpolation.CUBIC}))
          table.insert(frameData[child.anchorType].offZ, CurveKey.New(frameTiming[fNum], child:GetAimOffset().z, {interpolation = CurveInterpolation.CUBIC}))
        end

        table.insert(frameData[child.anchorType].wt, CurveKey.New(frameTiming[fNum], child.weight, {interpolation = CurveInterpolation.CUBIC}))

        -- We automatically destroy the IK Anchor once we have its keyframe data unless it's the one we're going to activate and animate.
        -- I've been told having too many IK Anchors in a scene can be a little laggy and we don't need them anymore.
        if Object.IsValid(anchors[child.anchorType]) and anchors[child.anchorType] ~= child then
          child:Destroy()
        else
          anchors[child.anchorType] = child
        end
      end
    end
  end

  for anchorType, data in pairs(frameData) do
    if not tweenCurves[anchorType] then
      tweenCurves[anchorType] = {}
    end

    for axis, curveKeys in pairs(data) do
      tweenCurves[anchorType][axis] = SimpleCurve.New(curveKeys, {preExtrapolation = CurveExtrapolation.CONSTANT, postExtrapolation = CurveExtrapolation.CONSTANT})
    end
  end
end

-- This function handles connecting and disconnecting all the events for the animation
function initEvents()
  local playEvent = nil
  local stopEvent = nil
  local inputEvent = nil
  local castEvent = nil
  local playTriggerEvent = nil
  local stopTriggerEvent = nil
  local playerJoinedEvent = nil
  local destroyEvent = nil

  if PLAY_EVENT and PLAY_EVENT ~= "" then
    playEvent = Events.Connect(PLAY_EVENT, function(player, startFrame)
      play(player, startFrame)
    end)
  end

  if STOP_EVENT and STOP_EVENT ~= "" then
    stopEvent = Events.Connect(STOP_EVENT, stop)
  end

  if ACTION_BINDING then
    -- handler params: Player_player, string_action, value_value
    inputEvent = Input.actionPressedEvent:Connect(function(player, actionName)
      if actionName ~= ACTION_BINDING then return end

      play(player)
    end)
  end

  if ABILITY then
    -- handler params: Ability_ability
    castEvent = ABILITY.castEvent:Connect(function(thisAbility)
      play(thisAbility.owner)
    end)
  end

  if PLAY_TRIGGER or STOP_TRIGGER then
    local function onTriggerActivated(thisTrigger, other)
      if not Object.IsValid(playerBeingAnimated) and Object.IsValid(other) and other:IsA("Player") then
        Task.Wait()
        play(other)
      end
    end

    local function onTriggerDeactivated(thisTrigger, other)
      if Object.IsValid(playerBeingAnimated) then
        stop(other)
      end
    end

    if PLAY_TRIGGER then
      if PLAY_TRIGGER.isInteractable then
        -- handler params: Trigger_trigger, Player_player
        playTriggerEvent = PLAY_TRIGGER.interactedEvent:Connect(onTriggerActivated)
      else
        -- handler params: Trigger_trigger, Player_player
        playTriggerEvent = PLAY_TRIGGER.beginOverlapEvent:Connect(onTriggerActivated)
      end
    end

    if STOP_TRIGGER then
      if STOP_TRIGGER.isInteractable then
        -- handler params: Trigger_trigger, Player_player
        stopTriggerEvent = STOP_TRIGGER.interactedEvent:Connect(onTriggerDeactivated)
      else
        if STOP_TRIGGER == PLAY_TRIGGER then
          -- handler params: Trigger_trigger, Player_player
          stopTriggerEvent = STOP_TRIGGER.endOverlapEvent:Connect(onTriggerDeactivated)
        else
          -- handler params: Trigger_trigger, Player_player
          stopTriggerEvent = STOP_TRIGGER.beginOverlapEvent:Connect(onTriggerDeactivated)
        end
      end
    end
  end

  if NETWORK_ANIMATION then
    if Environment.IsClient() then
      Events.BroadcastToServer("NetworkedCustomAnimationLoaded", Game.GetLocalPlayer(), PLAY_EVENT, CACHE_KEY)
    else
      Events.BroadcastToServer("NetworkedCustomAnimationLoaded", nil, PLAY_EVENT, CACHE_KEY)
    end
  end

  -- always remember to clean up your event listeners when you're done
  -- no matter how much of a mess the rest of the code is
  local function onDestroyed()
    shouldStop = true

    if playEvent then playEvent:Disconnect() end
    if stopEvent then stopEvent:Disconnect() end
    if inputEvent then inputEvent:Disconnect() end
    if castEvent then castEvent:Disconnect() end
    if playTriggerEvent then playTriggerEvent:Disconnect() end
    if stopTriggerEvent then stopTriggerEvent:Disconnect() end
    if playerJoinedEvent then playerJoinedEvent:Disconnect() end
    if destroyEvent then destroyEvent:Disconnect() end
  end

  -- handler params: CoreObject_coreObject
  destroyEvent = script.destroyEvent:Connect(onDestroyed)
end

function initAnchors()
  for _, keyframe in ipairs(keyframes) do
    for _, child in ipairs(keyframe:GetChildren()) do
      if child:IsA("IKAnchor") then
        if Object.IsValid(anchors[child.anchorType]) and anchors[child.anchorType] ~= child then
          child:Destroy()
        else
          anchors[child.anchorType] = child
        end
      end
    end
  end
end

-- This function plays the actual animation
function play(player, startFrame)
  if Object.IsValid(playerBeingAnimated) or not Object.IsValid(player) or not player:IsA("Player") then return end

  local startTime = time()
  local mirrored = false

  -- We start on frame 0 even though there isn't a frame 0 just because we only check for audio and vfx to play when advancing to a new frame.
  -- So if there's any audio or vfx in keyframe 1, this will catch them and then proceed as normal.
  currentFrame = startFrame or 0
  playerBeingAnimated = player
  shouldStop = false

  if ATTACH_TO_SOCKET and ATTACH_TO_SOCKET ~= "" then
    KEYFRAMES:AttachToPlayer(player, ATTACH_TO_SOCKET)
  end

  if MIRROR or RANDOMLY_MIRROR and math.random() < 0.5 then
    -- In order to mirror which hands and feet get animated, all we gotta do is swap the curves we made for the left/right hands/feet.
    -- Lua makes swapping values in place super simple.
    tweenCurves[IKAnchorType.LEFT_HAND], tweenCurves[IKAnchorType.RIGHT_HAND] = tweenCurves[IKAnchorType.RIGHT_HAND], tweenCurves[IKAnchorType.LEFT_HAND]
    tweenCurves[IKAnchorType.LEFT_FOOT], tweenCurves[IKAnchorType.RIGHT_FOOT] = tweenCurves[IKAnchorType.RIGHT_FOOT], tweenCurves[IKAnchorType.LEFT_FOOT]
    KEYFRAMES:SetScale(Vector3.New(1, -1, 1))
    mirrored = true
  end

  -- It's INITIAL start delay, so we don't wait between every loop or anything, just one time right here before playing.
  if INITIAL_START_DELAY > 0 then
    Task.Wait(INITIAL_START_DELAY)
  end

  -- I'm a big fan of making locally scoped recursive functions because they let you make variables outside
  -- that every loop has access to without polluting the root scope with variables nothing else cares about.
  local function tickTween()
    local dt = Task.Wait()
    if not Object.IsValid(player) then return end

    local now = time()

    for anchorType, curve in pairs(tweenCurves) do
      if keyframes[currentFrame] and Object.IsValid(anchors[anchorType]) and not Object.IsValid(anchors[anchorType].target) then
        anchors[anchorType]:Activate(player)
      end

      -- We use MoveTo and RotateTo instead of just setting position and rotation to help smooth out missed keyframes due to any possible lag.
      -- Also because THEORETICALLY this script could work in default context with a bunch of Networked IK Anchors.
      -- I, varglbargl, would humbly urge against it... but you could and this would help smooth things out there. If you must.
      if anchors[anchorType] then
        anchors[anchorType]:MoveTo(Vector3.New(
          curve.posX:GetValue(now - startTime),
          curve.posY:GetValue(now - startTime),
          curve.posZ:GetValue(now - startTime)
        ), dt, true)

        anchors[anchorType]:RotateTo(Rotation.New(
          curve.rotX:GetValue(now - startTime),
          curve.rotY:GetValue(now - startTime),
          curve.rotZ:GetValue(now - startTime)
        ), dt, true)

        if anchorType ~= IKAnchorType.PELVIS then
          anchors[anchorType]:SetAimOffset(Vector3.New(
            curve.offX:GetValue(now - startTime),
            curve.offY:GetValue(now - startTime),
            curve.offZ:GetValue(now - startTime)
          ))
        end

        anchors[anchorType].weight = curve.wt:GetValue(now - startTime)
      end
    end

    if keyframes[currentFrame + 1] and not shouldStop then
      if frameTiming[currentFrame + 1] + startTime < now then
        currentFrame = currentFrame + 1

        for _, sfx in ipairs(keyframes[currentFrame]:FindDescendantsByType("SmartAudio")) do
          sfx:Play()
        end

        for _, sfx in ipairs(keyframes[currentFrame]:FindDescendantsByType("Audio")) do
          sfx:Play()
        end

        for _, vfx in ipairs(keyframes[currentFrame]:FindDescendantsByType("Vfx")) do
          vfx:Play()
        end
      end
    else
      if LOOP and not shouldStop then
        currentFrame = 1
        startTime = time()
      else
        for _, anchor in pairs(anchors) do
          if frameTiming[currentFrame] and frameTiming[currentFrame - 1] then
            anchor.blendOutTime = frameTiming[currentFrame] - frameTiming[currentFrame - 1]
          elseif frameTiming[currentFrame] and frameTiming[currentFrame + 1] then
            anchor.blendOutTime = frameTiming[currentFrame + 1] - frameTiming[currentFrame]
          else
            anchor.blendOutTime = ANIMATION_DURATION / 2
          end

          anchor:Deactivate()
        end

        return
      end
    end

    tickTween()
  end

  if Environment.IsClient() and playerBeingAnimated == Game.GetLocalPlayer() then
    Events.BroadcastToServer("NetworkedCustomAnimationPlayed", playerBeingAnimated, PLAY_EVENT, CACHE_KEY)
  else
    Events.Broadcast("NetworkedCustomAnimationPlayed", playerBeingAnimated, PLAY_EVENT, CACHE_KEY)
  end

  tickTween()

  if Environment.IsClient() and playerBeingAnimated == Game.GetLocalPlayer() then
    Events.BroadcastToServer("NetworkedCustomAnimationStopped", playerBeingAnimated, PLAY_EVENT, CACHE_KEY)
  else
    Events.Broadcast("NetworkedCustomAnimationStopped", playerBeingAnimated, PLAY_EVENT, CACHE_KEY)
  end

  currentFrame = nil
  playerBeingAnimated = nil

  if mirrored then
    -- Lua is a "pass by reference" language which means if we got the tweenCurve table from the cache, we didn't just mirror OUR tweenCurves, we mirrored THE tweenCurves.
    -- It literally IS that table, our tweenCurves variable just "references" it. That's why, if we're caching, then we need to swap the values back when we're done mirroring them.
    if CACHE_KEY then
      tweenCurves[IKAnchorType.LEFT_HAND], tweenCurves[IKAnchorType.RIGHT_HAND] = tweenCurves[IKAnchorType.RIGHT_HAND], tweenCurves[IKAnchorType.LEFT_HAND]
      tweenCurves[IKAnchorType.LEFT_FOOT], tweenCurves[IKAnchorType.RIGHT_FOOT] = tweenCurves[IKAnchorType.RIGHT_FOOT], tweenCurves[IKAnchorType.LEFT_FOOT]
    end

    -- And also flip the KEYFRAMES back to normal, of course
    KEYFRAMES:SetScale(Vector3.New(1, 1, 1))
  end

  if ATTACH_TO_SOCKET and ATTACH_TO_SOCKET ~= "" and not ABILITY or (ABILITY and ABILITY.owner ~= player) then
    KEYFRAMES:Detach()
  end
end

function stop(player)
  if Object.IsValid(player) and playerBeingAnimated ~= player then return end

  shouldStop = true -- lol that's it, that's all you gotta do
end

-- Caching! Always a good idea for something this complicated and reusable. Well... ususally a good idea.
if CACHE_KEY and CACHE_KEY ~= "" then
  _G.varglbargl_CustomPlayerAnimationCache = _G.varglbargl_CustomPlayerAnimationCache or {}

  if _G.varglbargl_CustomPlayerAnimationCache[CACHE_KEY] then
    frameTiming = _G.varglbargl_CustomPlayerAnimationCache[CACHE_KEY].frameTiming
    tweenCurves = _G.varglbargl_CustomPlayerAnimationCache[CACHE_KEY].tweenCurves
    initAnchors()
  else
    initFrameTiming()
    initTweenCurves()
    _G.varglbargl_CustomPlayerAnimationCache[CACHE_KEY] = {}
    _G.varglbargl_CustomPlayerAnimationCache[CACHE_KEY].frameTiming = frameTiming
    _G.varglbargl_CustomPlayerAnimationCache[CACHE_KEY].tweenCurves = tweenCurves
  end
else
  initFrameTiming()
  initTweenCurves()
end

initEvents()

if AUTO_PLAY_ON_NEAREST_PLAYER then
  play(Game.FindNearestPlayer(script:GetWorldPosition()))
end
