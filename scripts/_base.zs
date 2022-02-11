import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

// Disable item by removing crafting recipes and hiding
function disable(input as IItemStack) {
    recipes.remove(input);
    mods.jei.JEI.removeAndHide(input);
}

//helper method for registering melting and casting of molten metals
function addMoltenMetal(molten as ILiquidStack, nugget as IIngredient,  nuggetTemp as int, nuggetCastingTime as int, ingot as IIngredient, ingotTemp as int, ingotCastingTime as int, block as IIngredient, blockTemp as int, blockCastingTime as int) {
        if (!isNull(ingot)) {
            mods.tconstruct.Melting.addRecipe(molten * 144, ingot, ingotTemp + 300);
            mods.tconstruct.Casting.addTableRecipe(ingot.itemArray[0], <tconstruct:cast_custom>, molten, 144, false, ingotCastingTime);
        }
        if (!isNull(block)) {
            mods.tconstruct.Melting.addRecipe(molten * 1296, block, blockTemp + 300);
            mods.tconstruct.Casting.addBasinRecipe(block.itemArray[0], null, molten, 1296, false, blockCastingTime);
        }
        if (!isNull(nugget)) {
            mods.tconstruct.Melting.addRecipe(molten * 16, nugget, nuggetTemp + 300);
            mods.tconstruct.Casting.addTableRecipe(nugget.itemArray[0], <tconstruct:cast_custom:1>, molten, 16, false, nuggetCastingTime);
        }
}

//helper method adding compression and decompression recipes for a material
function addCompressionRecipes(alias as string, nugget as IIngredient, ingot as IIngredient, block as IIngredient) {
    if (!isNull(nugget) && !isNull(ingot)) {
        recipes.addShapeless(alias + "_decompress_ingot", nugget.itemArray[0] * 9, [ingot]);
        recipes.addShaped(alias + "_compress_nugget", ingot.itemArray[0], [
            [nugget, nugget, nugget],
            [nugget, nugget, nugget],
            [nugget, nugget, nugget]
        ]);
    }    
    if (!isNull(ingot) && !isNull(block)) {
        recipes.addShapeless(alias + "_decompress_block", ingot.itemArray[0] * 9, [block]);
        recipes.addShaped(alias + "_compress_ingot", block.itemArray[0], [
            [ingot, ingot, ingot],
            [ingot, ingot, ingot],
            [ingot, ingot, ingot]
        ]);
    }
}
