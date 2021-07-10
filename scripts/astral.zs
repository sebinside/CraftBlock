import crafttweaker.oredict.IOreDict;

// Base metals are available via garden of glass
mods.botania.Orechid.addOre(<ore:oreAquamarine>, 3000);

val oreDictEnt = oreDict["rockCrystal"];
oreDictEnt.add(<astralsorcery:blockcustomore>);
mods.botania.Orechid.addOre("rockCrystal", 2000);

// Marble
mods.botania.ManaInfusion.addInfusion(<astralsorcery:blockmarble>, <botania:livingrock>, 1500);

// Change cave illuminator recipe
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/illuminator", <astralsorcery:blockworldilluminator>, 200, 1600, [
    <astralsorcery:blockmarble:6>, <extendedcrafting:material:7>, <astralsorcery:blockmarble:6>, 
    <astralsorcery:itemcraftingcomponent>, null, <astralsorcery:itemcraftingcomponent>, 
    <astralsorcery:blockmarble:6>, <extendedcrafting:material:7>, <astralsorcery:blockmarble:6>
]);

// Remove diamond daschd
mods.astralsorcery.Grindstone.removeRecipe(<jaopca:item_dustdiamond>);

// Make papers way easier bc early game
mods.botania.ManaInfusion.addInfusion(<astralsorcery:itemconstellationpaper>, <astralsorcery:itemcraftingcomponent:5>, 25000);

// Alternative recipes for first early game recipes
recipes.remove(<astralsorcery:blockaltar>);
recipes.addShaped("astralaltar", <astralsorcery:blockaltar>, [
	[<ore:stoneMarble>, <astralsorcery:blockblackmarble>, <ore:stoneMarble>], 
	[<ore:stoneMarble>, <ore:gemAquamarine>, <ore:stoneMarble>], 
	[<ore:stoneMarble>, <botania:runealtar>, <ore:stoneMarble>]
]);

recipes.remove(<astralsorcery:itemwand>);
recipes.addShaped("astralwand", <astralsorcery:itemwand>.withTag({astralsorcery: {}}), [
	[null, <ore:gemAquamarine>, <ore:manaPearl>], 
	[null, <botania:twigwand>, <ore:gemAquamarine>], 
	[<quark:marble_speleothem>, null, null]
]);

// Astral Starmetal via tinkers construct so it doesn't require a floating crystal 
mods.tconstruct.Alloy.addRecipe(<liquid:astral_starmetal> * 144, [
	<liquid:iron> * 144, 
	<liquid:astralsorcery.liquidstarlight> * 1000
]);
// TODO: Should original recipe be disabled?
//mods.astralsorcery.LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, false);
