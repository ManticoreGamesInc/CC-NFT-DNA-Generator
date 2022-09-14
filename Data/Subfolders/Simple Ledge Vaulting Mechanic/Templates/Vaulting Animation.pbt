Assets {
  Id: 1412128824237516675
  Name: "Vaulting Animation"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17806717116398589810
      Objects {
        Id: 17806717116398589810
        Name: "Vaulting Animation"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10339262247103743143
        ChildIds: 7790741895855837336
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          MinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10339262247103743143
        Name: "Custom Player Animation Client"
        Transform {
          Location {
            X: -10
            Z: -50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17806717116398589810
        UnregisteredParameters {
          Overrides {
            Name: "cs:Keyframes"
            ObjectReference {
              SubObjectId: 7790741895855837336
            }
          }
          Overrides {
            Name: "cs:AnimationDuration"
            Float: 0.75
          }
          Overrides {
            Name: "cs:AutoPlayOnNearestPlayer"
            Bool: true
          }
          Overrides {
            Name: "cs:Mirror"
            Bool: false
          }
          Overrides {
            Name: "cs:RandomlyMirror"
            Bool: true
          }
          Overrides {
            Name: "cs:CacheKey"
            String: "Ledge Vaulting"
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 14694649360263720278
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 7790741895855837336
        Name: "Keyframes"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17806717116398589810
        ChildIds: 8663334787608744588
        ChildIds: 3079467259825823791
        ChildIds: 1442937013631654357
        ChildIds: 11870663798206152008
        ChildIds: 2883105534600664588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 8663334787608744588
        Name: "Frame 1"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7790741895855837336
        ChildIds: 14363746766099177123
        ChildIds: 1620880322088220180
        ChildIds: 1986037429246000600
        ChildIds: 9316327572509874373
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14363746766099177123
        Name: "Leather Tap Grab Catch 01 SFX"
        Transform {
          Location {
            X: 10
            Y: 25
            Z: 10
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8663334787608744588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        AudioInstance {
          AudioAsset {
            Id: 7697723051674885387
          }
          Pitch: -900
          Volume: 0.1
          Falloff: 2000
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1620880322088220180
        Name: "Pelvis"
        Transform {
          Location {
            X: -15.769928
            Z: -75
          }
          Rotation {
            Yaw: 3.41509331e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8663334787608744588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 15
            Y: 15
            Z: 15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:hip"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1986037429246000600
        Name: "Left Hand"
        Transform {
          Location {
            X: -10.7699127
            Y: -22.8927612
            Z: -8.94976807
          }
          Rotation {
            Pitch: 44.9999809
            Yaw: 1.93186897e-05
            Roll: 89.9999695
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8663334787608744588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -15
            Y: 10
            Z: -5
          }
          IKAnchorType {
            Value: "mc:eikanchortype:lefthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9316327572509874373
        Name: "Right Hand"
        Transform {
          Location {
            X: -9.00022888
            Y: 45.1483459
            Z: -6.99978638
          }
          Rotation {
            Pitch: 44.9999428
            Yaw: 6.27856934e-05
            Roll: -89.999939
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8663334787608744588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -15
            Y: -15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3079467259825823791
        Name: "Frame 2"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7790741895855837336
        ChildIds: 17552549077645779412
        ChildIds: 14563532132601162176
        ChildIds: 353877971414189834
        ChildIds: 1328072844205029566
        ChildIds: 14636346789506843761
        ChildIds: 6557098056169088367
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 17552549077645779412
        Name: "Leather Gear Clothing Whoosh 01 SFX"
        Transform {
          Location {
            X: -25
            Y: -25
            Z: 25
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3079467259825823791
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        AudioInstance {
          AudioAsset {
            Id: 5945023083814662512
          }
          Pitch: -1200
          Volume: 0.1
          Falloff: 1600
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14563532132601162176
        Name: "Pelvis"
        Transform {
          Location {
            X: -15.769928
            Y: 2.09002686
            Z: -75
          }
          Rotation {
            Yaw: 3.41509331e-05
            Roll: -11.3375549
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3079467259825823791
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 15
            Y: 15
            Z: 15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:hip"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 353877971414189834
        Name: "Left Hand"
        Transform {
          Location {
            X: -12.1591187
            Y: -26.515686
            Z: 0.231292725
          }
          Rotation {
            Pitch: 15.1082134
            Yaw: 16.6104774
            Roll: 88.4825211
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3079467259825823791
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -5
            Y: -25
            Z: -5
          }
          IKAnchorType {
            Value: "mc:eikanchortype:lefthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1328072844205029566
        Name: "Right Hand"
        Transform {
          Location {
            X: -9.00022888
            Y: 45.1483459
            Z: -6.99978638
          }
          Rotation {
            Pitch: 34.4006538
            Yaw: -3.92327881
            Roll: -96.921051
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3079467259825823791
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -15
            Y: -15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14636346789506843761
        Name: "Left Foot"
        Transform {
          Location {
            X: -17.4629822
            Y: 0.0298461914
            Z: -165.553268
          }
          Rotation {
            Pitch: -58.7490234
            Yaw: -29.7391357
            Roll: -25.9460144
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3079467259825823791
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -10
            Z: 15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:leftfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6557098056169088367
        Name: "Right Foot"
        Transform {
          Location {
            X: -18.5293884
            Y: 41.8616638
            Z: -181.254822
          }
          Rotation {
            Pitch: -37.9478455
            Yaw: 26.2740536
            Roll: -38.7563477
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3079467259825823791
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -5
            Z: 15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:rightfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1442937013631654357
        Name: "Frame 3"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7790741895855837336
        ChildIds: 16385250543184016903
        ChildIds: 13324864973541055372
        ChildIds: 18295982924017227332
        ChildIds: 7148180957289650213
        ChildIds: 14627077389929891922
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16385250543184016903
        Name: "Pelvis"
        Transform {
          Location {
            X: -26.3515167
            Y: -20.9170227
            Z: 25.3005981
          }
          Rotation {
            Yaw: 3.41509294e-05
            Roll: 69.7751465
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1442937013631654357
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 15
            Y: 15
            Z: 15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:hip"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13324864973541055372
        Name: "Left Hand"
        Transform {
          Location {
            X: 25.3588867
            Y: -39.655304
            Z: 78.8029175
          }
          Rotation {
            Pitch: -14.4294434
            Yaw: -26.5985107
            Roll: 50.5992699
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1442937013631654357
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -15
            Y: -5
            Z: -5
          }
          IKAnchorType {
            Value: "mc:eikanchortype:lefthand"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 18295982924017227332
        Name: "Right Hand"
        Transform {
          Location {
            X: -3.08996582
            Y: 44.3666077
            Z: 2.76239014
          }
          Rotation {
            Pitch: 9.8411684
            Yaw: 55.3566971
            Roll: -99.5977783
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1442937013631654357
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -5
            Y: 15
            Z: -15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 7148180957289650213
        Name: "Left Foot"
        Transform {
          Location {
            X: -1.98287964
            Y: -148.403351
            Z: 18.1649475
          }
          Rotation {
            Pitch: 15.1973753
            Yaw: -47.9299316
            Roll: 87.3569641
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1442937013631654357
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -5
            Z: 25
          }
          IKAnchorType {
            Value: "mc:eikanchortype:leftfoot"
          }
          BlendWeight: 0.75
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14627077389929891922
        Name: "Right Foot"
        Transform {
          Location {
            X: -40.5262
            Y: -79.3713074
            Z: 2.84329224
          }
          Rotation {
            Pitch: -18.3246765
            Yaw: -112.370285
            Roll: 82.9867096
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1442937013631654357
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 5
            Z: 25
          }
          IKAnchorType {
            Value: "mc:eikanchortype:rightfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11870663798206152008
        Name: "Frame 4"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7790741895855837336
        ChildIds: 11647707860269630295
        ChildIds: 7390929553615857381
        ChildIds: 782587293938213450
        ChildIds: 5814132743915675863
        ChildIds: 3457268595207425606
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11647707860269630295
        Name: "Pelvis"
        Transform {
          Location {
            X: 5.73564148
            Y: -16.3771667
            Z: 48.1834106
          }
          Rotation {
            Pitch: 8.8364
            Yaw: -0.285491943
            Roll: 45.7625809
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11870663798206152008
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 15
            Y: 15
            Z: 15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:hip"
          }
          BlendWeight: 0.9
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 7390929553615857381
        Name: "Left Hand"
        Transform {
          Location {
            X: 49.2903137
            Y: -31.1013489
            Z: 71.2078552
          }
          Rotation {
            Pitch: 25.5049362
            Yaw: -1.64105225
            Roll: 45.3627
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11870663798206152008
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -15
            Y: -15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:lefthand"
          }
          BlendWeight: 0.5
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 782587293938213450
        Name: "Right Hand"
        Transform {
          Location {
            X: 0.0982055664
            Y: 44.6603699
            Z: 7.45611572
          }
          Rotation {
            Pitch: -4.35220337
            Yaw: 54.3847237
            Roll: -119.538818
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11870663798206152008
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -5
            Y: 15
            Z: -15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 5814132743915675863
        Name: "Left Foot"
        Transform {
          Location {
            X: 28.3464508
            Y: -75.8010864
            Z: 46.0192261
          }
          Rotation {
            Pitch: -15.8840332
            Yaw: -13.9544373
            Roll: 41.7231331
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11870663798206152008
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 10
            Z: 20
          }
          IKAnchorType {
            Value: "mc:eikanchortype:leftfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3457268595207425606
        Name: "Right Foot"
        Transform {
          Location {
            X: 53.8010254
            Y: -56.1280212
            Z: 11.4214172
          }
          Rotation {
            Pitch: 4.24497604
            Yaw: -8.11151123
            Roll: 69.7183685
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11870663798206152008
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 5
            Z: 25
          }
          IKAnchorType {
            Value: "mc:eikanchortype:rightfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2883105534600664588
        Name: "Frame 5"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7790741895855837336
        ChildIds: 15149360573869690971
        ChildIds: 2811633802121833030
        ChildIds: 4100816869421028489
        ChildIds: 9125279084582474725
        ChildIds: 9319983228570189223
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15149360573869690971
        Name: "Pelvis"
        Transform {
          Location {
            X: 19.2273254
            Z: 35
          }
          Rotation {
            Yaw: -5.99996948
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2883105534600664588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 15
            Y: 15
            Z: 15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:hip"
          }
          BlendWeight: 0.7
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 2811633802121833030
        Name: "Left Hand"
        Transform {
          Location {
            X: 59.3286743
            Y: -34.5325
            Z: 57.690155
          }
          Rotation {
            Pitch: -7.86886597
            Yaw: 49.8612556
            Roll: 84.60952
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2883105534600664588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -5
            Y: -15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:lefthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4100816869421028489
        Name: "Right Hand"
        Transform {
          Location {
            X: 4.47428894
            Y: 37.1771545
            Z: 2.79641724
          }
          Rotation {
            Pitch: 0.686973572
            Yaw: 29.136898
            Roll: -87.1044312
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2883105534600664588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: -2
            Y: 20
          }
          IKAnchorType {
            Value: "mc:eikanchortype:righthand"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9125279084582474725
        Name: "Left Foot"
        Transform {
          Location {
            X: 16.8672028
            Y: -26.7790222
            Z: 12.0147095
          }
          Rotation {
            Pitch: -8.88745117
            Yaw: 3.41509367e-05
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2883105534600664588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 15
            Z: 15
          }
          IKAnchorType {
            Value: "mc:eikanchortype:leftfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9319983228570189223
        Name: "Right Foot"
        Transform {
          Location {
            X: 39.2300415
            Y: 24.1072388
            Z: 10.9928284
          }
          Rotation {
            Pitch: -5.746521
            Yaw: 0.70700413
            Roll: -7.02325439
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2883105534600664588
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:alwaysvisible"
        }
        IKAnchor {
          AimOffset {
            X: 10
            Y: 5
            Z: 25
          }
          IKAnchorType {
            Value: "mc:eikanchortype:rightfoot"
          }
          BlendWeight: 1
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 7697723051674885387
      Name: "Leather Tap Grab Catch 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_leather_tap_grab_catch_01a_Cue_ref"
      }
    }
    Assets {
      Id: 5945023083814662512
      Name: "Leather Gear Clothing Whoosh 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_leather_clothing_whoosh_01a_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 116
  VirtualFolderPath: "Player Animations"
}
