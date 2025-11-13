.class public final Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

.field public final synthetic val$groupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

.field public final synthetic val$listener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

.field public final synthetic val$routes:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$listener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$groupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

    iput-object p4, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$routes:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$listener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$groupRoute:Landroidx/mediarouter/media/MediaRouteDescriptor;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$1;->val$routes:Ljava/util/Collection;

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter$3;->onRoutesChanged(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Landroidx/mediarouter/media/MediaRouteDescriptor;Ljava/util/Collection;)V

    return-void
.end method
