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
