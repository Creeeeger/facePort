.class public final Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallbackProxy;
.super Landroid/media/MediaRouter$VolumeCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;

    return-void
.end method


# virtual methods
.method public final onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;

    invoke-interface {p0, p2, p1}, Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;->onVolumeSetRequest(ILjava/lang/Object;)V

    return-void
.end method

.method public final onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallbackProxy;->mCallback:Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;

    invoke-interface {p0, p2, p1}, Landroidx/mediarouter/media/MediaRouterJellybean$VolumeCallback;->onVolumeUpdateRequest(ILjava/lang/Object;)V

    return-void
.end method
