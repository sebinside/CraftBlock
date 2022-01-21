import scripts._base.disable;
import crafttweaker.item.IItemStack;

// Change Artisia recipe
recipes.remove(<uniquecrops:seedartisia>);
mods.botania.Apothecary.addRecipe(<uniquecrops:seedartisia>, [<uniquecrops:seednormal>, <uniquecrops:seednormal>, <uniquecrops:seednormal>, <uniquecrops:seednormal>, <minecraft:crafting_table>]);

// Add note to essence
moretweaker.jei.MoreJei.addDescription(<uniquecrops:generic:9>, ["Dropped from Feroxia crops."]);

// Add easy way to dupliate feroxia
mods.botania.ManaInfusion.addInfusion(<uniquecrops:seedferoxia> * 2, <uniquecrops:seedferoxia>, 10000);

// Change some crops recipes on the way to feroxia
mods.uniquecrops.SeedCrafting.removeRecipe(<uniquecrops:seedknowledge>);
mods.uniquecrops.SeedCrafting.addRecipe(<uniquecrops:seedknowledge>, <minecraft:sugar>, <minecraft:enchanted_book>, <uniquecrops:generic:11>);

mods.uniquecrops.SeedCrafting.removeRecipe(<uniquecrops:seedenderlily>);
mods.uniquecrops.SeedCrafting.addRecipe(<uniquecrops:seedenderlily>, <minecraft:ender_eye>, <uniquecrops:generic:2>, <minecraft:snowball>);

mods.uniquecrops.SeedCrafting.removeRecipe(<uniquecrops:seedweepingbells>);
mods.uniquecrops.SeedCrafting.addRecipe(<uniquecrops:seedweepingbells>, <minecraft:poisonous_potato>, <uniquecrops:seedenderlily>, <minecraft:melon_seeds>);

// Hourglass Alpha soon!
recipes.remove(<uniquecrops:hourglass>);
recipes.addShaped("uniquecrops_hourglass", <uniquecrops:hourglass>, [
    [<uniquecrops:generic:4>, <minecraft:gold_block>, <uniquecrops:generic:4>], 
    [<minecraft:glass_pane>, <botania:hourglass>, <minecraft:glass_pane>], 
    [<uniquecrops:generic:4>, <minecraft:gold_block>, <uniquecrops:generic:4>]
]);

// Remove all those baubles
val baubles = [
    <uniquecrops:emblem.melee>,
    <uniquecrops:emblem.scarab>,
    <uniquecrops:emblem.transformation>,
    <uniquecrops:emblem.powerfist>,
    <uniquecrops:emblem.rainbow>,
    <uniquecrops:emblem.food>,
    <uniquecrops:emblem.ironstomach>,
    <uniquecrops:emblem.defense>,
    <uniquecrops:emblem.leaf>,
    <uniquecrops:emblem.pacifism>,
    <uniquecrops:emblem.blacksmith>,
    <uniquecrops:emblem.weight>,
    <uniquecrops:emblem.bookworm>,
    <uniquecrops:darkblock>
] as IItemStack[];
for item in baubles {
    disable(item);
}

// Add notes for beginners
moretweaker.jei.MoreJei.addDescription(<uniquecrops:generic:11>, ["Dropped from Invisibilia crops."]);
moretweaker.jei.MoreJei.addDescription(<uniquecrops:seednormal>, ["Dropped from breaking grass."]);
moretweaker.jei.MoreJei.addDescription(<uniquecrops:seedferoxia>, ["Might be a good idea to backup those..."]);