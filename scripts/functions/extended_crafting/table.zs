/*
	Script made by Zombie_Konsti
*/

#modloaded extendedcrafting
#priority 3400
import crafttweaker.item.IItemStack;
import mods.extendedcrafting.TableCrafting;


function addShaped(data as IItemStack[][][IItemStack][int]) {
	for tier, items in data {
		for output, ingredients in items {
			TableCrafting.addShaped(tier, output, ingredients);
		}
	}
}

function addShapeless(data as IItemStack[][IItemStack][int]) {
	for tier, items in data {
		for output, ingredients in items {
			TableCrafting.addShapeless(tier, output, ingredients);
		}
	}
}

function remove(data as IItemStack[]) {
	for item in data {
		TableCrafting.remove(item);
	}
}
