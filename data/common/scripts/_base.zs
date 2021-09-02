import crafttweaker.item.IItemStack;

// Disable item by removing crafting recipes and hiding
function disable(input as IItemStack) {
    recipes.remove(input);
    mods.jei.JEI.removeAndHide(input);
}
