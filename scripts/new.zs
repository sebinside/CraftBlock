#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
//import crafttweaker.game.IGame;

// New mysterious sawdust recipe
var zsItem = VanillaFactory.createItem("mysterious_sawdust");
zsItem.register();
//game.setLocalization("en_us", "hearthwell_mysterious_sawdust", "Mysterious Sawdust");