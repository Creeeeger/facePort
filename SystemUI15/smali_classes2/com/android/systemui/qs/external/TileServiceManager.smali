.class public final Lcom/android/systemui/qs/external/TileServiceManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final PREFS_FILE:Ljava/lang/String; = "CustomTileModes"


# instance fields
.field public mBindAllowed:Z

.field public mBindRequested:Z

.field public mBound:Z

.field public final mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsChinaModel:Z

.field public mIsSecCustomTile:Z

.field public mIsTileListening:Z

.field public mJustBound:Z

.field final mJustBoundOver:Ljava/lang/Runnable;

.field public mLastUpdate:J

.field public final mListeningFromRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mPendingBind:Z

.field public mPriority:I

.field public final mServices:Lcom/android/systemui/qs/external/TileServices;

.field public mShowingDialog:Z

.field public mStarted:Z

.field public final mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

.field public final mStopWaitingUnlock:Lcom/android/systemui/qs/external/TileServiceManager$1;

.field public final mUnbind:Lcom/android/systemui/qs/external/TileServiceManager$2;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mWaitingUnlock:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p3

    move-object v3, p4

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p4

    invoke-interface {p5, p3, p4}, Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;->create(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/systemui/qs/external/TileLifecycleManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;Lcom/android/systemui/qs/external/TileLifecycleManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;Lcom/android/systemui/qs/external/TileLifecycleManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStarted:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mListeningFromRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$1;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStopWaitingUnlock:Lcom/android/systemui/qs/external/TileServiceManager$1;

    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$2;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Lcom/android/systemui/qs/external/TileServiceManager$2;

    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$3;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceManager$4;-><init>(Lcom/android/systemui/qs/external/TileServiceManager;)V

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mCustomTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

    const-string p1, "CHINA"

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mIsChinaModel:Z

    return-void
.end method


# virtual methods
.method public final bindService()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TileServiceManager"

    const-string v0, "Service already bound"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBoundOver:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, v1, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;Z)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final handleDestroy()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TileLifecycleManager"

    const-string v1, "handleDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUserReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->stopPackageListening()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsDestroyed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/CustomTile;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mDeviceConfigChangedListener:Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda8;

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    :cond_2
    return-void
.end method

.method public final hasPendingBind()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHasPendingBind:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isActiveTile()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    iget-object v1, v1, Lcom/android/systemui/qs/external/PackageManagerAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0xc2080

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v2, "android.service.quicksettings.SEM_ACTIVE_TILE_SUPPORT_SEM_PLATFORM_VER"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.service.quicksettings.ACTIVE_TILE"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :goto_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public final isToggleableTile()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    iget-object v1, v1, Lcom/android/systemui/qs/external/PackageManagerAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0xc2080

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "android.service.quicksettings.TOGGLEABLE_TILE"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final setBindAllowed(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    const-string p0, "TileServiceManager"

    const-string p1, "Service not bound"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setBindRequested(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Lcom/android/systemui/qs/external/TileServiceManager$2;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindAllowed:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iget-object p1, p1, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageReceiverRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->bindService()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->hasPendingBind()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "TileServiceManager"

    const-string/jumbo p1, "unbind early due to pendingBind state"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0xbb8

    invoke-virtual {v2, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mIsChinaModel:Z

    if-eqz p0, :cond_5

    const-wide/16 p0, 0x2710

    goto :goto_1

    :cond_5
    const-wide/16 p0, 0x7530

    :goto_1
    invoke-virtual {v2, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public final setWaitingUnlockState(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mWaitingUnlock:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setWaitingUnlockState : waitingUnlock = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TileServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStopWaitingUnlock:Lcom/android/systemui/qs/external/TileServiceManager$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mUnbind:Lcom/android/systemui/qs/external/TileServiceManager$2;

    const-wide/16 v3, 0x2710

    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServices;->recalculateBindAllowance()V

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mIsChinaModel:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x7530

    :goto_0
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method
