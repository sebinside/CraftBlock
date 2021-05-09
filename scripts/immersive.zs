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

// Remove normal crafting of mechanical components
recipes.remove(<immersiveengineering:material:8>);
recipes.remove(<immersiveengineering:material:9>);

// new workbench recipe
recipes.remove(<immersiveengineering:wooden_device0:2>);
mods.extendedcrafting.TableCrafting.addShaped(0, <immersiveengineering:wooden_device0:2>, [
	[null, null, null, null, <minecraft:carpet:11>], 
	[null, null, <minecraft:carpet:0>, <minecraft:carpet:11>, <minecraft:carpet:0>], 
	[<minecraft:anvil:2>, <immersiveengineering:toolbox>, <astralsorcery:itemlinkingtool>, <minecraft:carpet:0>, <minecraft:carpet:11>], 
	[<ore:slabTreatedWood>, <ore:slabTreatedWood>, <ore:slabTreatedWood>, <ore:slabTreatedWood>, <ore:slabTreatedWood>], 
	[<storagedrawers:basicdrawers:2>, <quark:gold_button>, null, null, <ore:fenceTreatedWood>]
]);

// new blueprints
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}));

mods.astralsorcery.Altar.addAttunementAltarRecipe("blueprint1", <immersiveengineering:blueprint>.withTag({blueprint: "components"}), 500, 300, [
			<immersiveengineering:tool:3>, <bibliocraft:maptool>, <bibliocraft:biblioglasses>,
			<minecraft:dye:0>, <ore:dustLapis>, <uniquecrops:generic:12>,
			<astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>,
			<ore:plateSteel>, <immersiveengineering:wirecoil:5>, <minecraft:crafting_table>, <immersiveengineering:tool:0>]);

mods.astralsorcery.Altar.addAttunementAltarRecipe("blueprint2", <immersiveengineering:blueprint>.withTag({blueprint: "molds"}), 500, 300, [
			<immersiveengineering:tool:3>, <bibliocraft:maptool>, <bibliocraft:biblioglasses>,
			<minecraft:dye:0>, <ore:dustLapis>, <uniquecrops:generic:12>,
			<astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>,
			<harvestcraft:espressoitem>, <minecraft:stone_pressure_plate>, <hwell:crushing_block>, <ore:craftingPiston>]);

mods.astralsorcery.Altar.addAttunementAltarRecipe("blueprint3", <immersiveengineering:blueprint>.withTag({blueprint: "bullet"}), 500, 300, [
			<immersiveengineering:tool:3>, <bibliocraft:maptool>, <bibliocraft:biblioglasses>,
			<minecraft:dye:0>, <ore:dustLapis>, <uniquecrops:generic:12>,
			<astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>,
			<minecraft:spectral_arrow>, <minecraft:magma_cream>, <minecraft:dispenser>, <minecraft:tnt>]);