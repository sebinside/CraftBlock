import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.IEntityEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityItem;
import crafttweaker.item.IItemStack;

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
