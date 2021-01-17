import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.functions.minecraft.Crafting;
import scripts.functions.minecraft.Smelting;


static shaped as IIngredient[][][string][IItemStack] = {
  // make crushing block depend on extendedcrafting's black iron
  <hwell:crushing_block>:{
    "crushing_block":[
      [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
      [<minecraft:cobblestone>, <ore:blockBlackIron>, <minecraft:cobblestone>],
      [<hwell:heavy_ingot>, <hwell:heavy_ingot>, <hwell:heavy_ingot>]
    ]
  }
};

static shapeless as IIngredient[][string][IItemStack] = {
  // heavy mix depends both on botania and astral sorcery
  <hwell:heavy_mesh> * 2:{
    "heavy_mesh":[
      <minecraft:stone> | <minecraft:stone:1> | <minecraft:stone:3> | <minecraft:stone:5>, <ore:dustCoal>, <ore:livingwood>
    ]
  }
};

static removeCrafting as IItemStack[] = [
  <hwell:heavy_mesh>,
  <hwell:crushing_block>
];

crafting.remove(removeCrafting);
crafting.addShaped(shaped, false);
crafting.addShapeless(shapeless);


static addFurnace as double[IIngredient][IItemStack] = {
  // heavy ingot is twice as expensive
  <hwell:heavy_ingot>:{
    <hwell:heavy_mesh>:0.0
  }
};

static removeFurnace as IItemStack[] = [
  <hwell:heavy_ingot>
];

furnace.remove(removeFurnace);
furnace.add(addFurnace);
