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

// Way better quartz enriched iron lol
<refinedstorage:quartz_enriched_iron>.displayName = "Quartz Enriched Metal";
<refinedstorage:quartz_enriched_iron_block>.displayName = "Block of Quartz Enriched Metal";
mods.botania.RuneAltar.addRecipe(<refinedstorage:quartz_enriched_iron_block>, [<ore:ingotAstralStarmetal>, <ore:ingotSteel>, <ore:ingotManasteel>, <ore:ingotElectrum>, <botania:quartztypeelf>], 7020);
recipes.removeShaped(<refinedstorage:quartz_enriched_iron>);