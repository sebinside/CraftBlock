import scripts._base.disable;

//disc platter recipe
recipes.remove(<opencomputers:material:12>);
mods.embers.Stamper.add(<opencomputers:material:12>, <liquid:cobalt> * 12, <embers:stamp_gear>, <ore:plateAluminum>);

// Toasted Circuit board lol
val boardRaw = <opencomputers:material:2>;
val boardToasted = <opencomputers:material:3>;
val boardPrinted = <opencomputers:material:4>;
mods.jei.JEI.addItem(boardToasted);

boardRaw.displayName = "Raw Circuit Board (RCB)";
boardToasted.displayName = "Toasted Circuit Board (TCB)";

furnace.remove(boardPrinted);
moretweaker.cfb.KitchenAppliances.addToasterRecipe(boardToasted, boardRaw);
moretweaker.jei.MoreJei.addDescription(boardToasted, ["It's toasted, you know?"]);

mods.tconstruct.Casting.addTableRecipe(boardPrinted, boardToasted, <liquid:gold>, 32, true);

recipes.remove(boardRaw);
mods.immersiveengineering.Blueprint.addRecipe("components", boardRaw * 8, [<botania:dye:13>, <ore:ingotCopper>, <ore:paper>, <ore:clay>]);

// Chips are chips.
disable(<opencomputers:material:0>);
recipes.remove(<opencomputers:material:29>);
recipes.addShapeless("chips", <opencomputers:material:29> * 6, [<harvestcraft:mixingbowlitem>, <ore:foodPotatochips>, <ore:dustDiamond>]);

// Transitors
recipes.remove(<opencomputers:material:6>);
mods.immersiveengineering.Blueprint.addRecipe("components", <opencomputers:material:6> * 8, [<ore:ingotIron>, <ore:dustRedstone>, <ore:nuggetGold>, <refinedstorage:silicon>]);
