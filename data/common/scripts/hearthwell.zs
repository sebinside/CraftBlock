import scripts._base.disable;
import crafttweaker.item.IItemStack;

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
val coreList = [
    <hwell:core_sentient>, 
    <hwell:core_green>, 
    <hwell:core_stone>,
    <hwell:core_anima>, 
    <hwell:core_heat>, 
    <hwell:inert_seed>, 
    <hwell:graft_anima>, 
    <hwell:stabiliser_light>, 
    <hwell:stabiliser>, 
    <hwell:stabiliser_heavy>
] as IItemStack[];
for item in coreList {
    disable(item);
}

// Disable heat core crafting
moretweaker.hwell.MoreCoring.removeCoring("core_heat", null);

// Add new metaldiamond recipe
mods.tconstruct.Casting.addTableRecipe(<hwell:metaldiamond>, <ore:manaDiamond>, <liquid:astral_starmetal>, 144, true);

// Make mutator harder and add new mutation paste recipe
recipes.remove(<hwell:mutator>);
recipes.addShaped("mutator", <hwell:mutator>, [
    [<botania:fertilizer>, <hwell:crystal>, <hwell:myst_fertilizer>],
    [<ore:blockDawnstone>, <hwell:furnace_tube>, <ore:blockDawnstone>],
    [<ore:scaffoldingSteel>, <hwell:asul_machine_case>, <ore:scaffoldingSteel>]
]);
recipes.addShapeless("mutationpaste", <hwell:mutation_paste> * 2, [<harvestcraft:mixingbowlitem>, <ore:slimeball>, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>, <botania:dye:*>]);

// Remove light crushing to glowstone
mods.hwell.removeCrushingBlockRecipe(<hwell:locked_light>);

// Nether crystal? HA! TOASTED CRYSTAL!
mods.hwell.removeNetherPortalRecipe(<hwell:crystal>);
moretweaker.cfb.KitchenAppliances.addToasterRecipe(<hwell:crystal_nether>, <hwell:crystal>);
moretweaker.jei.MoreJei.removeDescription(<hwell:crystal_nether>);
moretweaker.jei.MoreJei.addDescription(<hwell:crystal_nether>, ["Obtained by toasting a crystal using the Toaster."]);

// Make charger harder
recipes.remove(<hwell:charger>);
recipes.addShaped("hwellcharger", <hwell:charger>, [
    [<ore:manaDiamond>, <ore:dustAstralStarmetal>, <ore:manaDiamond>],
    [<hwell:furnace_tube>, <hwell:asul_machine_case>, <hwell:furnace_tube>],
    [<hwell:smooth_onyx>, <hwell:smooth_onyx>, <hwell:smooth_onyx>]
]);

// Make slab lamp harder
recipes.remove(<hwell:slab_lamp>);
recipes.addShaped("hwellslab_lamp", <hwell:slab_lamp>, [
    [<hwell:heavy_ingot>, <hwell:locked_light>, <hwell:heavy_ingot>]
]);

// Make block player easier
recipes.remove(<hwell:setter>);
recipes.addShaped("hwellsetter", <hwell:setter>, [
    [<ore:ingotManasteel>, null, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <ore:dustRedstone>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <hwell:asul_machine_case>, <ore:ingotManasteel>]
]);

// Change light collector
recipes.remove(<hwell:light_collector>);
recipes.addShaped("hwelllight_collector", <hwell:light_collector>, [
    [<hwell:citrinic_sand>, <botania:managlasspane>, <hwell:citrinic_sand>], 
    [<botania:managlasspane>, <astralsorcery:itemcraftingcomponent:3>, <botania:managlasspane>], 
    [<hwell:citrinic_sand>, <botania:managlasspane>, <hwell:citrinic_sand>]
]);

// Very creative freezer recipe
val liquidstarlightBucket = <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000});
recipes.remove(<hwell:freezer>);
recipes.addShaped("hwell_freezer", <hwell:freezer>, [
    [<hwell:shard_ca>, <harvestcraft:mintcupcakeitem>, <hwell:shard_ca>],
    [liquidstarlightBucket, <cookingforblockheads:fridge>, liquidstarlightBucket], 
    [<astralsorcery:itemcraftingcomponent:1>, <hwell:asul_machine_case>, <astralsorcery:itemcraftingcomponent:1>]
]);

// Make protection block depend on embers because of ore puller
recipes.remove(<hwell:heavy_protection_block>);
recipes.addShaped("hwell_heavy_protection_block", <hwell:heavy_protection_block> * 4, [
    [<hwell:soulsteel_ingot>, <ore:ingotDawnstone>, <hwell:soulsteel_ingot>],
    [<ore:ingotDawnstone>, <hwell:heavy_block>, <ore:ingotDawnstone>],
    [<hwell:soulsteel_ingot>, <ore:ingotDawnstone>, <hwell:soulsteel_ingot>]
]);

// Remove repairing paste, grafting, heat furnace, and burst seeds
val repairList = [<hwell:repairing_paste>,       
<hwell:raw_repairing_paste>,   
<hwell:burst_seed_endstone>,   
<hwell:burst_seed_crystal>,    
<hwell:burst_seed_dirt>,       
<hwell:burst_seed_snow>,       
<hwell:burst_seed_netherrack>, 
<hwell:burst_seed_quartz>,     
<hwell:burst_seed_prismarine>, 
<hwell:burst_seed_cobblestone>,
<hwell:burst_seed_gravel>,     
<hwell:burst_seed_stone>,      
<hwell:burst_seed_sand>,       
<hwell:grafting_tray>,         
<hwell:graft_stone>,           
<hwell:graft_heat>,            
<hwell:graft_sentient>,        
<hwell:graft_green>,           
<hwell:heat_furnace>] as IItemStack[];
for item in repairList {
    disable(item);
}

// Way better nourisher recipe
recipes.remove(<hwell:nourisher>);
recipes.addShaped("hwell_nourisher", <hwell:nourisher>, [
    [<botania:petal:*>, <botania:petal:*>, <botania:petal:*>],
    [<hwell:locked_light>, <ore:ingotTerrasteel>, <hwell:locked_light>],
    [<uniquecrops:oldgrass>, <hwell:asul_machine_case>, <uniquecrops:oldgrass>]
]);

// Update loot kits
disable(<hwell:loot_witch>);

val lootkits = [
    <hwell:loot_blaze>,
    <hwell:loot_creeper>,
    <hwell:loot_enderman>,
    <hwell:loot_ghast>,
    <hwell:loot_shulker>,
    <hwell:loot_skeleton>,
    <hwell:loot_slime>,
    <hwell:loot_spider>,
    <hwell:loot_wither>,
    <hwell:loot_zombie>,
    <hwell:loot_guardian>
] as IItemStack[];

for item in lootkits {
    recipes.remove(item);
}

function createLootKitRecipe(lootkit as IItemStack, shardA as IItemStack, shardB as IItemStack, mobItem as IItemStack) {
    val disgustingSmoothie = <harvestcraft:pearsmoothieitem>;
    val mobSmash = <harvestcraft:mushroomrisottoitem>;
	recipes.addShapeless(lootkit, [shardA, mobItem, shardB, disgustingSmoothie, <hwell:loot_base>, mobSmash]);
}

createLootKitRecipe(<hwell:loot_blaze>, <hwell:shard_au>, <hwell:shard_p>, <minecraft:blaze_rod>);
createLootKitRecipe(<hwell:loot_creeper>, <hwell:shard_n>, <hwell:shard_p>, <minecraft:gunpowder>);
createLootKitRecipe(<hwell:loot_enderman>, <hwell:shard_c>, <hwell:shard_h>, <minecraft:ender_pearl>);
createLootKitRecipe(<hwell:loot_ghast>, <hwell:shard_fe>, <hwell:shard_ca>, <minecraft:ghast_tear>);
createLootKitRecipe(<hwell:loot_shulker>, <hwell:shard_au>, <hwell:shard_h>, <minecraft:shulker_shell>);
createLootKitRecipe(<hwell:loot_skeleton>, <hwell:shard_ca>, <hwell:shard_fe>, <minecraft:bone>);
createLootKitRecipe(<hwell:loot_slime>, <hwell:shard_n>, <hwell:shard_o>, <minecraft:slime_ball>);
createLootKitRecipe(<hwell:loot_spider>, <hwell:shard_p>, <hwell:shard_c>, <minecraft:string>);
createLootKitRecipe(<hwell:loot_wither>, <hwell:shard_c>, <hwell:shard_c>, <tconstruct:materials:17>);
createLootKitRecipe(<hwell:loot_zombie>, <hwell:shard_o>, <hwell:shard_n>, <minecraft:rotten_flesh>);
createLootKitRecipe(<hwell:loot_guardian>, <hwell:shard_p>, <hwell:shard_o>, <minecraft:prismarine_crystals>);

// Extended Crafting changes
recipes.remove(<hwell:producer>);
val liquidsoulsBucket = <forge:bucketfilled>.withTag({FluidName: "liquid_souls", Amount: 1000});
mods.extendedcrafting.TableCrafting.addShaped(0, <hwell:producer>, [
	[<ore:blockHearthWellNetherCrystal>, <botania:quartztypedark>, liquidsoulsBucket, <botania:quartztypedark>, <ore:blockHearthWellNetherCrystal>], 
	[<ore:blockMetaldiamond>, <botania:quartztypedark>, <botania:quartztypedark>, <botania:quartztypedark>, <ore:blockMetaldiamond>], 
	[<ore:blockMetaldiamond>, <ore:blockHeavy>, <hwell:asul_machine_case>, <ore:blockHeavy>, <ore:blockMetaldiamond>], 
	[<ore:blockMetaldiamond>, <ore:blockHeavy>, null, <ore:blockHeavy>, <ore:blockMetaldiamond>], 
	[<ore:blockMetaldiamond>, <ore:blockHeavy>, null, <ore:blockHeavy>, <ore:blockMetaldiamond>]
]);

recipes.remove(<hwell:puller>);
mods.extendedcrafting.TableCrafting.addShaped(0, <hwell:puller>, [
	[null, <ore:hardenedClay>, null, <ore:hardenedClay>, null], 
	[<ore:hardenedClay>, <hwell:antigravity_block>, <hwell:antigravity_block>, <hwell:antigravity_block>, <ore:hardenedClay>], 
	[<embers:mech_core>, <hwell:crystal_catalyst>, <hwell:crystal_catalyst>, <hwell:crystal_catalyst>, <embers:mech_core>], 
	[<ore:hardenedClay>, <hwell:gravity_block>, <hwell:gravity_block>, <hwell:gravity_block>, <ore:hardenedClay>], 
	[<immersiveengineering:metal_decoration0:5>, <hwell:furnace_tube>, <hwell:furnace_tube>, <hwell:furnace_tube>, <immersiveengineering:metal_decoration0:5>]
]);

recipes.remove(<hwell:precision_grinder_empty>);
mods.extendedcrafting.TableCrafting.addShaped(0, <hwell:precision_grinder_empty>, [
	[null, null, null, null, null], 
	[<ore:livingrock>, <astralsorcery:itemcrystalsword>, <ore:gemHearthWellCrystal>, <embers:sword_dawnstone>, <ore:livingrock>], 
	[<astralsorcery:blockblackmarble>, <ore:gemHearthWellCrystal>, <uniquecrops:generic:8>, <ore:gemHearthWellCrystal>, <astralsorcery:blockblackmarble>], 
	[<hwell:asul_machine_case>, <ore:gearCopper>, <ore:cropChilipepper>, <ore:gearCopper>, <hwell:asul_machine_case>], 
	[<ore:livingrock>, <astralsorcery:blockblackmarble>, <ore:blockHeavy>, <astralsorcery:blockblackmarble>, <ore:livingrock>]
]);
