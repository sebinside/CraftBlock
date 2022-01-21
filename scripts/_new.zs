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

// Nether Star shards & core
val star_shard = VanillaFactory.createItem("nether_star_shard");
star_shard.glowing = true;
star_shard.register();
val star_core = VanillaFactory.createItem("nether_star_core");
star_core.glowing = true;
star_core.register();
