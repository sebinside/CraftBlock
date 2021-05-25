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

// Lampenboegen!
<quark:lit_lamp>.displayName = "Lampenbogen";

// Rename graphics cards because lol
<opencomputers:card:1>.displayName = "RTX 3070";
<opencomputers:card:2>.displayName = "RTX 3080";
<opencomputers:card:3>.displayName = "RTX 3090";

// Rename Quartz Enriched Iron to Steel
<refinedstorage:quartz_enriched_iron>.displayName = "Quartz Enriched Steel";

// Rename Arc Furnace to Arken Furnace because I need attention
<immersiveengineering:metal_multiblock:13>.displayName = "Arken Furnace";