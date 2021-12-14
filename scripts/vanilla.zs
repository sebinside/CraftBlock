import crafttweaker.item.IItemStack;

// Gravel and Sand
mods.botania.ManaInfusion.removeRecipe(<minecraft:sand>);
mods.botania.ManaInfusion.addAlchemy(<minecraft:gravel>, <minecraft:cobblestone>, 50);
mods.botania.ManaInfusion.addAlchemy(<minecraft:sand>, <minecraft:gravel>, 50);

//Red Sand & Terracotta
mods.tconstruct.Casting.removeBasinRecipe(<minecraft:sand:1>);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:sand:1>, <minecraft:sand:0>, <liquid:blood>, 5, true, 20);
mods.botania.ManaInfusion.removeRecipe(<minecraft:sand:1>);
mods.botania.ManaInfusion.addAlchemy(<minecraft:hardened_clay>, <minecraft:sand:1>, 50);

// podzol -> mycelium
mods.astralsorcery.LightTransmutation.addTransmutation(<minecraft:dirt:2>, <minecraft:mycelium>, 20);

// Grindstone coal dust
mods.astralsorcery.Grindstone.addRecipe(<minecraft:coal>, <jaopca:item_dustcoal>);

// Remove botania nether wart crafting
mods.botania.ManaInfusion.removeRecipe(<minecraft:nether_wart>);

// Fuck up people by changing the crafting table recipe
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped("vanilla_crafting_table", <minecraft:crafting_table>, [[<ore:logWood>, <ore:logWood>], [<ore:logWood>, <ore:logWood>]]);
recipes.addShaped("fake_crafting_table", <extendedcrafting:crafting_table>, [[<ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>]]);

// Add dirty info
moretweaker.jei.MoreJei.addDescription(<minecraft:dirt>, ["Uuuh, this rod of the lands is a dirty little boi..."]);

// Make nether wart crafting easier
mods.uniquecrops.SeedCrafting.removeRecipe(<minecraft:nether_wart>);
mods.uniquecrops.SeedCrafting.addRecipe(<minecraft:nether_wart> * 3, <minecraft:dye:1>, <uniquecrops:generic:9>, <uniquecrops:generic:9>);
recipes.remove(<minecraft:nether_wart_block>);
recipes.addShaped(<minecraft:nether_wart_block>, [[<ore:cropNetherWart>, <ore:cropNetherWart>], [<ore:cropNetherWart>, <ore:cropNetherWart>]]);

// Remove too easy snow crafting
mods.botania.PureDaisy.removeRecipe(<minecraft:snow>);

// Remove way to easy wither skull crafting
mods.uniquecrops.SeedCrafting.removeRecipe(<minecraft:skull:1>);

// Disable Vanilla Tools
val vanillaTools = [
    <minecraft:wooden_hoe>,
    <minecraft:stone_hoe>,
    <minecraft:iron_hoe>,
    <minecraft:diamond_hoe>,
    <minecraft:golden_hoe>,
    <minecraft:wooden_axe>,
    <minecraft:stone_axe>,
    <minecraft:iron_axe>,
    <minecraft:diamond_axe>,
    <minecraft:golden_axe>,
    <minecraft:wooden_pickaxe>,
    <minecraft:stone_pickaxe>,
    <minecraft:iron_pickaxe>,
    <minecraft:diamond_pickaxe>,
    <minecraft:golden_pickaxe>,
    <minecraft:wooden_shovel>,
    <minecraft:stone_shovel>,
    <minecraft:iron_shovel>,
    <minecraft:diamond_shovel>,
    <minecraft:golden_shovel>,
    <minecraft:wooden_sword>,
    <minecraft:stone_sword>,
    <minecraft:iron_sword>,
    <minecraft:diamond_sword>,
    <minecraft:golden_sword>
] as IItemStack[];
                    
for tool in vanillaTools {
  tool.maxDamage = 1;
  tool.addTooltip("§cFor Crafting only!");
  tool.addShiftTooltip(format.gray("Your time with this tool will be limited..."), format.gray("Hold SHIFT for more info."));
}

// skateKAPPA crafting
recipes.addShaped("skateKAPPA", <contenttweaker:skate_kappa>, [
    [null, null, null], 
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], 
    [<immersiveengineering:material:9>, null, <immersiveengineering:material:9>]
]);

// Hopper Hooper Minecart Stopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped("hopper", <minecraft:hopper>,[
    [<ore:ingotManasteel>, null, <ore:ingotManasteel>], 
	[<ore:ingotManasteel>, <tconstruct:wooden_hopper>, <ore:ingotManasteel>], 
	[null, <ore:ingotManasteel>, null]
]);

// special piston offer
recipes.remove(<minecraft:piston>);
recipes.addShaped("piston", <minecraft:piston> * 2, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
	[<ore:cobblestone>, <ore:gearIron>, <ore:cobblestone>], 
	[<ore:cobblestone>, <ore:powderMana>, <ore:cobblestone>]
]);

// More wood
recipes.addShapeless("wood0", <minecraft:planks:0> * 7, [<bibliocraft:framingsaw>, <minecraft:log:0>]);
recipes.addShapeless("wood1", <minecraft:planks:1> * 7, [<bibliocraft:framingsaw>, <minecraft:log:1>]);
recipes.addShapeless("wood2", <minecraft:planks:2> * 7, [<bibliocraft:framingsaw>, <minecraft:log:2>]);
recipes.addShapeless("wood3", <minecraft:planks:3> * 7, [<bibliocraft:framingsaw>, <minecraft:log:3>]);
recipes.addShapeless("wood4", <minecraft:planks:4> * 7, [<bibliocraft:framingsaw>, <minecraft:log2:0>]);
recipes.addShapeless("wood5", <minecraft:planks:5> * 7, [<bibliocraft:framingsaw>, <minecraft:log2:1>]);

// Ender chest
recipes.remove(<minecraft:ender_chest>);
recipes.addShaped("enderchest", <minecraft:ender_chest>, [
	[null, <minecraft:ender_eye>, null], 
	[<minecraft:ender_eye>, <ironchest:iron_chest:6>, <minecraft:ender_eye>], 
	[null, <minecraft:ender_eye>, null]
]);

// Blaze rod info
moretweaker.jei.MoreJei.addDescription(<minecraft:blaze_rod>, ["Spoiler: Empty rod + powder"]);

//Blaze powder info
mods.jei.JEI.addDescription(<minecraft:blaze_powder>, ["Build a blazing friend from two Iron Bars and a Fel Pumpkin"]);

// Rainbow wool info
moretweaker.jei.MoreJei.addDescription(<skatekappa:rainbow_wool>, ["Legends are told that naming sheep 'derNiklaas' makes them go full rainbow."]);

// Stained Glass to Glass
for i in 0 to 16 {
    //each variant must be individually defined (ask @VazkiiMods why :\ ) 
    mods.botania.ManaInfusion.addAlchemy(<minecraft:glass_pane>, <minecraft:stained_glass_pane>.withDamage(i), 50);
    mods.botania.ManaInfusion.addAlchemy(<minecraft:glass>, <minecraft:stained_glass>.withDamage(i), 50);
}

// Harder recipe for the Enchantment Table
recipes.remove(<minecraft:enchanting_table>);
recipes.addShaped("enchantment_table", <minecraft:enchanting_table>,[
    [null, <akashictome:tome>, null], 
	[<tconstruct:materials:16>, <ore:obsidian>, <tconstruct:materials:16>], 
	[<ore:obsidian>, <tconstruct:materials:14>, <ore:obsidian>]
]);

//octopus ink
recipes.addShapeless("ink", <minecraft:dye>, [<ore:foodOctopusraw>, <ore:sword>.transformDamage(10)]);

//coarse dirt override vanilla recipe
recipes.remove(<minecraft:dirt:1>);
recipes.addShaped("coarse_dirt", <minecraft:dirt:1> * 2, [
    [<minecraft:dirt:0>, <hwell:dust>],
    [<hwell:dust>, <minecraft:dirt:0>]
]);
