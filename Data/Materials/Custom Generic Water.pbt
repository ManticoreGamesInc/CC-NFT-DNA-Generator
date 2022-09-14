Assets {
  Id: 10920697495837688009
  Name: "Blue Water"
  PlatformAssetType: 13
  SerializationVersion: 116
  VirtualFolderPath: "DNA Generator"
  VirtualFolderPath: "Otherside"
  CustomMaterialAsset {
    BaseMaterialId: 800392238396755332
    ParameterOverrides {
      Overrides {
        Name: "shallow color"
        Color {
          R: 0.192999959
          G: 0.310575604
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "foam color"
        Color {
          R: 0.44
          G: 0.655099034
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "deep color"
        Color {
          R: 0.0329679921
          G: 0.0856361389
          B: 0.317
          A: 1
        }
      }
      Overrides {
        Name: "flow direction"
        Vector {
          X: -1
          Z: 0.2
        }
      }
      Overrides {
        Name: "reflection brightness"
        Float: 0.187262937
      }
      Overrides {
        Name: "foam tightness"
        Float: 3.99514484
      }
      Overrides {
        Name: "edge foam brightness"
        Float: 0.14977999
      }
      Overrides {
        Name: "emissive"
        Float: 0
      }
    }
    Assets {
      Id: 800392238396755332
      Name: "Generic Water"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_manual"
      }
    }
  }
}
