import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

// "Create" own smoothie and mob smash which do not violate dumb terms of use
val disgustingSmoothie = <harvestcraft:pearsmoothieitem>;
disgustingSmoothie.displayName = "Disgusting Smoothie";
recipes.remove(disgustingSmoothie);
moretweaker.jei.MoreJei.addDescription(disgustingSmoothie, ["Even the smell is deadly!"]);
<ore:foodPearsmoothie>.remove(disgustingSmoothie);
<ore:listAllsmoothie>.remove(disgustingSmoothie);

val mobSmash = <harvestcraft:mushroomrisottoitem>;
mobSmash.displayName = "Mob Smash";
recipes.remove(mobSmash);
<ore:foodMushroomrisotto>.remove(mobSmash);

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
    if ("harvestcraft:pearsmoothieitem".matches(event.item.definition.id)) {
        event.player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(60, 1));
        event.cancel();
    } else if ("harvestcraft:mushroomrisottoitem".matches(event.item.definition.id)) {
        event.cancel();  
    }
});

recipes.addShapeless("disgusting_smoothie", disgustingSmoothie, [<ore:toolPot>, <harvestcraft:melonsmoothieitem>, <ore:listAllsmoothie>, <ore:listAllsmoothie>, <ore:itemSalt>]);
recipes.addShapeless("mob_smash", mobSmash, [<harvestcraft:mortarandpestleitem>, <minecraft:bone>, <minecraft:spider_eye>, <minecraft:rotten_flesh>, <minecraft:feather>]);

// Make gardens craftable
mods.botania.Apothecary.addRecipe(<harvestcraft:shadedgarden>, [<ore:petalLime>, <ore:petalGreen>, <ore:petalLime>, <ore:petalGreen>]);

val harvestCraftCycle = [
    <harvestcraft:shadedgarden>, 
    <harvestcraft:windygarden>, 
    <harvestcraft:soggygarden>, 
    <harvestcraft:tropicalgarden>, 
    <harvestcraft:aridgarden>, 
    <harvestcraft:frostgarden>, 
    <harvestcraft:shadedgarden>
] as IItemStack[];
for i, item in harvestCraftCycle {
    mods.botania.ManaInfusion.addAlchemy(item, harvestCraftCycle[(i+1) % harvestCraftCycle.length], 50);
}

//Grinder
val materials = ["wood", "iron", "iron", "obsidian"] as IData;
val hammer = <tconstruct:hammer>.withTag({TinkerData: {Materials: materials}}).only(function(item) {
    //ensure materials are exactly the same (otherwise order would not be checked)
    return materials == item.tag.TinkerData.Materials;
});
recipes.remove(<harvestcraft:grinder>);
recipes.addShaped("grinder", <harvestcraft:grinder>, [
    [<ore:stoneBrackish>, hammer, <ore:stoneBrackish>], 
    [<ore:stoneBrackish>, <hwell:grinding_wheel_iron>, <ore:stoneBrackish>], 
    [<astralsorcery:blockinfusedwood:1>, null, <astralsorcery:blockinfusedwood:1>]
]);

//Presser
recipes.remove(<harvestcraft:presser>);
recipes.addShaped("presser", <harvestcraft:presser>, [
    [<quark:iron_plate>, <hwell:crushing_block>, <quark:iron_plate>], 
    [<quark:iron_plate>, null, <quark:iron_plate>], 
    [<astralsorcery:blockinfusedwood:1>, <ore:craftingPiston>, <astralsorcery:blockinfusedwood:1>]
]);

//Shipping Bin
recipes.remove(<harvestcraft:shippingbin>);
recipes.addShaped("shippingbin", <harvestcraft:shippingbin>, [
    [<astralsorcery:blockinfusedwood:1>, <ore:cropCotton>, <astralsorcery:blockinfusedwood:1>], 
    [<ore:cropPineapple>, <ore:gemEmerald>, <ore:cropCorn>], 
    [<astralsorcery:blockinfusedwood:1>, <ore:cropTomato>, <astralsorcery:blockinfusedwood:1>]
]);

//Merket
recipes.remove(<harvestcraft:market>);
recipes.addShaped("market", <harvestcraft:market>, [
    [<astralsorcery:itemcraftingcomponent:5>, <ore:gemEmerald>, <botania:hourglass>], 
    [<minecraft:dye:0>, <harvestcraft:shippingbin>, <ore:feather>], 
    [<minecraft:carpet:5>, <minecraft:carpet:5>, <minecraft:carpet:5>]
]);

//Traps
recipes.remove(<harvestcraft:groundtrap>);
recipes.addShaped("groundtrap", <harvestcraft:groundtrap>, [
    [<minecraft:deadbush>, <ore:trapdoorWood>, <minecraft:deadbush>], 
    [<minecraft:web>, <tconstruct:wooden_hopper>, <minecraft:web>], 
    [<minecraft:deadbush>, <minecraft:web>, <minecraft:deadbush>]
]);
recipes.remove(<harvestcraft:watertrap>);
recipes.addShaped("watertrap", <harvestcraft:watertrap>, [
    [<ore:sugarcane>, <minecraft:fishing_rod>, <ore:sugarcane>], 
    [<minecraft:web>, <tconstruct:wooden_hopper>, <minecraft:web>], 
    [<ore:sugarcane>, <minecraft:web>, <ore:sugarcane>]
]);
