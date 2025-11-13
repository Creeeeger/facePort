.class public final Lcom/android/settingslib/media/RouterInfoMediaManager;
.super Lcom/android/settingslib/media/InfoMediaManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mControllerCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$ControllerCallback;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mRouteCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;

.field public final mRouteListingPreferenceCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;

.field public final mRouter:Landroid/media/MediaRouter2;

.field public mScanToken:Landroid/media/MediaRouter2$ScanToken;

.field public final mTransferCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settingslib/media/InfoMediaManager$PackageNotAvailableException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;-><init>(Lcom/android/settingslib/media/RouterInfoMediaManager;I)V

    iput-object p4, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouteCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;

    new-instance p4, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;

    invoke-direct {p4, p0, p5}, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;-><init>(Lcom/android/settingslib/media/RouterInfoMediaManager;I)V

    iput-object p4, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mTransferCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;

    new-instance p4, Lcom/android/settingslib/media/RouterInfoMediaManager$ControllerCallback;

    invoke-direct {p4, p0, p5}, Lcom/android/settingslib/media/RouterInfoMediaManager$ControllerCallback;-><init>(Lcom/android/settingslib/media/RouterInfoMediaManager;I)V

    iput-object p4, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mControllerCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$ControllerCallback;

    new-instance p4, Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V

    iput-object p4, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouteListingPreferenceCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;

    invoke-static {}, Lcom/android/media/flags/Flags;->enableCrossUserRoutingInMediaRouter2()Z

    move-result p4

    if-eqz p4, :cond_0

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/media/MediaRouter2;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/media/MediaRouter2;->getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaRouter2;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-static {p1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    return-void

    :cond_1
    new-instance p0, Lcom/android/settingslib/media/InfoMediaManager$PackageNotAvailableException;

    const-string p1, "Package name "

    const-string p3, " does not exist."

    invoke-static {p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/InfoMediaManager$PackageNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/media/MediaRouter2;->getController(Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$RoutingController;->deselectRoute(Landroid/media/MediaRoute2Info;)V

    :cond_0
    return-void
.end method

.method public final getControllerForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2;->getController(Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    return-object p0
.end method

.method public final getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/RouterInfoMediaManager;->getControllerForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRouteListingPreference()Landroid/media/RouteListingPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getRouteListingPreference()Landroid/media/RouteListingPreference;

    move-result-object p0

    return-object p0
.end method

.method public final getRoutingSessionsForPackage()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/RouterInfoMediaManager;->getControllerForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectableRoutes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/RouterInfoMediaManager;->getControllerForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final registerRouter()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    iget-object v1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouteCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;

    sget-object v3, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaRouter2;->registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    iget-object v1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouteListingPreferenceCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter2;->registerRouteListingPreferenceUpdatedCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    iget-object v1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mTransferCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter2;->registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    iget-object v1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mControllerCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$ControllerCallback;

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaRouter2;->registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    return-void
.end method

.method public final releaseSession(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/RouterInfoMediaManager;->getControllerForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->release()V

    :cond_0
    return-void
.end method

.method public final selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/media/MediaRouter2;->getController(Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2$RoutingController;->selectRoute(Landroid/media/MediaRoute2Info;)V

    :cond_0
    return-void
.end method

.method public final setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public final startScanOnRouter()V
    .locals 2

    invoke-static {}, Lcom/android/media/flags/Flags;->enableScreenOffScanning()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mScanToken:Landroid/media/MediaRouter2$ScanToken;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaRouter2$ScanRequest$Builder;

    invoke-direct {v0}, Landroid/media/MediaRouter2$ScanRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaRouter2$ScanRequest$Builder;->build()Landroid/media/MediaRouter2$ScanRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {v1, v0}, Landroid/media/MediaRouter2;->requestScan(Landroid/media/MediaRouter2$ScanRequest;)Landroid/media/MediaRouter2$ScanToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mScanToken:Landroid/media/MediaRouter2$ScanToken;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->startScan()V

    :goto_2
    return-void
.end method

.method public final stopScanOnRouter()V
    .locals 2

    invoke-static {}, Lcom/android/media/flags/Flags;->enableScreenOffScanning()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mScanToken:Landroid/media/MediaRouter2$ScanToken;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {v1, v0}, Landroid/media/MediaRouter2;->cancelScanRequest(Landroid/media/MediaRouter2$ScanToken;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mScanToken:Landroid/media/MediaRouter2$ScanToken;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->stopScan()V

    :goto_2
    return-void
.end method

.method public final transferToRoute(Landroid/media/MediaRoute2Info;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2;->transferTo(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public final unregisterRouter()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    iget-object v1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mControllerCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$ControllerCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2;->unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V

    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    iget-object v1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mTransferCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2;->unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V

    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    iget-object v1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouteListingPreferenceCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2;->unregisterRouteListingPreferenceUpdatedCallback(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouter:Landroid/media/MediaRouter2;

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouteCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter2;->unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V

    return-void
.end method
