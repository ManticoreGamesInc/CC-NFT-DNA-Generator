Assets {
  Id: 10744975562135162657
  Name: "Camera System"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16813389892313019551
      Objects {
        Id: 16813389892313019551
        Name: "Camera System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8697275278827106672
        ChildIds: 14422800544991695348
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
          DetailRelevance {
            Value: "mc:edetaillevel:low"
          }
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
        Id: 14422800544991695348
        Name: "Override Camera"
        Transform {
          Location {
            X: -6590.12061
            Y: 6377.91943
            Z: 3408.75781
          }
          Rotation {
            Pitch: -15.1911869
            Yaw: -43.6302948
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16813389892313019551
        ChildIds: 1672508850555643244
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
        Camera {
          MinDistance: 300
          MaxDistance: 600
          PositionOffset {
          }
          RotationOffset {
          }
          FieldOfView: 90
          ViewWidth: 1200
          RotationMode {
            Value: "mc:erotationmode:default"
          }
          MinPitch: -89
          MaxPitch: 89
          DoesPositionOffsetSpring: true
          AudioListenerOffset {
          }
          IsCameraCollisionEnabled: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1672508850555643244
        Name: "Camera_Client"
        Transform {
          Location {
            X: 9743.53418
            Y: -69.1850586
            Z: -886.533325
          }
          Rotation {
            Pitch: 10.9333496
            Yaw: 44.6487198
            Roll: 10.6116753
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14422800544991695348
        UnregisteredParameters {
          Overrides {
            Name: "cs:Camera_API"
            AssetReference {
              Id: 9146465244938792557
            }
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
            Id: 16513260067802751541
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 116
  VirtualFolderPath: "NFT DNA Generator"
  VirtualFolderPath: " Components"
  VirtualFolderPath: "Camera"
}
