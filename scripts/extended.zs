import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.functions.minecraft.crafting;


static shapeless as IIngredient[][string][IItemStack] = {
  // Black Iron now depends on hearth well
  <extendedcrafting:material>:{
    "black_iron_ingot":[
      <ore:ingotIron>, <hwell:heavy_mesh>
    ]
  }
};

static removeNamed as string[] = [
  // Remove Black Iron Ingot Recipe
  "extendedcrafting:black_iron_ingot"
];

crafting.removeNamed(removeNamed);
crafting.shapeless(shapeless);
