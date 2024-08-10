# Stardew Valley Expanded - German (de) Translation

# Requirements

[Stardew Valley Expanded](https://www.nexusmods.com/stardewvalley/mods/3753)

###### Optional
- [Grandpa's Farm](https://www.nexusmods.com/stardewvalley/mods/3753?tab=files)
- [Immersive Farm 2 Remastered](https://www.nexusmods.com/stardewvalley/mods/3753?tab=files)

# Usage

Download archive from releases or at [Nexusmods](https://www.nexusmods.com/stardewvalley/mods/17019).

Extract the contents to the Stardew Valley Expanded [mod folder](https://github.com/FlashShifter/StardewValleyExpanded/wiki/Install-guide#main-mod) and leave out the folders that you don't need.

For the translation of the main mod, you can also use the installer.

```
Stardew Valley
└── Mods
    ├── Stardew Valley Expanded - German Translation
    ├── Stardew Valley Expanded
    │   └── [CP] Stardew Valley Expanded
    ├── Grandpa's Farm
    │   └── [CP] Grandpa's Farm
    └── Immersive Farm 2 Remastered
        └── [CP] Immersive Farm 2 Remastered
```
# Installation von Stardew Valley Expanded

1. **Mod herunterladen:**
  - Stardew Valley Expanded von [Nexus](https://www.nexusmods.com/stardewvalley/mods/3753) herunterladen.

2. **Entpacken der Datei:**
  - Die heruntergeladene ZIP-Datei entpacken.
  - Der entpackte Inhalt sollte einen Ordner namens `Stardew Valley Expanded` enthalten, in dem sich drei weitere Ordner befinden.

3. **Verschieben der Mod-Dateien:**
  - Den gesamten Ordner `Stardew Valley Expanded` (der die drei weiteren Ordner enthält) in den `Mods`-Ordner von Stardew Valley verschieben.

# Installation der Übersetzung

1. **Übersetzung herunterladen:**
  - Die Übersetzung entweder von [Nexus](https://www.nexusmods.com/stardewvalley/mods/17019) oder direkt von Github herunterladen.

2. **Entpacken der Übersetzungsdatei:**
  - Die heruntergeladene ZIP-Datei entpacken.
  - Es sollten zwei Ordner enthalten sein.

3. **Verschieben der Übersetzungsdateien:**
  - Die beiden Ordner aus der entpackten Datei in den `Mods`-Ordner von Stardew Valley verschieben.
  - Wenn Windows fragt, ob Dateien ersetzt werden sollen, auf „Ersetzen“ klicken.

# Create new version

- Update manifest.json to next release version
- Make sure to include the latest compiled installer exe file *after* updating the manifest.json file
- Draft a new release in Github
  - Create a new tag with incremented version
  - Target: main
  - Add release notes
- Pull main branch locally or just fetch tags locally
- Run shellscript and pass in the new tag
  - e.g. `./create-nexus-archives-from-tag.sh 0.0.6`
- Upload archives to Nexusmods
  - only need to upload those that contain changes
