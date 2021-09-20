import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.recipes.IRecipeFunction;
import crafttweaker.data.IData;

# Morphing Rod recipe
mods.botania.RuneAltar.addRecipe(<contenttweaker:morph_rod>, [
    <tconstruct:tough_tool_rod>.withTag({Material: "iron"}),
    <hwell:rod_myst_2>,
    <ore:livingwoodTwig>,
    <ore:stickTreatedWood>,
    <ore:elvenPixieDust>,
    <uniquecrops:generic:12>,
    <astralsorcery:itemcraftingcomponent:4>,
    <hwell:myst_log>
], 31416);

# Morphing Tool recipe
recipes.remove(<morphtool:tool>);
recipes.addShaped(<morphtool:tool> as IItemStack, [
    [null, <botania:twigwand>.marked("botania"), (<astralsorcery:itemwand> | <astralsorcery:itemlinkingtool>).marked("astral")], 
    [null, <contenttweaker:morph_rod>, (<immersiveengineering:tool> | <embers:tinker_hammer>).marked("hammer")], 
    [<contenttweaker:morph_rod>, null, null]
] as IIngredient[][], function(out, ins, cInfo) {
    return out.withTag({
            "morphtool:data": {
                botania: {
                    id: "botania:twigwand",
                    Count: 1 as byte,
                    tag: ins.botania.tag,
                    Damage: 0 as short
                },
                astralsorcery: {
                    id: ins.astral.definition.id,
                    Count: 1 as byte,
                    tag: ins.astral.tag,
                    Damage: 0 as short
                },
                ins.hammer.definition.id.split(":")[0]: {
                    id: ins.hammer.definition.id,
                    Count: 1 as byte,
                    Damage: 0 as short
                }
            }
        });
} as IRecipeFunction, null);

# Add description how to use the Morphing Tool
moretweaker.jei.MoreJei.addDescription(<morphtool:tool>, [
    "The Morphing Tool can mimic any tool, wand, wrench or hammer you throw at it!",
    " ",
    "Manually select which tool it should mimic by scrolling while you sneak."
]);
moretweaker.jei.MoreJei.addDescription(<morphtool:tool>, [
    "Add additional tools by crafting them together with the tool.",
    " ",
    "While the tool is morphed, sneak and drop it to remove the attached tool."
]);
