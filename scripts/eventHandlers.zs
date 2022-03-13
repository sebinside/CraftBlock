import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.event.IEntityEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityItem;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IFacing;
import crafttweaker.server.IServer;
import crafttweaker.block.IBlock;


//pebbles are not allowed to exist
events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {
    if (event.entity instanceof IEntityItem) {
        val entity as IEntityItem = event.entity;
        val item as IItemStack = entity.item;
        if (<ore:pebble> has item) {
            event.cancel();
        }
    }
});

//DO YOU WANNA BUILD A SNOWMAAAAAAAAAAAAAAAAAAAAAAAAAAN?!
events.onBlockPlace(function(event as BlockPlaceEvent) {
    val block as IBlock = event.block;
    if (<minecraft:pumpkin:*>.asBlock() has block) {
        for i in 1 to 3 {
            val snow as IBlock = event.world.getBlock(event.position.getOffset(IFacing.down(), i));
            if (!(<minecraft:snow>.asBlock() has snow)) return;
        }
        val cmd = "playsound minecraft:entity.snowman.spawn master @a " ~ event.x ~ " " ~ event.y ~ " " ~ event.z ~ " 1 1 0";
        print(cmd);
        server.commandManager.executeCommand(server, cmd);
    }
});
