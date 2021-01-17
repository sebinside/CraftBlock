/*
	Script made by Zombie_Konsti
*/

#modloaded extendedcrafting
#priority 3400
import crafttweaker.item.IItemStack;
import mods.extendedcrafting.EnderCrafting;


function addShaped(data as IItemStack[][][IItemStack][int]) {
	for time, items in data {
		for output, ingredients in items {
			EnderCrafting.addShaped(output, ingredients, time);
		}
	}
}

function addShapeless(data as IItemStack[][IItemStack][int]) {
	for time, items in data {
		for output, ingredients in items {
			EnderCrafting.addShapeless(output, ingredients, time);
		}
	}
}

function remove(data as IItemStack[]) {
	for item in data {
		EnderCrafting.remove(item);
	}
}
