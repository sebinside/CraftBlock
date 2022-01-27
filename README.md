<p align="center">
  <img src = "CB250.png"/>
</p>


# ungefroren's CraftBlock

[![CurseForge](http://cf.way2muchnoise.eu/full_491420_downloads.svg)](https://www.curseforge.com/minecraft/modpacks/craftblock)
[![Curseforge](http://cf.way2muchnoise.eu/versions/Game%20Version_491420_latest.svg)](https://www.curseforge.com/minecraft/modpacks/craftblock)

The official servers are available [here at Nitrado](https://702.yt/nitradocraftblock)!

This repository contains all **override files** for the [CraftBlock](https://www.curseforge.com/minecraft/modpacks/craftblock)-modpack and also the files for the [SoManyCoolAndFunnyAdvancements](https://www.curseforge.com/minecraft/mc-mods/somanycoolandfunnyadvancements)-mod.

CraftBlock stands for Craft Attack 3 Skyblock and is an incredibly boing and monotone modpack just like CraftAttack 3 was. That means you will have to play through a small list of badly implemented and sometimes even unplayable mods, there will loads of PFUSCH - this one is important - it's insanely grindy.

Please stop reading, close this site and save your sanity.

## Modpack Progression

Some examples for the planed progression:

- Botania -> Astral Sorcery -> Embers
- AstralSorcery -> Botania -> Hearthwell
- Hearth Well * Tinkers Construct - CookingForBlockheads -> TC Smeltery
- Storage Drawers + Botania + OC + Embers + IE -> Refined Storage (without auto crafting) + OC Late Game -> loosing your mind (AE 2 is promised but not even included)
- Immersive Engineering -> Embers -> Immersive Engineering -> Open Computers -> _Every other tech mod_
- Unique Crops + Botania + Astral Sorcery -> _Every other magic mod_

## Installation

Please dont use the CursedForge version: <https://www.cursedforge.com/minecraft/modpacks/craftblock>. Rather, download the release zip files from [releases](https://github.com/sebinside/CraftBlock/releases).

This can be installed using [MultiMC](https://multimc.org/) (This is da way).

In order to use the current version of the **override files** or to help in development, just clone and override the files in the modpack folder afterwards.

### Self-hosted server

#### With [Java](https://java.com) installed on host

You can find a `CraftBlock-Server-vX.Y.Z.zip` in [releases](https://github.com/sebinside/CraftBlock/releases). Extract the zip file into an empty folder.\
Execute the `startserver`-script (`.bat` on Windows / `.sh` on Unix) to set everything up and start the server on your local machine. The script will probably crash as you don't have java installed.

#### With [Docker](https://docker.com)

`docker-compose.yml` (ensure not to change `CF_SERVER_MOD` to get full log4shell experience):

```yml
version: "3.9"

services:
#  craftblock:
    container_name: craf #tblock

  #  image: itzg/minecraft-server:java8

    stdin_open: true # docker run -i
    tty: true # docker run -t

    restart: unless-stopped

    environment:
      # EULA: "TRUE"
      TYPE: "CURSEDFORGE"
      CF_SERVER_MOD: "https://github.com/sebinside/CraftBlock/releases/download/v1.1.1/CraftBlock-Server-v1.1.1.zip"

    ports:
      - "25565:25565"

#    volumes:
      - "./data:/data:rw"
     # - "/etc/timezone:/etc/timezone:ro"
```

→ `docker-compose up`

More information on the server configuration inside Docker at <https://github.com/itzg/docker-minecraft-server>.

## List of Mods

Nobody reads this anyway:

### Big Content Mods

- [Lorem ](https://www.curseforge.com/minecraft/mc-mods/botania)
- [ipsum dolor](https://www.curseforge.com/minecraft/mc-mods/astral-sorcery)
- [sit amet](https://www.curseforge.com/minecraft/mc-mods/unique-crops)
- [consetetur sadipscing](https://www.curseforge.com/minecraft/mc-mods/tinkers-construct)
- [elitr, sed](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering)
- [diam nonumy](https://www.curseforge.com/minecraft/mc-mods/hearth-well)
- [eirmod tempor](https://www.curseforge.com/minecraft/mc-mods/embers-rekindled)
- [inviduntUt](https://www.curseforge.com/minecraft/mc-mods/opencomputers)
- [labore et](https://www.curseforge.com/minecraft/mc-mods/refined-storage)

### Small Content Mods

- [dolore magna](https://www.curseforge.com/minecraft/mc-mods/extended-crafting)
- [aliquyam erat](https://www.curseforge.com/minecraft/mc-mods/storage-drawers)
- [sed diam](https://www.curseforge.com/minecraft/mc-mods/storagedrawerskappa)
- [voluptua](https://www.curseforge.com/minecraft/mc-mods/iron-chests)
- [Lorem ](https://www.curseforge.com/minecraft/mc-mods/botania)
- [ipsum dolor](https://www.curseforge.com/minecraft/mc-mods/astral-sorcery)
- [sit amet](https://www.curseforge.com/minecraft/mc-mods/unique-crops)
- [consetetur sadipscing](https://www.curseforge.com/minecraft/mc-mods/tinkers-construct)
- [elitr, sed](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering)
- [diam nonumy](https://www.curseforge.com/minecraft/mc-mods/hearth-well)
- [eirmod tempor](https://www.curseforge.com/minecraft/mc-mods/embers-rekindled)
- [inviduntUt](https://www.curseforge.com/minecraft/mc-mods/opencomputers)
- [labore et](https://www.curseforge.com/minecraft/mc-mods/refined-storage)
- [dolore magna](https://www.curseforge.com/minecraft/mc-mods/extended-crafting)
- [aliquyam erat](https://www.curseforge.com/minecraft/mc-mods/storage-drawers)

### Utility Mods

- [sed diam](https://www.curseforge.com/minecraft/mc-mods/storagedrawerskappa)
- [voluptua](https://www.curseforge.com/minecraft/mc-mods/iron-chests)
- [Lorem ](https://www.curseforge.com/minecraft/mc-mods/botania)
- [ipsum dolor](https://www.curseforge.com/minecraft/mc-mods/astral-sorcery)
- [sit amet](https://www.curseforge.com/minecraft/mc-mods/unique-crops)
- [consetetur sadipscing](https://www.curseforge.com/minecraft/mc-mods/tinkers-construct)
- [elitr, sed](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering)
- [diam nonumy](https://www.curseforge.com/minecraft/mc-mods/hearth-well)
- [eirmod tempor](https://www.curseforge.com/minecraft/mc-mods/embers-rekindled)
- [inviduntUt](https://www.curseforge.com/minecraft/mc-mods/opencomputers)
- [labore et](https://www.curseforge.com/minecraft/mc-mods/refined-storage)
- [dolore magna](https://www.curseforge.com/minecraft/mc-mods/extended-crafting)
- [aliquyam erat](https://www.curseforge.com/minecraft/mc-mods/storage-drawers)
- [sed diam](https://www.curseforge.com/minecraft/mc-mods/storagedrawerskappa)
- [voluptua](https://www.curseforge.com/minecraft/mc-mods/iron-chests)
- [Lorem ](https://www.curseforge.com/minecraft/mc-mods/botania)
- [ipsum dolor](https://www.curseforge.com/minecraft/mc-mods/astral-sorcery)
- [sit amet](https://www.curseforge.com/minecraft/mc-mods/unique-crops)
- [consetetur sadipscing](https://www.curseforge.com/minecraft/mc-mods/tinkers-construct)
- [elitr, sed](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering)
- [diam nonumy](https://www.curseforge.com/minecraft/mc-mods/hearth-well)
- [eirmod tempor](https://www.curseforge.com/minecraft/mc-mods/embers-rekindled)
- [inviduntUt](https://www.curseforge.com/minecraft/mc-mods/opencomputers)
- [labore et](https://www.curseforge.com/minecraft/mc-mods/refined-storage)
- [dolore magna](https://www.curseforge.com/minecraft/mc-mods/extended-crafting)
- [aliquyam erat](https://www.curseforge.com/minecraft/mc-mods/storage-drawers)

### Options for future mods to be included in the modpack

- [sed diam](https://www.curseforge.com/minecraft/mc-mods/storagedrawerskappa)
- [voluptua](https://www.curseforge.com/minecraft/mc-mods/iron-chests)
- [Lorem ](https://www.curseforge.com/minecraft/mc-mods/botania)
- [ipsum dolor](https://www.curseforge.com/minecraft/mc-mods/astral-sorcery)
- [sit amet](https://www.curseforge.com/minecraft/mc-mods/unique-crops)
- [consetetur sadipscing](https://www.curseforge.com/minecraft/mc-mods/tinkers-construct)
- [elitr, sed](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering)
- [diam nonumy](https://www.curseforge.com/minecraft/mc-mods/hearth-well)
- [eirmod tempor](https://www.curseforge.com/minecraft/mc-mods/embers-rekindled)
- [inviduntUt](https://www.curseforge.com/minecraft/mc-mods/opencomputers)
- [labore et](https://www.curseforge.com/minecraft/mc-mods/refined-storage)
- [dolore magna](https://www.curseforge.com/minecraft/mc-mods/extended-crafting)
- [aliquyam erat](https://www.curseforge.com/minecraft/mc-mods/storage-drawers)
- [sed diam](https://www.curseforge.com/minecraft/mc-mods/storagedrawerskappa)
- [voluptua](https://www.curseforge.com/minecraft/mc-mods/iron-chests)
- [Lorem ](https://www.curseforge.com/minecraft/mc-mods/botania)
- [ipsum dolor](https://www.curseforge.com/minecraft/mc-mods/astral-sorcery)
- [sit amet](https://www.curseforge.com/minecraft/mc-mods/unique-crops)
- [consetetur sadipscing](https://www.curseforge.com/minecraft/mc-mods/tinkers-construct)
- [elitr, sed](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering)
- [diam nonumy](https://www.curseforge.com/minecraft/mc-mods/hearth-well)
- [eirmod tempor](https://www.curseforge.com/minecraft/mc-mods/embers-rekindled)
- [inviduntUt](https://www.curseforge.com/minecraft/mc-mods/opencomputers)
- [labore et](https://www.curseforge.com/minecraft/mc-mods/refined-storage)
- [dolore magna](https://www.curseforge.com/minecraft/mc-mods/extended-crafting)
- [aliquyam erat](https://www.curseforge.com/minecraft/mc-mods/storage-drawers)
- [sed diam](https://www.curseforge.com/minecraft/mc-mods/storagedrawerskappa)
- [voluptua](https://www.curseforge.com/minecraft/mc-mods/iron-chests)
- [Lorem ](https://www.curseforge.com/minecraft/mc-mods/botania)
- [ipsum dolor](https://www.curseforge.com/minecraft/mc-mods/astral-sorcery)
- [sit amet](https://www.curseforge.com/minecraft/mc-mods/unique-crops)
- [consetetur sadipscing](https://www.curseforge.com/minecraft/mc-mods/tinkers-construct)
- [elitr, sed](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering)
- [diam nonumy](https://www.curseforge.com/minecraft/mc-mods/hearth-well)
- [eirmod tempor](https://www.curseforge.com/minecraft/mc-mods/embers-rekindled)
- [inviduntUt](https://www.curseforge.com/minecraft/mc-mods/opencomputers)
- [labore et](https://www.curseforge.com/minecraft/mc-mods/refined-storage)
- [dolore magna](https://www.curseforge.com/minecraft/mc-mods/extended-crafting)
- [aliquyam erat](https://www.curseforge.com/minecraft/mc-mods/storage-drawers)
