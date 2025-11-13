.class public final Lcom/android/systemui/qs/external/TileServices;
.super Landroid/service/quicksettings/IQSService$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z

.field public static final SERVICE_SORT:Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda2;


# instance fields
.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mBootCompleteReceiver:Lcom/android/systemui/qs/external/TileServices$6;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

.field public final mDesktopCallback:Lcom/android/systemui/qs/external/TileServices$1;

.field public final mHandlerProvider:Ljavax/inject/Provider;

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public mIsBootCompleted:Z

.field public mIsDexStandAloneMode:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMaxBound:I

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mRequestListeningCallback:Lcom/android/systemui/qs/external/TileServices$3;

.field public final mServices:Landroid/util/ArrayMap;

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public final mTileLifecycleManagerFactory:Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;

.field public final mTileUpdateReceiver:Lcom/android/systemui/qs/external/TileServices$4;

.field public final mTiles:Landroid/util/SparseArrayMap;

.field public final mTokenMap:Landroid/util/ArrayMap;

.field public final mUninstallReceiver:Lcom/android/systemui/qs/external/TileServices$5;

.field public mUninstallReceiverRegistered:Z

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qs/external/TileServices;->DEBUG:Z

    new-instance v0, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda2;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Ljavax/inject/Provider;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSHost;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;",
            "Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;",
            "Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;",
            "Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/service/quicksettings/IQSService$Stub;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    new-instance v0, Lcom/android/systemui/qs/external/TileServices$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServices$3;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    new-instance v1, Lcom/android/systemui/qs/external/TileServices$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileServices$4;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    new-instance v2, Lcom/android/systemui/qs/external/TileServices$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/external/TileServices$5;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    iput-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mUninstallReceiver:Lcom/android/systemui/qs/external/TileServices$5;

    new-instance v2, Lcom/android/systemui/qs/external/TileServices$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/external/TileServices$6;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mHost:Lcom/android/systemui/qs/QSHost;

    iput-object p5, p0, Lcom/android/systemui/qs/external/TileServices;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServices;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/qs/external/TileServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p7, p0, Lcom/android/systemui/qs/external/TileServices;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    invoke-virtual {p6, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iput-object p8, p0, Lcom/android/systemui/qs/external/TileServices;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object p9, p0, Lcom/android/systemui/qs/external/TileServices;->mTileLifecycleManagerFactory:Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;

    iput-object p10, p0, Lcom/android/systemui/qs/external/TileServices;->mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

    iput-object p11, p0, Lcom/android/systemui/qs/external/TileServices;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    const-string/jumbo p1, "sys.boot_completed"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServices;->mIsBootCompleted:Z

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    :cond_0
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p1}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServices;->mIsDexStandAloneMode:Z

    new-instance p1, Lcom/android/systemui/qs/external/TileServices$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/external/TileServices$1;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    return-void
.end method


# virtual methods
.method public final freeService(Lcom/android/systemui/qs/external/CustomTileInterface;Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 4

    const-string v0, "freeService"

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/systemui/qs/external/TileServices;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "TileServices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->handleDestroy()V

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    iget-object p2, p2, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iget-object p2, p2, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->getUser()I

    move-result v2

    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServices;->mUninstallReceiverRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mUninstallReceiver:Lcom/android/systemui/qs/external/TileServices$5;

    invoke-virtual {p1, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServices;->mUninstallReceiverRegistered:Z

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    invoke-interface {v0}, Lcom/android/systemui/qs/external/CustomTileInterface;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "TileServices"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tile for token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "not found. Tiles in map: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/CustomTileInterface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTileForUserAndComponent(ILandroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTileInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/CustomTileInterface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTileWrapper(Lcom/android/systemui/qs/external/CustomTileInterface;)Lcom/android/systemui/qs/external/TileServiceManager;
    .locals 10

    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->getUser()I

    move-result v8

    new-instance v9, Lcom/android/systemui/qs/external/TileServiceManager;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/qs/external/TileServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileServices;->mTileLifecycleManagerFactory:Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;

    iget-object v6, p0, Lcom/android/systemui/qs/external/TileServices;->mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

    move-object v0, v9

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;)V

    sget-boolean v0, Lcom/android/systemui/qs/external/TileServices;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TileServices"

    const-string v1, "getTileWrapper "

    invoke-static {v1, v7, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/external/CustomTileInterface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServiceManager;->handleDestroy()V

    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    iget-object v2, v2, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iget-object v2, v2, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v8, v7, p1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices;->mTokenMap:Landroid/util/ArrayMap;

    iget-object v2, v9, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iget-object v2, v2, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServices;->mUninstallReceiverRegistered:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mUninstallReceiver:Lcom/android/systemui/qs/external/TileServices$5;

    iget-object v4, p0, Lcom/android/systemui/qs/external/TileServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v5, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    iput-boolean v1, p0, Lcom/android/systemui/qs/external/TileServices;->mUninstallReceiverRegistered:Z

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, v9, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    iget-object p0, v9, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v2, v9, Lcom/android/systemui/qs/external/TileServiceManager;->mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

    invoke-interface {v2, v0, p1}, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;->isTileAdded(ILandroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2, p1, v1, v0}, Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;->setTileAdded(Landroid/content/ComponentName;ZI)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-object v9

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isLocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    return p0
.end method

.method public final isSecure()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDialogHidden(Landroid/os/IBinder;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->onDialogHidden()V

    :cond_0
    return-void
.end method

.method public final onShowDialog(Landroid/os/IBinder;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->onDialogShown()V

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {v0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    :cond_0
    return-void
.end method

.method public final onStartActivity(Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->forceCollapsePanels()V

    :cond_0
    return-void
.end method

.method public final onStartSuccessful(Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "TileServiceManager not started for "

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    sget-boolean v2, Lcom/android/systemui/qs/external/TileServices;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "TileServices"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onStartSuccessful "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz p0, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/android/systemui/qs/external/CustomTileInterface;->refreshState()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    const-string p0, "TileServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/systemui/qs/external/CustomTileInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final recalculateBindAllowance()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/external/TileServiceManager;

    iget-boolean v6, v6, Lcom/android/systemui/qs/external/TileServiceManager;->mIsSecCustomTile:Z

    if-eqz v6, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    if-le v0, v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/external/TileServiceManager;

    iget-object v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v8}, Lcom/android/systemui/qs/external/TileLifecycleManager;->hasPendingClick()Z

    move-result v8

    const v9, 0x7fffffff

    if-eqz v8, :cond_2

    iput v9, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_3

    :cond_2
    iget-boolean v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mWaitingUnlock:Z

    if-eqz v8, :cond_3

    iput v9, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    const-string v4, "TileServiceManager"

    const-string v8, "calculateBindPriority : mWaitingUnlock"

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget-boolean v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mShowingDialog:Z

    if-eqz v8, :cond_4

    const v8, 0x7ffffffe

    iput v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_3

    :cond_4
    iget-boolean v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    if-eqz v8, :cond_5

    const v8, 0x7ffffffd

    iput v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_3

    :cond_5
    iget-boolean v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez v8, :cond_6

    const/high16 v8, -0x80000000

    iput v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_3

    :cond_6
    iget-wide v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x7ffffffc

    cmp-long v10, v8, v10

    if-lez v10, :cond_7

    const v8, 0x7ffffffc

    iput v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    goto :goto_3

    :cond_7
    long-to-int v8, v8

    iput v8, v4, Lcom/android/systemui/qs/external/TileServiceManager;->mPriority:I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/android/systemui/qs/external/TileServices;->SERVICE_SORT:Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda2;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    move v1, v3

    :goto_4
    iget v4, p0, Lcom/android/systemui/qs/external/TileServices;->mMaxBound:I

    if-ge v1, v4, :cond_a

    if-ge v1, v0, :cond_a

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-ge v1, v0, :cond_b

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final refreshDetailInfo(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForUserAndComponent(ILandroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Couldn\'t find tile for "

    const-string v0, "TileServices"

    invoke-static {p0, p1, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/qs/external/CustomTileInterface;->refreshDetailInfo()V

    return-void
.end method

.method public final requestListening(Landroid/content/ComponentName;)V
    .locals 5

    const-string v0, "No TileServiceManager found in requestListening for tile "

    const-string v1, "Couldn\'t find tile for "

    sget-boolean v2, Lcom/android/systemui/qs/external/TileServices;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "TileServices"

    const-string v3, "requestListening "

    invoke-static {v3, p1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForUserAndComponent(ILandroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p0, "TileServices"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    if-nez p0, :cond_2

    const-string p0, "TileServices"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/systemui/qs/external/CustomTileInterface;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result p1

    if-nez p1, :cond_3

    monitor-exit v2

    return-void

    :cond_3
    invoke-interface {v4}, Lcom/android/systemui/qs/external/CustomTileInterface;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mListeningFromRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    goto :goto_0

    :cond_4
    const-string p0, "TileServices"

    const-string p1, "requestListening :: customtile is not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final semFireToggleStateChanged(Landroid/os/IBinder;ZZ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "semFireToggleStateChanged : customTile =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TileServices"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "semFireToggleStateChanged : state =  "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    invoke-interface {p1, p3}, Lcom/android/systemui/qs/external/CustomTileInterface;->setToggleEnabledState(Z)V

    invoke-interface {p1, p2}, Lcom/android/systemui/qs/external/CustomTileInterface;->fireToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public final semUpdateDetailView(Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "semUpdateDetailView : customTile =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TileServices"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    :cond_0
    return-void
.end method

.method public final startActivity(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/external/TileServices;->startActivity(Lcom/android/systemui/qs/external/CustomTileInterface;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startActivity(Lcom/android/systemui/qs/external/CustomTileInterface;Landroid/app/PendingIntent;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    invoke-interface {p1, p2}, Lcom/android/systemui/qs/external/CustomTileInterface;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public final startUnlockAndRun(Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->startUnlockAndRun()V

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setWaitingUnlockState(Z)V

    :cond_0
    return-void
.end method

.method public final updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "TileServiceManager not started for "

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz p0, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mLastUpdate:J

    iget-boolean v3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mIsTileListening:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {v3}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2, p1, v1}, Lcom/android/systemui/qs/external/CustomTileInterface;->updateTileState(Landroid/service/quicksettings/Tile;I)V

    invoke-interface {p2}, Lcom/android/systemui/qs/external/CustomTileInterface;->refreshState()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    const-string p0, "TileServices"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/systemui/qs/external/CustomTileInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTileInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServices;->verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I

    :try_start_0
    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/service/quicksettings/IQSService$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v7, Lcom/android/internal/statusbar/StatusBarIcon$Type;->SystemIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/qs/external/TileServices$2;

    invoke-direct {p3, p0, p1, v8}, Lcom/android/systemui/qs/external/TileServices$2;-><init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final verifyCaller(Lcom/android/systemui/qs/external/CustomTileInterface;)I
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/android/systemui/qs/external/CustomTileInterface;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Component outside caller\'s uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
