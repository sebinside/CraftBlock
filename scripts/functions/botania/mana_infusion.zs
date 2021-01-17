/*
	Script made by Zombie_Konsti
*/

#modloaded botania
#modloaded modtweaker
#priority 3400
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.botania.ManaInfusion;


function add (data as IIngredient[][IItemStack][int][string]) {
  for type, recipeData in data {
    for manaAmount, items in recipeData {
      for output, inputs in items {
        for item in inputs {
          if(type=="default") {ManaInfusion.addInfusion(output,item,manaAmount);}
          if(type=="alchemy") {ManaInfusion.addAlchemy(output,item,manaAmount);}
          if(type=="conjuration") {ManaInfusion.addConjuration(output,item,manaAmount);}
        }
      }
    }
  }
}

function remove (data as IIngredient[]) {
  for item in data {
    ManaInfusion.removeRecipe(item);
  }
}