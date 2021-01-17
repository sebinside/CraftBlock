/*
	Script made by Zombie_Konsti
*/

#priority 3400
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


function shaped (data as IIngredient[][][string][IItemStack], mirrored as bool) {
	for output, recipe in data {
		for name, inputs in recipe {
			if(mirrored) { recipes.addShapedMirrored(name, output, inputs); }
			else { recipes.addShaped(name, output, inputs); }
		}
	}
}

function shapeless (data as IIngredient[][string][IItemStack]) {
	for output, recipe in data {
		for name, inputs in recipe {
			recipes.addShapeless(name, output, inputs);
		}
	}
}

function remove (data as IItemStack[]) {
	for item in data {
		recipes.remove(item);
	}
}

function removeNamed (data as string[]) {
	for recipe in data {
		recipes.removeByRecipeName(recipe);
	}
}
