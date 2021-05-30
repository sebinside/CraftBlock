import mods.dropt.Dropt;

val drops = Dropt.list("custom_drops");

//vanilla leaves drop bonemeal with a chance of 4.5% (same as saplings)
drops.add(Dropt.rule()
    .matchBlocks(["minecraft:leaves:*", "minecraft:leaves2:*"])
    .replaceStrategy("ADD")
    .addDrop(Dropt.drop().items([<minecraft:dye:15>]).selector(Dropt.weight(45), "EXCLUDED"))
    .addDrop(Dropt.drop().selector(Dropt.weight(955)))
);
