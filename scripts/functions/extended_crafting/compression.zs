/*
	Script made by Zombie_Konsti
*/

#modloaded extendedcrafting
#priority 3400
import crafttweaker.item.IItemStack;
import mods.extendedcrafting.CompressionCrafting;


function add(data as int[IItemStack][IItemStack][IItemStack][[int]]) {
	for power, items in data {
		for catalyst, recipe in items {
			for	output, inputs in recipe {
				for item, amount in inputs {
				if(power.length == 1) { CompressionCrafting.addRecipe(output, item, amount, catalyst, power[0]); }
				else if(power.length == 2) { CompressionCrafting.addRecipe(output, item, amount, catalyst, power[0], power[1]); }
				}
			}
		}
	}
}

function remove(data as IItemStack[]) {
	for item in data {
		CompressionCrafting.remove(item);
	}
}
