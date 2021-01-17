/*
	Script made by Zombie_Konsti
*/

#modloaded botania
#modloaded modtweaker
#priority 3400
import crafttweaker.item.IIngredient;
import mods.botania.ElvenTrade;


function addShapedMirrored (data as IIngredient[][][IIngredient[]]) {
  for output, inputData in data {
    for inputs in inputData {
      ElvenTrade.addRecipe(output,inputs);
    }
  }
}

function remove (data as IIngredient[]) {
  for item in data {
    ElvenTrade.removeRecipe(item);
  }
}