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


//Like Handheld Advanced Crafting but for the Assembly Halo
recipes.remove(<botania:craftinghalo>);
recipes.addShaped("extendedcrafting_craftinghalo", <botania:craftinghalo>, [
	[null, <ore:manaPearl>, null], 
	[<ore:ingotManasteel>, <extendedcrafting:table_advanced>, <ore:ingotManasteel>],
  [null, <ore:ingotManasteel>, null]
]);

// "Easier" Gourmaryllis recipe
mods.botania.Apothecary.removeRecipe("gourmaryllis");
mods.botania.Apothecary.addRecipe("gourmaryllis", [
    <ore:petalLightGray>,
    <ore:petalLightGray>,
    <ore:petalYellow>,
    <ore:petalYellow>,
    <ore:petalRed>,
    <ore:foodGourmetburger>,
    <ore:runeSummerB>
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

//Natura Pylons
recipes.remove(<botania:pylon:1>);
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/altar/botania_pylon", <botania:pylon:1>, 1200, 200, [
    null, <ore:nuggetTerrasteel>, null, 
    <ore:nuggetTerrasteel>, <botania:pylon:0>, <ore:nuggetTerrasteel>, 
    null, <minecraft:ender_eye>, null,
    null, null, null, null,
    null, null, null, null, 
    null, null, null, null,
    null, null, null, null
], "astralsorcery.constellation.aevitas");

//Gaia Pylons
recipes.remove(<botania:pylon:2>);
mods.astralsorcery.Altar.addTraitAltarRecipe("astralsorcery:shaped/internal/altar/botania_pylon", <botania:pylon:2>, 2400, 200, [
    null, <ore:elvenPixieDust>, null, 
    <ore:ingotElvenElementium>, <botania:pylon:0>, <ore:ingotElvenElementium>, 
    null, <ore:elvenPixieDust>, null,
    null, null, null, null,
    null, null, null, null, 
    null, null, null, null,
    null, null, null, null
], "astralsorcery.constellation.bootes");

//Glimmering livingwood
recipes.remove(<botania:livingwood:5>);
mods.astralsorcery.StarlightInfusion.addInfusion(<botania:livingwood:0>, <botania:livingwood:5>, false, 0.05, 200);
mods.astralsorcery.LightTransmutation.addTransmutation(<botania:livingwood:0>, <botania:livingwood:5>, 200);

//Elven Gateway
recipes.remove(<botania:alfheimportal>);
mods.extendedcrafting.TableCrafting.addShaped(0, <botania:alfheimportal>, [
	[<ore:livingwood>, <ore:livingwood>, <ore:nuggetTerrasteel>, <ore:livingwood>, <ore:livingwood>], 
	[<botania:livingwood:3>, <ore:runeWaterB>, <ore:nuggetTerrasteel>, <ore:runeSummerB>, <botania:livingwood:3>], 
	[<ore:livingwood>, <ore:runeEarthB>, <botania:livingwood:5>, <ore:runeEarthB>, <ore:livingwood>], 
	[<botania:livingwood:3>, <ore:runeAutumnB>, <ore:nuggetTerrasteel>, <ore:runeManaB>, <botania:livingwood:3>], 
	[<ore:livingwood>, <ore:livingwood>, <ore:nuggetTerrasteel>, <ore:livingwood>, <ore:livingwood>]
]);
