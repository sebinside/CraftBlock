import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.item.IItemStack;

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
