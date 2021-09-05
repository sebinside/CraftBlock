# How to contribute

This modpack uses the ModGradle PackDev plugin. In order to use that, it is recommended to use IntelliJ.

To make changes to the mod list, you should install the [Moonstone](https://github.com/noeppi-noeppi/Moonstone)
IntelliJ plugin. This will give you a preview of all the mods in the modpack along with options to add, remove
and update them when opening `modlist.json`. Make sure to set the game version to 1.12 in the top bar.

To build the pack, run `gradle build`. This will build the pack in `build/target`.

To run the game, use `gradle runClient` or `gradle runServer`.

Overrides should go in `data/side` where side is one of
  * `common`: Overrides for client and dedicated server side
  * `client`: Overrides for client side
  * `server`: Overrides for only dedicated server side