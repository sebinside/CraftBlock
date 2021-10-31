import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static tome as IItemStack = <akashictome:tome>.withTag({
    "akashictome:is_morphing":1 as byte,
    "akashictome:data":{
        tconstruct:{
            id:"tconstruct:book",
            Count:1 as byte,
            tag:{
                "akashictome:definedMod":"tconstruct"
            },
            Damage:0 as short
        },
        botania:{
            id:"botania:lexicon",
            Count:1 as byte,
            tag:{
                "akashictome:displayName":"Lexica Botania",
                "akashictome:definedMod":"botania",
                "akashictome:is_morphing":1 as byte,
                display:{
                    Name:"§rAkashic Tome (§aLexica Botania§r)"
                }
            },
            Damage:0 as short
        },
        astralsorcery:{
            id:"astralsorcery:itemjournal",
            Count:1 as byte,
            tag:{
                "akashictome:definedMod":"astralsorcery"
            },
            Damage:0 as short
        },
        theoneprobe:{
            id:"theoneprobe:probenote",
            Count:1 as byte,
            tag:{
                "akashictome:definedMod":"theoneprobe"
            },
            Damage:0 as short
        },
        hwell:{
            id:"patchouli:guide_book",
            Count:1 as byte,
            tag:{
                "akashictome:displayName":"Book of the Well",
                "akashictome:definedMod":"hwell",
                "akashictome:is_morphing":1 as byte,
                display:{
                    Name:"§rAkashic Tome (§aBook of the Well§r)"
                },
                "patchouli:book":"hwell:book_of_the_well"
            },
            Damage:0 as short
        },
        uniquecrops:{
            id:"uniquecrops:generic",
            Count:1 as byte,
            tag:{
                "akashictome:displayName":"Guide to Unique Crops",
                savedIndex:0,
                "akashictome:definedMod":"uniquecrops",
                "akashictome:is_morphing":1 as byte,
                display:{
                    Name:"§rAkashic Tome (§aGuide to Unique Crops§r)"
                }
            },
            Damage:0 as short
        },
        immersiveengineering:{
            id:"immersiveengineering:tool",
            Count:1 as byte,
            tag:{
                "akashictome:displayName":"Engineer's Manual",
                "akashictome:definedMod":"immersiveengineering",
                "akashictome:is_morphing":1 as byte,
                display:{
                    Name:"§rAkashic Tome (§aEngineer's Manual§r)"
                }
            },
            Damage:3 as short
        },
        opencomputers:{
            id:"opencomputers:tool",
            Count:1 as byte,
            tag:{
                "akashictome:definedMod":"opencomputers"
            },
            Damage:4 as short
        },
        embers:{
            id:"embers:codex",
            Count:1 as byte,
            tag:{
                "akashictome:displayName":"Ancient Codex",
                "akashictome:definedMod":"embers",
                "akashictome:is_morphing":1 as byte,
                display:{
                    Name:"§rAkashic Tome (§aAncient Codex§r)"
                }
            },
            Damage:0 as short
        }
    }
});

// Akashic Tome easy recipe
recipes.remove(<akashictome:tome>);
val sign_head = <tconstruct:sign_head>.withTag({Material: "paper"})
              | <tconstruct:sign_head>.withTag({Material: "sponge"})
              | <tconstruct:sign_head>.withTag({Material: "flint"})
              | <tconstruct:sign_head>.withTag({Material: "bone"})
            as IIngredient;
recipes.addShapeless("tome", tome, [
    sign_head, <ore:dyeBlack>, <ore:feather>, <ore:leather>
]);
// Akashic Tome update recipe
recipes.addShapeless("tome_upgrade", tome, [<akashictome:tome>]);
