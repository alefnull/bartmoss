# Bartmoss
A suite of Lua scripts to simplify interaction with the Cyberpunk 2077 console.

Bartmoss lets you:
 - Control item stats such as quality (rarity), item level or weapon damage and effects.
 - Give the player new items with these controls.
 - Modify existing items in the player's inventory.
 - Easily find and reference items by name instead of obscure hashes.

In future Bartmoss may let you:
 - Control weapon and attachment skins.
 - Do all this through a simple UI in-game!

## Requirements
 - Cyberpunk 2077 (version 1.0.6)
 - [CyberEngineTweaks](https://github.com/yamashi/CyberEngineTweaks) (version 1.8.2+)

## Installation
```bash
$ git clone https://github.com/xant-tv/bartmoss
```
Place `bartmoss` directory into `\bin\x64\plugins\cyber_engine_tweaks\mods\` within your Cyberpunk 2077 install location.

## In-Game Console
```lua
-- Hook the mod in the console.
Bartmoss = GetMod("bartmoss")
```
All interfaces loaded in `init.lua` will now be available.

## Quickhacks
```lua
-- Gives a mix of desirable endgame mods at your current character level.
Bartmoss.Quickhacks.Inventory.GiveEndgameMods() 

-- Scales to level and makes all of your equipped items legendary.
Bartmoss.Quickhacks.Inventory.MakeMeLegendary()
```

## Interfaces
The following lower-level interfaces are available.

### System
Shortcuts to easily gain access to certain game entities or systems.
```lua
-- Returns player entity.
p = Bartmoss.System.Player()
pd = Bartmoss.System.PlayerData()

-- Access various low-level systems.
ts = Bartmoss.System.Transaction()
cs = Bartmoss.System.Crafting()
es = Bartmoss.System.Equipment()
ssc = Bartmoss.System.ScriptableSystemsContainer()
```

### Glossary
Contains a variety of dictionaries and property lookups to make your life easier.
```lua
-- Easy lookups for mods by clothing, ranged or melee types.
Bartmoss.Glossary.Mods.Clothing.Fortuna
Bartmoss.Glossary.Mods.Ranged.Crunch
Bartmoss.Glossary.Mods.Melee.Scourge

-- Weapon presets and recipe (soon) glossary.
Bartmoss.Glossary.Weapons.Ranged.Quasar.Pimp
Bartmoss.Glossary.Weapons.Melee.Katana.Iconic.Satori
Bartmoss.Glossary.Weapons.Grenade.Incendiary.Homing

-- Resource glossary.
Bartmoss.Glossary.Resources.Components.Crafting.Legendary
Bartmoss.Glossary.Resources.Components.Upgrade.Epic
Bartmoss.Glossary.Resources.Components.Quickhack.Rare
```
These can be used internally and when calling other functions.
```lua
-- I want some Armadillo mods!
Bartmoss.Cheats.Items.GiveItem(Bartmoss.Glossary.Mods.Clothing.Armadillo, 20, "Legendary")
```
Glossaries are currently still a work in progress.

### Utilities
Helpful functions to find/navigate the glossary from console.
```lua
-- Find an item or glossary element you are looking for.
-- Output can also be captured as an array.
matches = Bartmoss.Utility.Search("Trauma")
>> Glossary.Weapons.Ranged.Dian.Trauma
>> Glossary.Weapons.Ranged.Masamune.Trauma
>> Glossary.Weapons.Ranged.Zhuo.Trauma

-- Describe a glossary item.
Bartmoss.Utility.Describe(Bartmoss.Glossary.Weapons.Ranged.Dian) -- By element.
Bartmoss.Utility.Describe("Glossary.Weapons.Ranged.Dian") -- By pathstring.
>> ├── Default
>> ├── Iconic
>> │   └── YingLong
>> ├── Military
>> ├── Neon
>> ├── Pimp
>> └── Trauma
```

### Cheats.Items
Lower-level access to item-related cheats.
```lua
-- Give character-scaled items.
-- Item names can be obtained from glossaries.
Bartmoss.Cheats.Items.Give(item)

-- Also supports quantity.
Bartmoss.Cheats.Items.GiveN(item, quantity)

-- And quality (some endgame items will be forced to specific qualities).
Bartmoss.Cheats.Items.GiveN(item, quantity, quality)

-- Set level, quality or add any other modifier to underlying item data.
Bartmoss.Cheats.Items.SetLevel(itemdata, level)
Bartmoss.Cheats.Items.SetQuality(itemdata, quality)
Bartmoss.Cheats.Items.AddModifier(itemdata, modtype, calc, val)
```

### Cheats.Equipment
Lower-level access to equipment-related cheats. Similar functionality but focused on what you already have.
```lua
-- Quickly return item data in a particular equip slot.
itemdata = Bartmoss.Cheats.Equipment.GetItemDataInSlot(slot, index)
```

## Credits
Huge thanks to the community of amazing netrunners working on [CET](https://github.com/yamashi/CyberEngineTweaks), [RED4ext](https://github.com/WopsS/RED4ext) and not [one](https://github.com/PixelRick/CyberpunkSaveEditor), but [two](https://github.com/WolvenKit/CyberCAT) save editors. Without you, this would not have been possible. Check out the modding [Discord](https://discord.gg/cp77modding).