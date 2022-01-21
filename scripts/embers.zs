import scripts._base.disable;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;

// Add easier ash pile recipe
moretweaker.cfb.KitchenAppliances.addToasterRecipe(<embers:dust_ash>, <ore:foodToast>);
moretweaker.jei.MoreJei.addDescription(<embers:dust_ash>, ["Ever wondered what happens if you toast a toast?"]);

// Remove embers' electrum
val electrumItems = [
    <embers:ingot_electrum>,
    <embers:plate_electrum>,
    <embers:nugget_electrum>,
    <embers:block_electrum>
] as IItemStack[];

for item in electrumItems {
    disable(item);
}

mods.embers.Stamper.remove(<embers:ingot_electrum>);
mods.embers.Stamper.add(<immersiveengineering:metal:7>, <liquid:electrum> * 144, <embers:stamp_bar>);
mods.embers.Stamper.remove(<embers:plate_electrum>);
mods.embers.Stamper.add(<immersiveengineering:metal:37>, <liquid:electrum> * 144, <embers:stamp_plate>);

// Ember bore Tier 2
recipes.remove(<embers:ember_bore>);
mods.extendedcrafting.TableCrafting.addShaped(0, <embers:ember_bore>, [
    [<embers:block_caminite_brick>, <embers:block_caminite_brick>, <minecraft:hopper>, <embers:block_caminite_brick>, <embers:block_caminite_brick>], 
    [<embers:item_pipe>, <ore:scaffoldingSteel>, <embers:mech_core>, <ore:scaffoldingSteel>, <embers:item_pipe>], 
    [<embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>, <embers:block_caminite_brick>], 
    [<hwell:grinding_wheel_crystal>, <ore:stickSteel>, <hwell:grinding_wheel_diamond>, <ore:stickSteel>, <hwell:grinding_wheel_crystal>], 
    [<tconstruct:tough_binding>.withTag({Material: "steel"}), null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null, <tconstruct:tough_binding>.withTag({Material: "steel"})]
]);

// Ember activator
recipes.remove(<embers:ember_activator>);
recipes.addShaped("emberActivator", <embers:ember_activator>, [
    [<embers:crystal_ember>, <minecraft:iron_bars>, <embers:crystal_ember>], 
    [<botania:spark>, <ore:scaffoldingSteel>, <botania:spark>], 
    [<embers:stairs_caminite_brick>, <ore:scaffoldingSteel>, <embers:stairs_caminite_brick>]
]);

// Pressure Refinery is just harder activator
recipes.remove(<embers:boiler>);
recipes.addShaped("emberBoiler", <embers:boiler>, [
	[<embers:block_caminite_brick>, <embers:aspectus_dawnstone>, <embers:block_caminite_brick>], 
	[<ore:blockSteel>, <embers:ember_activator>, <ore:blockSteel>], 
	[<embers:block_caminite_brick>, <ore:blockConstantan>, <embers:block_caminite_brick>]
]);

//Auto Breaker is hardcore
recipes.remove(<embers:breaker>);
recipes.addShaped("emberBreaker", <embers:breaker>, [
	[null, <hwell:grinding_wheel_iron>, null], 
	[<ore:ingotLead>, <embers:mech_core>, <ore:ingotLead>], 
	[<ore:ingotLead>, <embers:crystal_ember>, <ore:ingotLead>]
]);

// Two new caminite recipes
recipes.remove(<embers:blend_caminite>);
recipes.addShapeless("caminiteHard", <embers:blend_caminite> * 3, [<minecraft:clay_ball>, <minecraft:clay_ball>, <ore:itemSlag>, <ore:itemSlag>, <minecraft:sand>]);

mods.embers.Melter.add(<liquid:clay> * 144, <ore:clay>);
mods.embers.Stamper.add(<embers:blend_caminite> * 4, <liquid:clay> * 144, <embers:stamp_flat>, <ore:sand>);

// Embers hammer
recipes.remove(<embers:tinker_hammer>);
mods.extendedcrafting.TableCrafting.addShaped(0, <embers:tinker_hammer>, [
    [<ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>], 
    [<ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>, <tconstruct:tough_binding>.withTag({Material: "steel"}), <ore:blockSheetmetalSteel>, <ore:blockSheetmetalSteel>], 
    [null, null, <ore:plankTreatedWood>, null, null], 
    [null, null, <ore:plankTreatedWood>, null, null], 
    [null, null, <ore:plankTreatedWood>, null, null]
]);

// Make core more hardcore!
recipes.remove(<embers:mech_core>);
<embers:mech_core>.displayName = "Mechanical Hardcore";
recipes.addShaped(<embers:mech_core>, [
    [<ore:ingotSteel>, <immersiveengineering:material:8>, <ore:ingotSteel>], 
    [<immersiveengineering:material:8>, <hwell:asul_machine_case>, <immersiveengineering:material:8>], 
    [<ore:ingotSteel>, <immersiveengineering:material:8>, <ore:ingotSteel>]
]);

// Remove bad tools
val tools = [
    //kappa
    <embers:pickaxe_copper>, 
    <embers:axe_copper>,
    <embers:shovel_copper>,
    <embers:hoe_copper>,
    <embers:sword_copper>,
    //aluminium
    <embers:pickaxe_aluminum>,
    <embers:axe_aluminum>,
    <embers:shovel_aluminum>,
    <embers:hoe_aluminum>,
    <embers:sword_aluminum>,
    //nickel
    <embers:pickaxe_nickel>,
    <embers:axe_nickel>,
    <embers:shovel_nickel>,
    <embers:hoe_nickel>,
    <embers:sword_nickel>,
    //tin
    <embers:pickaxe_tin>,
    <embers:axe_tin>,
    <embers:shovel_tin>,
    <embers:hoe_tin>,
    <embers:sword_tin>,
    //silver
    <embers:pickaxe_silver>,
    <embers:axe_silver>,
    <embers:shovel_silver>,
    <embers:hoe_silver>,
    <embers:sword_silver>,
    //lead
    <embers:pickaxe_lead>,
    <embers:axe_lead>,
    <embers:shovel_lead>,
    <embers:hoe_lead>,
    <embers:sword_lead>,
    //bronze
    <embers:pickaxe_bronze>,
    <embers:axe_bronze>,
    <embers:shovel_bronze>,
    <embers:hoe_bronze>,
    <embers:sword_bronze>,
    //electrum
    <embers:pickaxe_electrum>,
    <embers:axe_electrum>,
    <embers:shovel_electrum>,
    <embers:hoe_electrum>,
    <embers:sword_electrum>
] as IItemStack[];
for item in tools {
    mods.embers.DawnstoneAnvil.blacklistRepair(item);
    disable(item);
}

//Morphing Tool makes plates
val hammer = <embers:tinker_hammer>.reuse();
val metals = [
    "copper", 
    "lead", 
    "silver", 
    "dawnstone", 
    "iron", 
    "gold", 
    "aluminum",
    "bronze", 
    "nickel", 
    "tin"
] as string[];

for metal in metals {
    val result = itemUtils.getItem("embers:plate_"+metal);
    val ingot = oreDict.get("ingot"+ metal.substring(0,1).toUpperCase() + metal.substring(1));
    if (metal == "aluminum") {
        val ingot = ingot | <ore:ingotAluminium>;
    }

    print(metal);
    recipes.removeByRecipeName(metal == "iron" || metal == "gold" ? "embers:plate_"+metal : "embers:ingot"+metal+"_plate");
    recipes.addShapeless(metal+"plate", result, [
        ingot, ingot, hammer
    ]);
}
