import scripts._base.disable;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Disable conflicting items
disable(<jaopca:block_blockcertusquartz>);
disable(<appliedenergistics2:charged_quartz_ore>);
mods.immersiveengineering.Crusher.removeRecipe(<appliedenergistics2:material:1>);

// Remove charged certus ore from orechid spawns
mods.botania.Orechid.removeOre(<ore:oreChargedCertusQuartz>);

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
	[<appliedenergistics2:fluix_block>, <immersiveengineering:stone_decoration:7>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <immersiveengineering:stone_decoration:7>, <appliedenergistics2:fluix_block>], 
	[<immersiveengineering:stone_decoration:7>, <ore:oc:inventoryControllerUpgrade>, <ore:ingotUltimate>, <ore:ingotUltimate>, <ore:ingotUltimate>, <ore:oc:tankControllerUpgrade>, <immersiveengineering:stone_decoration:7>], 
	[<appliedenergistics2:quartz_vibrant_glass>, <ore:ingotUltimate>, <refinedstorage:storage_part:3>, <ore:oc:server3>, <refinedstorage:fluid_storage_part:3>, <ore:ingotUltimate>, <appliedenergistics2:quartz_vibrant_glass>], 
	[<appliedenergistics2:quartz_vibrant_glass>, <ore:ingotUltimate>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:energy_acceptor>, <appliedenergistics2:dense_energy_cell>, <ore:ingotUltimate>, <appliedenergistics2:quartz_vibrant_glass>], 
	[<appliedenergistics2:quartz_vibrant_glass>, <ore:ingotUltimate>, <refinedstorage:fluid_storage_part:3>, <ore:oc:case3>, <refinedstorage:storage_part:3>, <ore:ingotUltimate>, <appliedenergistics2:quartz_vibrant_glass>], 
	[<immersiveengineering:stone_decoration:7>, <ore:oc:databaseUpgrade3>, <ore:ingotUltimate>, <ore:ingotUltimate>, <ore:ingotUltimate>, <ore:oc:mfu>, <immersiveengineering:stone_decoration:7>], 
	[<appliedenergistics2:fluix_block>, <immersiveengineering:stone_decoration:7>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_vibrant_glass>, <immersiveengineering:stone_decoration:7>, <appliedenergistics2:fluix_block>]
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

// Charged certus blocks now need 4 crystals instead of 9
recipes.remove(<jaopca:block_blockchargedcertusquartz>);
recipes.removeByRecipeName("jaopca:material_x9s1r6");
recipes.addShapeless(<appliedenergistics2:material:1> * 4, [<jaopca:block_blockchargedcertusquartz>]);
recipes.addShapedMirrored(<jaopca:block_blockchargedcertusquartz>, [
    [<appliedenergistics2:material:1>, <appliedenergistics2:material:1>],
    [<appliedenergistics2:material:1>, <appliedenergistics2:material:1>]
]);

// New charged certus recipe
mods.uniquecrops.HourglassConversion.addRecipe(<jaopca:block_blockchargedcertusquartz>, <appliedenergistics2:quartz_block>);

// New fluix recipe
mods.botania.RuneAltar.addRecipe(<appliedenergistics2:fluix_block>, [<ore:gemQuartz>, <ore:gemQuartz>, <ore:blockChargedCertusQuartz>, <ore:blockRedstone>, <ore:gemHearthWellNetherCrystal>], 20000);

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

// Pure crystals
mods.astralsorcery.StarlightInfusion.addInfusion(<minecraft:quartz>, <appliedenergistics2:material:11>, false, 0.1, 100);
mods.astralsorcery.StarlightInfusion.addInfusion(<appliedenergistics2:material>, <appliedenergistics2:material:10>, false, 0.1, 100);
mods.astralsorcery.StarlightInfusion.addInfusion(<appliedenergistics2:material:7>, <appliedenergistics2:material:12>, false, 0.1, 100);

// Add skystone recipe
recipes.addShaped(<appliedenergistics2:sky_stone_block> * 8, [
    [<embers:ashen_stone>, <embers:ashen_stone>, <embers:ashen_stone>],
    [<embers:ashen_stone>, <hwell:shard_c>, <embers:ashen_stone>],
    [<embers:ashen_stone>, <embers:ashen_stone>, <embers:ashen_stone>]
]);

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
mods.appliedenergistics2.Inscriber.addRecipe(<appliedenergistics2:material:23>, <ore:quartzRed>, true, <refinedstorage:processor:3>, <opencomputers:component:3>);
mods.appliedenergistics2.Inscriber.addRecipe(<appliedenergistics2:material:22>, <ore:quartzRed>, true, <refinedstorage:processor:4>, <opencomputers:component:4>);
mods.appliedenergistics2.Inscriber.addRecipe(<appliedenergistics2:material:24>, <ore:quartzRed>, true, <refinedstorage:processor:5>, <opencomputers:component:5>);

// Change fluid level emitter to depend on level emitter
recipes.remove(<appliedenergistics2:part:281>);
recipes.addShapeless(<appliedenergistics2:part:281>, [<appliedenergistics2:part:280>]);
recipes.addShapeless(<appliedenergistics2:part:280>, [<appliedenergistics2:part:281>]);

// Glass cables
recipes.removeByRecipeName("appliedenergistics2:network/cables/glass_fluix");
recipes.addShaped(<appliedenergistics2:part:16>, [
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

// Nerf interface
// Autocrafting will be fun :)
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
// Autocrafting part 2
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.addShaped(<appliedenergistics2:molecular_assembler> * 2, [
    [<appliedenergistics2:quartz_glass>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:quartz_glass>],
    [<appliedenergistics2:material:44>, <extendedcrafting:table_advanced>, <appliedenergistics2:material:43>],
    [<appliedenergistics2:quartz_glass>, <refinedstorage:quartz_enriched_iron>, <appliedenergistics2:quartz_glass>]
]);

// Fluix pearl
recipes.addShaped(<appliedenergistics2:material:9>, [
    [<ore:crystalFluix>, <ore:manaPearl>, <ore:crystalFluix>],
    [<embers:adhesive>, <appliedenergistics2:material:6>, <embers:adhesive>],
    [<ore:crystalFluix>, <ore:manaPearl>, <ore:crystalFluix>]
]);
