import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.functions.botania.mana_infusion;


static add as IIngredient[][IItemStack][int][string] = {
  "alchemy":{
    50:{
      <minecraft:gravel>:[
        <minecraft:cobblestone>
      ],
      <minecraft:sand>:[
        <minecraft:gravel>
      ]
    }
  }
};

static remove as IIngredient[] = [
  <minecraft:sand>
];

mana_infusion.remove(remove);
mana_infusion.add(add);
