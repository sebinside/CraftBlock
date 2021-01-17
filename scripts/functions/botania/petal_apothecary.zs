/*
	Script made by Zombie_Konsti
*/

#modloaded botania
#modloaded modtweaker
#priority 3400
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.botania.Apothecary;


function add (data as IIngredient[][][IItemStack]) {
  for output, inputs in data {
    for input in inputs {
      Apothecary.addRecipe(output, input);
    }
  }
}

function remove (data as IIngredient[]) {
  for item in data {
    Apothecary.removeRecipe(item);
  }
}