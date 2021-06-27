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

// Remove Tier 3 and 4 crafting recipes just for now
recipes.remove(<extendedcrafting:table_elite>);
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

// Better Ultimate Ingot
mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:storage:4>, [
	[<minecraft:dye:5>, <minecraft:dye:6>, <minecraft:dye:7>, <minecraft:dye:8>, <minecraft:dye:9>, <minecraft:dye:10>, <minecraft:dye:12>], 
	[<botania:dye:9>, <botania:dye:10>, <botania:dye:11>, <botania:dye:12>, <botania:dye:13>, <botania:dye:14>, <minecraft:dye:13>], 
	[<botania:dye:8>, <hwell:asul_ingot>, <tconstruct:ingots>, <tconstruct:ingots:1>, <tconstruct:ingots:2>, <botania:dye:15>, <minecraft:dye:14>], 
	[<botania:dye:7>, <embers:ingot_dawnstone>, <minecraft:yellow_flower>, <minecraft:red_flower>, <embers:ingot_silver>, <botania:manaresource:23>, <quark:root_dye>], 
	[<botania:dye:6>, <botania:manaresource>, <minecraft:red_flower:1>, <minecraft:red_flower:8>, <embers:ingot_nickel>, <harvestcraft:cocoapowderitem>, <quark:root_dye:1>], 
	[<botania:dye:5>, <botania:manaresource:4>, <botania:manaresource:7>, <minecraft:gold_ingot>, <minecraft:iron_ingot>, <harvestcraft:currypowderitem>, <quark:root_dye:2>], 
	[<botania:dye:4>, <botania:dye:3>, <botania:dye:2>, <botania:dye:1>, <botania:dye>, <astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust>]
]);
