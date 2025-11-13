.class public final Lcom/android/settingslib/media/NoOpInfoMediaManager;
.super Lcom/android/settingslib/media/InfoMediaManager;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    const-string v1, "FAKE_ROUTING_SESSION"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FAKE_SELECTED_ROUTE_ID"

    invoke-virtual {v0, v1}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/RoutingSessionInfo$Builder;->setVolumeMax(I)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/RoutingSessionInfo$Builder;->setVolume(I)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final getRemoteSessions()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRouteListingPreference()Landroid/media/RouteListingPreference;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRoutingSessionById(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final registerRouter()V
    .locals 0

    return-void
.end method

.method public final setSessionVolume(Landroid/media/RoutingSessionInfo;I)V
    .locals 0

    return-void
.end method

.method public final startScanOnRouter()V
    .locals 0

    return-void
.end method

.method public final stopScanOnRouter()V
    .locals 0

    return-void
.end method

.method public final transferToRoute(Landroid/media/MediaRoute2Info;)V
    .locals 0

    return-void
.end method

.method public final unregisterRouter()V
    .locals 0

    return-void
.end method
