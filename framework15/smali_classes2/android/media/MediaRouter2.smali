.class public final Landroid/media/MediaRouter2;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2$PackageNameUserHandlePair;,
        Landroid/media/MediaRouter2$MediaRouter2Impl;,
        Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;,
        Landroid/media/MediaRouter2$ScanToken;,
        Landroid/media/MediaRouter2$ScanRequest;,
        Landroid/media/MediaRouter2$LocalMediaRouter2Impl;,
        Landroid/media/MediaRouter2$SystemRoutingController;,
        Landroid/media/MediaRouter2$RoutingController;,
        Landroid/media/MediaRouter2$RouteCallback;,
        Landroid/media/MediaRouter2$RouteCallbackRecord;,
        Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;,
        Landroid/media/MediaRouter2$TransferCallbackRecord;,
        Landroid/media/MediaRouter2$TransferCallback;,
        Landroid/media/MediaRouter2$ControllerCallbackRecord;,
        Landroid/media/MediaRouter2$ControllerCallback;,
        Landroid/media/MediaRouter2$OnGetControllerHintsListener;,
        Landroid/media/MediaRouter2$ControllerCreationRequest;,
        Landroid/media/MediaRouter2$MediaRouter2Stub;,
        Landroid/media/MediaRouter2$InstanceInvalidatedCallbackRecord;,
        Landroid/media/MediaRouter2$ScanningState;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist MANAGER_REQUEST_ID_NONE:J = 0x0L

.field public static final blacklist SCANNING_STATE_NOT_SCANNING:I = 0x0

.field public static final blacklist SCANNING_STATE_SCANNING_FULL:I = 0x2

.field public static final blacklist SCANNING_STATE_WHILE_INTERACTIVE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MR2"

.field private static final blacklist TRANSFER_TIMEOUT_MS:I = 0x7530

.field private static final blacklist sAppToProxyRouterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaRouter2$PackageNameUserHandlePair;",
            "Landroid/media/MediaRouter2;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sInstance:Landroid/media/MediaRouter2;

.field private static final blacklist sRouterLock:Ljava/lang/Object;

.field private static final blacklist sSystemRouterLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$ControllerCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$ControllerCreationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field private volatile blacklist mFilteredRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

.field private final blacklist mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMediaRouterService:Landroid/media/IMediaRouterService;

.field private final blacklist mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mNonSystemRoutingControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

.field private volatile blacklist mPreviousFilteredRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPreviousUnfilteredRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$RouteCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRouteListingPreference:Landroid/media/RouteListingPreference;

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

.field private final blacklist mScanRequestsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/MediaRouter2$ScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScreenOffScanRequestCount:I

.field private blacklist mScreenOnScanRequestCount:I

.field private blacklist mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

.field private final blacklist mSystemController:Landroid/media/MediaRouter2$RoutingController;

.field private final blacklist mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$TransferCallbackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/media/MediaRouter2;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControllerCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiscoveryPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteDiscoveryPreference;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImpl(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Impl;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextRequestId(Landroid/media/MediaRouter2;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteListingPreference(Landroid/media/MediaRouter2;)Landroid/media/RouteListingPreference;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoutes(Landroid/media/MediaRouter2;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanRequestsMap(Landroid/media/MediaRouter2;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStub(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$MediaRouter2Stub;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOnGetControllerHintsListener(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter2;->mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRouteListingPreference(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter2;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStub(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$MediaRouter2Stub;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCurrentController(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRouter2;->getCurrentController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRoutesWithIds(Landroid/media/MediaRouter2;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->getRoutesWithIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyControllerUpdated(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyPreferredFeaturesChanged(Landroid/media/MediaRouter2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyPreferredFeaturesChanged(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyRequestFailed(Landroid/media/MediaRouter2;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyRequestFailed(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyRouteListingPreferenceUpdated(Landroid/media/MediaRouter2;Landroid/media/RouteListingPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyRouteListingPreferenceUpdated(Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyStop(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTransfer(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2;->notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateDiscoveryPreferenceIfNeededLocked(Landroid/media/MediaRouter2;)Z
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRouter2;->updateDiscoveryPreferenceIfNeededLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/media/MediaRouter2;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAppToProxyRouterMap()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSystemRouterLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 0

    invoke-static {p0, p1}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "MR2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRouter2;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sRouterLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    iput-object p1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    nop

    const-string v1, "media_router"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    new-instance v1, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/media/MediaRouter2$LocalMediaRouter2Impl;-><init>(Landroid/media/MediaRouter2;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->loadSystemRoutes(Z)V

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/MediaRouter2$SystemRoutingController;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaRouter2$SystemRoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Null currentSystemSessionInfo. Something is wrong."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    iput v0, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    iput-object p1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    nop

    const-string v0, "media_router"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->loadSystemRoutes(Z)V

    new-instance v0, Landroid/media/MediaRouter2$SystemRoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->getSystemSessionInfoImpl(Landroid/media/IMediaRouterService;Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/MediaRouter2$SystemRoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    new-instance v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-direct {v0, p0, p1, p3, p4}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;-><init>(Landroid/media/MediaRouter2;Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    return-void
.end method

.method private blacklist addRoutingController(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;
    .locals 4

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    iget-object v1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static blacklist checkCallerHasOnlyRevocablePermissions(Landroid/content/Context;)Z
    .locals 8

    nop

    const-string v0, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    nop

    const-string v3, "android.permission.MEDIA_ROUTING_CONTROL"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android:media_routing_control"

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method private static blacklist ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 1

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v0, p0}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private blacklist filterRoutesWithCompositePreferenceLocked(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v2}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/media/MediaRouter2;->getSortedRoutes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private static blacklist findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;
    .locals 5

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "user must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    invoke-static {p0}, Landroid/media/MediaRouter2;->checkCallerHasOnlyRevocablePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    new-instance v0, Landroid/media/MediaRouter2$PackageNameUserHandlePair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/media/MediaRouter2$PackageNameUserHandlePair;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/MediaRouter2$PackageNameUserHandlePair-IA;)V

    sget-object v1, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2;

    if-nez v2, :cond_2

    new-instance v3, Landroid/media/MediaRouter2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1, p2}, Landroid/media/MediaRouter2;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object v2, v3

    iget-object v3, v2, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    check-cast v3, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-virtual {v3}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->registerProxyRouter()V

    sget-object v3, Landroid/media/MediaRouter2;->sAppToProxyRouterMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, v2, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    check-cast v3, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-virtual {v3, p3, p4}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->registerInstanceInvalidatedCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use getInstance(Context, String, Executor, Runnable) to obtain a proxy MediaRouter2 instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clientPackageName must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getCurrentController()Landroid/media/MediaRouter2$RoutingController;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    return-object v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;
    .locals 3

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaRouter2;->sRouterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaRouter2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaRouter2;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    :cond_0
    sget-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaRouter2;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    nop

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p0, p1, v1, v0, v0}, Landroid/media/MediaRouter2;->findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MR2"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/media/MediaRouter2;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Landroid/media/MediaRouter2;->findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;
    .locals 1

    const-string v0, "Executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onInstanceInvalidatedListener must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Landroid/media/MediaRouter2;->findOrCreateProxyInstanceForCallingUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/media/MediaRouter2;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMatchingController(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;
    .locals 6

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez v1, :cond_1

    const-string v2, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Matching controller not found. uniqueSessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "MR2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Provider IDs are not matched. old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist getRoutesWithIds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

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

.method private blacklist getSortedRoutes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v2
.end method

.method static synthetic blacklist lambda$getSortedRoutes$1(Ljava/util/Map;Landroid/media/MediaRoute2Info;)I
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

.method static synthetic blacklist lambda$notifyControllerUpdated$12(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$ControllerCallback;->onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyPreferredFeaturesChanged$6(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onPreferredFeaturesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRequestFailed$10(Landroid/media/MediaRouter2$TransferCallbackRecord;I)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRouteListingPreferenceUpdated$7(Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;Landroid/media/RouteListingPreference;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mRouteListingPreferenceCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesAdded$2(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesChanged$4(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesRemoved$3(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesRemoved(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesUpdated$5(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesUpdated(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyStop$11(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onStop(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransfer$8(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2$TransferCallback;->onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferFailure$9(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateDiscoveryPreferenceIfNeededLocked$0(Landroid/media/MediaRouter2$RouteCallbackRecord;)Landroid/media/RouteDiscoveryPreference;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    return-object v0
.end method

.method private blacklist loadSystemRoutes(Z)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/media/IMediaRouterService;->getSystemRoutes(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Null or empty currentSystemRoutes. Something is wrong."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda14;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda14;-><init>(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifyPreferredFeaturesChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda7;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifyRequestFailed(I)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifyRouteListingPreferenceUpdated(Landroid/media/RouteListingPreference;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;-><init>(Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;Landroid/media/RouteListingPreference;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifyRoutesAdded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist notifyRoutesChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda12;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist notifyRoutesRemoved(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist notifyRoutesUpdated(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v2, p1, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifyStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda15;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifyTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda13;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist updateDiscoveryPreferenceIfNeededLocked()Z
    .locals 3

    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda17;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist cancelScanRequest(Landroid/media/MediaRouter2$ScanToken;)V
    .locals 6

    const-string v0, "token must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/media/MediaRouter2$ScanToken;->-$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$ScanRequest;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    nop

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v3, v4}, Landroid/media/MediaRouter2$MediaRouter2Impl;->updateScanningState(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v5, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v5, v3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->updateScanningState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_5
    :goto_3
    invoke-virtual {v1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    goto :goto_4

    :cond_6
    iget v3, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    :goto_4
    iget-object v3, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/media/MediaRouter2$ScanToken;->-$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The token does not match any active scan request"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method blacklist createControllerOnHandler(ILandroid/media/RoutingSessionInfo;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2$ControllerCreationRequest;

    iget v3, v2, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRequestId:I

    if-ne v3, p1, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "MR2"

    if-nez v0, :cond_2

    const-string v2, "createControllerOnHandler: Ignoring an unknown request."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    if-nez p2, :cond_3

    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The session\'s provider ID does not match the requested route\'s. (requested route\'s providerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual providerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_4
    iget-object v3, v0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mOldController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v3}, Landroid/media/MediaRouter2$RoutingController;->scheduleRelease()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createControllerOnHandler: Ignoring controller creation for released old controller. oldController="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {v1, p0, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->release()V

    :cond_5
    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void

    :cond_6
    invoke-direct {p0, p2}, Landroid/media/MediaRouter2;->addRoutingController(Landroid/media/RoutingSessionInfo;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Landroid/media/MediaRouter2;->notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method blacklist dispatchControllerUpdatedIfNeededOnHandler(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v2}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    invoke-virtual {v5, v6}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    goto :goto_2

    :cond_0
    goto :goto_1

    :cond_1
    :goto_2
    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Landroid/media/MediaRouter2;->mPreviousUnfilteredRoutes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method blacklist dispatchFilteredRoutesUpdatedOnHandler(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;

    invoke-direct {v4}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    if-nez v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v5}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousFilteredRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyRoutesAdded(Ljava/util/List;)V

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyRoutesRemoved(Ljava/util/List;)V

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyRoutesChanged(Ljava/util/List;)V

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyRoutesUpdated(Ljava/util/List;)V

    :cond_c
    return-void
.end method

.method public whitelist getAllRoutes()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getController(Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;
    .locals 3

    const-string v0, "id must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->getControllers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRouteListingPreference()Landroid/media/RouteListingPreference;
    .locals 2

    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteListingPreference:Landroid/media/RouteListingPreference;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRoutes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSystemController()Landroid/media/MediaRouter2$RoutingController;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    return-object v0
.end method

.method blacklist onRequestCreateControllerByManagerOnHandler(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;J)V
    .locals 3

    const-string v0, "MR2"

    const-string v1, "requestCreateSessionByManager | requestId: %d, oldSession: %s, route: %s"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/media/MediaRouter2;->requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;J)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V
    .locals 3

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$ControllerCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    iget-object v1, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MR2"

    const-string v2, "registerControllerCallback: Ignoring the same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public whitelist registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V
    .locals 2

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "preference must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaRouter2$MediaRouter2Impl;->createRouteCallbackRecord(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)Landroid/media/MediaRouter2$RouteCallbackRecord;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->registerRouteCallback()V

    return-void
.end method

.method public whitelist registerRouteListingPreferenceUpdatedCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/RouteListingPreference;",
            ">;)V"
        }
    .end annotation

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V
    .locals 3

    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/media/MediaRouter2$TransferCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$TransferCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    iget-object v1, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MR2"

    const-string v2, "registerTransferCallback: Ignoring the same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method blacklist releaseControllerOnHandler(Landroid/media/RoutingSessionInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "MR2"

    const-string v1, "releaseControllerOnHandler: Ignoring null sessionInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    nop

    const-string v0, "releaseControllerOnHandler"

    invoke-direct {p0, p1, v0}, Landroid/media/MediaRouter2;->getMatchingController(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2$RoutingController;->releaseInternal(Z)V

    :cond_1
    return-void
.end method

.method blacklist requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;J)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    iget-object v0, v1, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    new-instance v0, Landroid/media/MediaRouter2$ControllerCreationRequest;

    move-object v2, v0

    move v3, v11

    move-wide/from16 v4, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaRouter2$ControllerCreationRequest;-><init>(IJLandroid/media/MediaRoute2Info;Landroid/media/MediaRouter2$RoutingController;)V

    move-object v12, v0

    iget-object v0, v1, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Landroid/media/MediaRouter2;->mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    const/4 v0, 0x0

    if-eqz v13, :cond_1

    invoke-interface {v13, v10}, Landroid/media/MediaRouter2$OnGetControllerHintsListener;->onGetControllerHints(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    move-object v14, v0

    goto :goto_0

    :cond_0
    move-object v14, v0

    goto :goto_0

    :cond_1
    move-object v14, v0

    :goto_0
    iget-object v2, v1, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-object v15, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_2

    :try_start_1
    iget-object v2, v1, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v7

    move-object v3, v15

    move v4, v11

    move-wide/from16 v5, p3

    move-object/from16 v8, p2

    move-object v9, v14

    invoke-interface/range {v2 .. v9}, Landroid/media/IMediaRouterService;->requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "MR2"

    const-string v3, "createControllerForTransfer: Failed to request for creating a controller."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v1, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    invoke-direct {v1, v10}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist requestScan(Landroid/media/MediaRouter2$ScanRequest;)Landroid/media/MediaRouter2$ScanToken;
    .locals 6

    const-string v0, "scanRequest must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/media/MediaRouter2$ScanToken;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaRouter2$ScanToken;-><init>(ILandroid/media/MediaRouter2$ScanToken-IA;)V

    iget-object v1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    :try_start_1
    iget-object v4, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-virtual {p1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-interface {v4, v5}, Landroid/media/MediaRouter2$MediaRouter2Impl;->updateScanningState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/media/MediaRouter2$ScanRequest;->isScreenOffScan()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/media/MediaRouter2;->mScreenOffScanRequestCount:I

    goto :goto_3

    :cond_4
    iget v4, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/media/MediaRouter2;->mScreenOnScanRequestCount:I

    :goto_3
    iget-object v3, p0, Landroid/media/MediaRouter2;->mScanRequestsMap:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/media/MediaRouter2$ScanToken;->-$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V

    return-void
.end method

.method public whitelist setRouteListingPreference(Landroid/media/RouteListingPreference;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setRouteListingPreference(Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method public whitelist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .locals 1

    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaRouter2$MediaRouter2Impl;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public whitelist showSystemOutputSwitcher()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->showSystemOutputSwitcher()Z

    move-result v0

    return v0
.end method

.method public whitelist startScan()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->startScan()V

    return-void
.end method

.method public whitelist stop()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->stop()V

    return-void
.end method

.method public whitelist stopScan()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->stopScan()V

    return-void
.end method

.method blacklist syncRoutesOnHandler(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2;->updateRoutesOnHandler(Ljava/util/List;)V

    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v0, p2}, Landroid/media/RoutingSessionInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncRoutesOnHandler: Received wrong data. currentRoutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentSystemSessionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist transfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/media/MediaRouter2$MediaRouter2Impl;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public whitelist transferTo(Landroid/media/MediaRoute2Info;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0, p1}, Landroid/media/MediaRouter2$MediaRouter2Impl;->transferTo(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public whitelist unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V
    .locals 3

    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$ControllerCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MR2"

    const-string v1, "unregisterControllerCallback: Ignoring an unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public whitelist unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V
    .locals 3

    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/media/MediaRouter2$RouteCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MR2"

    const-string v1, "unregisterRouteCallback: Ignoring unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2;->mImpl:Landroid/media/MediaRouter2$MediaRouter2Impl;

    invoke-interface {v0}, Landroid/media/MediaRouter2$MediaRouter2Impl;->unregisterRouteCallback()V

    return-void
.end method

.method public whitelist unregisterRouteListingPreferenceUpdatedCallback(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/media/RouteListingPreference;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2;->mListingPreferenceCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$RouteListingPreferenceCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MR2"

    const-string v1, "unregisterRouteListingPreferenceUpdatedCallback: Ignoring an unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public whitelist unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V
    .locals 3

    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$TransferCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MR2"

    const-string v1, "unregisterTransferCallback: Ignoring an unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method blacklist updateControllerOnHandler(Landroid/media/RoutingSessionInfo;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "MR2"

    const-string v1, "updateControllerOnHandler: Ignoring null sessionInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    nop

    const-string v0, "updateControllerOnHandler"

    invoke-direct {p0, p1, v0}, Landroid/media/MediaRouter2;->getMatchingController(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    :cond_1
    return-void
.end method

.method blacklist updateFilteredRoutesLocked()V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->filterRoutesWithCompositePreferenceLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    iget-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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

    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

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

    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
