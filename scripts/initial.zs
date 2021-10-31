val shinyDoedelBlock = <minecraft:light_blue_glazed_terracotta>.withTag({
    ench:[
        {
            id:-1 as short,
            lvl:0 as short
        }
    ], 
    display:{
        Name: "§bShiny Dödel Block"
    }
});

mods.initialinventory.InvHandler.addStartingItem(scripts.akashic.tome);
mods.initialinventory.InvHandler.addStartingItem(<contenttweaker:skate_kappa>);
mods.initialinventory.InvHandler.addStartingItem(<harvestcraft:hamburgeritem>);
mods.initialinventory.InvHandler.addStartingItem(<harvestcraft:coffeeitem>);
mods.initialinventory.InvHandler.addStartingItem(shinyDoedelBlock * 5);
