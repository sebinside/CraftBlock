// heavy mix depends both on botania and astral sorcery
recipes.remove(<hwell:heavy_mesh>);
recipes.addShapeless("heavy_mesh", <hwell:heavy_mesh> * 2, [<minecraft:stone> | <minecraft:stone:1> | <minecraft:stone:3> | <minecraft:stone:5>, <ore:dustCoal>, <ore:livingwood>]);

// heavy ingot is twice as expensive
furnace.remove(<hwell:heavy_ingot>);
furnace.addRecipe(<hwell:heavy_ingot>, <hwell:heavy_mesh>);

// make crushing block depend on extendedcrafting's black iron
recipes.remove(<hwell:crushing_block>);
recipes.addShaped("crushing_block", <hwell:crushing_block>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:cobblestone>, <ore:blockBlackIron>, <minecraft:cobblestone>], [<hwell:heavy_ingot>, <hwell:heavy_ingot>, <hwell:heavy_ingot>]]);
