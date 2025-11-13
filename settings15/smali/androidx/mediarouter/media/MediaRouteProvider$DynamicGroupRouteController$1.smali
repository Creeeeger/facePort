.class public final Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

.field public final synthetic val$groupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field public final synthetic val$listener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

.field public final synthetic val$routes:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;I)V
    .locals 0

    iput p5, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$listener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$groupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

    iput-object p4, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$routes:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$listener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$groupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$routes:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;->onRoutesChanged(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$listener:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$groupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$routes:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$2;->onRoutesChanged(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
