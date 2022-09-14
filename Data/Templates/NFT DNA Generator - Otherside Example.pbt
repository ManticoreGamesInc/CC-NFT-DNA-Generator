Assets {
  Id: 8134092439304409818
  Name: "NFT DNA Generator - Otherside Example"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5708208730659580950
      Objects {
        Id: 5708208730659580950
        Name: "NFT DNA Generator - Otherside Example"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3979221021129541752
        ChildIds: 4646837567881931342
        ChildIds: 11473748469039779741
        ChildIds: 6663933772180439575
        ChildIds: 14114976191191079119
        UnregisteredParameters {
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
          FilePartitionName: "DNA Generator - Otherside Example"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3979221021129541752
        Name: "DNA Generator"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5708208730659580950
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 11763494819985009983
            value {
              Overrides {
                Name: "Name"
                String: "NFT DNA Generator"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
              Overrides {
                Name: "cs:Traits"
                ObjectReference {
                  SubObjectId: 11473748469039779741
                }
              }
              Overrides {
                Name: "cs:GetRandomNFT"
                Bool: true
              }
              Overrides {
                Name: "cs:CreateRandomNFT"
                Bool: false
              }
            }
          }
          TemplateAsset {
            Id: 2370584017017966661
          }
        }
      }
      Objects {
        Id: 4646837567881931342
        Name: "Components"
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
        ParentId: 5708208730659580950
        ChildIds: 1620747823719786635
        ChildIds: 9989692914223237823
        ChildIds: 15580418603240068466
        ChildIds: 14195406769922845965
        ChildIds: 12215501737995726014
        ChildIds: 5989242623149062713
        ChildIds: 1122561996277210698
        ChildIds: 17007721028112122828
        ChildIds: 5377559617769422521
        ChildIds: 9208336829756429187
        ChildIds: 10335901628078541805
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
          FilePartitionName: "Components"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1620747823719786635
        Name: "Cameras"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        TemplateInstance {
          ParameterOverrideMap {
            key: 16813389892313019551
            value {
              Overrides {
                Name: "Name"
                String: "Camera System"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 10744975562135162657
          }
        }
      }
      Objects {
        Id: 9989692914223237823
        Name: "Menu System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 7455873320877202449
            value {
              Overrides {
                Name: "Name"
                String: "Menu System"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 13813429019015572893
          }
        }
      }
      Objects {
        Id: 15580418603240068466
        Name: "Tools"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        TemplateInstance {
          ParameterOverrideMap {
            key: 8559748987931930426
            value {
              Overrides {
                Name: "Name"
                String: "Tools System"
              }
            }
          }
          TemplateAsset {
            Id: 427238977127969834
          }
        }
      }
      Objects {
        Id: 14195406769922845965
        Name: "Resource Notification"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        TemplateInstance {
          ParameterOverrideMap {
            key: 13632299688367493894
            value {
              Overrides {
                Name: "Name"
                String: "Resource Notification System"
              }
            }
          }
          TemplateAsset {
            Id: 1947505997112590490
          }
        }
      }
      Objects {
        Id: 12215501737995726014
        Name: "Teleport Area"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        TemplateInstance {
          ParameterOverrideMap {
            key: 4004058906452092871
            value {
              Overrides {
                Name: "Name"
                String: "Teleport Area System"
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
            }
          }
          TemplateAsset {
            Id: 4744156658619459446
          }
        }
      }
      Objects {
        Id: 5989242623149062713
        Name: "Player Spawn System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        TemplateInstance {
          ParameterOverrideMap {
            key: 14502820157202533154
            value {
              Overrides {
                Name: "Name"
                String: "Player Spawn System"
              }
            }
          }
          TemplateAsset {
            Id: 709895622862802275
          }
        }
      }
      Objects {
        Id: 1122561996277210698
        Name: "Traits UI System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        TemplateInstance {
          ParameterOverrideMap {
            key: 1354088048066917387
            value {
              Overrides {
                Name: "Name"
                String: "Traits UI System"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
            }
          }
          TemplateAsset {
            Id: 7799611052800194892
          }
        }
      }
      Objects {
        Id: 17007721028112122828
        Name: "Resource Display System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        TemplateInstance {
          ParameterOverrideMap {
            key: 11903538778551907480
            value {
              Overrides {
                Name: "cs:ResourceContainer"
                ObjectReference {
                  SubObjectId: 1859808556119014852
                }
              }
            }
          }
          ParameterOverrideMap {
            key: 14595416125877247958
            value {
              Overrides {
                Name: "Name"
                String: "Resource Display System"
              }
            }
          }
          TemplateAsset {
            Id: 1844963648723663652
          }
        }
      }
      Objects {
        Id: 5377559617769422521
        Name: "Storage System"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        TemplateInstance {
          ParameterOverrideMap {
            key: 13221633362308129079
            value {
              Overrides {
                Name: "Name"
                String: "Storage System"
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 1
                  Y: 1
                  Z: 1
                }
              }
            }
          }
          TemplateAsset {
            Id: 8670802979473391209
          }
        }
      }
      Objects {
        Id: 9208336829756429187
        Name: "NFT Command"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        TemplateInstance {
          ParameterOverrideMap {
            key: 6681907283832586839
            value {
              Overrides {
                Name: "Name"
                String: "NFT Command"
              }
            }
          }
          TemplateAsset {
            Id: 2507397056712125148
          }
        }
      }
      Objects {
        Id: 10335901628078541805
        Name: "Adjustments"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4646837567881931342
        TemplateInstance {
          ParameterOverrideMap {
            key: 217646054083552919
            value {
              Overrides {
                Name: "Name"
                String: "Adjustments"
              }
            }
          }
          TemplateAsset {
            Id: 12305031307973685735
          }
        }
      }
      Objects {
        Id: 11473748469039779741
        Name: "Traits"
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
        ParentId: 5708208730659580950
        ChildIds: 6479405215312434668
        ChildIds: 8418060392280622180
        ChildIds: 5804901808593713468
        ChildIds: 17719095518653439604
        ChildIds: 16868498067912537157
        ChildIds: 10937445260776774393
        ChildIds: 9290479918829424403
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
        Id: 6479405215312434668
        Name: "Environment"
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
        ParentId: 11473748469039779741
        ChildIds: 14956600783063987843
        ChildIds: 11303883400897029187
        UnregisteredParameters {
          Overrides {
            Name: "cs:TraitType"
            String: "Environment"
          }
          Overrides {
            Name: "cs:SecondaryTraitType"
            String: "Environment Tier"
          }
          Overrides {
            Name: "cs:SecondaryValue"
            String: ""
          }
          Overrides {
            Name: "cs:Value"
            String: ""
          }
          Overrides {
            Name: "cs:LocationName"
            String: ""
          }
          Overrides {
            Name: "cs:Table"
            AssetReference {
              Id: 968680410277749915
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
            Id: 5515005397797727909
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14956600783063987843
        Name: "Color"
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
        ParentId: 6479405215312434668
        UnregisteredParameters {
          Overrides {
            Name: "cs:TraitType"
            String: "Color"
          }
          Overrides {
            Name: "cs:Table"
            AssetReference {
              Id: 3981870647826116160
            }
          }
          Overrides {
            Name: "cs:IsColorModifier"
            Bool: true
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
            Id: 8525618447992159027
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11303883400897029187
        Name: "DNA_Modifier"
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
        ParentId: 6479405215312434668
        UnregisteredParameters {
          Overrides {
            Name: "cs:TraitType"
            String: "Material"
          }
          Overrides {
            Name: "cs:Table"
            AssetReference {
              Id: 8813190273040996380
            }
          }
          Overrides {
            Name: "cs:IsColorModifier"
            Bool: false
          }
          Overrides {
            Name: "cs:IsMaterialModifier"
            Bool: true
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
            Id: 8525618447992159027
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 8418060392280622180
        Name: "Sediment"
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
        ParentId: 11473748469039779741
        UnregisteredParameters {
          Overrides {
            Name: "cs:TraitType"
            String: "Sediment"
          }
          Overrides {
            Name: "cs:SecondaryTraitType"
            String: "Sediment Tier"
          }
          Overrides {
            Name: "cs:SecondaryValue"
            String: ""
          }
          Overrides {
            Name: "cs:Value"
            String: ""
          }
          Overrides {
            Name: "cs:LocationName"
            String: ""
          }
          Overrides {
            Name: "cs:Table"
            AssetReference {
              Id: 7671678604275324071
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
            Id: 5515005397797727909
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 5804901808593713468
        Name: "Northern Resource"
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
        ParentId: 11473748469039779741
        UnregisteredParameters {
          Overrides {
            Name: "cs:TraitType"
            String: "Northern Resource"
          }
          Overrides {
            Name: "cs:SecondaryTraitType"
            String: "Northern Resource Tier"
          }
          Overrides {
            Name: "cs:SecondaryValue"
            String: ""
          }
          Overrides {
            Name: "cs:Value"
            String: ""
          }
          Overrides {
            Name: "cs:LocationName"
            String: "Northern"
          }
          Overrides {
            Name: "cs:Table"
            AssetReference {
              Id: 16727404195220895052
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
            Id: 5515005397797727909
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 17719095518653439604
        Name: "Eastern Resource"
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
        ParentId: 11473748469039779741
        UnregisteredParameters {
          Overrides {
            Name: "cs:TraitType"
            String: "Eastern Resource"
          }
          Overrides {
            Name: "cs:SecondaryTraitType"
            String: "Eastern Resource Tier"
          }
          Overrides {
            Name: "cs:SecondaryValue"
            String: ""
          }
          Overrides {
            Name: "cs:Value"
            String: ""
          }
          Overrides {
            Name: "cs:LocationName"
            String: "Eastern"
          }
          Overrides {
            Name: "cs:Table"
            AssetReference {
              Id: 16727404195220895052
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
            Id: 5515005397797727909
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 16868498067912537157
        Name: "Southern Resource"
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
        ParentId: 11473748469039779741
        UnregisteredParameters {
          Overrides {
            Name: "cs:TraitType"
            String: "Southern Resource"
          }
          Overrides {
            Name: "cs:SecondaryTraitType"
            String: "Southern Resource Tier"
          }
          Overrides {
            Name: "cs:SecondaryValue"
            String: ""
          }
          Overrides {
            Name: "cs:Value"
            String: ""
          }
          Overrides {
            Name: "cs:LocationName"
            String: "Southern"
          }
          Overrides {
            Name: "cs:Table"
            AssetReference {
              Id: 16727404195220895052
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
            Id: 5515005397797727909
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10937445260776774393
        Name: "Western Resource"
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
        ParentId: 11473748469039779741
        UnregisteredParameters {
          Overrides {
            Name: "cs:TraitType"
            String: "Western Resource"
          }
          Overrides {
            Name: "cs:SecondaryTraitType"
            String: "Western Resource Tier"
          }
          Overrides {
            Name: "cs:SecondaryValue"
            String: ""
          }
          Overrides {
            Name: "cs:Value"
            String: ""
          }
          Overrides {
            Name: "cs:LocationName"
            String: "Western"
          }
          Overrides {
            Name: "cs:Table"
            AssetReference {
              Id: 16727404195220895052
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
            Id: 5515005397797727909
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 9290479918829424403
        Name: "Artifact"
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
        ParentId: 11473748469039779741
        UnregisteredParameters {
          Overrides {
            Name: "cs:TraitType"
            String: "Artifact"
          }
          Overrides {
            Name: "cs:SecondaryTraitType"
            String: ""
          }
          Overrides {
            Name: "cs:SecondaryValue"
            String: ""
          }
          Overrides {
            Name: "cs:Value"
            String: ""
          }
          Overrides {
            Name: "cs:LocationName"
            String: "Artifact"
          }
          Overrides {
            Name: "cs:Table"
            AssetReference {
              Id: 13288501414253679688
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
            Id: 5515005397797727909
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6663933772180439575
        Name: "Lighting + Post Process"
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
        ParentId: 5708208730659580950
        ChildIds: 5507830150522077273
        ChildIds: 11365024047836485632
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
          FilePartitionName: "Lighting + Post Process"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 5507830150522077273
        Name: "Post Process"
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
        ParentId: 6663933772180439575
        ChildIds: 9415896103571673910
        ChildIds: 9507997288518044991
        ChildIds: 11061669081082121057
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
        Id: 9415896103571673910
        Name: "Ambient Occlusion Post Process"
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
        ParentId: 5507830150522077273
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
        Blueprint {
          BlueprintAsset {
            Id: 14697405062555329113
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 9507997288518044991
        Name: "Environment Fog Default VFX"
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
        ParentId: 5507830150522077273
        UnregisteredParameters {
          Overrides {
            Name: "bp:Fog Density"
            Float: 0
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
        Blueprint {
          BlueprintAsset {
            Id: 2224571462023946700
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11061669081082121057
        Name: "Bloom Post Process"
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
        ParentId: 5507830150522077273
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
        Blueprint {
          BlueprintAsset {
            Id: 3141745267732208390
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 11365024047836485632
        Name: "Lighting"
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
        ParentId: 6663933772180439575
        ChildIds: 141137003451659607
        ChildIds: 11148464104530691685
        ChildIds: 761612232907022949
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
        Id: 141137003451659607
        Name: "Sky Dome"
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
        ParentId: 11365024047836485632
        UnregisteredParameters {
          Overrides {
            Name: "bp:Zenith Color"
            Color {
              R: 0.0550000034
              G: 0.0550000034
              B: 0.0550000034
              A: 0.886000037
            }
          }
          Overrides {
            Name: "bp:Horizon Color"
            Color {
              R: 0.0470672324
              G: 0.0462500043
              B: 0.0600000024
              A: 0.895000041
            }
          }
          Overrides {
            Name: "bp:Haze Color"
            Color {
              R: 0.0600000024
              G: 0.0600000024
              B: 0.0600000024
              A: 1
            }
          }
          Overrides {
            Name: "bp:Use Sun Color for Cloud Color"
            Bool: false
          }
          Overrides {
            Name: "bp:Cloud Ambient Brightness"
            Float: 3
          }
          Overrides {
            Name: "bp:Cloud Rim Brightness"
            Float: 50
          }
          Overrides {
            Name: "bp:Cloud Opacity"
            Float: 0
          }
          Overrides {
            Name: "bp:Cloud Ambient Color"
            Color {
              R: 2
              G: 2
              B: 2
              A: 1
            }
          }
          Overrides {
            Name: "bp:Cloud Color"
            Color {
              R: 2
              G: 2
              B: 2
              A: 1
            }
          }
          Overrides {
            Name: "bp:Cloud Shape"
            Int: 4
          }
          Overrides {
            Name: "bp:Cloud Lighting Brightness"
            Float: 1
          }
          Overrides {
            Name: "bp:Cloud Wisp Opacity"
            Float: 0.4
          }
          Overrides {
            Name: "bp:Cloud Speed"
            Float: 1
          }
          Overrides {
            Name: "bp:Brightness"
            Float: 1
          }
          Overrides {
            Name: "bp:Background Clouds"
            Bool: true
          }
          Overrides {
            Name: "bp:High Cloud Index"
            Int: 2
          }
          Overrides {
            Name: "bp:High Cloud Opacity"
            Float: 0
          }
          Overrides {
            Name: "bp:High Cloud Noise Amount"
            Float: 0.1
          }
          Overrides {
            Name: "bp:High Cloud Noise Scale"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Clouds"
            Bool: false
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
        Blueprint {
          BlueprintAsset {
            Id: 7887238662729938253
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11148464104530691685
        Name: "Skylight"
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
        ParentId: 11365024047836485632
        UnregisteredParameters {
          Overrides {
            Name: "bp:Index"
            Int: 3
          }
          Overrides {
            Name: "bp:Occlusion Contrast"
            Float: 0
          }
          Overrides {
            Name: "bp:Intensity"
            Float: 4.95592165
          }
          Overrides {
            Name: "bp:Lower Hemisphere Color"
            Color {
              R: 0.0666259378
              G: 0.0307134502
              A: 1
            }
          }
          Overrides {
            Name: "bp:Occlusion Tint"
            Color {
              R: 0.0274509825
              G: 0.0274509825
              B: 0.0392156877
              A: 1
            }
          }
          Overrides {
            Name: "bp:Occlusion Exponent"
            Float: 0.4
          }
          Overrides {
            Name: "bp:Cast Shadows"
            Bool: true
          }
          Overrides {
            Name: "bp:Cast Volumetric Shadows"
            Bool: false
          }
          Overrides {
            Name: "bp:Tint Color"
            Color {
              R: 0.502886474
              G: 0.48514995
              B: 0.752942204
              A: 1
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
        Blueprint {
          BlueprintAsset {
            Id: 11515840070784317904
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 761612232907022949
        Name: "Sun Light"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -45.8452492
            Yaw: 33.9371529
            Roll: 8.92733097
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11365024047836485632
        UnregisteredParameters {
          Overrides {
            Name: "bp:Use Temperature"
            Bool: false
          }
          Overrides {
            Name: "bp:Light Color"
            Color {
              R: 1
              G: 0.955973327
              B: 0.73791039
              A: 1
            }
          }
          Overrides {
            Name: "bp:Shape"
            Int: 1
          }
          Overrides {
            Name: "bp:Size"
            Float: 5
          }
          Overrides {
            Name: "bp:Light Shaft Bloom"
            Bool: true
          }
          Overrides {
            Name: "bp:Cast Volumetric Shadows"
            Bool: false
          }
          Overrides {
            Name: "bp:Light Shaft Mask Darkness"
            Float: 0.5
          }
          Overrides {
            Name: "bp:Intensity"
            Float: 1.10666931
          }
          Overrides {
            Name: "bp:Sun Disc Color"
            Color {
              R: 3
              G: 3
              B: 3
              A: 1
            }
          }
          Overrides {
            Name: "bp:Light Shaft Bloom Scale"
            Float: 0.2
          }
          Overrides {
            Name: "bp:Light Shaft Bloom Threshold"
            Float: 0.05
          }
          Overrides {
            Name: "bp:Light Shaft Occlusion"
            Bool: true
          }
          Overrides {
            Name: "bp:Light Shaft Bloom Tint"
            Color {
              R: 1
              G: 0.998476863
              B: 0.77
              A: 1
            }
          }
          Overrides {
            Name: "bp:Cast Shadows"
            Bool: true
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
        Blueprint {
          BlueprintAsset {
            Id: 16910278292812118833
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14114976191191079119
        Name: "Gameplay Mechanics"
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
        ParentId: 5708208730659580950
        ChildIds: 4230231927889112721
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
          FilePartitionName: "Gameplay Mechanics"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4230231927889112721
        Name: "Parkour Vaulting Server"
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
        ParentId: 14114976191191079119
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
            Id: 7611625956387510169
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 14697405062555329113
      Name: "Ambient Occlusion Post Process"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_post_process_ao"
      }
    }
    Assets {
      Id: 2224571462023946700
      Name: "Environment Fog Default VFX"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_env_fog_default"
      }
    }
    Assets {
      Id: 3141745267732208390
      Name: "Bloom Post Process"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_post_process_bloom"
      }
    }
    Assets {
      Id: 7887238662729938253
      Name: "Sky Dome"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_Sky"
      }
    }
    Assets {
      Id: 11515840070784317904
      Name: "Skylight"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_Skylight"
      }
    }
    Assets {
      Id: 16910278292812118833
      Name: "Sun Light"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "CORESKY_SunLight"
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
