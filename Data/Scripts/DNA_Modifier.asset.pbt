Assets {
  Id: 8525618447992159027
  Name: "DNA_Modifier"
  PlatformAssetType: 3
  TextAsset {
    CustomParameters {
      Overrides {
        Name: "cs:TraitType"
        String: ""
      }
      Overrides {
        Name: "cs:Value"
        String: ""
      }
      Overrides {
        Name: "cs:Table"
        AssetReference {
          Id: 841534158063459245
        }
      }
      Overrides {
        Name: "cs:IsColorModifier"
        Bool: false
      }
      Overrides {
        Name: "cs:IsMaterialModifier"
        Bool: false
      }
      Overrides {
        Name: "cs:TraitType:tooltip"
        String: "The trait to look for in the NFT data."
      }
      Overrides {
        Name: "cs:Value:tooltip"
        String: "The trait value to look for and use. Leave empty to use the data from the NFT or if not found, a random one will be used."
      }
      Overrides {
        Name: "cs:Table:tooltip"
        String: "The table to use for this modifier. Color and Material tables are supported at the moment. See the Otherside Color and Material table."
      }
      Overrides {
        Name: "cs:IsColorModifier:tooltip"
        String: "If enabled, this modifier will be for color."
      }
      Overrides {
        Name: "cs:IsMaterialModifier:tooltip"
        String: "If enabled, this modifier will be used for material."
      }
    }
  }
  SerializationVersion: 116
  VirtualFolderPath: "DNA Generator"
}
