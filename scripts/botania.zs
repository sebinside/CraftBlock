import crafttweaker.item.IItemStack;

// Deactiate pebble crafting
recipes.removeShapeless(<minecraft:cobblestone>, [<ore:pebble>,<ore:pebble>,<ore:pebble>,<ore:pebble>]);
mods.jei.JEI.removeAndHide(<botania:manaresource:21>);

// Change Rune of fire (bc. netherrack requires tier 2)
mods.botania.RuneAltar.removeRecipe(<botania:rune:1>);
mods.botania.RuneAltar.addRecipe(<botania:rune:1> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <ore:gemHearthWellNetherCrystal>, <ore:gunpowder>, <ore:cropNetherWart>], 5200);

// Change manasteel durability
val manasteelTools = [
    <botania:manasteelaxe>,
    <botania:manasteelsword>,
    <botania:manasteelpick>,
    <botania:manasteelshovel>
] as IItemStack[];
                    
for tool in manasteelTools {
  tool.maxDamage = 30;
}

// Bowl of Water Hint
mods.jei.JEI.addDescription(<minecraft:bucket>, [
    "Use the wooden bowl to take a sip of water..."
]);

//Corporea Network
recipes.remove(<botania:corporeaspark:*>);
recipes.addShapeless("corporeaspark_0", <botania:corporeaspark:0>, [
  <botania:spark>, <ore:runeManaB>, <hwell:shard_h>, <uniquecrops:dyedbonemeal:13>
]);
recipes.addShaped("corporeaspark_1", <botania:corporeaspark:1>, [
	[<ore:ingotAsul>, <ore:gemLapis>, <ore:ingotAsul>], 
	[<ore:gemLapis>, <botania:corporeaspark:0>, <ore:gemLapis>], 
	[<ore:ingotAsul>, <ore:gemLapis>, <ore:ingotAsul>]
]);
recipes.remove(<botania:corporeaindex>);
recipes.addShaped("corporeaindex", <botania:corporeaindex>, [
	[<botania:corporeaspark:0>, <tconstruct:large_plate>.withTag({Material: "obsidian"}), <ore:blockGlassColorless>], 
	[<hwell:raw_asul_block>, <storagedrawers:controller>, <hwell:raw_asul_block>], 
	[<ore:blockGlassColorless>, <botania:corporeacrystalcube>, <botania:corporeaspark:0>]
]);
recipes.remove(<botania:corporeacrystalcube>);
recipes.addShaped("corporeacrystalcube", <botania:corporeacrystalcube>, [
	[<botania:corporeaspark:0>], 
	[<ore:blockHearthWellCrystal>], 
	[<minecraft:carpet:9>]
]);
