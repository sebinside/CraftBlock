import scripts._base.disable;
import crafttweaker.item.IItemStack;

// Remove tconstruct complement steel
var items = [
    <tcomplement:materials:10>,
    <tcomplement:materials:20>,
    <tcomplement:storage:1>,
    <tcomplement:steel_helmet>,
    <tcomplement:steel_chestplate>,
    <tcomplement:steel_leggings>,
    <tcomplement:steel_boots>
] as IItemStack[];

for item in items {
    disable(item);
}