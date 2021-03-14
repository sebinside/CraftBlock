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

// Add dirty info
moretweaker.jei.MoreJei.addDescription(<minecraft:dirt>, ["Uuuh, this rod of the lands is a dirty little boi..."]);

// Make nether wart crafting easier
mods.uniquecrops.SeedCrafting.removeRecipe(<minecraft:nether_wart>);
mods.uniquecrops.SeedCrafting.addRecipe(<minecraft:nether_wart> * 3, <minecraft:dye:1>, <uniquecrops:generic:9>, <uniquecrops:generic:9>);
recipes.remove(<minecraft:nether_wart_block>);
recipes.addShaped(<minecraft:nether_wart_block>, [[<ore:cropNetherWart>, <ore:cropNetherWart>], [<ore:cropNetherWart>, <ore:cropNetherWart>]]);

// Remove too easy snow crafting
mods.botania.PureDaisy.removeRecipe(<minecraft:snow>);