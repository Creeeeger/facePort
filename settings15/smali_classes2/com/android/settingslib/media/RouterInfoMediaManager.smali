.class public final Lcom/android/settingslib/media/RouterInfoMediaManager;
.super Lcom/android/settingslib/media/InfoMediaManager;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mControllerCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$ControllerCallback;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mRouteCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;

.field public final mRouteListingPreferenceCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$$ExternalSyntheticLambda0;

.field public final mRouter:Landroid/media/MediaRouter2;

.field public final mRouterManager:Landroid/media/MediaRouter2Manager;

.field public mScanToken:Landroid/media/MediaRouter2$ScanToken;

.field public final mTransferCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;

    invoke-direct {p4, p0}, Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;-><init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V

    iput-object p4, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouteCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$RouteCallback;

    new-instance p4, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;

    invoke-direct {p4, p0}, Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;-><init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V

    iput-object p4, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mTransferCallback:Lcom/android/settingslib/media/RouterInfoMediaManager$TransferCallback;

    new-instance p4, Lcom/android/settingslib/media/RouterInfoMediaManager$ControllerCallback;

    invoke-direct {p4, p0}, Lcom/android/settingslib/media/RouterInfoMediaManager$ControllerCallback;-><init>(Lcom/android/settingslib/media/RouterInfoMediaManager;)V

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

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    return-void

    :cond_1
    new-instance p0, Lcom/android/settingslib/media/InfoMediaManager$PackageNotAvailableException;

    const-string p1, "Package name "

    const-string p3, " does not exist."

    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/InfoMediaManager$PackageNotAvailableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getRemoteSessions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

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

.method public final getRoutingSessionById(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0
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

.method public final setSessionVolume(Landroid/media/RoutingSessionInfo;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/RouterInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->setSessionVolume(Landroid/media/RoutingSessionInfo;I)V

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
