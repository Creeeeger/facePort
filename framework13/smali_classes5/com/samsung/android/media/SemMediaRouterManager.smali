.class public Lcom/samsung/android/media/SemMediaRouterManager;
.super Ljava/lang/Object;
.source "SemMediaRouterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaRouterManager$Callback;,
        Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemMRManager"

.field private static blacklist sInstance:Lcom/samsung/android/media/SemMediaRouterManager;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mManager:Landroid/media/MediaRouter2Manager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/media/SemMediaRouterManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    .line 43
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/samsung/android/media/SemMediaRouterManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/samsung/android/media/SemMediaRouterManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/samsung/android/media/SemMediaRouterManager;->sInstance:Lcom/samsung/android/media/SemMediaRouterManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/samsung/android/media/SemMediaRouterManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/SemMediaRouterManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/media/SemMediaRouterManager;->sInstance:Lcom/samsung/android/media/SemMediaRouterManager;

    .line 37
    :cond_0
    sget-object v1, Lcom/samsung/android/media/SemMediaRouterManager;->sInstance:Lcom/samsung/android/media/SemMediaRouterManager;

    monitor-exit v0

    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 226
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 227
    return-void
.end method

.method public blacklist getAllRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDiscoveryPreference(Ljava/lang/String;)Landroid/media/RouteDiscoveryPreference;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getDiscoveryPreference(Ljava/lang/String;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMediaControllerForRoutingSession(Landroid/media/RoutingSessionInfo;)Landroid/media/session/MediaController;
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getMediaControllerForRoutingSession(Landroid/media/RoutingSessionInfo;)Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRemoteSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRouteAddress(Landroid/media/MediaRoute2Info;)Ljava/lang/String;
    .locals 1
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 235
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRouteType(Landroid/media/MediaRoute2Info;)I
    .locals 1
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 239
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    return v0
.end method

.method public blacklist getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;
    .locals 1
    .param p1, "mediaController"    # Landroid/media/session/MediaController;

    .line 169
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRoutingSessions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerCallback(Ljava/util/concurrent/Executor;Lcom/samsung/android/media/SemMediaRouterManager$Callback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    new-instance v1, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;-><init>(Lcom/samsung/android/media/SemMediaRouterManager;Lcom/samsung/android/media/SemMediaRouterManager$Callback;)V

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaRouter2Manager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    .line 48
    return-void
.end method

.method public blacklist releaseSession(Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 230
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    .line 231
    return-void
.end method

.method public blacklist selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 222
    return-void
.end method

.method public blacklist selectRoute(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 188
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->selectRoute(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 189
    return-void
.end method

.method public blacklist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .locals 1
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "volume"    # I

    .line 197
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    .line 198
    return-void
.end method

.method public blacklist setSessionVolume(Landroid/media/RoutingSessionInfo;I)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "volume"    # I

    .line 201
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->setSessionVolume(Landroid/media/RoutingSessionInfo;I)V

    .line 202
    return-void
.end method

.method public blacklist startScan()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->startScan()V

    .line 125
    return-void
.end method

.method public blacklist stopScan()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->stopScan()V

    .line 129
    return-void
.end method

.method public blacklist transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;

    .line 193
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 194
    return-void
.end method

.method public blacklist unregisterCallback(Lcom/samsung/android/media/SemMediaRouterManager$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/media/SemMediaRouterManager$Callback;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaRouterManager;->mManager:Landroid/media/MediaRouter2Manager;

    new-instance v1, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/media/SemMediaRouterManager$CallbackRecord;-><init>(Lcom/samsung/android/media/SemMediaRouterManager;Lcom/samsung/android/media/SemMediaRouterManager$Callback;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2Manager;->unregisterCallback(Landroid/media/MediaRouter2Manager$Callback;)V

    .line 52
    return-void
.end method
