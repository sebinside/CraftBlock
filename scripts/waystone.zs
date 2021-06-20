// Change every single recipe lol

val eversioShiftingStar = <astralsorcery:itemshiftingstar>.withTag({
	astralsorcery:{
		starAttunement: "astralsorcery.constellation.evorsio"
	}
});
recipes.remove(<waystones:warp_stone>);
mods.extendedcrafting.TableCrafting.addShaped(0, <waystones:warp_stone>, [
	[null, <botania:dye:10>, <ore:elvenPixieDust>, <botania:dye:10>, null], 
	[<botania:dye:10>, <embers:ember_cluster>, <ore:manaPearl>, <embers:ember_cluster>, <botania:dye:10>], 
	[<ore:elvenPixieDust>, <hwell:crystal_catalyst>, eversioShiftingStar, <hwell:crystal_catalyst>, <ore:elvenPixieDust>], 
	[<botania:dye:10>, <embers:ember_cluster>, <ore:manaPearl>, <embers:ember_cluster>, <botania:dye:10>], 
	[null, <botania:dye:10>, <ore:elvenPixieDust>, <botania:dye:10>, null]
]);

recipes.remove(<waystones:waystone>);
mods.extendedcrafting.TableCrafting.addShaped(0, <waystones:waystone>, [
	[null, <botania:livingrock0stairs>, <botania:livingrock:4>, <botania:livingrock0stairs>, null], 
	[null, <ore:livingrock>, <ore:manaPearl>, <ore:livingrock>, null], 
	[null, <ore:manaPearl>, <hwell:crystal_catalyst>, <ore:manaPearl>, null], 
	[null, <ore:livingrock>, <ore:manaPearl>, <ore:livingrock>, null], 
	[<botania:livingrock0stairs>, <ore:livingrock>, <ore:livingrock>, <ore:livingrock>, <botania:livingrock0stairs>]
]);

recipes.remove(<waystones:return_scroll>);
recipes.addShapeless(<waystones:return_scroll>, [<ore:paper>, <ore:enderpearl>]);

recipes.remove(<waystones:bound_scroll>);
recipes.addShapeless(<waystones:bound_scroll>, [<astralsorcery:itemcraftingcomponent:5>, <ore:manaPearl>]);

recipes.remove(<waystones:warp_scroll>);
recipes.addShapeless(<waystones:warp_scroll>, [<astralsorcery:itemcraftingcomponent:5>, <ore:manaPearl>, <opencomputers:material:14>]);

