import scripts._base.disable;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


# Base blocks

// Disable conflicting items
disable(<jaopca:block_blockcertusquartz>);
disable(<appliedenergistics2:charged_quartz_ore>);
mods.immersiveengineering.Crusher.removeRecipe(<appliedenergistics2:material:1>);

// Remove charged certus ore from orechid spawns
mods.botania.Orechid.removeOre(<ore:oreChargedCertusQuartz>);

// Charged certus blocks now need 4 crystals instead of 9
recipes.remove(<jaopca:block_blockchargedcertusquartz>);
recipes.removeByRecipeName("jaopca:material_x9s1r6");
recipes.addShapeless(<appliedenergistics2:material:1> * 4, [<jaopca:block_blockchargedcertusquartz>]);
recipes.addShapedMirrored(<jaopca:block_blockchargedcertusquartz>, [
    [<appliedenergistics2:material:1>, <appliedenergistics2:material:1>],
    [<appliedenergistics2:material:1>, <appliedenergistics2:material:1>]
]);

// New charged certus recipe with hourglass
mods.uniquecrops.HourglassConversion.addRecipe(<jaopca:block_blockchargedcertusquartz>, <appliedenergistics2:quartz_block>);

// New fluix recipe
mods.botania.RuneAltar.addRecipe(<appliedenergistics2:fluix_block>, [<ore:gemQuartz>, <ore:gemQuartz>, <ore:blockChargedCertusQuartz>, <ore:blockRedstone>, <ore:gemHearthWellNetherCrystal>], 20000);

// Very annoying quartz glass recipe
recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.addShaped(<appliedenergistics2:quartz_glass> * 4, [
    [<hwell:gaseous_glass>, <ore:dustQuartz>, <hwell:gaseous_glass>],
    [<ore:dustQuartz>, <tconstruct:clear_glass>, <ore:dustQuartz>],
    [<hwell:gaseous_glass>, <ore:dustQuartz>, <hwell:gaseous_glass>]
]);

// Vibrant quartz glass
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
mods.botania.ElvenTrade.addRecipe([<appliedenergistics2:quartz_vibrant_glass>], [<appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_glass>]);

// Remove invalid descriptions for in-world crafting
val pureCrystals = [
    <appliedenergistics2:material:1>,
    <appliedenergistics2:material:10>,
    <appliedenergistics2:material:11>,
    <appliedenergistics2:material:12>
] as IItemStack[];

for item in pureCrystals {
    moretweaker.jei.MoreJei.removeDescription(item);
}


# Storage components

// Nerf storage components
recipes.remove(<appliedenergistics2:material:35>);
recipes.addShaped(<appliedenergistics2:material:35>, [
    [<ore:dustRedstone>, <appliedenergistics2:material:23>, <ore:dustRedstone>],
    [<ore:itemSilicon>, <refinedstorage:storage_part>, <ore:itemSilicon>],
    [<ore:dustRedstone>, <ore:itemSilicon>, <ore:dustRedstone>]
]);

recipes.remove(<appliedenergistics2:material:36>);
recipes.addShaped(<appliedenergistics2:material:36>, [
    [<ore:dustRedstone>, <appliedenergistics2:material:22>, <ore:dustRedstone>],
    [<appliedenergistics2:material:35>, <refinedstorage:storage_part:1>, <appliedenergistics2:material:35>],
    [<ore:dustRedstone>, <appliedenergistics2:material:35>, <ore:dustRedstone>]
]);

recipes.remove(<appliedenergistics2:material:37>);
recipes.addShaped(<appliedenergistics2:material:37>, [
    [<ore:dustRedstone>, <appliedenergistics2:material:22>, <ore:dustRedstone>],
    [<appliedenergistics2:material:36>, <refinedstorage:storage_part:2>, <appliedenergistics2:material:36>],
    [<ore:dustRedstone>, <appliedenergistics2:material:36>, <ore:dustRedstone>]
]);

recipes.remove(<appliedenergistics2:material:38>);
recipes.addShaped(<appliedenergistics2:material:38>, [
    [<ore:dustRedstone>, <appliedenergistics2:material:24>, <ore:dustRedstone>],
    [<appliedenergistics2:material:37>, <refinedstorage:storage_part:3>, <appliedenergistics2:material:37>],
    [<ore:dustRedstone>, <appliedenergistics2:material:37>, <ore:dustRedstone>]
]);

// Nerf fluid storage components
recipes.remove(<appliedenergistics2:material:54>);
mods.botania.ManaInfusion.addAlchemy(<appliedenergistics2:material:54>, <appliedenergistics2:material:35>, 69420);

recipes.remove(<appliedenergistics2:material:55>);
recipes.addShaped(<appliedenergistics2:material:55>, [
    [<ore:dustRedstone>, <appliedenergistics2:material:22>, <ore:dustRedstone>],
    [<appliedenergistics2:material:54>, <refinedstorage:fluid_storage_part:1>, <appliedenergistics2:material:54>],
    [<ore:dustRedstone>, <appliedenergistics2:material:54>, <ore:dustRedstone>]
]);

recipes.remove(<appliedenergistics2:material:56>);
recipes.addShaped(<appliedenergistics2:material:56>, [
    [<ore:dustRedstone>, <appliedenergistics2:material:22>, <ore:dustRedstone>],
    [<appliedenergistics2:material:55>, <refinedstorage:fluid_storage_part:2>, <appliedenergistics2:material:55>],
    [<ore:dustRedstone>, <appliedenergistics2:material:55>, <ore:dustRedstone>]
]);

recipes.remove(<appliedenergistics2:material:57>);
recipes.addShaped(<appliedenergistics2:material:57>, [
    [<ore:dustRedstone>, <appliedenergistics2:material:24>, <ore:dustRedstone>],
    [<appliedenergistics2:material:56>, <refinedstorage:fluid_storage_part:3>, <appliedenergistics2:material:56>],
    [<ore:dustRedstone>, <appliedenergistics2:material:56>, <ore:dustRedstone>]
]);


# Base parts

// Formation core
recipes.addShaped(<appliedenergistics2:material:43> * 2, [
    [null, <appliedenergistics2:material:22>, null],
    [<refinedstorage:core>, <jaopca:item_dustardite>, <refinedstorage:core>],
    [null, <appliedenergistics2:material:22>, null]
]);

// Annihilation core
recipes.addShaped(<appliedenergistics2:material:44> * 2, [
    [null, <appliedenergistics2:material:22>, null],
    [<refinedstorage:core:1>, <jaopca:item_dustardite>, <refinedstorage:core:1>],
    [null, <appliedenergistics2:material:22>, null]
]);

// Dumb inscriber recipe
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [
    [<refinedstorage:quartz_enriched_iron>, <harvestcraft:presser>, <refinedstorage:quartz_enriched_iron>],
    [<ore:materialPressedwax>, <appliedenergistics2:fluix_block>, <refinedstorage:quartz_enriched_iron>],
    [<refinedstorage:quartz_enriched_iron>, <harvestcraft:presser>, <refinedstorage:quartz_enriched_iron>]
]);

// New processor recipes
mods.appliedenergistics2.Inscriber.addRecipe(<appliedenergistics2:material:23>, <ore:quartzRed>, false, <refinedstorage:processor:3>, <opencomputers:component:3>);
mods.appliedenergistics2.Inscriber.addRecipe(<appliedenergistics2:material:22>, <ore:quartzRed>, false, <refinedstorage:processor:4>, <opencomputers:component:4>);
mods.appliedenergistics2.Inscriber.addRecipe(<appliedenergistics2:material:24>, <ore:quartzRed>, false, <refinedstorage:processor:5>, <opencomputers:component:5>);


# Energy / controller blocks

// Energy cell
recipes.addShaped(<appliedenergistics2:energy_cell> * 2, [
    [<ore:gemChargedCertusQuartz>, <embers:aspectus_silver>, <ore:gemChargedCertusQuartz>],
    [<immersiveengineering:material:3>, <immersiveengineering:stone_decoration:7>, <immersiveengineering:material:3>],
    [<ore:gemChargedCertusQuartz>, <embers:aspectus_silver>, <ore:gemChargedCertusQuartz>]
]);

// Dense energy cell
recipes.remove(<appliedenergistics2:dense_energy_cell>);
recipes.addShaped(<appliedenergistics2:dense_energy_cell>, [
    [<appliedenergistics2:energy_cell>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:energy_cell>],
    [<appliedenergistics2:quartz_glass>, <appliedenergistics2:energy_acceptor>, <appliedenergistics2:quartz_glass>],
    [<appliedenergistics2:energy_cell>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:energy_cell>]
]);

// Vewy hawd energy acceptor recipe
recipes.remove(<appliedenergistics2:energy_acceptor>);
mods.extendedcrafting.TableCrafting.addShaped(0, <appliedenergistics2:energy_acceptor>, [
	[<refinedstorage:machine_casing>, <refinedstorage:machine_casing>, null, null, null, <refinedstorage:machine_casing>, <refinedstorage:machine_casing>],
	[<refinedstorage:machine_casing>, <ore:crystalPureFluix>, <appliedenergistics2:fluix_block>, <refinedstorage:upgrade:6>, <appliedenergistics2:fluix_block>, <ore:crystalPureFluix>, <refinedstorage:machine_casing>],
	[null, <appliedenergistics2:fluix_block>, <ore:oc:apu2>, <refinedstorage:storage_part:2>, <ore:oc:apu2>, <appliedenergistics2:fluix_block>, null],
	[null, <refinedstorage:upgrade:9>, <refinedstorage:storage_part:2>, <refinedstorage:controller>, <refinedstorage:storage_part:2>, <refinedstorage:upgrade:9>, null],
	[null, <appliedenergistics2:fluix_block>, <ore:oc:apu2>, <refinedstorage:storage_part:2>, <ore:oc:apu2>, <appliedenergistics2:fluix_block>, null],
	[<refinedstorage:machine_casing>, <ore:crystalPureFluix>, <appliedenergistics2:fluix_block>, <refinedstorage:upgrade:6>, <appliedenergistics2:fluix_block>, <ore:crystalPureFluix>, <refinedstorage:machine_casing>],
	[<refinedstorage:machine_casing>, <refinedstorage:machine_casing>, null, null, null, <refinedstorage:machine_casing>, <refinedstorage:machine_casing>]
]);

// Even harder controller recipe
recipes.remove(<appliedenergistics2:controller>);
mods.extendedcrafting.TableCrafting.addShaped(0, <appliedenergistics2:controller>, [
	[<immersiveengineering:stone_decoration:7>, <appliedenergistics2:fluix_block>, <ore:blockUltimate>, <ore:blockUltimate>, <ore:blockUltimate>, <appliedenergistics2:fluix_block>, <immersiveengineering:stone_decoration:7>], 
	[<appliedenergistics2:fluix_block>, <ore:oc:inventoryControllerUpgrade>, <refinedstorage:fluid_storage_part:3>, <appliedenergistics2:dense_energy_cell>, <refinedstorage:fluid_storage_part:3>, <ore:oc:tankControllerUpgrade>, <appliedenergistics2:fluix_block>], 
	[<ore:blockUltimate>, <refinedstorage:fluid_storage_part:3>, <appliedenergistics2:material:38>, <ore:oc:server3>, <appliedenergistics2:material:38>, <refinedstorage:fluid_storage_part:3>, <ore:blockUltimate>], 
	[<ore:blockUltimate>, <appliedenergistics2:dense_energy_cell>, <ore:blockNetherStar>, <appliedenergistics2:energy_acceptor>, <ore:blockNetherStar>, <appliedenergistics2:dense_energy_cell>, <ore:blockUltimate>], 
	[<ore:blockUltimate>, <refinedstorage:fluid_storage_part:3>, <appliedenergistics2:material:38>, <ore:oc:case3>, <appliedenergistics2:material:38>, <refinedstorage:fluid_storage_part:3>, <ore:blockUltimate>], 
	[<appliedenergistics2:fluix_block>, <ore:oc:databaseUpgrade3>, <refinedstorage:fluid_storage_part:3>, <appliedenergistics2:dense_energy_cell>, <refinedstorage:fluid_storage_part:3>, <ore:oc:mfu>, <appliedenergistics2:fluix_block>], 
	[<immersiveengineering:stone_decoration:7>, <appliedenergistics2:fluix_block>, <ore:blockUltimate>, <ore:blockUltimate>, <ore:blockUltimate>, <appliedenergistics2:fluix_block>, <immersiveengineering:stone_decoration:7>]
]);


# Autocrafting :)

// Nerf interface
recipes.remove(<appliedenergistics2:interface>);
recipes.addShaped(<appliedenergistics2:interface>, [
    [<refinedstorage:quartz_enriched_iron>, <embers:adhesive>, <refinedstorage:quartz_enriched_iron>],
    [<appliedenergistics2:material:44>, <hwell:crystal_catalyst>, <appliedenergistics2:material:43>],
    [<refinedstorage:quartz_enriched_iron>, <embers:adhesive>, <refinedstorage:quartz_enriched_iron>]
]);

// Fluid interface as well
recipes.remove(<appliedenergistics2:fluid_interface>);
recipes.addShaped(<appliedenergistics2:fluid_interface>, [
    [<refinedstorage:quartz_enriched_iron>, <ore:gemLapis>, <refinedstorage:quartz_enriched_iron>],
    [<appliedenergistics2:material:44>, <hwell:crystal_catalyst>, <appliedenergistics2:material:43>],
    [<refinedstorage:quartz_enriched_iron>, <ore:gemLapis>, <refinedstorage:quartz_enriched_iron>]
]);

// Molecular assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler> * 2, [
    [<appliedenergistics2:quartz_glass>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:quartz_glass>],
    [<appliedenergistics2:material:44>, <extendedcrafting:table_advanced>, <appliedenergistics2:material:43>],
    [<appliedenergistics2:quartz_glass>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:quartz_glass>]
]);

// Crafting unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
    [<ore:crystalPureCertusQuartz>, <appliedenergistics2:material:22>, <ore:crystalPureCertusQuartz>],
    [<immersiveengineering:stone_decoration:5>, <appliedenergistics2:material:24>, <immersiveengineering:stone_decoration:5>],
    [<ore:crystalPureCertusQuartz>, <appliedenergistics2:material:22>, <ore:crystalPureCertusQuartz>]
]);


# Wireless stuff

// Fluix pearl
recipes.addShaped(<appliedenergistics2:material:9>, [
    [<ore:crystalFluix>, <ore:manaPearl>, <ore:crystalFluix>],
    [<embers:adhesive>, <appliedenergistics2:material:6>, <embers:adhesive>],
    [<ore:crystalFluix>, <ore:manaPearl>, <ore:crystalFluix>]
]);

// Wireless receiver
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [
    [null, <ore:pearlFluix>, null],
    [<refinedstorage:quartz_enriched_iron>, <opencomputers:card:7>, <refinedstorage:quartz_enriched_iron>],
    [null, <refinedstorage:quartz_enriched_iron>, null]
]);

// Wireless booster
recipes.addShaped(<appliedenergistics2:material:42> * 2, [
    [<ore:dustRedstone>, <ore:gemChargedCertusQuartz>, <ore:dustRedstone>],
    [<ore:gemChargedCertusQuartz>, <ore:pearlFluix>, <ore:gemChargedCertusQuartz>],
    [<ore:dustRedstone>, <ore:gemChargedCertusQuartz>, <ore:dustRedstone>]
]);

// Wireless endgame terminal
recipes.remove(<appliedenergistics2:wireless_terminal>);
mods.extendedcrafting.TableCrafting.addShaped(0, <appliedenergistics2:wireless_terminal>, [
	[null, null, null, null, null, null, null], 
	[null, <appliedenergistics2:material:41>, null, null, null, null, null], 
	[null, <ore:stickSteel>, null, null, null, null, null], 
	[<ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>], 
	[<ore:blockSheetmetalSteel>, <appliedenergistics2:material:44>, <botania:corporeaspark>, <appliedenergistics2:part:380>, <botania:corporeaspark>, <appliedenergistics2:material:43>, <ore:blockSheetmetalSteel>], 
	[<ore:blockSheetmetalSteel>, <appliedenergistics2:material:44>, <refinedstorage:wireless_grid>, <appliedenergistics2:dense_energy_cell>, <refinedstorage:wireless_grid>, <appliedenergistics2:material:43>, <ore:blockSheetmetalSteel>], 
	[<ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:oc:screen3>, <ore:oc:terminal>, <ore:oc:screen3>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>]
]);


# Random stuff

// Pure crystals
mods.astralsorcery.StarlightInfusion.addInfusion(<minecraft:quartz>, <appliedenergistics2:material:11>, false, 0.1, 100);
mods.astralsorcery.StarlightInfusion.addInfusion(<appliedenergistics2:material>, <appliedenergistics2:material:10>, false, 0.1, 100);
mods.astralsorcery.StarlightInfusion.addInfusion(<appliedenergistics2:material:7>, <appliedenergistics2:material:12>, false, 0.1, 100);

// "Slightly" nerfed matter condenser
mods.extendedcrafting.TableCrafting.addShaped(0, <appliedenergistics2:condenser>, [
	[<refinedstorage:machine_casing>, <refinedstorage:machine_casing>, null, null, null, <refinedstorage:machine_casing>, <refinedstorage:machine_casing>], 
	[<refinedstorage:machine_casing>, <hwell:gravity_block>, <botania:blackholetalisman>, <embers:ember_pipe>, <botania:blackholetalisman>, <hwell:gravity_block>, <refinedstorage:machine_casing>], 
	[null, <botania:blackholetalisman>, <appliedenergistics2:fluix_block>, <appliedenergistics2:material:44>, <appliedenergistics2:fluix_block>, <botania:blackholetalisman>, null], 
	[null, <embers:ember_pipe>, <appliedenergistics2:material:44>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:material:44>, <embers:ember_pipe>, null], 
	[null, <botania:blackholetalisman>, <appliedenergistics2:fluix_block>, <appliedenergistics2:material:44>, <appliedenergistics2:fluix_block>, <botania:blackholetalisman>, null], 
	[<refinedstorage:machine_casing>, <hwell:gravity_block>, <botania:blackholetalisman>, <embers:ember_pipe>, <botania:blackholetalisman>, <hwell:gravity_block>, <refinedstorage:machine_casing>], 
	[<refinedstorage:machine_casing>, <refinedstorage:machine_casing>, null, null, null, <refinedstorage:machine_casing>, <refinedstorage:machine_casing>]
]);

// Change fluid level emitter to depend on level emitter
recipes.remove(<appliedenergistics2:part:281>);
recipes.addShapeless(<appliedenergistics2:part:281>, [<appliedenergistics2:part:280>]);
recipes.addShapeless(<appliedenergistics2:part:280>, [<appliedenergistics2:part:281>]);

// Glass cables
recipes.removeByRecipeName("appliedenergistics2:network/cables/glass_fluix");
recipes.addShaped(<appliedenergistics2:part:16> * 8, [
    [<refinedstorage:cable>, <refinedstorage:cable>, <refinedstorage:cable>],
    [<refinedstorage:cable>, <ore:crystalFluix>, <refinedstorage:cable>],
    [<refinedstorage:cable>, <refinedstorage:cable>, <refinedstorage:cable>]
]);

// Dense cables
recipes.removeByRecipeName("appliedenergistics2:network/cables/dense_covered_fluix");
recipes.addShaped(<appliedenergistics2:part:516>, [
    [null, <appliedenergistics2:part:36>, null],
    [<appliedenergistics2:part:36>, <ore:dustCertusQuartz>, <appliedenergistics2:part:36>],
    [null, <appliedenergistics2:part:36>, null]
]);

// Add skystone recipe
recipes.addShaped(<appliedenergistics2:sky_stone_block> * 8, [
    [<embers:ashen_stone>, <embers:ashen_stone>, <embers:ashen_stone>],
    [<embers:ashen_stone>, <hwell:shard_c>, <embers:ashen_stone>],
    [<embers:ashen_stone>, <embers:ashen_stone>, <embers:ashen_stone>]
]);

// Ender dust
mods.immersiveengineering.Crusher.addRecipe(<appliedenergistics2:material:46>, <minecraft:ender_pearl>, 6000);

// Spatial pylon
recipes.addShaped(<appliedenergistics2:spatial_pylon> * 4, [
    [<refinedstorage:quartz_enriched_iron>, <ore:pearlFluix>, <refinedstorage:quartz_enriched_iron>],
    [<ore:pearlFluix>, <refinedstorage:machine_casing>, <ore:pearlFluix>],
    [<refinedstorage:quartz_enriched_iron>, <ore:pearlFluix>, <refinedstorage:quartz_enriched_iron>]
]);
