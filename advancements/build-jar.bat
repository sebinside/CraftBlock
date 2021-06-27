@echo off

jar cf ../mods/CraftBlockAdvancements.jar^
    craftblock/Dummy.class^
    mcmod.info^
    pack.mcmeta^
    assets/craftblock_advancements/*

echo CraftBlockAdvancements.jar has been build.
