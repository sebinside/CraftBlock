import scripts._base.disable;
import crafttweaker.item.IItemStack;

// Remove autocrafting
var autocraftingItems = [
    <refinedstorage:grid:2>,
    <refinedstorage:crafter>,
    <refinedstorage:interface>,
    <refinedstorage:fluid_interface>,
    <refinedstorage:crafter_manager>,
    <refinedstorage:pattern>,
    <refinedstorage:upgrade:3>,
    <refinedstorage:crafting_monitor>,
    <refinedstorage:wireless_crafting_monitor>,
    <refinedstorage:wireless_crafting_monitor:1>
] as IItemStack[];

for item in autocraftingItems {
    disable(item);
}

// Add new Quartz Enriched Iron recipe (inspired by Enriched Infused Wood recipe)
recipes.remove(<refinedstorage:quartz_enriched_iron>);
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("quartz_enriched", <refinedstorage:quartz_enriched_iron> * 8, 100, 10, [
	null, <immersiveengineering:metal:8>, null, 
	<immersiveengineering:metal:8>, <botania:quartz:4>, <immersiveengineering:metal:8>, 
	null, <immersiveengineering:metal:8>, null
]);