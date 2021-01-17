/*
	Script made by Zombie_Konsti
*/

#modloaded extendedcrafting
#priority 3400
import crafttweaker.item.IItemStack;
import mods.extendedcrafting.CombinationCrafting;


function add(data as IItemStack[][IItemStack][IItemStack][[int]]) {
	for power, items in data {
		for output, inputs in items {
			for center, outer in inputs {
				if(power.length == 1) { CombinationCrafting.addRecipe(output, power[0], center, outer); }
				else if(power.length == 2) { CombinationCrafting.addRecipe(output, power[0], power[1], center, outer); }
			}
		}
	}
}

function remove(data as IItemStack[]) {
	for item in data {
		CombinationCrafting.remove(item);
	}
}
