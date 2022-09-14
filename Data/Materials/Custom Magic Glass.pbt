Assets {
  Id: 3299571130955968324
  Name: "Rainbow Atmos"
  PlatformAssetType: 13
  SerializationVersion: 116
  VirtualFolderPath: "DNA Generator"
  VirtualFolderPath: "Otherside"
  CustomMaterialAsset {
    BaseMaterialId: 1971625966215422648
    ParameterOverrides {
      Overrides {
        Name: "roughness"
        Float: 1
      }
      Overrides {
        Name: "metallic"
        Float: 0
      }
      Overrides {
        Name: "specular"
        Float: 0
      }
      Overrides {
        Name: "magic color blend power"
        Float: 3
      }
      Overrides {
        Name: "speed"
        Float: 0.05
      }
      Overrides {
        Name: "magic non uniform scale"
        Vector {
          X: 2
          Y: 2
          Z: 2
        }
      }
      Overrides {
        Name: "scale"
        Float: 6
      }
    }
    Assets {
      Id: 1971625966215422648
      Name: "Magic Glass"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_magic_glass"
      }
    }
  }
}
