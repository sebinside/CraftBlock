import crafttweaker.item.IItemStack;
import scripts._base.addMoltenMetal;
import scripts._base.addCompressionRecipes;

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

//Manasteel
addMoltenMetal(<liquid:manasteel>, <botania:manaresource:17>, 75, 7, <botania:manaresource:0>, 200, 60, <botania:storage:0>, 400, 420);
mods.tconstruct.Melting.addRecipe(<liquid:manasteel> * 576, <contenttweaker:material_part:14>, 500);
mods.tconstruct.Melting.addRecipe(<liquid:manasteel> * 144, <contenttweaker:material_part:15>, 500);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:14>, <tconstruct:cast_custom:4>, <liquid:manasteel>, 576, false, 180);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:15>, <tconstruct:cast_custom:3>, <liquid:manasteel>, 144, false, 60);
//For some strange reason these recipes already exist for terrasteel & manasteel but must be crated for elementium & botanic alloy
//mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:material_part:14>, <botania:manaresource:0>, <immersiveengineering:mold:1>, 2400, 4);
//mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:material_part:15>, <botania:manaresource:0>, <immersiveengineering:mold:0>, 2400);


// Terrasteel
addMoltenMetal(<liquid:terrasteel>, <botania:manaresource:18>, 75, 7, <botania:manaresource:4>, 200, 60, <botania:storage:1>, 400, 420);
mods.tconstruct.Melting.addRecipe(<liquid:terrasteel> * 576, <contenttweaker:material_part:16>, 500);
mods.tconstruct.Melting.addRecipe(<liquid:terrasteel> * 144, <contenttweaker:material_part:17>, 500);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:16>, <tconstruct:cast_custom:4>, <liquid:terrasteel>, 576, false, 180);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:17>, <tconstruct:cast_custom:3>, <liquid:terrasteel>, 144, false, 60);
//mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:material_part:16>, <botania:manaresource:4>, <immersiveengineering:mold:1>, 2400, 4);
//mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:material_part:17>, <botania:manaresource:4>, <immersiveengineering:mold:0>, 2400);

// Elementium 
addMoltenMetal(<liquid:elementium>, <botania:manaresource:19>, 75, 7, <botania:manaresource:7>, 175, 60, <botania:storage:2>, 350, 420);
mods.tconstruct.Melting.addRecipe(<liquid:elementium> * 576, <contenttweaker:material_part:18>, 500);
mods.tconstruct.Melting.addRecipe(<liquid:elementium> * 144, <contenttweaker:material_part:19>, 500);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:18>, <tconstruct:cast_custom:4>, <liquid:elementium>, 576, false, 180);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:19>, <tconstruct:cast_custom:3>, <liquid:elementium>, 144, false, 60);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:material_part:18>, <botania:manaresource:7>, <immersiveengineering:mold:1>, 2400, 4);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:material_part:19>, <botania:manaresource:7>, <immersiveengineering:mold:0>, 2400);

// Gaia spirit
addMoltenMetal(<liquid:gaia_spirit>, null, -1, -1, <botania:manaresource:14>, 200, 60, null, -1, -1);

// Botanic Alloy
mods.tconstruct.Alloy.addRecipe(<liquid:botanic_alloy> * 2, [<liquid:gaia_spirit>, <liquid:terrasteel>, <liquid:elementium> * 2]);
addMoltenMetal(<liquid:botanic_alloy>, <ore:nuggetBotanicAlloy>, 125, 7, <ore:ingotBotanicAlloy>, 400, 60, <ore:blockBotanicAlloy>, 700, 540);
addCompressionRecipes("botanic_alloy", <ore:nuggetBotanicAlloy>, <ore:ingotBotanicAlloy>, <ore:blockBotanicAlloy>);
mods.tconstruct.Melting.addRecipe(<liquid:botanic_alloy> * 576, <contenttweaker:material_part:20>, 500);
mods.tconstruct.Melting.addRecipe(<liquid:botanic_alloy> * 144, <contenttweaker:material_part:21>, 500);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:20>, <tconstruct:cast_custom:4>, <liquid:botanic_alloy>, 576, false, 180);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:material_part:21>, <tconstruct:cast_custom:3>, <liquid:botanic_alloy>, 144, false, 60);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:material_part:20>, <ore:ingotBotanicAlloy>, <immersiveengineering:mold:1>, 2400, 4);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:material_part:21>, <ore:ingotBotanicAlloy>, <immersiveengineering:mold:0>, 2400);


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
recipes.addShapeless("corporeaspark_0", <botania:corporeaspark:0> * 2, [
  <botania:spark>, <ore:runeManaB>.reuse(), <hwell:shard_h>, <uniquecrops:dyedbonemeal:13>
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
