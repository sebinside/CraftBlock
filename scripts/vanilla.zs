// Gravel and Sand
mods.botania.ManaInfusion.removeRecipe(<minecraft:sand>);
mods.botania.ManaInfusion.addAlchemy(<minecraft:gravel>, <minecraft:cobblestone>, 50);
mods.botania.ManaInfusion.addAlchemy(<minecraft:sand>, <minecraft:gravel>, 50);

// podzol -> mycelium
mods.astralsorcery.LightTransmutation.addTransmutation(<minecraft:dirt:2>, <minecraft:mycelium>, 20);

// Grindstone coal dust
mods.astralsorcery.Grindstone.addRecipe(<minecraft:coal>, <jaopca:item_dustcoal>);

// Remove botania nether wart crafting
mods.botania.ManaInfusion.removeRecipe(<minecraft:nether_wart>);

// Fuck up people by changing the crafting table recipe
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped("vanilla_crafting_table", <minecraft:crafting_table>, [[<ore:logWood>, <ore:logWood>], [<ore:logWood>, <ore:logWood>]]);
recipes.addShaped("fake_crafting_table", <extendedcrafting:crafting_table>, [[<ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>]]);