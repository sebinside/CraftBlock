#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
import mods.manatweaks.DamageHelper;
import mods.manatweaks.ManaHandler;
import crafttweaker.item.IItemStack;

// New mysterious sawdust recipe
val sawdust = VanillaFactory.createItem("mysterious_sawdust");
sawdust.register();

// skateKAPPA
val kappa = VanillaFactory.createItem("skate_kappa");
kappa.register();

// Morphing Rod
val morph = VanillaFactory.createItem("morph_rod");
morph.register();

// TC Traits
val trait_mana = TraitBuilder.create("mana");
trait_mana.color = 0x006BFF;
trait_mana.onUpdate = function(trait, tool, world, player, slot, selected) {
    player.manaRepairSlot(slot, 60, 1);
};
trait_mana.onToolDamage = function(trait, tool, amount, newAmount, player) {
    if (newAmount <= 0) {
        return newAmount;
    } else {
        val regen = ManaHandler.requestMana(player, newAmount * 60, false) / 60;
        ManaHandler.requestMana(player, regen * 60, true);
        return newAmount - regen;
    }
};
trait_mana.register();

val trait_aura = TraitBuilder.create("aura");
trait_aura.color = 0xE23DBB;
trait_aura.onUpdate = function(trait, tool, world, player, slot, selected) {
    if (selected) {
        if (world.time % 10 == 0) {
            ManaHandler.dispatchMana(player, 1, true);
        }
    }
};
trait_aura.addItem(<item:botania:auraring>);
trait_aura.register();

val trait_auragreater = TraitBuilder.create("auragreater");
trait_auragreater.color = 0xE23DBB;
trait_auragreater.onUpdate = function(trait, tool, world, player, slot, selected) {
    if (selected) {
        if (world.time % 2 == 0) {
            ManaHandler.dispatchMana(player, 1, true);
        }
    }
};
trait_auragreater.addItem(<item:botania:auraringgreater>);
trait_auragreater.register();

// TC Livingwood
val livingwood_tc_material = mods.contenttweaker.tconstruct.MaterialBuilder.create("livingwood");
livingwood_tc_material.color = 0x2C120A;
livingwood_tc_material.craftable = true;
livingwood_tc_material.castable = false;
livingwood_tc_material.representativeItem = <item:botania:livingwood:0>;
livingwood_tc_material.addItem(<item:botania:livingwood:0>);
livingwood_tc_material.addItem(<item:botania:livingwood:5>);
livingwood_tc_material.addItem(<item:botania:manaresource:3>, 288);
livingwood_tc_material.addHeadMaterialStats(45, 2.0f, 2.0f, 0);
livingwood_tc_material.addHandleMaterialStats(1.1f, 25);
livingwood_tc_material.addExtraMaterialStats(20);
livingwood_tc_material.addBowMaterialStats(1.0f, 1.0f, 0.0f);
livingwood_tc_material.addArrowShaftMaterialStats(1.2f, 0);
livingwood_tc_material.addMaterialTrait("ecological", "head");
livingwood_tc_material.addMaterialTrait("aura", "head");
livingwood_tc_material.addMaterialTrait("ecological", "handle");
livingwood_tc_material.addMaterialTrait("aura", "handle");
livingwood_tc_material.addMaterialTrait("ecological", "extra");
livingwood_tc_material.addMaterialTrait("aura", "extra");
livingwood_tc_material.addMaterialTrait("ecological", "bow");
livingwood_tc_material.addMaterialTrait("aura", "bow");
livingwood_tc_material.register();

// TC Dreamwood
val dreamwood_tc_material = mods.contenttweaker.tconstruct.MaterialBuilder.create("dreamwood");
dreamwood_tc_material.color = 0x8FA8A2;
dreamwood_tc_material.craftable = true;
dreamwood_tc_material.castable = false;
dreamwood_tc_material.representativeItem = <item:botania:dreamwood:0>;
dreamwood_tc_material.addItem(<item:botania:dreamwood:0>);
dreamwood_tc_material.addItem(<item:botania:dreamwood:5>);
dreamwood_tc_material.addItem(<item:botania:manaresource:13>, 288);
dreamwood_tc_material.addHeadMaterialStats(35, 1.6f, 0.5f, 0);
dreamwood_tc_material.addHandleMaterialStats(0.8f, -25);
dreamwood_tc_material.addExtraMaterialStats(0);
dreamwood_tc_material.addBowMaterialStats(0.8f, 0.4f, -1);
dreamwood_tc_material.addMaterialTrait("ecological", "head");
dreamwood_tc_material.addMaterialTrait("auragreater", "head");
dreamwood_tc_material.addMaterialTrait("ecological", "handle");
dreamwood_tc_material.addMaterialTrait("auragreater", "handle");
dreamwood_tc_material.addMaterialTrait("ecological", "extra");
dreamwood_tc_material.addMaterialTrait("auragreater", "extra");
dreamwood_tc_material.addMaterialTrait("ecological", "bow");
dreamwood_tc_material.addMaterialTrait("auragreater", "bow");
dreamwood_tc_material.register();

// TC Mana String
val manastring_tc_material = mods.contenttweaker.tconstruct.MaterialBuilder.create("manastring");
manastring_tc_material.color = 0xaff8ff;
manastring_tc_material.craftable = true;
manastring_tc_material.castable = false;
manastring_tc_material.representativeItem = <item:botania:manaresource:16>;
manastring_tc_material.addItem(<item:botania:manaresource:16>);
manastring_tc_material.addBowStringMaterialStats(1.0f);
manastring_tc_material.addMaterialTrait("mana", "bowstring");
manastring_tc_material.register();

// TC Manasteel
val manasteel_material = MaterialSystem.getMaterialBuilder().setName("Manasteel").setColor(Color.fromHex("006BFF")).build();
val manasteel_l = manasteel_material.registerPart("molten").getData();
manasteel_l.addDataValue("temperature", 500);
manasteel_l.addDataValue("viscosity", 8000);
manasteel_l.addDataValue("luminosity", 9);
manasteel_material.registerPart("gear");
manasteel_material.registerPart("plate");

val manasteel_tc_material = mods.contenttweaker.tconstruct.MaterialBuilder.create("manasteel");
manasteel_tc_material.color = 0x006BFF;
manasteel_tc_material.liquid = <liquid:manasteel>;
manasteel_tc_material.craftable = false;
manasteel_tc_material.castable = true;
manasteel_tc_material.representativeItem = <item:botania:manaresource:0>;
manasteel_tc_material.addItem(<item:botania:storage:0>, 1296);
manasteel_tc_material.addItem(<item:botania:manaresource:0>);
manasteel_tc_material.addItem(<item:botania:manaresource:17>, 16);
manasteel_tc_material.addHeadMaterialStats(310, 6.0f, 4.0f, 3);
manasteel_tc_material.addHandleMaterialStats(0.85f, 60);
manasteel_tc_material.addExtraMaterialStats(50);
manasteel_tc_material.addBowMaterialStats(2.0f, 1.5f, 7.0f);
manasteel_tc_material.addMaterialTrait("mana");
manasteel_tc_material.register();

// TC Terrasteel
val terrasteel_material = MaterialSystem.getMaterialBuilder().setName("Terrasteel").setColor(Color.fromHex("64EF33")).build();
val terrasteel_l = terrasteel_material.registerPart("molten").getData();
terrasteel_l.addDataValue("temperature", 500);
terrasteel_l.addDataValue("viscosity", 8000);
terrasteel_l.addDataValue("luminosity", 9);
terrasteel_material.registerPart("gear");
terrasteel_material.registerPart("plate");

val terrasteel_tc_material = mods.contenttweaker.tconstruct.MaterialBuilder.create("terrasteel");
terrasteel_tc_material.color = 0x64EF33;
terrasteel_tc_material.liquid = <liquid:terrasteel>;
terrasteel_tc_material.craftable = false;
terrasteel_tc_material.castable = true;
terrasteel_tc_material.representativeItem = <item:botania:manaresource:4>;
terrasteel_tc_material.addItem(<item:botania:storage:1>, 1296);
terrasteel_tc_material.addItem(<item:botania:manaresource:4>);
terrasteel_tc_material.addItem(<item:botania:manaresource:18>, 16);
terrasteel_tc_material.addHeadMaterialStats(720, 7.0f, 7.0f, 4);
terrasteel_tc_material.addHandleMaterialStats(1.25f, 150);
terrasteel_tc_material.addExtraMaterialStats(60);
terrasteel_tc_material.addBowMaterialStats(2.0f, 1.6f, 8.0f);
terrasteel_tc_material.addMaterialTrait("mana");
terrasteel_tc_material.register();

// Molten Elementium
val elementium_material = MaterialSystem.getMaterialBuilder().setName("Elementium").setColor(Color.fromHex("E90081")).build();
val elementium_l = elementium_material.registerPart("molten").getData();
elementium_l.addDataValue("temperature", 500);
elementium_l.addDataValue("viscosity", 8000);
elementium_l.addDataValue("luminosity", 9);
elementium_material.registerPart("gear");
elementium_material.registerPart("plate");

val elementium_tc_material = mods.contenttweaker.tconstruct.MaterialBuilder.create("elementium");
elementium_tc_material.color = 0xE90081;
elementium_tc_material.liquid = <liquid:elementium>;
elementium_tc_material.craftable = false;
elementium_tc_material.castable = true;
elementium_tc_material.representativeItem = <item:botania:manaresource:7>;
elementium_tc_material.addItem(<item:botania:storage:2>, 1296);
elementium_tc_material.addItem(<item:botania:manaresource:7>);
elementium_tc_material.addItem(<item:botania:manaresource:19>, 16);
elementium_tc_material.addHeadMaterialStats(515, 6.5f, 6.0f, 3);
elementium_tc_material.addHandleMaterialStats(1.05f, 110);
elementium_tc_material.addExtraMaterialStats(50);
elementium_tc_material.addBowMaterialStats(2.0f, 1.6f, 7.0f);
elementium_tc_material.addMaterialTrait("mana");
elementium_tc_material.register();

// Molten Gaia Spirit Ingot
val gaia_material = MaterialSystem.getMaterialBuilder().setName("Gaia Spirit").setColor(Color.fromHex("EEEEEE")).build();
val gaia_l = gaia_material.registerPart("molten").getData();
gaia_l.addDataValue("temperature", 500);
gaia_l.addDataValue("viscosity", 8000);
gaia_l.addDataValue("luminosity", 9);

// Molten Botanic Alloy
val alloy_material = MaterialSystem.getMaterialBuilder().setName("Botanic Alloy").setColor(Color.fromHex("00DCFF")).build();
val alloy_l = alloy_material.registerPart("molten").getData();
alloy_l.addDataValue("temperature", 800);
alloy_l.addDataValue("viscosity", 6000);
alloy_l.addDataValue("luminosity", 15);
// Ingot and block must be registered with vanilla factory to be backwards compatible with PR #109
// alloy_material.registerPart("ingot");
// alloy_material.registerPart("block");
alloy_material.registerPart("gear");
alloy_material.registerPart("plate");
alloy_material.registerPart("nugget");

// Botanic Alloy Ingot
val alloy_i = VanillaFactory.createItem("botanic_alloy");
alloy_i.rarity = "RARE";
alloy_i.register();

// Botanic Alloy Block
val alloy_b = VanillaFactory.createBlock("botanic_alloy_block", <blockmaterial:iron>);
alloy_b.beaconBase = true;
alloy_b.register();

// Extended Crafting Table Base
val table_base = VanillaFactory.createBlock("elite_table_base", <blockmaterial:iron>);
table_base.fullBlock = false;
table_base.blockLayer = "CUTOUT";
table_base.register();

// Nether Star shards & core
val star_shard = VanillaFactory.createItem("nether_star_shard");
star_shard.glowing = true;
star_shard.register();
val star_core = VanillaFactory.createItem("nether_star_core");
star_core.glowing = true;
star_core.register();
