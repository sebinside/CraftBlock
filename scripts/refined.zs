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