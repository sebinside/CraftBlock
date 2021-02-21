// Change Artisia recipe
recipes.remove(<uniquecrops:seedartisia>);
mods.botania.Apothecary.addRecipe(<uniquecrops:seedartisia>, [<uniquecrops:seednormal>, <uniquecrops:seednormal>, <uniquecrops:seednormal>, <uniquecrops:seednormal>, <minecraft:crafting_table>]);

// Add note to essence
mods.jei.JEI.addDescription(<uniquecrops:generic:9>, "Dropped from Feroxia crops.");

// Add easy way to dupliate feroxia
mods.botania.ManaInfusion.addInfusion(<uniquecrops:seedferoxia> * 2, <uniquecrops:seedferoxia>, 10000);