// Black iron now depends on hearth well
recipes.removeShapeless(<extendedcrafting:material>, [<ore:ingotIron>, <ore:dyeBlack>]);
recipes.addShapeless("black_iron_ingot", <extendedcrafting:material>, [<ore:ingotIron>, <hwell:heavy_mesh>]);

// Remove Tier 1 table
recipes.remove(<extendedcrafting:table_basic>);
mods.jei.JEI.removeAndHide(<extendedcrafting:table_basic>);

// New advanced crafting table recipe
recipes.remove(<extendedcrafting:table_advanced>);
recipes.addShaped("extendedcrafting_table_advanced", <extendedcrafting:table_advanced>, 
[[<ore:runeAutumnB>, <astralsorcery:blockworldilluminator>, <ore:runeAutumnB>], 
[<astralsorcery:blockaltar>, <ore:blockSoulsteel>, <astralsorcery:blockaltar>], 
[null, <embers:ashen_stone>, null]]);