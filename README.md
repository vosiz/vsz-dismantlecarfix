# Dismantle Car Fix
A Project Zomboid (Build 42) patch for Nepenthe's "Dismantle Any Car" mod, so the dismantle action works on any vehicle again, not only on burnt or smashed wrecks.
## Motivation
"Dismantle Any Car" adds the dismantle option to every vehicle, but in Build 42.22 the action silently does nothing on normal cars. Your character equips the torch and mask and then stops. The vanilla action only keeps the vehicle when it is a burnt or smashed one, so for any other car it fails right away. This patch lets the action keep any vehicle, and it drops whatever is left in the trunk, glovebox and seats on the ground before the car disappears.
This mod is a temporary fix until the original mod or the game handles it. MIT, use it however you like.
## Requirements
- Project Zomboid Build 42 (tested on 42.22.2)
- [Dismantle Any Car](https://steamcommunity.com/sharedfiles/filedetails/?id=3428369137) by Nepenthe
- Works in singleplayer and multiplayer (needed on both client and server)
## Bug tracker
No tracked issues. Report problems in [GitHub issues](https://github.com/vosiz/vsz-dismantlecarfix/issues).
## Features
See [Roadmap](#roadmap).
## Roadmap
- [x] Dismantle action works on any vehicle
- [x] Vehicle contents dropped on the ground
- [x] Steam Workshop release
## Setup
Subscribe on the [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=3844568710) together with Dismantle Any Car and enable `[VSZ] Dismantle Car Fix` after it in the mod list. On a dedicated server add `3844568710` to `WorkshopItems=` and `DismantleAnyCarFix` after `NepWreckWorkingCars` in `Mods=`.
Manual install: copy `Contents/mods/DismantleAnyCarFix` into your `Zomboid/mods` folder instead. Don't use both at once.
