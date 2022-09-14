Assets {
  Id: 1507937725868421121
  Name: "Custom Player Animation Client"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:Keyframes"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:AnimationDuration"
        Float: 2
      }
      Overrides {
        Name: "cs:AttachToSocket"
        String: ""
      }
      Overrides {
        Name: "cs:PlayEvent"
        String: ""
      }
      Overrides {
        Name: "cs:StopEvent"
        String: ""
      }
      Overrides {
        Name: "cs:Loop"
        Bool: false
      }
      Overrides {
        Name: "cs:InitialStartDelay"
        Float: 0
      }
      Overrides {
        Name: "cs:AutoPlayOnNearestPlayer"
        Bool: false
      }
      Overrides {
        Name: "cs:ActionBinding"
        String: ""
      }
      Overrides {
        Name: "cs:Ability"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:UseAbilityPhaseTiming"
        Bool: false
      }
      Overrides {
        Name: "cs:PlayTrigger"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:StopTrigger"
        ObjectReference {
        }
      }
      Overrides {
        Name: "cs:Mirror"
        Bool: false
      }
      Overrides {
        Name: "cs:RandomlyMirror"
        Bool: false
      }
      Overrides {
        Name: "cs:CacheKey"
        String: ""
      }
      Overrides {
        Name: "cs:NetworkAnimation"
        Bool: false
      }
      Overrides {
        Name: "cs:AnimationDuration:tooltip"
        String: "The total duration of the animation. The blend time between keyframes will be equal to AnimationDuration divided by number of children in the supplied Keyframes folder."
      }
      Overrides {
        Name: "cs:Loop:tooltip"
        String: "If enabled, the animation will repeat forever. Useful for making a custom animation stance, for example. WARNING: If a looping animation is already playing when a player joins your game, that payer will not be able to see that animation unless NetworkAnimation is enabled, and information about playing animations is handled from server scripts. See the included Drum Kit example, and the readme, for more information about how to do this."
      }
      Overrides {
        Name: "cs:Keyframes:tooltip"
        String: "A folder of subfolders, each used as a keyframe in your animation containing IK Anchor corresponding to the pose the player should take in that keyframe. Playing the animation will attach the first instance of each type of IK Anchor in the provided keyframes to a specified player and smoothly blend their positions, rotations, aim offsets, and anchor weights between those of corresponding IK Anchors in any following frames in order."
      }
      Overrides {
        Name: "cs:Keyframes:category"
        String: "Required"
      }
      Overrides {
        Name: "cs:AnimationDuration:category"
        String: "Required"
      }
      Overrides {
        Name: "cs:Loop:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:ActionBinding:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:Ability:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:ActionBinding:tooltip"
        String: "The name of the action from your game\'s binding set that activates this animation. WARNING: In multiplayer games, players other than the one pressing the ability binding will only be able to see animations triggered this way if Networking is enabled for that binding in your game\'s Bindings Manager."
      }
      Overrides {
        Name: "cs:UseAbilityPhaseTiming:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:Ability:tooltip"
        String: "If an ability is provided, this animation will play automatically on the cast event of that ability."
      }
      Overrides {
        Name: "cs:UseAbilityPhaseTiming:tooltip"
        String: "If an ability was provided and this is enabled, the animation will use the ability\'s phase settings for timing. The first keyframe will activate on the cast event, the second on the execute event, third on the recovery event, fourth on the cooldown event, and fifth on the ready event. All keyframes are optional and can be left empty to be skipped. Any keyframes beyond 5 will be ignored if this is checked."
      }
      Overrides {
        Name: "cs:AutoPlayOnNearestPlayer:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:AutoPlayOnNearestPlayer:tooltip"
        String: "If enabled, the animation will play on the nearest player to the script when it is spawned (or when a new player joins if it\'s already spawned in the heirarchy.) This is useful for allowing you to play an animation on a player by spawning a template containing this script and some keyframes at a player\'s location."
      }
      Overrides {
        Name: "cs:PlayTrigger:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:PlayTrigger:tooltip"
        String: "If a trigger is provided, this animation will play on any player that activates that trigger. Works with both overlap triggers and interactable triggers. Only one player can have an existing animation played on them at a time. To play the animation on multiple people at once, spawn it at their location with AutoPlayOnNearestPlayer enabled."
      }
      Overrides {
        Name: "cs:InitialStartDelay:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:InitialStartDelay:tooltip"
        String: "The amount of time (in seconds) to wait before playing the animation."
      }
      Overrides {
        Name: "cs:StopEvent:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:StopEvent:tooltip"
        String: "If a string event name is provided, the animation will stop when that event is broadcast in client context. You can optionally pass a player into the first argument of the event to stop the animation for that player only. Otherwise, all instances of the animation with the same StopEvent string will be stopped."
      }
      Overrides {
        Name: "cs:Mirror:tooltip"
        String: "If enabled, this will mirror the animation along the Y axis and swap left/right hand/foot anchors. Useful for reusing the same keyframes for left/right hand attack animations, for example. WARNING: In order to correctly mirror a right anchor onto a left one, or the other way around, there must be one of each in AT LEAST the first keyframe in which either appears in the animation."
      }
      Overrides {
        Name: "cs:Mirror:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:RandomlyMirror:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:RandomlyMirror:tooltip"
        String: "If enabled, this will cause the animation to randomly mirror along the Y axis. Useful for adding variety to repetetively used animations. WARNING: In order to correctly mirror a right anchor onto a left one, or the other way around, there must be one of each in the keyframe."
      }
      Overrides {
        Name: "cs:AttachToSocket:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:CacheKey:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:CacheKey:subcategory"
        String: "Advanced"
      }
      Overrides {
        Name: "cs:CacheKey:tooltip"
        String: "If a string is provided, all the curves and frame timing for your animation will be cached upon being played for the first time in a table using the provided string as their key so they don\'t have to recalculate every time you replay the same animation."
      }
      Overrides {
        Name: "cs:Mirror:subcategory"
        String: "Advanced"
      }
      Overrides {
        Name: "cs:RandomlyMirror:subcategory"
        String: "Advanced"
      }
      Overrides {
        Name: "cs:StopTrigger:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:StopTrigger:tooltip"
        String: "If a trigger is provided, this animation will stop when any player activates that trigger. Works with both overlap triggers and interactable triggers. If the same trigger is provided to StopTrigger and PlayTrigger, the animation will stop either when the player leaves the trigger or, if it\'s interactible, when they interact with it again."
      }
      Overrides {
        Name: "cs:PlayEvent:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:PlayEvent:tooltip"
        String: "If a string event name is provided, the animation will play when that event is broadcast in client context. The first argument of the event must be the player you wish to play the animation on. You can also pass in an optional second argument that\'s an integer of which keyframe the animation should start on."
      }
      Overrides {
        Name: "cs:NetworkAnimation:category"
        String: "Optional"
      }
      Overrides {
        Name: "cs:NetworkAnimation:subcategory"
        String: "Advanced"
      }
      Overrides {
        Name: "cs:NetworkAnimation:tooltip"
        String: "If enabled, the animation will broadcast networked events to the server when it is loaded, played, and stopped. These events are \"NetworkedCustomAnimationLoaded\", \"NetworkedCustomAnimationPlayed\", and \"NetworkedCustomAnimationStopped\" and each include  parameters for either the player who loaded the animation or the player being animated,  and the PlayEvent string for the animation, if any, and the CacheKey name for the animation,  if any. See the readme for more info. WARNING: This can be A LOT of networked broadcasts."
      }
      Overrides {
        Name: "cs:AttachToSocket:tooltip"
        String: "The name of the socket on a player to attach the animation to when animating a player. For abilities that have a facing mode set to \"Aim\", it\'s recommended to use the \"head\" socket as that is automatically rotated towards their aim direction rather than their movement direction."
      }
    }
  }
  Marketplace {
    Description: "It\'s varglbarlg\'s Custom Player Animation Tool!\r\n\r\nThis is a tool that lets you create and play your own animations for abilites, emotes, cinematics, or whatever! Give it a group of poses made from IK Anchors and it automatically turns them into a smooth animation with loads of customizable options!\r\n\r\nIncluded are a readme with detailed instructions and three (3) example animations to help you learn and get started:\r\n - Dual Weilding Crossbows\r\n - Vaulting over Ledges\r\n - Playing a drum set (that you can rearrange to play your own drum loop)\r\n\r\nAs always, I\'m varglbargl on the Core Creator Discord so let me know if you find any bugs or run into any problems~!\r\n\r\nUPDATES:\r\nv1.2.0 - 1.3.0\r\n - Added a PlayEvent optional property to to play animations with Event broadcasts. Useful for arranging multiple animations into one big cinematic!\r\n - Added a NetworkAnimation optional advanced property to toggle on broadcasting animation events to the server (careful with this one!)\r\n - The RandomlyMirror property now randomly mirrors every time an animation plays, not just every time it is spawned\r\n - Reduced the optional cache table size by half\r\n - Animations now destroy (almost) all IK Anchor objects after an animation is loaded, except for the (at most 5) IK Anchors used to animate the player\r\n - Fixed bug with the little included animation stance script used by the Drum Kit animation example\r\n - Fixed missing or outdated information in the custom property tooltips\r\n\r\nv1.1.0\r\n - Fixed bug when you shoot the drums with the crossbows lol"
  }
  SerializationVersion: 116
}
