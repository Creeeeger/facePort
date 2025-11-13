.class public final Lcom/android/settingslib/media/ManagerInfoMediaManager;
.super Lcom/android/settingslib/media/InfoMediaManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mIsScanning:Z

.field final mMediaRouterCallback:Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;

.field mRouterManager:Landroid/media/MediaRouter2Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ManagerInfoMediaManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V

    new-instance p2, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;

    invoke-direct {p2, p0}, Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;-><init>(Lcom/android/settingslib/media/ManagerInfoMediaManager;)V

    iput-object p2, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mIsScanning:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    return-void
.end method


# virtual methods
.method public final deselectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaRouter2Manager;->deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public final getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRouteListingPreference()Landroid/media/RouteListingPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter2Manager;->getRouteListingPreference(Ljava/lang/String;)Landroid/media/RouteListingPreference;

    move-result-object p0

    return-object p0
.end method

.method public final getRoutingSessionsForPackage()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final registerRouter()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object v1, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaRouter2Manager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    return-void
.end method

.method public final releaseSession(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public final selectRoute(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaRouter2Manager;->selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public final setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public final startScanOnRouter()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mIsScanning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->registerScanRequest()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mIsScanning:Z

    :cond_0
    return-void
.end method

.method public final stopScanOnRouter()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mIsScanning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->unregisterScanRequest()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mIsScanning:Z

    :cond_0
    return-void
.end method

.method public final transferToRoute(Landroid/media/MediaRoute2Info;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, p0}, Landroid/media/MediaRouter2Manager;->transfer(Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final unregisterRouter()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object p0, p0, Lcom/android/settingslib/media/ManagerInfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter2Manager;->unregisterCallback(Landroid/media/MediaRouter2Manager$Callback;)V

    return-void
.end method
