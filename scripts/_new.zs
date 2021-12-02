#loader contenttweaker
import mods.contenttweaker.VanillaFactory;

// New mysterious sawdust recipe
val sawdust = VanillaFactory.createItem("mysterious_sawdust");
sawdust.register();

// skateKAPPA
val kappa = VanillaFactory.createItem("skate_kappa");
kappa.register();

// Morphing Rod
val morph = VanillaFactory.createItem("morph_rod");
morph.register();

// Extended Crafting Table Base
val table_base = VanillaFactory.createBlock("elite_table_base", <blockmaterial:iron>);
table_base.fullBlock = false;
table_base.blockLayer = "CUTOUT";
table_base.register();
