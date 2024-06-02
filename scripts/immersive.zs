import scripts._base.disable;
import crafttweaker.item.IItemStack;

// Make hammer require plates
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped("immersiveengineeringToolHammer", <immersiveengineering:tool>, [
    [null, <ore:plateIron>, <minecraft:string>],
    [null, <ore:stickWood> | <ore:stickTreatedWood>, <ore:plateIron>],
    [<ore:stickWood> | <ore:stickTreatedWood>, null, null]
]);

// Remove hammer plate crafting
val plateRecipeBase = "immersiveengineering:material/plate_";
val plateRecipes = ["steel", "iron", "copper", "aluminum", "lead", "silver", "nickel", "uranium", "constantan", "electrum", "gold"] as string[];

for entry in plateRecipes {
    val recipeName = plateRecipeBase + entry;
    recipes.removeByRecipeName(recipeName);
}

//Blast Furnance Advanced Crafting
recipes.remove(<immersiveengineering:stone_decoration:1>);
mods.extendedcrafting.TableCrafting.addShaped(0, <immersiveengineering:stone_decoration:1> * 27, [
	[<quark:sandstone_new:5>, <hwell:heat_block>, <quark:sandstone_new:5>, <hwell:heat_block>, <quark:sandstone_new:5>], 
	[<hwell:heat_block>, <ore:stoneOnyxSmooth>, <botania:thornchakram:1>, <ore:stoneOnyxSmooth>, <hwell:heat_block>], 
	[<quark:sandstone_new:5>, <ore:powderBlaze>, <botania:rune:15>.reuse(), <ore:powderBlaze>, <quark:sandstone_new:5>], 
	[<hwell:heat_block>, <ore:rodBlaze>, <astralsorcery:itemperkgem:1>, <ore:rodBlaze>, <hwell:heat_block>], 
	[<quark:sandstone_new:5>, <hwell:heat_block>, <quark:sandstone_new:5>, <hwell:heat_block>, <quark:sandstone_new:5>]
]);

// Make dynamo harder
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped("immersiveengineeringDynamo", <immersiveengineering:metal_device1:2>, [
    [<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>], 
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

// Make coils depend on embers end game
recipes.remove(<immersiveengineering:metal_decoration0>);
recipes.remove(<immersiveengineering:metal_decoration0:1>);
recipes.remove(<immersiveengineering:metal_decoration0:2>);

recipes.addShaped("immersiveengineeringCoil1", <immersiveengineering:metal_decoration0>, [
    [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>], 
    [<immersiveengineering:wirecoil>, <ore:ingotDawnstone>, <immersiveengineering:wirecoil>], 
    [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]
]);

recipes.addShaped("immersiveengineeringCoil2", <immersiveengineering:metal_decoration0:1>, [
    [<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>],
    [<immersiveengineering:wirecoil:1>, <ore:ingotDawnstone>, <immersiveengineering:wirecoil:1>],
    [<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>]
]);

recipes.addShaped("immersiveengineeringCoil3", <immersiveengineering:metal_decoration0:2>, [
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>],
    [<immersiveengineering:wirecoil:2>, <ore:ingotDawnstone>, <immersiveengineering:wirecoil:2>],
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>]
]);

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
    [<storagedrawerskappa:basicdrawers_immersiveengineering_treated_wood:2>, <quark:gold_button>, null, null, <ore:fenceTreatedWood>]
]);

// new blueprints
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}));

val immersive_manual = <immersiveengineering:tool:3>.withTag({
    "akashictome:displayName": "Engineer's Manual",
    "akashictome:definedMod": "immersiveengineering",
    "akashictome:is_morphing": 1 as byte,
    display: {
        Name: "§rAkashic Tome (§aEngineer's Manual§r)"
    }
}) as IItemStack;
mods.astralsorcery.Altar.addAttunementAltarRecipe("blueprint1", <immersiveengineering:blueprint>.withTag({blueprint: "components"}), 500, 300, [
    immersive_manual, <bibliocraft:maptool>, <bibliocraft:biblioglasses>,
    <minecraft:dye:0>, <ore:dustLapis>, <uniquecrops:generic:12>,
    <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>,
    <ore:plateSteel>, <immersiveengineering:wirecoil:5>, <minecraft:crafting_table>, <immersiveengineering:tool:0>
]);

mods.astralsorcery.Altar.addAttunementAltarRecipe("blueprint2", <immersiveengineering:blueprint>.withTag({blueprint: "molds"}), 500, 300, [
    immersive_manual, <bibliocraft:maptool>, <bibliocraft:biblioglasses>,
    <minecraft:dye:0>, <ore:dustLapis>, <uniquecrops:generic:12>,
    <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>,
    <harvestcraft:espressoitem>, <minecraft:stone_pressure_plate>, <hwell:crushing_block>, <ore:craftingPiston>
]);

mods.astralsorcery.Altar.addAttunementAltarRecipe("blueprint3", <immersiveengineering:blueprint>.withTag({blueprint: "bullet"}), 500, 300, [
    immersive_manual, <bibliocraft:maptool>, <bibliocraft:biblioglasses>,
    <minecraft:dye:0>, <ore:dustLapis>, <uniquecrops:generic:12>,
    <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>, <astralsorcery:itemcraftingcomponent:5>,
    <minecraft:spectral_arrow>, <minecraft:magma_cream>, <minecraft:dispenser>, <minecraft:tnt>
]);

// Remove circuit board of IE
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:27>);
disable(<immersiveengineering:material:27>);

recipes.remove(<immersiveengineering:metal_device1:11>);
recipes.addShaped("turret_gun", <immersiveengineering:metal_device1:11>, [
    [null, <immersiveengineering:toolupgrade:8>, null], 
    [null, <immersiveengineering:revolver>, <ore:oc:materialCircuitBoardPrinted>], 
    [<immersiveengineering:toolupgrade:5>, <immersiveengineering:wooden_device0:6>, <immersiveengineering:metal_decoration0:3>]
]);

recipes.remove(<immersiveengineering:metal_device1:10>);
recipes.addShaped("turret_chemthrower", <immersiveengineering:metal_device1:10>, [
    [null, <immersiveengineering:toolupgrade:8>, null], 
    [null, <immersiveengineering:chemthrower>, <ore:oc:materialCircuitBoardPrinted>], 
    [<immersiveengineering:metal_device0:4>, <immersiveengineering:wooden_device0:6>, <immersiveengineering:metal_decoration0:3>]
]);

recipes.remove(<immersiveengineering:connector:13>);
recipes.addShaped("connector_probe", <immersiveengineering:connector:13>, [
    [null, <immersiveengineering:connector:12>, null], 
    [<ore:paneGlass>, <ore:oc:materialCircuitBoardPrinted>, <ore:paneGlass>], 
    [null, <ore:gemQuartz>, null]
]);

// Remove way too easy concrete recipes
recipes.removeByRecipeName("immersiveengineering:stone_decoration/concrete");
recipes.removeByRecipeName("immersiveengineering:stone_decoration/concrete2");
recipes.removeByRecipeName("immersiveengineering:stone_decoration/concrete_leaded");

// Obtainment description for concrete
moretweaker.jei.MoreJei.addDescription(<immersiveengineering:stone_decoration:5>, ["Let Liquid Concrete chill on the floor for a bit."]);

// Harder concrete recipe in the mixer
mods.immersiveengineering.Mixer.removeRecipe(<liquid:concrete>);
mods.immersiveengineering.Mixer.addRecipe(<liquid:concrete> * 500, <liquid:clay> * 500, [<ore:dustNiter>, <ore:itemSlag>, <tconstruct:soil>, <tconstruct:soil>], 16000);

// Make leaded concrete require casting
mods.tconstruct.Casting.addBasinRecipe(<immersiveengineering:stone_decoration:7>, <immersiveengineering:stone_decoration:5>, <liquid:lead>, 576, true);
