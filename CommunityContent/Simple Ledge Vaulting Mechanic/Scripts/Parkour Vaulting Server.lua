local VAULT_ANIMATION = script:GetCustomProperty("VaultAnimation")

local vaultAnchors = {}
local movementChangedEvents = {}

-- Checks in front of the player to see if there's a ledge with a patch of flat-ish ground and enough room for the player to stand and spawns the vaulting animation if so.
function grabLedge(player, dt)
  -- Checks if the player exists and is holding a direction key. Even if they're not moving because there's a wall in front of them or something, that's what isAccelerating tells us. Don't ask me why.
  -- We want the player to be able to control if they vault a ledge or not and doing it this way, I think, feels viscerally good. Like the player is physically pushing their dude over the ledge.
  if Object.IsValid(player) and player.isAccelerating then
    local playerTransform = player:GetWorldTransform()
    local playerPos = playerTransform:GetPosition()
    local inFrontOfPlayer = playerPos + playerTransform:GetForwardVector() * 50
    local moveDirection = (player:GetVelocity() * Vector3.New(1,1,0))

    -- Make sure the player isn't moving backwards.
    if moveDirection.size == 0 or moveDirection:GetNormalized()..playerTransform:GetForwardVector() < 0 then return end

    -- Does a Spherecast from a point in the air above and in front of the character to a point a little below that in order to detect the top of a ledge.
    -- The area checked is increased based on the server tick rate to help compensate for possible lag.
    -- We use a Spherecast here because it will hit any walls or large collidable props or anything that might be in the way of a flat, standable area of ground on top of the ledge.
    local ledgeTopHit = World.Spherecast(inFrontOfPlayer + Vector3.UP * (225 + dt * 1000), inFrontOfPlayer + Vector3.UP * (75 - dt * 1000), 25, {ignorePlayers = true})

    if ledgeTopHit then
      -- The built-in GetImpactNormal() gets you a vector perpindicular to the slope of the surface hit, but we need to know if the Spherecast is actually hitting a patch of standable ground.
      -- Plus, GetImpactNormal() can be thrown off if there's so much as a pebble in the ledge surface. Still cool and useful, just not for our purposes.
      local surfacePos = ledgeTopHit:GetImpactPosition()

      -- Checks how close the hit is because the Spherecast is not only checking if there IS something there for you to stand on but also that there ISN'T anything else above it to get in your way.
      if (surfacePos.z - playerPos.z) > 100 + dt * 500 then return end

      local sphereNormal = ledgeTopHit:GetShapePosition() - surfacePos

      -- Checkes the dot product of our sphere normal against the global up. This will tell us if the top surface of our ledge is roughly flat within whatever tolerance we specify.
      -- Did you know you can get the dot product of two vectors in Core by using the ".." string concatination operator? I didn't even know what a dot product was before Core!
      if sphereNormal.size > 0 and sphereNormal:GetNormalized()..Vector3.UP > 0.75 then

        -- Boosts the player up by, theoretically, just enough to get them from their height to the top of the ledge. Since they are already holding a direction key, they should make their way onto it.
        -- A lot of the numbers in this script are just kinda vibes-based so definitely feel free to tweak any of and see if it feels better or worse.
        player:SetVelocity(Vector3.UP * (825 + (surfacePos.z - playerPos.z) * 1.1))
        -- I went ahead and made this script compatible with my mini gliders on the CC, as a treat uwu
        player.serverUserData["Gliding"] = false
        -- Spawns a set of IKAnchors on the ledge, facing the ledge. The IKAnchors themselves are in a client context inside the trigger and handle attaching themselves to the player.
        -- The reason we store it is so we can tell if the player is already valuting. There are loads of other ways to tell if we're valuting, but we're spawning something here anyway so it works.
        vaultAnchors[player] = World.SpawnAsset(VAULT_ANIMATION, {position = surfacePos, rotation = Rotation.New(playerTransform:GetForwardVector(), Vector3.UP), lifeSpan = 1})
      end
    end
  end
end

-- Continually checks for a ledge in front of the player as long as they are still in the air and not already vaulting
function ledgeCheckLoop(player)
  -- Waits one server tick because this function is recursive, menaing it calls itself inside itself.
  -- So if we didn't pause every time, it would just try to call itself an infinite number of times all at once and crash.
  local dt = Task.Wait()

  -- Checks if the player is jumping/falling and if they are NOT already vaulting. If not, the recursive loop just safely ends.
  -- If the recursive function call wasn't at least inside an if statement, it would continue to loop forever and things would get out of hand quickly.
  if Object.IsValid(player) and player.isJumping and not Object.IsValid(vaultAnchors[player]) then
    -- Attempts to find a ledge to grab. Passes in the delta time of one server tick which the grabLedge function uses to account for possible lag.
    grabLedge(player, dt)
    -- Runs the loop again. The next loop already checks to see if grabLedge succeeded before really doing anything so there's no need to also check it here.
    ledgeCheckLoop(player)
  end
end

-- Sets an event listener to detect when a player starts falling or jumping and only runs the ledge grabbing hit test as long as they are
function onPlayerJoined(player)
  -- Stores the event listener in a table so that I can refer to it later to disconnect it
  -- handler params: Player_player, MovementMode_newMovementMode, MovementMode_previousMovementMode
  movementChangedEvents[player] = player.movementModeChangedEvent:Connect(function(thisPlayer, newMode)
    -- Checks if the player exists, isn't mounted, and is falling.
    if Object.IsValid(thisPlayer) and not thisPlayer.isMounted and newMode == MovementMode.FALLING then
      vaultAnchors[player] = nil
      ledgeCheckLoop(thisPlayer)
    end
  end)
end

-- It's always good to clean up ALL your event listeners when you're done using them.
function onPlayerLeft(player)
  -- In Lua, you can set the key for any value in a table to pretty much anything. In this case, the player themself is used as the key.
  if movementChangedEvents[player] then
    movementChangedEvents[player]:Disconnect()
    movementChangedEvents[player] = nil
  end

  if Object.IsValid(vaultAnchors[player]) then
    vaultAnchors[player]:Destroy()
    vaultAnchors[player] = nil
  end
end

-- handler params: Player_player
Game.playerJoinedEvent:Connect(onPlayerJoined)

-- handler params: Player_player
Game.playerLeftEvent:Connect(onPlayerLeft)
