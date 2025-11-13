.class public final Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;
.super Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mRouteObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSetVolume(I)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    return-void
.end method

.method public final onUpdateVolume(I)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return-void
.end method
