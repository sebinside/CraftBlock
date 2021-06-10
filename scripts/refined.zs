import scripts._base.disable;
import crafttweaker.item.IItemStack;

// Remove autocrafting & unneeded disks
val itemsToRemove = [
    <refinedstorage:grid:2>,
    <refinedstorage:crafter>,
    <refinedstorage:interface>,
    <refinedstorage:fluid_interface>,
    <refinedstorage:crafter_manager>,
    <refinedstorage:pattern>,
    <refinedstorage:upgrade:3>,
    <refinedstorage:crafting_monitor>,
    <refinedstorage:wireless_crafting_monitor>,
    <refinedstorage:wireless_crafting_monitor:1>,
    <refinedstorage:storage:0>,
    <refinedstorage:storage:1>,
    <refinedstorage:storage:2>,
    <refinedstorage:storage:3>,
    <refinedstorage:storage:4>,
    <refinedstorage:fluid_storage:0>,
    <refinedstorage:fluid_storage:1>,
    <refinedstorage:fluid_storage:2>,
    <refinedstorage:fluid_storage:3>,
    <refinedstorage:fluid_storage:4>,
    <refinedstorage:fluid_storage_disk:0>,
    <refinedstorage:fluid_storage_disk:4>,
    <refinedstorage:storage_disk:0>,
    <refinedstorage:storage_disk:4>
] as IItemStack[];

for item in itemsToRemove {
    disable(item);
}

// Way better quartz enriched iron lol
<refinedstorage:quartz_enriched_iron>.displayName = "Quartz Enriched Metal";
<refinedstorage:quartz_enriched_iron_block>.displayName = "Block of Quartz Enriched Metal";
mods.botania.RuneAltar.addRecipe(<refinedstorage:quartz_enriched_iron_block>, [<ore:ingotAstralStarmetal>, <ore:ingotSteel>, <ore:ingotManasteel>, <ore:ingotElectrum>, <botania:quartztypeelf>], 7020);
recipes.removeShaped(<refinedstorage:quartz_enriched_iron>);

// New cables
recipes.remove(<refinedstorage:cable>);
recipes.addShaped(<refinedstorage:cable> * 12, [
    [<refinedstorage:quartz_enriched_iron>, <ore:oc:cable>, <refinedstorage:quartz_enriched_iron>], 
    [<refinedstorage:quartz_enriched_iron>, <ore:oc:cable>, <refinedstorage:quartz_enriched_iron>], 
    [<refinedstorage:quartz_enriched_iron>, <ore:oc:cable>, <refinedstorage:quartz_enriched_iron>]
]);

// Processor crafting
mods.botania.ManaInfusion.addAlchemy(<refinedstorage:processor:3> * 16, <opencomputers:component:0>, 1337);
mods.botania.ManaInfusion.addAlchemy(<refinedstorage:processor:4> * 8, <opencomputers:component:1>, 4200);
mods.botania.ManaInfusion.addAlchemy(<refinedstorage:processor:5> * 4, <opencomputers:component:2>, 7020);

furnace.remove(<refinedstorage:processor:3>);
furnace.remove(<refinedstorage:processor:4>);
furnace.remove(<refinedstorage:processor:5>);

disable(<refinedstorage:processor:0>);
disable(<refinedstorage:processor:1>);
disable(<refinedstorage:processor:2>);
disable(<refinedstorage:processor_binding>);


// Silicon
furnace.remove(<refinedstorage:silicon>);
mods.astralsorcery.Grindstone.removeRecipe(<jaopca:item_dustquartz>);
mods.botania.ManaInfusion.addInfusion(<refinedstorage:silicon>, <jaopca:item_dustquartz>, 314);

// I hate everything-themed storage parts
val storageParts = [
    <refinedstorage:storage_part:0>,
    <refinedstorage:storage_part:1>,
    <refinedstorage:storage_part:2>,
    <refinedstorage:storage_part:3>
] as IItemStack[];

for item in storageParts {
    recipes.remove(item);
}
recipes.addShaped(<refinedstorage:storage_part:0>, [
	[<refinedstorage:processor:3>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:3>],
	[<refinedstorage:silicon>, <opencomputers:storage:2>, <refinedstorage:silicon>],
	[<refinedstorage:processor:3>, <refinedstorage:silicon>, <refinedstorage:processor:3>]
]);

mods.astralsorcery.StarlightInfusion.addInfusion(<refinedstorage:storage_part:0>, <refinedstorage:storage_part:1>, false, 0.5, 200);

recipes.addShaped(<refinedstorage:storage_part:2>, [
	[<refinedstorage:processor:4>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:4>],
	[<refinedstorage:storage_part:1>, <opencomputers:storage:3>, <refinedstorage:storage_part:1>],
	[<refinedstorage:processor:4>, <refinedstorage:storage_part:1>, <refinedstorage:processor:4>]
]);

recipes.addShaped(<refinedstorage:storage_part:3>, [
	[<refinedstorage:processor:5>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:processor:5>],
	[<refinedstorage:storage_part:2>, <opencomputers:storage:4>, <refinedstorage:storage_part:2>],
	[<refinedstorage:processor:5>, <refinedstorage:storage_part:2>, <refinedstorage:processor:5>]
]);

//use bifrost blocks for storage housings
val drives = [
    <refinedstorage:storage_housing>,
    <refinedstorage:storage_disk:1>,
    <refinedstorage:storage_disk:2>,
    <refinedstorage:storage_disk:3>
] as IItemStack[];

for i, drive in drives {
    val storagePart = i > 0 ? storageParts[i] : null; //1k storage is disabled, instead modify housing recipe
    recipes.removeShaped(drive, [
        [<ore:blockGlass>, <minecraft:redstone>, <ore:blockGlass>],
        [<minecraft:redstone>, storagePart, <minecraft:redstone>],
        [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
    ]);
    recipes.addShaped(drive, [
        [<botania:bifrostperm>, <minecraft:redstone>, <botania:bifrostperm>],
        [<minecraft:redstone>, storagePart, <minecraft:redstone>],
        [<refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>]
    ]);
}

// Way cooler fluid disks
val fluidDisks = [
    <refinedstorage:fluid_storage_disk:1>,
    <refinedstorage:fluid_storage_disk:2>,
    <refinedstorage:fluid_storage_disk:3>,
] as IItemStack[];

for item in fluidDisks {
    recipes.remove(item);
}

val fluidParts = [
    <refinedstorage:fluid_storage_part:0>,
    <refinedstorage:fluid_storage_part:1>,
    <refinedstorage:fluid_storage_part:2>,
    <refinedstorage:fluid_storage_part:3>,
] as IItemStack[];

for item in fluidParts {
    disable(item);
}

mods.botania.RuneAltar.addRecipe(<refinedstorage:fluid_storage_disk:1> * 2, [
    <refinedstorage:storage_disk:1>, 
    <refinedstorage:storage_disk:1>, 
    <minecraft:water_bucket>, 
    <minecraft:lava_bucket>, 
    <forge:bucketfilled>.withTag({FluidName: "iron", Amount: 1000}), 
    <minecraft:milk_bucket>
], 7020);

mods.botania.RuneAltar.addRecipe(<refinedstorage:fluid_storage_disk:2> * 2, [
    <refinedstorage:storage_disk:2>, 
    <refinedstorage:storage_disk:2>, 
    <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), 
    <forge:bucketfilled>.withTag({FluidName: "copper", Amount: 1000}), 
    <forge:bucketfilled>.withTag({FluidName: "steel", Amount: 1000}), 
    <forge:bucketfilled>.withTag({FluidName: "obsidian", Amount: 1000})
], 7020);

mods.botania.RuneAltar.addRecipe(<refinedstorage:fluid_storage_disk:3> * 2, [
    <refinedstorage:storage_disk:3>, 
    <refinedstorage:storage_disk:3>, 
    <forge:bucketfilled>.withTag({FluidName: "astral_starmetal", Amount: 1000}), 
    <forge:bucketfilled>.withTag({FluidName: "gold", Amount: 1000}), 
    <forge:bucketfilled>.withTag({FluidName: "manyullyn", Amount: 1000}), 
    <forge:bucketfilled>.withTag({FluidName: "uranium", Amount: 1000})
], 7020);
