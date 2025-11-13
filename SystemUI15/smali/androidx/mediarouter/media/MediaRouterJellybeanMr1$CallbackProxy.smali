.class public final Landroidx/mediarouter/media/MediaRouterJellybeanMr1$CallbackProxy;
.super Landroidx/mediarouter/media/MediaRouterJellybean$CallbackProxy;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouterJellybean$CallbackProxy;-><init>(Landroidx/mediarouter/media/MediaRouterJellybean$Callback;)V

    return-void
.end method


# virtual methods
.method public final onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouterJellybean$CallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterJellybean$Callback;

    check-cast p0, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;

    check-cast p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;

    invoke-virtual {p0, p2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->findSystemRouteRecord(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mSystemRouteRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;

    :try_start_0
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "MediaRouterJellybeanMr1"

    const-string v1, "Cannot get presentation display for the route."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    :goto_0
    const/4 v0, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    goto :goto_1

    :cond_0
    move p2, v0

    :goto_1
    iget-object v1, p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    iget-object v1, v1, Landroidx/mediarouter/media/MediaRouteDescriptor;->mBundle:Landroid/os/Bundle;

    const-string v2, "presentationDisplayId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq p2, v0, :cond_1

    new-instance v0, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    iget-object v1, p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteDescriptor;)V

    iget-object v1, v0, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object p2

    iput-object p2, p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteDescriptor:Landroidx/mediarouter/media/MediaRouteDescriptor;

    invoke-virtual {p0}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->publishRoutes()V

    :cond_1
    return-void
.end method
