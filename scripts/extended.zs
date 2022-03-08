import crafttweaker.item.IItemStack;
import scripts._base.disable;

// Black iron now depends on hearth well
recipes.removeShapeless(<extendedcrafting:material>, [<ore:ingotIron>, <ore:dyeBlack>]);
recipes.addShapeless("black_iron_ingot", <extendedcrafting:material>, [<ore:ingotIron>, <hwell:heavy_mesh>]);

// Remove Tier 1 table
recipes.remove(<extendedcrafting:table_basic>);
mods.jei.JEI.removeAndHide(<extendedcrafting:table_basic>);

// New advanced crafting table recipe
recipes.remove(<extendedcrafting:table_advanced>);
recipes.addShaped("extendedcrafting_table_advanced", <extendedcrafting:table_advanced>, [
    [<ore:runeAutumnB>, <astralsorcery:blockworldilluminator>, <ore:runeAutumnB>], 
    [<astralsorcery:blockaltar>, <ore:blockSoulsteel>, <astralsorcery:blockaltar>], 
    [null, <embers:ashen_stone>, null]
]);

// New elite crafting table recipe
recipes.remove(<extendedcrafting:table_elite>);
mods.tconstruct.Casting.addBasinRecipe(<extendedcrafting:table_elite>, <contenttweaker:elite_table_base>, <liquid:botanic_alloy>, 2592, true, 1200);

// Remove Tier  4 crafting recipe just for now
recipes.remove(<extendedcrafting:table_ultimate>);

// Way better luminessence recipe
recipes.remove(<extendedcrafting:material:7>);
mods.astralsorcery.StarlightInfusion.addInfusion(<hwell:locked_light>, <extendedcrafting:material:7>, false, 0.2, 100);

// Remove not needed items
val items = [
    <extendedcrafting:material:41>,
    <extendedcrafting:storage:3>,
    <extendedcrafting:storage:6>,
    <extendedcrafting:frame>,
    <extendedcrafting:lamp>,
    <extendedcrafting:lamp:1>,
    <extendedcrafting:trimmed>,
    <extendedcrafting:trimmed:1>,
    <extendedcrafting:trimmed:2>,
    <extendedcrafting:trimmed:3>,
    <extendedcrafting:trimmed:4>,
    <extendedcrafting:trimmed:5>,
    <extendedcrafting:guide>,
    <extendedcrafting:material:8>,
    <extendedcrafting:material:9>,
    <extendedcrafting:material:10>,
    <extendedcrafting:material:11>,
    <extendedcrafting:material:12>,
    <extendedcrafting:material:13>,
    <extendedcrafting:material:14>,
    <extendedcrafting:material:15>,
    <extendedcrafting:material:16>,
    <extendedcrafting:material:17>,
    <extendedcrafting:material:18>,
    <extendedcrafting:material:19>,
    <extendedcrafting:material:25>,
    <extendedcrafting:material:24>,
    <extendedcrafting:material:40>
] as IItemStack[];

for item in items {
    disable(item);
}

// Remove Crystaltine Ingot recipe
mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:material:24>);

// Better Ultimate Ingot
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:material:32> * 2, [
	[<ore:ingotElvenElementium>, <ore:ingotArdite>, <ore:ingotBrickNether>, <ore:ingotBlackIron>, <ore:ingotBrickNether>, <ore:ingotArdite>, <ore:ingotElvenElementium>],
	[<botania:dye:14>, <tconstruct:materials:11>, <embers:ember_cluster>, <uniquecrops:dyedbonemeal:1>, <embers:ember_cluster>, <tconstruct:materials:11>, <botania:dye:14>],
	[<ore:ingotTerrasteel>, <ore:ingotUranium>, <extendedcrafting:material:36>, <ore:ingotHOPGraphite>, <extendedcrafting:material:36>, <ore:ingotUranium>, <ore:ingotTerrasteel>],
	[<botania:dye:5>, <tconstruct:materials:9>, <ore:gemEmerald>, <contenttweaker:aspectus_primal>, <ore:gemEmerald>, <tconstruct:materials:9>, <botania:dye:5>],
	[<contenttweaker:botanic_alloy>, <ore:ingotAsul>, <extendedcrafting:material:48>, <ore:ingotHeavy>, <extendedcrafting:material:48>, <ore:ingotAsul>, <contenttweaker:botanic_alloy>],
	[<botania:dye:3>, <tconstruct:materials:10>, <ore:ingotMetaldiamond>, <minecraft:dye:4>, <ore:ingotMetaldiamond>, <tconstruct:materials:10>, <botania:dye:3>],
	[<ore:ingotKnightslime>, <ore:ingotManyullyn>, <ore:ingotSoulsteel>, <ore:ingotSteel>, <ore:ingotSoulsteel>, <ore:ingotManyullyn>, <ore:ingotKnightslime>]
]);

//Handheld Advanced Crafting
recipes.remove(<extendedcrafting:handheld_table>);
recipes.addShaped("extendedcrafting_handheld_table", <extendedcrafting:handheld_table>, [
	[null, <extendedcrafting:table_advanced>], 
	[<ore:stickWood>, null]
]);

// Enhanced Ender Ingot
mods.embers.Alchemy.add(<extendedcrafting:material:48> * 2, [<contenttweaker:nether_star_core>, <ore:gemEnderBiotite>, <ore:gemEnderBiotite>, <extendedcrafting:material:36>, <extendedcrafting:material:36>], {
    "primal": 450 .. 480
});
