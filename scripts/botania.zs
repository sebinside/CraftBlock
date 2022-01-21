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

// Terrasteel melting
mods.tconstruct.Melting.addRecipe(<liquid:terrasteel> * 1296, <botania:storage:1>, 400 + 300);
mods.tconstruct.Melting.addRecipe(<liquid:terrasteel> * 144, <botania:manaresource:4>, 200 + 300);
mods.tconstruct.Melting.addRecipe(<liquid:terrasteel> * 16, <botania:manaresource:18>, 50 + 300);

// Terrasteel casting
mods.tconstruct.Casting.addBasinRecipe(<botania:storage:1>, null, <liquid:terrasteel>, 1296, false, 540);
mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:4>, <tconstruct:cast_custom>, <liquid:terrasteel>, 144, false, 60);
mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:18>, <tconstruct:cast_custom:1>, <liquid:terrasteel>, 16, false, 7);

// Elementium melting
mods.tconstruct.Melting.addRecipe(<liquid:elementium> * 1296, <botania:storage:2>, 350 + 300);
mods.tconstruct.Melting.addRecipe(<liquid:elementium> * 144, <botania:manaresource:7>, 175 + 300);
mods.tconstruct.Melting.addRecipe(<liquid:elementium> * 16, <botania:manaresource:19>, 75 + 300);

// Elementium casting
mods.tconstruct.Casting.addBasinRecipe(<botania:storage:2>, null, <liquid:elementium>, 1296, false, 540);
mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:7>, <tconstruct:cast_custom>, <liquid:elementium>, 144, false, 60);
mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:19>, <tconstruct:cast_custom:1>, <liquid:elementium>, 16, false, 7);

// Gaia spirit melting
mods.tconstruct.Melting.addRecipe(<liquid:gaia_spirit> * 144, <botania:manaresource:14>, 200 + 300);

// Gaia spirit casting
mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:14>, <tconstruct:cast_custom>, <liquid:gaia_spirit>, 144, false, 60);

// Botanic Alloy melting
mods.tconstruct.Melting.addRecipe(<liquid:botanic_alloy> * 1296, <contenttweaker:botanic_alloy_block>, 700 + 300);
mods.tconstruct.Melting.addRecipe(<liquid:botanic_alloy> * 144, <contenttweaker:botanic_alloy>, 400 + 300);

// Botanic Alloy casting
mods.tconstruct.Casting.addBasinRecipe(<contenttweaker:botanic_alloy_block>, null, <liquid:botanic_alloy>, 1296, false, 540);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:botanic_alloy>, <tconstruct:cast_custom>, <liquid:botanic_alloy>, 144, false, 60);

// Botanic Alloy alloying
mods.tconstruct.Alloy.addRecipe(<liquid:botanic_alloy> * 2, [<liquid:gaia_spirit>, <liquid:terrasteel>, <liquid:elementium> * 2]);

// Botanic Alloy crafting
recipes.addShaped("botanicAlloyCompressIngot", <contenttweaker:botanic_alloy_block>, [
    [<contenttweaker:botanic_alloy>, <contenttweaker:botanic_alloy>, <contenttweaker:botanic_alloy>],
    [<contenttweaker:botanic_alloy>, <contenttweaker:botanic_alloy>, <contenttweaker:botanic_alloy>],
    [<contenttweaker:botanic_alloy>, <contenttweaker:botanic_alloy>, <contenttweaker:botanic_alloy>]
]);
recipes.addShapeless("botanicAlloyDecompressBlock", <contenttweaker:botanic_alloy> * 9, [<contenttweaker:botanic_alloy_block>]);

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
