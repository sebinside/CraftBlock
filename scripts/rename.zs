import crafttweaker.item.IItemStack;

// Rename black iron items to heavy iron
val blackIronItems = [
    <extendedcrafting:storage>,
    <extendedcrafting:frame>,
    <extendedcrafting:lamp>,
    <extendedcrafting:lamp:1>,
    <extendedcrafting:trimmed>,
    <extendedcrafting:trimmed:1>,
    <extendedcrafting:trimmed:2>,
    <extendedcrafting:trimmed:3>,
    <extendedcrafting:trimmed:4>,
    <extendedcrafting:trimmed:5>,
    <extendedcrafting:material>,
    <extendedcrafting:material:1>,
    <extendedcrafting:material:2>,
    <extendedcrafting:material:3>
] as IItemStack[];

for item in blackIronItems {
    val newName = item.displayName.replace("Black", "Heavy");
    item.displayName = newName;
}

// Rename nether crystal to toasted crystal
val netherCrystalItems = [
    <hwell:crystal_nether>,
    <hwell:crystal_nether_block>,
    <hwell:box_crystal_nether_block>
] as IItemStack[];

for item in netherCrystalItems {
    val newName = item.displayName.replace("Nether", "Toasted");
    item.displayName = newName;
}


/*
Deactivated for now, because we have the skateKAPPA mod!
//mods.uniquecrops.SeedCrafting.addRecipe(<hwell:core_stone>, <ore:ingotBlackIron>, <ore:livingrock>, <ore:stone>);
// This never gets old
import crafttweaker.item.IItemStack;

// Rename items
val copperItems = [
    <embers:ingot_copper>,
    <embers:nugget_copper>,
    <embers:plate_copper>,
    <embers:pickaxe_copper>,
    <embers:axe_copper>,
    <embers:shovel_copper>,
    <embers:hoe_copper>,
    <embers:sword_copper>,
    <embers:aspectus_copper>,
    <embers:block_copper>,
    <embers:ore_copper>,
    <embers:copper_cell>,
    <embers:charger>,
    <ironchest:iron_shulker_box_silver:3>,
    <ironchest:iron_shulker_box_cyan:3>,
    <ironchest:iron_shulker_box_purple:3>,
    <ironchest:iron_shulker_box_blue:3>,
    <ironchest:iron_shulker_box_brown:3>,
    <ironchest:iron_shulker_box_green:3>,
    <ironchest:iron_shulker_box_red:3>,
    <ironchest:iron_shulker_box_black:3>,
    <jaopca:item_coincopper>,
    <embers:seed_copper>,
    <immersiveengineering:ore>,
    <immersiveengineering:storage>,
    <immersiveengineering:storage_slab>,
    <immersiveengineering:sheetmetal>,
    <immersiveengineering:sheetmetal_slab>,
    <immersiveengineering:metal_decoration0>,
    <immersiveengineering:material:20>,
    <immersiveengineering:metal>,
    <immersiveengineering:metal:9>,
    <immersiveengineering:metal:20>,
    <immersiveengineering:metal:30>,
    <ironchest:copper_silver_chest_upgrade>,
    <ironchest:copper_iron_chest_upgrade>,
    <ironchest:wood_copper_chest_upgrade>,
    <ironchest:copper_silver_shulker_upgrade>,
    <ironchest:copper_iron_shulker_upgrade>,
    <ironchest:vanilla_copper_shulker_upgrade>,
    <ironchest:iron_chest:3>,
    <ironchest:iron_shulker_box_white:3>,
    <ironchest:iron_shulker_box_orange:3>,
    <ironchest:iron_shulker_box_magenta:3>,
    <ironchest:iron_shulker_box_light_blue:3>,
    <ironchest:iron_shulker_box_yellow:3>,
    <ironchest:iron_shulker_box_lime:3>,
    <ironchest:iron_shulker_box_pink:3>,
    <ironchest:iron_shulker_box_gray:3>,
    <jaopca:item_gearcopper>,
    <jaopca:item_stickcopper>,
    <jaopca:item_dusttinycopper>,
    <jaopca:item_dustsmallcopper>,
    <jaopca:item_platedensecopper>
    ] as IItemStack[];
    
for item in copperItems {
    val newName = item.displayName.replace("Copper", "Kappa");
    item.displayName = newName;
}

// Melans edits
game.setLocalization("fluid.tconstruct.copper.name","Molten Kappa");
game.setLocalization("material.copper.name","Kappa");
*/