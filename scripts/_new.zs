#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Color;

// New mysterious sawdust recipe
val sawdust = VanillaFactory.createItem("mysterious_sawdust");
sawdust.register();

// skateKAPPA
val kappa = VanillaFactory.createItem("skate_kappa");
kappa.register();

// Morphing Rod
val morph = VanillaFactory.createItem("morph_rod");
morph.register();

// Molten Terrasteel
val terrasteel_l = MaterialSystem.getMaterialBuilder().setName("Terrasteel").setColor(Color.fromHex("64EF33")).build().registerPart("molten").getData();
terrasteel_l.addDataValue("temperature", 500);
terrasteel_l.addDataValue("viscosity", 8000);
terrasteel_l.addDataValue("luminosity", 9);

// Molten Elementium
val elementium_l = MaterialSystem.getMaterialBuilder().setName("Elementium").setColor(Color.fromHex("E90081")).build().registerPart("molten").getData();
elementium_l.addDataValue("temperature", 500);
elementium_l.addDataValue("viscosity", 8000);
elementium_l.addDataValue("luminosity", 9);

// Molten Gaia Spirit Ingot
val gaia_l = MaterialSystem.getMaterialBuilder().setName("Gaia Spirit").setColor(Color.fromHex("EEEEEE")).build().registerPart("molten").getData();
gaia_l.addDataValue("temperature", 500);
gaia_l.addDataValue("viscosity", 8000);
gaia_l.addDataValue("luminosity", 9);

// Molten Botanic Alloy
val alloy_l = MaterialSystem.getMaterialBuilder().setName("Botanic Alloy").setColor(Color.fromHex("00DCFF")).build().registerPart("molten").getData();
alloy_l.addDataValue("temperature", 800);
alloy_l.addDataValue("viscosity", 6000);
alloy_l.addDataValue("luminosity", 15);

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

// Primal Aspectus
val aspectus_primal = VanillaFactory.createItem("aspectus_primal");
aspectus_primal.register();
