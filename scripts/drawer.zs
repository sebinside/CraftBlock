// New controller-like recipes
recipes.remove(<storagedrawers:controller>);
recipes.addShaped("storagedrawers_controller", <storagedrawers:controller>, [[<ore:stoneBrackish>, <ore:stoneBrackish>, <ore:stoneBrackish>], [<minecraft:repeater>, <storagedrawers:compdrawers>, <minecraft:repeater>], [<ore:blockHeavy>, <ore:manaDiamond>, <ore:blockHeavy>]]);

recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped("storagedrawers_controller_slave", <storagedrawers:controllerslave>, [[<ore:stoneBrackish>, <ore:stoneBrackish>, <ore:stoneBrackish>], [<minecraft:repeater>, <ore:drawerBasic>, <minecraft:repeater>], [<ore:blockHeavy>, <ore:ingotGold>, <ore:blockHeavy>]]);

recipes.remove(<storagedrawers:compdrawers>);
recipes.addShaped("storagedrawers_compacting_drawer", <storagedrawers:compdrawers>, [[<ore:stoneBrackish>, <ore:stoneBrackish>, <ore:stoneBrackish>], [<minecraft:piston>, <ore:drawerBasic>, <minecraft:piston>], [<ore:stoneBrackish>, <ore:ingotIron>, <ore:stoneBrackish>]]);

// Better key recipe lul
recipes.remove(<storagedrawers:drawer_key>);
mods.tconstruct.Casting.addTableRecipe(<storagedrawers:drawer_key>, <storagedrawers:upgrade_template>, <liquid:gold>, 304, true);