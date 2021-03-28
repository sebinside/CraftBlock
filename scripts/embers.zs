import scripts._base.disable;
import crafttweaker.item.IItemStack;

// Add easier ash pile recipe
moretweaker.cfb.KitchenAppliances.addToasterRecipe(<embers:dust_ash>, <ore:foodToast>);
moretweaker.jei.MoreJei.addDescription(<embers:dust_ash>, ["Ever wondered what happens if you toast a toast?"]);

// Remove embers' electrum
var electrumItems = [
    <embers:ingot_electrum>,
    <embers:plate_electrum>,
    <embers:nugget_electrum>,
    <embers:block_electrum>
] as IItemStack[];

for item in electrumItems {
    disable(item);
}

mods.embers.Stamper.remove(<embers:ingot_electrum>);
mods.embers.Stamper.add(<immersiveengineering:metal:7>, <liquid:electrum> * 144, <embers:stamp_bar>);
mods.embers.Stamper.remove(<embers:plate_electrum>);
mods.embers.Stamper.add(<immersiveengineering:metal:37>, <liquid:electrum> * 144, <embers:stamp_plate>);

var electrumTools = [
    <embers:pickaxe_electrum>,
    <embers:shovel_electrum>,
    <embers:sword_electrum>,
    <embers:axe_electrum>
] as IItemStack[];
for item in electrumTools {
    mods.embers.DawnstoneAnvil.blacklistBreakdown(item);
}