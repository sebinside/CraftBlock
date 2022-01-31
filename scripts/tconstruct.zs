import scripts._base.disable;
import crafttweaker.item.IItemStack;

// Make early gamer less annoying
val fullPatternChest = <tconstruct:tooltables:4>.withTag({
    inventory:{
        Items:[
            {
                Slot:0 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:tool_rod"
                },
                Damage:0 as short
            },
            {
                Slot:1 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:binding"
                },
                Damage:0 as short
            },
            {
                Slot:2 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:axe_head"
                },
                Damage:0 as short
            },
            {
                Slot:3 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:shovel_head"
                },
                Damage:0 as short
            },
            {
                Slot:4 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:pick_head"
                },
                Damage:0 as short
            },
            {
                Slot:5 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:tough_binding"
                },
                Damage:0 as short
            },
            {
                Slot:6 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:tough_tool_rod"
                },
                Damage:0 as short
            },
            {
                Slot:7 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:large_plate"
                },
                Damage:0 as short
            },
            {
                Slot:8 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:broad_axe_head"
                },
                Damage:0 as short
            },
            {
                Slot:9 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:hammer_head"
                },
                Damage:0 as short
            },
            {
                Slot:10 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:excavator_head"
                },
                Damage:0 as short
            },
            {
                Slot:11 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:fletching"
                },
                Damage:0 as short
            },
            {
                Slot:12 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:scythe_head"
                },
                Damage:0 as short
            },
            {
                Slot:13 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:kama_head"
                },
                Damage:0 as short
            },
            {
                Slot:14 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:hand_guard"
                },
                Damage:0 as short
            },
            {
                Slot:15 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:cross_guard"
                },
                Damage:0 as short
            },
            {
                Slot:16 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:wide_guard"
                },
                Damage:0 as short
            },
            {
                Slot:17 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:knife_blade"
                },
                Damage:0 as short
            },
            {
                Slot:18 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:sword_blade"
                },
                Damage:0 as short
            },
            {
                Slot:19 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:large_sword_blade"
                },
                Damage:0 as short
            },
            {
                Slot:20 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:arrow_shaft"
                },
                Damage:0 as short
            },
            {
                Slot:21 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:bow_limb"
                },
                Damage:0 as short
            },
            {
                Slot:22 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:arrow_head"
                },
                Damage:0 as short
            },
            {
                Slot:23 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:bow_string"
                },
                Damage:0 as short
            },
            {
                Slot:24 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:shard"
                },
                Damage:0 as short
            },
            {
                Slot:25 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:pan_head"
                },
                Damage:0 as short
            },
            {
                Slot:26 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:sharpening_kit"
                },
                Damage:0 as short
            },
            {
                Slot:27 as byte,
                id:"tconstruct:pattern",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:sign_head"
                },
                Damage:0 as short
            }
        ]
    },
	display:{
		Lore:[
			"§6Prefilled with all 28 different patterns"
		]
	}
});

val fullCastChest = <tconstruct:tooltables:4>.withTag({
    inventory:{
        Items:[
            {
                Slot:0 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:tool_rod"
                },
                Damage:0 as short
            },
            {
                Slot:1 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:binding"
                },
                Damage:0 as short
            },
            {
                Slot:2 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:axe_head"
                },
                Damage:0 as short
            },
            {
                Slot:3 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:shovel_head"
                },
                Damage:0 as short
            },
            {
                Slot:4 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:pick_head"
                },
                Damage:0 as short
            },
            {
                Slot:5 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:tough_binding"
                },
                Damage:0 as short
            },
            {
                Slot:6 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:tough_tool_rod"
                },
                Damage:0 as short
            },
            {
                Slot:7 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:large_plate"
                },
                Damage:0 as short
            },
            {
                Slot:8 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:broad_axe_head"
                },
                Damage:0 as short
            },
            {
                Slot:9 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:hammer_head"
                },
                Damage:0 as short
            },
            {
                Slot:10 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:excavator_head"
                },
                Damage:0 as short
            },
            {
                Slot:11 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:fletching"
                },
                Damage:0 as short
            },
            {
                Slot:12 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:scythe_head"
                },
                Damage:0 as short
            },
            {
                Slot:13 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:kama_head"
                },
                Damage:0 as short
            },
            {
                Slot:14 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:hand_guard"
                },
                Damage:0 as short
            },
            {
                Slot:15 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:cross_guard"
                },
                Damage:0 as short
            },
            {
                Slot:16 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:wide_guard"
                },
                Damage:0 as short
            },
            {
                Slot:17 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:knife_blade"
                },
                Damage:0 as short
            },
            {
                Slot:18 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:sword_blade"
                },
                Damage:0 as short
            },
            {
                Slot:19 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:large_sword_blade"
                },
                Damage:0 as short
            },
            {
                Slot:20 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:arrow_shaft"
                },
                Damage:0 as short
            },
            {
                Slot:21 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:bow_limb"
                },
                Damage:0 as short
            },
            {
                Slot:22 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:arrow_head"
                },
                Damage:0 as short
            },
            {
                Slot:23 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:bow_string"
                },
                Damage:0 as short
            },
            {
                Slot:24 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:shard"
                },
                Damage:0 as short
            },
            {
                Slot:25 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:pan_head"
                },
                Damage:0 as short
            },
            {
                Slot:26 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:sharpening_kit"
                },
                Damage:0 as short
            },
            {
                Slot:27 as byte,
                id:"tconstruct:cast",
                Count:1 as byte,
                tag:{
                    PartType:"tconstruct:sign_head"
                },
                Damage:0 as short
            },
            {
                Slot:28 as byte,
                id:"tconstruct:cast_custom",
                Count:1 as byte,
                Damage:0 as short
            },
            {
                Slot:29 as byte,
                id:"tconstruct:cast_custom",
                Count:1 as byte,
                Damage:1 as short
            },
            {
                Slot:30 as byte,
                id:"tconstruct:cast_custom",
                Count:1 as byte,
                Damage:2 as short
            },
            {
                Slot:31 as byte,
                id:"tconstruct:cast_custom",
                Count:1 as byte,
                Damage:3 as short
            },
            {
                Slot:32 as byte,
                id:"tconstruct:cast_custom",
                Count:1 as byte,
                Damage:4 as short
            }
        ]
    },
	display: {
		Lore:[
			"§6Prefilled with all 33 different casts. Call me cast crafter."
		]
	}
});

recipes.remove(<tconstruct:tooltables:4>);
recipes.addShaped("betterpatternchest", fullPatternChest, [[<tconstruct:pattern>], [<ore:chestWood>]]);

mods.extendedcrafting.TableCrafting.addShaped(0, fullCastChest, [
	[<ore:ingotGold>, <ore:pattern>, <ore:pattern>, <ore:pattern>, <ore:ingotGold>], 
	[<ore:pattern>, <ore:blockAlubrass>, <tconstruct:cast>, <ore:blockAlubrass>, <ore:pattern>], 
	[<ore:pattern>, <tconstruct:cast_custom:0>, <ore:chest>, <tconstruct:cast_custom:4>, <ore:pattern>], 
	[<ore:pattern>, <ore:blockAlubrass>, <tconstruct:casting>, <ore:blockAlubrass>, <ore:pattern>], 
	[<ore:ingotGold>, <ore:pattern>, <ore:pattern>, <ore:pattern>, <ore:ingotGold>]
]);

// Add information to the plate to inform very lost users
moretweaker.jei.MoreJei.addDescription(<tconstruct:cast_custom:3>, ["Pattern chests are not the question but the answer."]);

// Make seared bricks easier
recipes.remove(<tconstruct:soil>);
recipes.addShapeless("grout", <tconstruct:soil> * 4, [<ore:gravel>, <ore:sand>, <ore:gravel>, <ore:sand>, <minecraft:clay>, <ore:sand>, <ore:gravel>, <ore:sand>, <ore:gravel>]);
recipes.addShapeless("groutSimple", <tconstruct:soil> * 1, [<minecraft:clay_ball>, <ore:gravel>, <ore:sand>]);

mods.botania.PureDaisy.addRecipe(<tconstruct:soil>, <tconstruct:seared:3>);

// Make controller more interesting
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped("tconstructController", <tconstruct:smeltery_controller>, [
	[<ore:stoneOnyxSmooth>, <ore:stoneOnyxSmooth>, <ore:stoneOnyxSmooth>], 
	[<embers:ashen_stone>, <ore:gemHearthWellNetherCrystal>, <embers:ashen_stone>], 
	[<ore:blockBlackIron>, <cookingforblockheads:toaster>, <ore:blockBlackIron>]
]);

// Veri funi Necrotic Bones crafting
mods.embers.Alchemy.add(<tconstruct:materials:17>, [<minecraft:bone>, <uniquecrops:dyedbonemeal>, <embers:ashen_cloth>, <uniquecrops:dyedbonemeal>, <embers:ashen_cloth>], {
    "primal": 384 .. 420
});
