# Rusted Moss Randomizer

## Description

This is an unofficial randomizer implemention for the 2023 Metroidvania video game **[Rusted Moss](https://www.rustedmossgame.com/)**. Its goal is to breath new life into the game by randomly placing items and upgrades in different locations, encouraging the player to interact with mechanics in unconventional and interesting ways.

Rusted Moss was originally developed by **[Faxdoc](https://www.youtube.com/@faxdocsartystuff3752)**, **[happysquared](https://twitter.com/happysquaredow)**, and **sunnydaze**. The game is currently published by **[Playism](https://playism.com/en/)** and can be purchased on either **[Steam](https://store.steampowered.com/app/1772830/Rusted_Moss/)** or **[Itch.io](https://faxdoc.itch.io/rusted-moss-demo)**.

## Features

The game's Speedrun Mode has been replaced with "Randomizer Mode", which implements the following changes...

- The player's starting weapon is now randomized to be any one of the game's six main weapons
- Weapon placements are randomized
- Trinket placements are randomized
- Stat Upgrade placements are randomized

## How Do I Play This Randomizer?

> **WARNING:** Applying the randomizer patch to the game will overwrite the `data.win` file, where the game's graphics and code are stored. It is *Highly Encouraged* that you create a backup copy of this file!

1. Download the `*.xdelta` file from the latest release.
2. Download the latest version of **[DeltaPatcher](https://github.com/marco-calautti/DeltaPatcher)**.
3. Open DeltaPatcher and set the Original File as Rusted Moss' `data.win` file.
4. Select the `*.xdelta` as the XDelta Patch.
5. Click the "Apply patch" button.

You're all set! Start a new save file and select the "Randomizer" difficulty option.

## Implementation To-Do List

- [x] Randomize placement of HP, MP, and TP upgrades
- [ ] Create item/upgrade replacement system using location list checking
- [ ] Randomize core abilities (grappling hook, charge jump, teleportation, etc.)
- [ ] Randomize Pieces of Titania and Fae Silver items
- [ ] Randomize event flags (gun upgrades, quest progress, etc.)
