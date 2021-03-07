import scripts._base.disable;

// heavy mix depends both on botania and astral sorcery
recipes.remove(<hwell:heavy_mesh>);
recipes.addShapeless("heavy_mesh", <hwell:heavy_mesh> * 2, [<minecraft:stone> | <minecraft:stone:1> | <minecraft:stone:3> | <minecraft:stone:5>, <ore:dustCoal>, <ore:livingwood>]);

// heavy ingot is twice as expensive
furnace.remove(<hwell:heavy_ingot>);
furnace.addRecipe(<hwell:heavy_ingot>, <hwell:heavy_mesh>);

// make crushing block depend on extendedcrafting's black iron
recipes.remove(<hwell:crushing_block>);
recipes.addShaped("crushing_block", <hwell:crushing_block>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:cobblestone>, <ore:blockBlackIron>, <minecraft:cobblestone>], [<hwell:heavy_ingot>, <hwell:heavy_ingot>, <hwell:heavy_ingot>]]);

// include new mysterious sawdust
recipes.addShapeless("mysterious_sawdust", <contenttweaker:mysterious_sawdust> * 8, [<hwell:myst_log>, <bibliocraft:framingsaw>]);
recipes.remove(<hwell:leaf_mesh>);
recipes.addShapeless("mysterious_mixture", <hwell:leaf_mesh> * 2, 
    [<harvestcraft:mixingbowlitem>, <hwell:dust>, <ore:dustCoal>, <hwell:myst_dust>, <contenttweaker:mysterious_sawdust>]);

// Change crystal creation
furnace.remove(<hwell:crystal_block>);
mods.botania.ManaInfusion.addInfusion(<hwell:crystal>, <hwell:leaf_mesh>, 2000);

// Change raw asul crafting
recipes.remove(<hwell:raw_asul_block>);
mods.astralsorcery.LightTransmutation.addTransmutation(<hwell:crystal_block>, <hwell:raw_asul_block>, 10);

// Disable core crafting
disable(<hwell:core_sentient>);
disable(<hwell:core_green>);
disable(<hwell:core_stone>);
disable(<hwell:core_anima>);
disable(<hwell:core_heat>);
disable(<hwell:inert_seed>);
disable(<hwell:graft_anima>);
disable(<hwell:stabiliser_light>);
disable(<hwell:stabiliser>);
disable(<hwell:stabiliser_heavy>);

// Disable heat core crafting
moretweaker.hwell.MoreCoring.removeCoring("core_heat", null);

// Add new metaldiamond recipe
mods.tconstruct.Casting.addTableRecipe(<hwell:metaldiamond>, <ore:manaDiamond>, <liquid:astral_starmetal>, 144, true);

// Make mutator harder and add new mutation paste recipe
recipes.remove(<hwell:mutator>);
recipes.addShaped("mutator", <hwell:mutator>, [[<botania:fertilizer>, <hwell:crystal>, <hwell:myst_fertilizer>], [<ore:blockDawnstone>, <hwell:furnace_tube>, <ore:blockDawnstone>], [<ore:scaffoldingSteel>, <hwell:asul_machine_case>, <ore:scaffoldingSteel>]]);
recipes.addShapeless("mutationpaste", <hwell:mutation_paste> * 2, 
    [<harvestcraft:mixingbowlitem>, <ore:slimeball>, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>]);

// Remove light crushing to glowstone
mods.hwell.removeCrushingBlockRecipe(<hwell:locked_light>);

// Nether crystal? HA! TOASTED CRYSTAL!
mods.hwell.removeNetherPortalRecipe(<hwell:crystal>);
moretweaker.cfb.KitchenAppliances.addToasterRecipe(<hwell:crystal_nether>, <hwell:crystal>);
moretweaker.jei.MoreJei.removeDescription(<hwell:crystal_nether>);
moretweaker.jei.MoreJei.addDescription(<hwell:crystal_nether>, ["Obtained by toasting a crystal using the Toaster."]);

// Make charger harder
recipes.remove(<hwell:charger>);
recipes.addShaped("hwellcharger", <hwell:charger>, [[<ore:manaDiamond>, <ore:dustAstralStarmetal>, <ore:manaDiamond>], [<hwell:furnace_tube>, <hwell:asul_machine_case>, <hwell:furnace_tube>], [<hwell:smooth_onyx>, <hwell:smooth_onyx>, <hwell:smooth_onyx>]]);

// Make slab lamp harder
recipes.remove(<hwell:slab_lamp>);
recipes.addShaped("hwellslab_lamp", <hwell:slab_lamp>, [[<hwell:heavy_ingot>, <hwell:locked_light>, <hwell:heavy_ingot>]]);

// Make block player easier
recipes.remove(<hwell:setter>);
recipes.addShaped("hwellsetter", <hwell:setter>, [[<ore:ingotManasteel>, null, <ore:ingotManasteel>], [<ore:ingotManasteel>, <ore:dustRedstone>, <ore:ingotManasteel>], [<ore:ingotManasteel>, <hwell:asul_machine_case>, <ore:ingotManasteel>]]);

// Change light collector
recipes.remove(<hwell:light_collector>);
recipes.addShaped("hwelllight_collector", <hwell:light_collector>, [[<hwell:citrinic_sand>, <botania:managlasspane>, <hwell:citrinic_sand>], [<botania:managlasspane>, <astralsorcery:itemcraftingcomponent:3>, <botania:managlasspane>], [<hwell:citrinic_sand>, <botania:managlasspane>, <hwell:citrinic_sand>]]);

// Very creative freezer recipe
recipes.remove(<hwell:freezer>);
recipes.addShaped("hwell_freezer", <hwell:freezer>, [[<hwell:shard_ca>, <harvestcraft:mintcupcakeitem>, <hwell:shard_ca>], [<forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <cookingforblockheads:fridge>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000})], [<astralsorcery:itemcraftingcomponent:1>, <hwell:asul_machine_case>, <astralsorcery:itemcraftingcomponent:1>]]);

// Make protection block depend on embers because of ore puller
recipes.remove(<hwell:heavy_protection_block>);
recipes.addShaped("hwell_heavy_protection_block", <hwell:heavy_protection_block> * 4, [[<hwell:soulsteel_ingot>, <ore:ingotDawnstone>, <hwell:soulsteel_ingot>], [<ore:ingotDawnstone>, <hwell:heavy_block>, <ore:ingotDawnstone>], [<hwell:soulsteel_ingot>, <ore:ingotDawnstone>, <hwell:soulsteel_ingot>]]);

// Remove reparing paste, grafting, heat furnace, and burst seeds
disable(<hwell:repairing_paste>);
disable(<hwell:raw_repairing_paste>);
disable(<hwell:burst_seed_endstone>);
disable(<hwell:burst_seed_crystal>);
disable(<hwell:burst_seed_dirt>);
disable(<hwell:burst_seed_snow>);
disable(<hwell:burst_seed_netherrack>);
disable(<hwell:burst_seed_quartz>);
disable(<hwell:burst_seed_prismarine>);
disable(<hwell:burst_seed_cobblestone>);
disable(<hwell:burst_seed_gravel>);
disable(<hwell:burst_seed_stone>);
disable(<hwell:burst_seed_sand>);
disable(<hwell:grafting_tray>);
disable(<hwell:graft_stone>);
disable(<hwell:graft_heat>);
disable(<hwell:graft_sentient>);
disable(<hwell:graft_green>);
disable(<hwell:heat_furnace>);

// Way better nourisher recipe
recipes.remove(<hwell:nourisher>);
recipes.addShaped("hwell_nourisher", <hwell:nourisher>, [[<botania:petal:*>, <botania:petal:*>, <botania:petal:*>], [<hwell:locked_light>, <ore:ingotTerrasteel>, <hwell:locked_light>], [<uniquecrops:oldgrass>, <hwell:asul_machine_case>, <uniquecrops:oldgrass>]]);
