.class public final Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;
.super Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mInitialMemberRouteId:Ljava/lang/String;

.field public final mPendingCallbacks:Landroid/util/SparseArray;

.field public final mRoutingController:Landroid/media/MediaRouter2$RoutingController;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mPendingCallbacks:Landroid/util/SparseArray;

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mInitialMemberRouteId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    sget p1, Landroidx/mediarouter/media/MediaRoute2Provider;->$r8$clinit:I

    const/4 p1, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/media/MediaRouter2$RoutingController;->getControlHints()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "androidx.mediarouter.media.KEY_MESSENGER"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Messenger;

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/os/Messenger;

    new-instance p2, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller$ReceiveHandler;

    invoke-direct {p2, p0}, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller$ReceiveHandler;-><init>(Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;)V

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final onAddMemberRoute(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRelease()V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->release()V

    return-void
.end method

.method public final onRemoveMemberRoute(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSetVolume(I)V
    .locals 0

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$RoutingController;->setVolume(I)V

    return-void
.end method

.method public final onUpdateMemberRoutes(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final onUpdateVolume(I)V
    .locals 1

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRoute2Provider$DynamicMediaRoute2Controller;->mRoutingController:Landroid/media/MediaRouter2$RoutingController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getVolume()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter2$RoutingController;->setVolume(I)V

    return-void
.end method
