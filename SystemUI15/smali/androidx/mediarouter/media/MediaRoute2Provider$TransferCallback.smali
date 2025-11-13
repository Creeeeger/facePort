.class public final Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;
.super Landroid/media/MediaRouter2$TransferCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/media/MediaRoute2Provider;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-direct {p0}, Landroid/media/MediaRouter2$TransferCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mCallback:Landroidx/mediarouter/media/MediaRoute2Provider$Callback;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/media/MediaRoute2Provider$Callback;->onReleaseController(Landroidx/mediarouter/media/MediaRouteProvider$RouteController;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onStop: No matching routeController found. routingController="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2Provider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object p1, p1, Landroidx/mediarouter/media/MediaRoute2Provider;->mMediaRouter2:Landroid/media/MediaRouter2;

    invoke-virtual {p1}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object p1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider;->mCallback:Landroidx/mediarouter/media/MediaRoute2Provider$Callback;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRoute2Provider$Callback;->onSelectFallbackRoute()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "MR2Provider"

    const-string p1, "Selected routes are empty. This shouldn\'t happen."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-direct {v0, v1, p2, p1}, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider;Landroid/media/MediaRouter2$RoutingController;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object v1, v1, Landroidx/mediarouter/media/MediaRoute2Provider;->mControllerMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRoute2Provider;->mCallback:Landroidx/mediarouter/media/MediaRoute2Provider$Callback;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRoute2Provider$Callback;->onSelectRoute(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$TransferCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/MediaRoute2Provider;->setDynamicRouteDescriptors(Landroid/media/MediaRouter2$RoutingController;)V

    :goto_0
    return-void
.end method

.method public final onTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Transfer failed. requestedRoute="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MR2Provider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
