Assets {
  Id: 5515005397797727909
  Name: "DNA_Trait"
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
        Name: "cs:IsClientOnly"
        Bool: false
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
        Name: "cs:LocationName"
        String: ""
      }
      Overrides {
        Name: "cs:Value:tooltip"
        String: "If set, the NFT trait will need to match this value. If left empty, and no NFT is found, a random value is used from the Table."
      }
      Overrides {
        Name: "cs:Table:tooltip"
        String: "The table of templates for this trait. Columns are Value and Template."
      }
      Overrides {
        Name: "cs:TraitType:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:Value:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:Table:isrep"
        Bool: false
      }
      Overrides {
        Name: "cs:Table:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:SecondaryTraitType:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:SecondaryValue:ml"
        Bool: false
      }
      Overrides {
        Name: "cs:SecondaryValue:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:SecondaryValue:subcategory"
        String: "Advanced"
      }
      Overrides {
        Name: "cs:SecondaryTraitType:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:SecondaryTraitType:subcategory"
        String: "Advanced"
      }
      Overrides {
        Name: "cs:LocationName:category"
        String: "Custom"
      }
      Overrides {
        Name: "cs:LocationName:subcategory"
        String: "Advanced"
      }
      Overrides {
        Name: "cs:TraitType:tooltip"
        String: "The trait that will be searched for in the NFT data."
      }
      Overrides {
        Name: "cs:IsClientOnly:tooltip"
        String: "If enabled, the template for this trait will be spawned into a client context. Useful for things like audio and effects."
      }
      Overrides {
        Name: "cs:SecondaryTraitType:tooltip"
        String: "If set, and the Template column of the trait table is a table, then a row will be returned and used instead. See the Otherside example table Environment."
      }
      Overrides {
        Name: "cs:SecondaryValue:tooltip"
        String: "The value for the trait. If not set, and no match is found for the NFT data, a random row will be used from the secondary table."
      }
      Overrides {
        Name: "cs:LocationName:tooltip"
        String: "If set, then the container that holds all the template in the hierarchy will be searched. If there is a match, then the template will be spawned at this location."
      }
    }
  }
  SerializationVersion: 116
  VirtualFolderPath: "DNA Generator"
}
