// Change every single recipe lol

recipes.remove(<waystones:warp_stone>);
recipes.addShaped("warpstone", <waystones:warp_stone>, [
	[<botania:dye:10>, <ore:manaPearl>, <botania:dye:10>], 
	[<ore:manaPearl>, <hwell:crystal_catalyst>, <ore:manaPearl>], 
	[<botania:dye:10>, <ore:manaPearl>, <botania:dye:10>]
]);

recipes.remove(<waystones:waystone>);
recipes.addShaped("waystone", <waystones:waystone>, [
	[null, <minecraft:stonebrick:3>, null], 
	[<minecraft:stone_slab>, <waystones:warp_stone>, <minecraft:stone_slab>], 
	[<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>]
]);

recipes.remove(<waystones:return_scroll>);
recipes.addShapeless(<waystones:return_scroll>, [<astralsorcery:itemcraftingcomponent:5>, <minecraft:chorus_fruit>]);

recipes.remove(<waystones:bound_scroll>);
recipes.addShapeless(<waystones:bound_scroll>, [<astralsorcery:itemcraftingcomponent:5>, <ore:manaPearl>]);

recipes.remove(<waystones:warp_scroll>);
recipes.addShapeless(<waystones:warp_scroll>, [<astralsorcery:itemcraftingcomponent:5>, <ore:manaPearl>, <opencomputers:material:14>]);

