/*
	Script made by Zombie_Konsti
*/

#modloaded botania
#modloaded modtweaker
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.botania.RuneAltar;


function add (data as IIngredient[][][IItemStack][int]) {
  for manaAmount, items in data {
    for output, recipes in items {
      for recipe in recipes {
        RuneAltar.addRecipe(output, recipe, manaAmount);
      }
    }
  }
}

function remove (data as IIngredient[]) {
  for item in data {
    RuneAltar.removeRecipe(item);
  }
}
