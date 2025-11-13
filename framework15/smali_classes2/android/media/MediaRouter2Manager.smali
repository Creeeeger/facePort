.class public final Landroid/media/MediaRouter2Manager;
.super Ljava/lang/Object;
.source "MediaRouter2Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2Manager$Client;,
        Landroid/media/MediaRouter2Manager$CallbackRecord;,
        Landroid/media/MediaRouter2Manager$Callback;,
        Landroid/media/MediaRouter2Manager$TransferRequest;
    }
.end annotation


# static fields
.field public static final blacklist REQUEST_ID_NONE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "MR2Manager"

.field public static final blacklist TRANSFER_TIMEOUT_MS:I = 0x7530

.field private static blacklist sInstance:Landroid/media/MediaRouter2Manager;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field final blacklist mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2Manager$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClient:Landroid/media/MediaRouter2Manager$Client;

.field private final blacklist mContext:Landroid/content/Context;

.field final blacklist mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Landroid/media/RouteDiscoveryPreference;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mMediaRouterService:Landroid/media/IMediaRouterService;

.field private final blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final blacklist mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Landroid/media/RouteListingPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRoutesLock:Ljava/lang/Object;

.field private final blacklist mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2Manager$TransferRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$igEh8mYEHNhVIm2fRcEoKWP_JWE(Landroid/media/MediaRouter2Manager;Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2Manager;->handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateRouteListingPreference(Landroid/media/MediaRouter2Manager;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->updateRouteListingPreference(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2Manager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mContext:Landroid/content/Context;

    nop

    const-string v0, "media_router"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    nop

    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/MediaRouter2Manager$Client;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter2Manager$Client;-><init>(Landroid/media/MediaRouter2Manager;)V

    iput-object v0, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/IMediaRouterService;->registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist areSessionsMatched(Landroid/media/session/MediaController;Landroid/media/RoutingSessionInfo;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v2
.end method

.method private blacklist createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I
    .locals 6

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    invoke-direct {v1, v0, p1, p2}, Landroid/media/MediaRouter2Manager$TransferRequest;-><init>(ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method private blacklist getFilteredRoutes(Landroid/media/RoutingSessionInfo;ZLjava/util/function/Predicate;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RoutingSessionInfo;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    sget-object v4, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v3, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RouteDiscoveryPreference;

    invoke-direct {p0, v3}, Landroid/media/MediaRouter2Manager;->getSortedRoutes(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    invoke-virtual {v5, v2}, Landroid/media/MediaRoute2Info;->isVisibleTo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v6, :cond_8

    if-eqz p2, :cond_2

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v8

    invoke-static {v1, v8}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;
    .locals 2

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaRouter2Manager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/media/MediaRouter2Manager;->sInstance:Landroid/media/MediaRouter2Manager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaRouter2Manager;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter2Manager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter2Manager;->sInstance:Landroid/media/MediaRouter2Manager;

    :cond_0
    sget-object v1, Landroid/media/MediaRouter2Manager;->sInstance:Landroid/media/MediaRouter2Manager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getSortedRoutes(Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/RouteDiscoveryPreference;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v2, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v3

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private blacklist handleTransferTimeout(Landroid/media/MediaRouter2Manager$TransferRequest;)V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object v2, p1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$getDeselectableRoutes$12(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getSelectableRoutes$11(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$getSortedRoutes$2(Ljava/util/Map;Landroid/media/MediaRoute2Info;)I
    .locals 2

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method static synthetic blacklist lambda$getTransferableRoutes$1(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$notifyRequestFailed$6(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesUpdated$3(Landroid/media/MediaRouter2Manager$CallbackRecord;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0}, Landroid/media/MediaRouter2Manager$Callback;->onRoutesUpdated()V

    return-void
.end method

.method static synthetic blacklist lambda$notifySessionReleased$5(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onSessionReleased(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifySessionUpdated$4(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2Manager$Callback;->onSessionUpdated(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferFailed$8(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferred$7(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$unregisterScanRequest$0(I)I
    .locals 2

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No active scan requests to unregister."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$updateDiscoveryPreference$9(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateRouteListingPreference$10(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager$CallbackRecord;->mCallback:Landroid/media/MediaRouter2Manager$Callback;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2Manager$Callback;->onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method private blacklist notifyRoutesUpdated()V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MR2Manager"

    const-string v1, "requestCreateSession: Can\'t create a session without package name."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v0

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    move v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/media/IMediaRouterService;->requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->createTransferRequest(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)I

    move-result v7

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    move v2, v7

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/media/IMediaRouterService;->transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist updateRouteListingPreference(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteListingPreference;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteListingPreference;

    :goto_0
    nop

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v3, v2, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda7;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method blacklist createSessionOnHandler(ILandroid/media/RoutingSessionInfo;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager$TransferRequest;

    iget v3, v2, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v3, p1, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    if-nez p2, :cond_3

    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ")"

    const-string v4, "MR2Manager"

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The session does not contain the requested route. (requestedRouteId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", actualRoutes="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_4
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The session\'s provider ID does not match the requested route\'s. (requested route\'s providerId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", actual providerId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v2, v1}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_5
    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v2, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public blacklist deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 4

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2Manager"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring deselecting a route that is not selected. route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring deselecting a non-deselectable route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3, p2}, Landroid/media/IMediaRouterService;->deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllRoutes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 2
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaRouter2Manager;->getFilteredRoutes(Landroid/media/RoutingSessionInfo;ZLjava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 5
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

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;

    invoke-direct {v4, v3}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getDiscoveryPreference(Ljava/lang/String;)Landroid/media/RouteDiscoveryPreference;
    .locals 2

    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    sget-object v1, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteDiscoveryPreference;

    return-object v0
.end method

.method public blacklist getMediaControllerForRoutingSession(Landroid/media/RoutingSessionInfo;)Landroid/media/session/MediaController;
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    invoke-direct {p0, v2, p1}, Landroid/media/MediaRouter2Manager;->areSessionsMatched(Landroid/media/session/MediaController;Landroid/media/RoutingSessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public blacklist getRemoteSessions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterService;->getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRouteListingPreference(Ljava/lang/String;)Landroid/media/RouteListingPreference;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mPackageToRouteListingPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteListingPreference;

    return-object v0
.end method

.method public blacklist getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;
    .locals 4

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    invoke-direct {p0, p1, v2}, Landroid/media/MediaRouter2Manager;->areSessionsMatched(Landroid/media/session/MediaController;Landroid/media/RoutingSessionInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getRoutingSessions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public blacklist getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 5
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

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;

    invoke-direct {v4, v3}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 4
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

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;

    invoke-direct {v3, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/media/IMediaRouterService;->getSystemSessionInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;
    .locals 2
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

    new-instance v0, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda0;-><init>(Landroid/media/RoutingSessionInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/media/MediaRouter2Manager;->getFilteredRoutes(Landroid/media/RoutingSessionInfo;ZLjava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method blacklist handleFailureOnHandler(II)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager$TransferRequest;

    iget v3, v2, Landroid/media/MediaRouter2Manager$TransferRequest;->mRequestId:I

    if-ne v3, p1, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    iget-object v2, v0, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter2Manager;->notifyRequestFailed(I)V

    return-void
.end method

.method blacklist handleSessionsUpdatedOnHandler(Landroid/media/RoutingSessionInfo;)V
    .locals 5

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$TransferRequest;

    iget-object v2, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mTargetRoute:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mTransferRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/media/MediaRouter2Manager$TransferRequest;->mOldSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaRouter2Manager;->notifyTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method blacklist notifyRequestFailed(I)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda9;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda10;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist notifyTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda13;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist registerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V
    .locals 3

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/media/MediaRouter2Manager$CallbackRecord;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/MediaRouter2Manager$CallbackRecord;-><init>(Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MR2Manager"

    const-string v2, "Ignoring to register the same callback twice."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void
.end method

.method public blacklist registerScanRequest()V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist releaseSession(Landroid/media/RoutingSessionInfo;)V
    .locals 4

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Landroid/media/IMediaRouterService;->releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 4

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MR2Manager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring selecting a route that is already selected. route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring selecting a non-selectable route="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3, p2}, Landroid/media/IMediaRouterService;->selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .locals 3

    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2Manager"

    if-nez v0, :cond_0

    const-string v0, "setRouteVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v0

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-interface {v1, v2, v0, p1, p2}, Landroid/media/IMediaRouterService;->setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2
    :goto_0
    const-string v0, "setRouteVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setSessionVolume(Landroid/media/RoutingSessionInfo;I)V
    .locals 4

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result v0

    const-string v1, "MR2Manager"

    if-nez v0, :cond_0

    const-string v0, "setSessionVolume: the route has fixed volume. Ignoring."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v0

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3, p2}, Landroid/media/IMediaRouterService;->setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2
    :goto_0
    const-string v0, "setSessionVolume: the target volume is out of range. Ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 4

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MR2Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring routing session. session= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MR2Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transfer: Ignoring an unknown route id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter2Manager;->notifyTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaRouter2Manager;->transferToRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaRouter2Manager;->requestCreateSession(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist transfer(Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;)V
    .locals 2

    const-string v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "route must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/media/MediaRouter2Manager;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist unregisterCallback(Landroid/media/MediaRouter2Manager$Callback;)V
    .locals 3

    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2Manager$CallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Landroid/media/MediaRouter2Manager$CallbackRecord;-><init>(Landroid/media/MediaRouter2Manager;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterCallback: Ignore unknown callback. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void
.end method

.method public blacklist unregisterScanRequest()V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mScanRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->updateAndGet(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mClient:Landroid/media/MediaRouter2Manager$Client;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/IMediaRouterService;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method blacklist updateDiscoveryPreference(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mDiscoveryPreferenceMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteDiscoveryPreference;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2Manager$CallbackRecord;

    iget-object v3, v2, Landroid/media/MediaRouter2Manager$CallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2, p1, p2}, Landroid/media/MediaRouter2Manager$$ExternalSyntheticLambda8;-><init>(Landroid/media/MediaRouter2Manager$CallbackRecord;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method blacklist updateRoutesOnHandler(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2Manager;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    iget-object v3, p0, Landroid/media/MediaRouter2Manager;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/media/MediaRouter2Manager;->notifyRoutesUpdated()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
