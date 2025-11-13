.class public final Lcom/android/settingslib/media/NoOpInfoMediaManager;
.super Lcom/android/settingslib/media/InfoMediaManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final PLACEHOLDER_SESSION:Landroid/media/RoutingSessionInfo;


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

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/media/NoOpInfoMediaManager;->PLACEHOLDER_SESSION:Landroid/media/RoutingSessionInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V

    return-void
.end method


# virtual methods
.method public final deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    return-void
.end method

.method public final getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
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

.method public final getRoutingSessionsForPackage()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/android/settingslib/media/NoOpInfoMediaManager;->PLACEHOLDER_SESSION:Landroid/media/RoutingSessionInfo;

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final registerRouter()V
    .locals 0

    return-void
.end method

.method public final releaseSession(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    return-void
.end method

.method public final selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    return-void
.end method

.method public final setRouteVolume(Landroid/media/MediaRoute2Info;I)V
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
