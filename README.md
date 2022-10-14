<div align="center">

# NFT DNA Generator

[![Build Status](https://github.com/ManticoreGamesInc/CC-NFT-DNA-Generator/workflows/CI/badge.svg)](https://github.com/ManticoreGamesInc/CC-NFT-DNA-Generator/actions/workflows/ci.yml?query=workflow%3ACI%29)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/ManticoreGamesInc/CC-NFT-DNA-Generator?style=plastic)

![Preview](/Screenshots/Main.png)

</div>

## Finding the Component

This component can be found under the **CoreAcademy** account on Community Content.

## Overview

The DNA Generator is a tool that can be used to generate content based on traits from NFTs. It can load in a specific NFT, display a random NFT from a collection, and can also be used to build your NFT by outputting the trait type and trait value to the Event Log for you to easily use on OpenSea.

By creating individual art assets and populating trait tables, you can generate content easily. A big benefit of this method of generation is the fast iteration time.

## Try Example

To better understand what the DNA Generator does, it is best to look at an example that comes with the content.

Under My Templates in Project Content, add the template "DNA Generator - Otherside Example" to the Hierarchy.

Enter play mode to see an NFT get generated.

If you are in Single Player Preview mode, then you will be able to regenerate the scene by pressing "R".

Take a look at the options on the DNA Generator folder, and also look at the traits in the Traits folder to get an idea of how this example was set up. Each trait in the traits folder will have a Table property, look at those tables and see the columns and the type of data being stored.

## Understand Traits

NFT traits are the building blocks that will be used to build up the final scene. For example, an Environment trait would instruct the DNA Generator to look at the NFT attribute "Environment". Each trait also supports a value, so an Environment trait could have a value of "Swamp". If there is an art asset linked to the "Environment" trait, then it will be spawned.

Imagine the different traits that could go with the Swamp environment. Tree type, water type, flowers, abandoned huts, etc.

Trait values can be matched against NFT traits, or they can be randomly used to generate random content that could then be used for game-play, or for generating your NFT which would involve taking a screenshot and adding the outputted traits and values to your NFT on OpenSea.

## Creating the Art Assets

When creating the art assets for existing NFTs, always look at the traits to decide on what type of assets need to be created.
Generally, you can think of traits as layers, but in this case, each layer would be a template. For example, the ground could be
the bottom layer, the cars could be the second layer, the lamps can be the third layer, etc. Layers in this case are templates.

When any template is spawned it will be spawned at the world origin (0, 0, 0). This means that all assets will be in the correct
location, and gives control over how the layers fit together.

2 objects can be included in templates that the DNA Generator will look for.

- Spawn Points
  If spawn points exist in your template, then these will be used when spawning in the player. If there are multiple spawn points, one will be picked randomly.

- Unique Named Object
  The name of the object that will need to match the LocationName on a trait. If found, the template for that trait will be spawned at the position and rotation of the Named Object.

## Creating the Data Tables

Each trait type will need a data table. The data table needs to have 2 columns:

Column 1 Name: Value
Column 1 Type: String

Column 2 Name: Template
Column 2 Type: Asset Reference

It's recommended to take a look at the Otherside example data tables that come with the DNA Generator to get a clearer idea.

## Creating Traits

Traits need to be stored in a folder and that folder needs to be added to the custom property Traits on the DNA Generator folder.

Traits are empty scripts that contain information on the custom properties of the trait.

1. In Project Content -> My Scripts -> DNA Generator, add the DNA_Trait script to your Traits folder in the Hierarchy.
2. Rename the script to the trait it will be for. This will make it easier to find later when modifying.

The DNA_Trait script has custom properties that need to be set.

- TraitType
  This is the trait that will be used to compare against the NFT attributes.

- Value
  The trait value that will be checked.

- Table
  The table for this trait. This table will contain the templates that will be spawned if there is a match.

- IsClientOnly
  If true, then the template for this trait will be spawned into a client context. This is useful for effects.

There are a few more properties that are under the Advanced group.

- SecondaryTraitType
  If the Template column in the table for this trait is a table, then it will look at the table instead to spawn the template.

- SecondaryValue
  The value for the trait that will be looked for in the table.

- LocationName
  If the unique name is found inside the container holding the templates, then it will spawn the object at this location and rotation. This is useful if you need to spawn things such as resource nodes for players to mine.

## Using the DNA Generator

All custom properties have detailed tooltips. Just hover over the custom property in the Properties window, and the tooltip will show up. If you are struggling to understand how to set up your traits, drag in the example project to see how that is set up.

Add the DNA Generator template to the Hierarchy.

The DNA Generator has various custom properties on the root.

- Traits
  This is the reference to the folder that contains the DNA Traits you have created by using the DNA_Trait script.

- ShowWarnings
  Toggle on or off warnings in the Event Log. The DNA Generator will display warnings if it gets stopped (for example, a missing item).

- NFTTokens
  A table of NFT tokens. This table should contain the contract address and token ID. NFTs used from this table should support the
  traits that have been created, or things will not generate correctly as templates won't be found.

- GetRandomNFT
  If the table of NFT tokens has rows, then it will use the traits from a random NFT.

- CreateRandomNFT
  If you are interested in generating your own NFTs from your assets, enable this option.

- PrintNFTData
  To see the traits and trait values for the generated content, enable this option. This is useful for creating an NFT.

## Using Modifiers

The DNA Generator has support for modifiers. Currently, the supported modifiers are Color and Material.

Modifiers need to be added as a child of the trait in the hierarchy.

The base modifier script can be found in Project Content -> My Scripts -> DNA Generator. Add the DNA_Modifier script into the hierarchy as a child of an existing trait.

The modifier script has various custom properties that can be set.

- TraitType
  The trait type that will be searched for in the NFT attributes.

- Value
  The value to use. This will override attribute data.

- Table
  The table of colors or materials. See the example project Otherside.

- IsColorModifier
  If true, then this modifier is used for color.

- IsMaterialModifier
  If true, then this modifier is used for material.

You may want some assets not to be modified when using modifiers. A custom property called DNAIgnore can be added to any mesh in the Hierarchy, and the DNA Generator will ignore it.

## Included Components

The DNA Generator comes with various components that can be dropped into the Hierarchy. For an example of the components
in use, check out the Otherside example.
