import scripts._base.disable;
import crafttweaker.item.IItemStack;

// Add easier ash pile recipe
moretweaker.cfb.KitchenAppliances.addToasterRecipe(<embers:dust_ash>, <ore:foodToast>);
moretweaker.jei.MoreJei.addDescription(<embers:dust_ash>, ["Ever wondered what happens if you toast a toast?"]);

// Remove embers' electrum
val electrumItems = [
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

val electrumTools = [
    <embers:pickaxe_electrum>,
    <embers:shovel_electrum>,
    <embers:sword_electrum>,
    <embers:axe_electrum>
] as IItemStack[];
for item in electrumTools {
    mods.embers.DawnstoneAnvil.blacklistBreakdown(item);
}

// Ember bore Tier 2
recipes.remove(<embers:ember_bore>);
mods.extendedcrafting.TableCrafting.addShaped(0, <embers:ember_bore>, [
    [<embers:block_caminite_brick>, <embers:block_caminite_brick>, <minecraft:hopper>, <embers:block_caminite_brick>, <embers:block_caminite_brick>], 
    [<embers:item_pipe>, <ore:scaffoldingSteel>, <embers:mech_core>, <ore:scaffoldingSteel>, <embers:item_pipe>], 
    [<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>], 
    [<hwell:grinding_wheel_crystal>, <ore:stickSteel>, <hwell:grinding_wheel_diamond>, <ore:stickSteel>, <hwell:grinding_wheel_crystal>], 
    [<tconstruct:tough_binding>.withTag({Material: "steel"}), null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null, <tconstruct:tough_binding>.withTag({Material: "steel"})]
]);

// Ember activator
recipes.remove(<embers:ember_activator>);
recipes.addShaped("emberActivator", <embers:ember_activator>, [
    [<embers:crystal_ember>, <minecraft:iron_bars>, <embers:crystal_ember>], 
    [<botania:spark>, <ore:scaffoldingSteel>, <botania:spark>], 
    [<embers:stairs_caminite_brick>, <ore:scaffoldingSteel>, <embers:stairs_caminite_brick>]
]);

// Two new caminite recipes
recipes.remove(<embers:blend_caminite>);
recipes.addShapeless("caminiteHard", <embers:blend_caminite>, [<minecraft:clay_ball>, <minecraft:clay_ball>, <ore:itemSlag>, <ore:itemSlag>, <minecraft:sand>]);

mods.embers.Melter.add(<liquid:clay> * 144, <ore:clay>);
mods.embers.Stamper.add(<embers:blend_caminite> * 4, <liquid:clay> * 144, <embers:stamp_flat>, <ore:sand>);

// Embers hammer
recipes.remove(<embers:tinker_hammer>);
mods.extendedcrafting.TableCrafting.addShaped(0, <embers:tinker_hammer>, [
    [<ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>], 
    [<ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <tconstruct:tough_binding>.withTag({Material: "steel"}), <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>], 
    [null, null, <ore:plankTreatedWood>, null, null], 
    [null, null, <ore:plankTreatedWood>, null, null], 
    [null, null, <ore:plankTreatedWood>, null, null]
]);

// Make core more hardcore!
recipes.remove(<embers:mech_core>);
<embers:mech_core>.displayName = "Mechanical Hardcore";
recipes.addShaped(<embers:mech_core>, [
    [<ore:ingotSteel>, <immersiveengineering:material:8>, <ore:ingotSteel>], 
    [<immersiveengineering:material:8>, <hwell:asul_machine_case>, <immersiveengineering:material:8>], 
    [<ore:ingotSteel>, <immersiveengineering:material:8>, <ore:ingotSteel>]
]);
