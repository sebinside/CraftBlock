import scripts._base.disable;
import crafttweaker.item.IItemStack;

// Remove autocrafting
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
    <refinedstorage:fluid_storage:4>
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


// Remove crafting of all disks
val disks = [
    <refinedstorage:storage_disk:1>,
    <refinedstorage:storage_disk:2>,
    <refinedstorage:storage_disk:3>,
    <refinedstorage:fluid_storage_disk:1>,
    <refinedstorage:fluid_storage_disk:2>,
    <refinedstorage:fluid_storage_disk:3>,
] as IItemStack[];

for item in disks {
    recipes.remove(item);
}
val disabledDisks = [
    <refinedstorage:storage_housing>,
    <refinedstorage:fluid_storage_disk:0>,
    <refinedstorage:fluid_storage_disk:4>,
    <refinedstorage:storage_disk:0>,
    <refinedstorage:storage_disk:4>
] as IItemStack[];

for item in disabledDisks {
    disable(item);
}

// I hate everything-themed storage disks
mods.astralsorcery.Altar.addAttunementAltarRecipe("disk1", <refinedstorage:storage_disk:1> * 8, 500, 300, [
    <botania:bifrostperm>, <ore:dustRedstone>, <botania:bifrostperm>,
    <ore:dustRedstone>, <refinedstorage:storage_part:1>, <ore:dustRedstone>,
    <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>,
    <opencomputers:storage:2>, <opencomputers:storage:2>, <opencomputers:storage:2>, <opencomputers:storage:2>
]);

mods.astralsorcery.Altar.addAttunementAltarRecipe("disk2", <refinedstorage:storage_disk:2> * 8, 500, 300, [
    <botania:bifrostperm>, <ore:dustRedstone>, <botania:bifrostperm>,
    <ore:dustRedstone>, <refinedstorage:storage_part:2>, <ore:dustRedstone>,
    <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>,<refinedstorage:quartz_enriched_iron>,
    <opencomputers:storage:3>, <opencomputers:storage:3>, <opencomputers:storage:3>, <opencomputers:storage:3>
]);

mods.astralsorcery.Altar.addAttunementAltarRecipe("disk3", <refinedstorage:storage_disk:3> * 8, 500, 300, [
    <botania:bifrostperm>, <ore:dustRedstone>, <botania:bifrostperm>,
    <ore:dustRedstone>, <refinedstorage:storage_part:3>, <ore:dustRedstone>,
    <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>,<refinedstorage:quartz_enriched_iron>,
    <opencomputers:storage:4>, <opencomputers:storage:4>, <opencomputers:storage:4>, <opencomputers:storage:4>
]);


// Way cooler fluid disks
val disabledFluidParts = [
    <refinedstorage:fluid_storage_part:0>,
    <refinedstorage:fluid_storage_part:1>,
    <refinedstorage:fluid_storage_part:2>,
    <refinedstorage:fluid_storage_part:3>,
] as IItemStack[];

for item in disabledFluidParts {
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
