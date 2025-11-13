.class public final Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;
.super Landroidx/mediarouter/media/RemoteControlClientCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mRegistered:Z

.field public final mRouterObj:Ljava/lang/Object;

.field public final mUserRouteCategoryObj:Ljava/lang/Object;

.field public final mUserRouteObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/mediarouter/media/RemoteControlClientCompat;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string p2, "media_router"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaRouter;

    const-string p2, ""

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setPlaybackInfo(Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    check-cast v0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    iget v1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    iget v1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    iget v1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    iget p1, p1, Landroidx/mediarouter/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    iget-boolean p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mRegistered:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;->mRegistered:Z

    new-instance p1, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;

    invoke-direct {p1, p0}, Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;-><init>(Landroidx/mediarouter/media/RemoteControlClientCompat$JellybeanImpl;)V

    new-instance v1, Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallbackProxy;

    invoke-direct {v1, p1}, Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallbackProxy;-><init>(Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    iget-object p0, p0, Landroidx/mediarouter/media/RemoteControlClientCompat;->mRcc:Ljava/lang/Object;

    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$UserRouteInfo;->setRemoteControlClient(Landroid/media/RemoteControlClient;)V

    :cond_0
    return-void
.end method
