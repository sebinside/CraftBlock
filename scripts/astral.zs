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
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("astralsorcery:shaped/internal/altar/illuminator", <astralsorcery:blockworldilluminator>, 200, 1600, [<astralsorcery:blockmarble:6>, <extendedcrafting:material:7>, <astralsorcery:blockmarble:6>, <astralsorcery:itemcraftingcomponent>, null, <astralsorcery:itemcraftingcomponent>, <astralsorcery:blockmarble:6>, <extendedcrafting:material:7>, <astralsorcery:blockmarble:6>]);

// Remove diamond daschd
mods.astralsorcery.Grindstone.removeRecipe(<jaopca:item_dustdiamond>);