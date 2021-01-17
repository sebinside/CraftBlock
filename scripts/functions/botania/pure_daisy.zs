/*
	Script made by Zombie_Konsti
*/

#modloaded botania
#modloaded modtweaker
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.botania.PureDaisy;


function add (data as IIngredient[][IItemStack][int]) {
  for time, items in data {
    for output, inputs in items {
      for item in inputs {
        PureDaisy.addRecipe(item, output, (time*20));
      }
    }
  }
}

function remove (data as IIngredient[]) {
  for item in data {
    PureDaisy.removeRecipe(item);
  }
}