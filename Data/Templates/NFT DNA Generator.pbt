Assets {
  Id: 2370584017017966661
  Name: "NFT DNA Generator"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11763494819985009983
      Objects {
        Id: 11763494819985009983
        Name: "DNA Generator"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12155561154881769861
        ChildIds: 8371228919798440496
        ChildIds: 3698262606930643163
        ChildIds: 15223608494734993975
        ChildIds: 15000550850466020751
        ChildIds: 3579302137881076006
        UnregisteredParameters {
          Overrides {
            Name: "cs:Traits"
            ObjectReference {
              SelfId: 8699945808615764494
            }
          }
          Overrides {
            Name: "cs:ShowWarnings"
            Bool: false
          }
          Overrides {
            Name: "cs:NFTTokens"
            AssetReference {
              Id: 10228472014932217214
            }
          }
          Overrides {
            Name: "cs:GetRandomNFT"
            Bool: false
          }
          Overrides {
            Name: "cs:UseSpecificTokenId"
            String: ""
          }
          Overrides {
            Name: "cs:CreateRandomNFT"
            Bool: false
          }
          Overrides {
            Name: "cs:PrintNFTData"
            Bool: true
          }
          Overrides {
            Name: "cs:Traits:tooltip"
            String: "The folder that contains all the traits. Create traits from the DNA_Traits script."
          }
          Overrides {
            Name: "cs:ShowWarnings:tooltip"
            String: "Toggle to show or hide warnings. Helpful to have on if generation is not working."
          }
          Overrides {
            Name: "cs:NFTTokens:tooltip"
            String: "A table that contains a list of NFT tokens to use. These should really match the traits created, or things may not display as expected."
          }
          Overrides {
            Name: "cs:GetRandomNFT:tooltip"
            String: "If enabled, a random NFT will be picked from the NFT Table."
          }
          Overrides {
            Name: "cs:UseSpecificTokenId:tooltip"
            String: "Enter a specific token ID to only load that NFT."
          }
          Overrides {
            Name: "cs:CreateRandomNFT:tooltip"
            String: "Enable to create your own random NFT. This will use the assets to generate the art for the NFT and display the trait data in the event log."
          }
          Overrides {
            Name: "cs:PrintNFTData:tooltip"
            String: "Enable to show the NFT Data so you can use the traits for creating custom NFTs."
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
        Folder {
          IsFilePartition: true
          FilePartitionName: "DNA Generator"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 8371228919798440496
        Name: "README"
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
        ParentId: 11763494819985009983
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
            Id: 691538064970731403
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3698262606930643163
        Name: "DNA Generator"
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
        ParentId: 11763494819985009983
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
        BindingSet {
          BindingSetAsset {
            Id: 8368043567917126493
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15223608494734993975
        Name: "Containers"
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
        ParentId: 11763494819985009983
        ChildIds: 10303908838529414571
        ChildIds: 11958810211238411172
        ChildIds: 5559472509962719985
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
          IsFilePartition: true
          FilePartitionName: "Containers"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10303908838529414571
        Name: "Resource Container"
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
        ParentId: 15223608494734993975
        WantsNetworking: true
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
        Id: 11958810211238411172
        Name: "Effects Container"
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
        ParentId: 15223608494734993975
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
        Id: 5559472509962719985
        Name: "Object Container"
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
        ParentId: 15223608494734993975
        ChildIds: 12307819585764188396
        NetworkContext {
          Type: Local
        }
      }
      Objects {
        Id: 12307819585764188396
        Name: "DNA_Generator"
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
        ParentId: 5559472509962719985
        UnregisteredParameters {
          Overrides {
            Name: "cs:DNA_Generator_API"
            AssetReference {
              Id: 3197627285105503778
            }
          }
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 11763494819985009983
            }
          }
          Overrides {
            Name: "cs:ObjectContainer"
            ObjectReference {
              SubObjectId: 5559472509962719985
            }
          }
          Overrides {
            Name: "cs:ResourceContainer"
            ObjectReference {
              SubObjectId: 10303908838529414571
            }
          }
          Overrides {
            Name: "cs:EffectsContainer"
            ObjectReference {
              SubObjectId: 11958810211238411172
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
            Id: 14668512603704910541
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15000550850466020751
        Name: "Client"
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
        ParentId: 11763494819985009983
        ChildIds: 12531205723201790937
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
        Id: 12531205723201790937
        Name: "DNA_Generator_Client"
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
        ParentId: 15000550850466020751
        UnregisteredParameters {
          Overrides {
            Name: "cs:DNA_Events"
            AssetReference {
              Id: 10505145696175316415
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
            Id: 15252156060714648916
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3579302137881076006
        Name: "Server"
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
        ParentId: 11763494819985009983
        ChildIds: 16073117277788438716
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
        NetworkContext {
          Type: Server
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16073117277788438716
        Name: "DNA_Generator_Server"
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
        ParentId: 3579302137881076006
        UnregisteredParameters {
          Overrides {
            Name: "cs:DNA_Events"
            AssetReference {
              Id: 10505145696175316415
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
            Id: 3686644353124002695
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
  DirectlyPublished: true
  VirtualFolderPath: "NFT DNA Generator"
}
