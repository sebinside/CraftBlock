import crafttweaker.item.IItemStack;

// Deactiate pebble crafting
recipes.removeShapeless(<minecraft:cobblestone>, [<ore:pebble>,<ore:pebble>,<ore:pebble>,<ore:pebble>]);
mods.jei.JEI.removeAndHide(<botania:manaresource:21>);

// Change Rune of fire (bc. netherrack requires tier 2)
mods.botania.RuneAltar.removeRecipe(<botania:rune:1>);
mods.botania.RuneAltar.addRecipe(<botania:rune:1> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <ore:gemHearthWellNetherCrystal>, <ore:gunpowder>, <ore:cropNetherWart>], 5200);

// Change manasteel durability
val manasteelTools = [
    <botania:manasteelaxe>,
    <botania:manasteelsword>,
    <botania:manasteelpick>,
    <botania:manasteelshovel>
] as IItemStack[];
                    
for tool in manasteelTools {
  tool.maxDamage = 30;
}

// Bowl of Water Hint
mods.jei.JEI.addDescription(<minecraft:bucket>, [
    "Use the wooden bowl to take a sip of water..."
]);

//Like Handheld Advanced Crafting but for the Assembly Halo
recipes.remove(<botania:craftinghalo>);
recipes.addShaped("extendedcrafting_craftinghalo", <botania:craftinghalo>, [
	[null, <ore:manaPearl>, null], 
	[<ore:ingotManasteel>, <extendedcrafting:table_advanced>, <ore:ingotManasteel>],
  [null, <ore:ingotManasteel>, null]
]);
