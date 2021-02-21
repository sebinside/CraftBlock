import crafttweaker.oredict.IOreDict;

// Base metals are available via garden of glass
mods.botania.Orechid.addOre(<ore:oreAquamarine>, 3000);

val oreDictEnt = oreDict["rockCrystal"];
oreDictEnt.add(<astralsorcery:blockcustomore>);
mods.botania.Orechid.addOre("rockCrystal", 2000);

// Marble
mods.botania.ManaInfusion.addInfusion(<astralsorcery:blockmarble>, <botania:livingrock>, 1500);