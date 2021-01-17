/*
	Script made by Zombie_Konsti
*/

#priority 3400
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


function add(data as IIngredient[double][IItemStack]) {
	for output, ingredients in data {
		for item, xp in ingredients {
			furnace.addRecipe(output, item, xp);
		}
	}
}

function fuel(data as IIngredient[int]) {
	for burnTime, ingredients in data {
		for item in ingredients {
			furnace.setFuel(item, burnTime);
		}
	}
}

function remove(data as IIngredient[]) {
	for item in data {
		furnace.remove(item);
	}
}

function removeWithInput(data as IIngredient[][IIngredient]) {
	for output, ingredients in data {
		for item in ingredients {
			furnace.remove(output, item);
		}
	}
}
