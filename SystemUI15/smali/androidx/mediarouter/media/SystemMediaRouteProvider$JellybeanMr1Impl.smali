.class public Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;
.super Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;


# instance fields
.field public mActiveScanWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

.field public mIsConnectingWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-void
.end method


# virtual methods
.method public final createCallbackObj()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$CallbackProxy;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$CallbackProxy;-><init>(Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;)V

    return-object v0
.end method

.method public isConnecting(Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)Z
    .locals 1

    iget-object v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    invoke-direct {v0}, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mIsConnectingWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;

    iget-object p1, p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/media/MediaRouter$RouteInfo;

    const/4 p0, 0x0

    return p0
.end method

.method public onBuildSystemRouteDescriptor(Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->onBuildSystemRouteDescriptor(Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;)V

    iget-object v0, p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->isConnecting(Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p2, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string p1, "connectionState"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :try_start_0
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaRouterJellybeanMr1"

    const-string v0, "Cannot get presentation display for the route."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    iget-object p1, p2, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string p2, "presentationDisplayId"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public updateCallback()V
    .locals 3

    invoke-super {p0}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->updateCallback()V

    iget-object v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteProvider;->mHandler:Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;

    invoke-direct {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;->mActiveScanWorkaround:Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;

    iget-boolean v1, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mActiveScan:Z

    if-eqz v1, :cond_1

    iget p0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;->mRouteTypes:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "MediaRouterJellybeanMr1"

    const-string v0, "Cannot scan for wifi displays because the DisplayManager.scanWifiDisplays() method is not available on this device."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void
.end method
