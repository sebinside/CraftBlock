// Make hammer require plates
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped("immersiveengineeringToolHammer", <immersiveengineering:tool>, [[null, <ore:plateIron>, <minecraft:string>], [null, <ore:stickWood> | <ore:stickTreatedWood>, <ore:plateIron>], [<ore:stickWood> | <ore:stickTreatedWood>, null, null]]);

// Remove hammer plate crafting
val plateRecipeBase = "immersiveengineering:material/plate_";
val plateRecipes = ["steel", "iron", "copper", "aluminum", "lead", "silver", "nickel", "uranium", "constantan", "electrum", "gold"] as string[];

for entry in plateRecipes {
    val recipeName = plateRecipeBase + entry;
    recipes.removeByRecipeName(recipeName);
}

// Make dynamo harder
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped("immersiveengineeringDynamo", <immersiveengineering:metal_device1:2>, [[<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);

// Make coils depend on embers end game
recipes.remove(<immersiveengineering:metal_decoration0>);
recipes.remove(<immersiveengineering:metal_decoration0:1>);
recipes.remove(<immersiveengineering:metal_decoration0:2>);

recipes.addShaped("immersiveengineeringCoil1", <immersiveengineering:metal_decoration0>, [[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>], [<immersiveengineering:wirecoil>, <ore:ingotDawnstone>, <immersiveengineering:wirecoil>], [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]]);

recipes.addShaped("immersiveengineeringCoil2", <immersiveengineering:metal_decoration0:1>, [[<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>], [<immersiveengineering:wirecoil:1>, <ore:ingotDawnstone>, <immersiveengineering:wirecoil:1>], [<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>]]);

recipes.addShaped("immersiveengineeringCoil3", <immersiveengineering:metal_decoration0:2>, [[<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>], [<immersiveengineering:wirecoil:2>, <ore:ingotDawnstone>, <immersiveengineering:wirecoil:2>], [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>]]);
