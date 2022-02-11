#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Color;
import mods.contenttweaker.BlockMaterial;
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

// TC Livingwood
val livingwood_tc_material = mods.contenttweaker.tconstruct.MaterialBuilder.create("livingwood");
livingwood_tc_material.color = 0x2C120A;
livingwood_tc_material.craftable = true;
livingwood_tc_material.castable = false;
livingwood_tc_material.representativeItem = <item:botania:livingwood:0>;
livingwood_tc_material.addItem(<item:botania:livingwood:0>);
livingwood_tc_material.addItem(<item:botania:livingwood:5>, 288);
livingwood_tc_material.addItem(<item:botania:manaresource:3>, 288);
livingwood_tc_material.addHeadMaterialStats(45, 2.0f, 2.0f, 1);
livingwood_tc_material.addHandleMaterialStats(1.1f, 25);
livingwood_tc_material.addExtraMaterialStats(20);
livingwood_tc_material.addBowMaterialStats(1.0f, 1.0f, 0.0f);
livingwood_tc_material.addArrowShaftMaterialStats(1.2f, 0);
livingwood_tc_material.register();

// TC Mana String
val manastring_tc_material = mods.contenttweaker.tconstruct.MaterialBuilder.create("manastring");
manastring_tc_material.color = 0xaff8ff;
manastring_tc_material.craftable = true;
manastring_tc_material.castable = false;
manastring_tc_material.representativeItem = <item:botania:manaresource:16>;
manastring_tc_material.addItem(<item:botania:manaresource:16>);
manastring_tc_material.addBowStringMaterialStats(1.0f);
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
