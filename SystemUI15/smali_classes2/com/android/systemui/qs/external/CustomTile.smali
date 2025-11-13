.class public final Lcom/android/systemui/qs/external/CustomTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/external/CustomTileInterface;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

.field public mDefaultIcon:Landroid/graphics/drawable/Icon;

.field public mDefaultLabel:Ljava/lang/CharSequence;

.field public final mDetailAdapter:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

.field public mDetailView:Landroid/widget/RemoteViews;

.field public mDetailViewTitle:Ljava/lang/CharSequence;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mExpandableClicked:Lcom/android/systemui/animation/Expandable;

.field public final mIUriGrantsManager:Landroid/app/IUriGrantsManager;

.field public final mInitialDefaultIconFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mInitialized:Z

.field public final mIntentAction:Ljava/lang/String;

.field public mIsSecActiveTile:Z

.field public mIsSecCustomTile:Z

.field public mIsShowingDialog:Z

.field public mIsSupportDetailView:Z

.field public final mIsSystemApp:Z

.field public mIsToggleButtonExist:Z

.field public mIsTokenGranted:Z

.field public mIsUnlockAndRun:Z

.field public final mKey:Lcom/android/systemui/qs/external/TileServiceKey;

.field public mListening:Z

.field public mMetaData:Landroid/os/Bundle;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSearchTitle:Ljava/lang/String;

.field public final mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

.field public final mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

.field public mServiceUid:I

.field public mSettingsIntent:Landroid/content/Intent;

.field public final mStopUnlockAndRun:Lcom/android/systemui/qs/external/CustomTile$2;

.field public mSubscreenCustomTileReceiver:Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;

.field public final mTile:Landroid/service/quicksettings/Tile;

.field public mTileClassName:Ljava/lang/String;

.field public mTileClassNameFromMetaData:Ljava/lang/String;

.field public final mTileServices:Lcom/android/systemui/qs/external/TileServices;

.field public mTileState:I

.field public mToggleEnabled:Z

.field public final mToken:Landroid/os/IBinder;

.field public final mUnlockPolicy:Ljava/lang/String;

.field public final mUser:I

.field public final mUserContext:Landroid/content/Context;

.field public final mUserPolicy:Ljava/lang/String;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/qs/external/CustomTileStatePersister;Lcom/android/systemui/qs/external/TileServices;Lcom/android/systemui/settings/DisplayTracker;Landroid/app/IUriGrantsManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/qs/QsEventLogger;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qs/external/CustomTileStatePersister;",
            "Lcom/android/systemui/qs/external/TileServices;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Landroid/app/IUriGrantsManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p13

    move-object/from16 v13, p17

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/qs/QSHost;

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/4 v0, -0x1

    iput v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mTileState:I

    const-string v1, ""

    iput-object v1, v11, Lcom/android/systemui/qs/external/CustomTile;->mUnlockPolicy:Ljava/lang/String;

    iput-object v1, v11, Lcom/android/systemui/qs/external/CustomTile;->mUserPolicy:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mToggleEnabled:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mInitialDefaultIconFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mServiceUid:I

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/CustomTile$2;-><init>(Lcom/android/systemui/qs/external/CustomTile;)V

    iput-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mStopUnlockAndRun:Lcom/android/systemui/qs/external/CustomTile$2;

    iput-object v12, v11, Lcom/android/systemui/qs/external/CustomTile;->mTileServices:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    invoke-static/range {p10 .. p10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    new-instance v2, Landroid/service/quicksettings/Tile;

    invoke-direct {v2}, Landroid/service/quicksettings/Tile;-><init>()V

    iput-object v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    move-object/from16 v2, p11

    iput-object v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    invoke-virtual/range {p11 .. p11}, Landroid/content/Context;->getUserId()I

    move-result v2

    iput v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    new-instance v4, Lcom/android/systemui/qs/external/TileServiceKey;

    invoke-direct {v4, v0, v2}, Lcom/android/systemui/qs/external/TileServiceKey;-><init>(Landroid/content/ComponentName;I)V

    iput-object v4, v11, Lcom/android/systemui/qs/external/CustomTile;->mKey:Lcom/android/systemui/qs/external/TileServiceKey;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v2, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-object/from16 v2, p16

    iput-object v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v2, v11, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v11, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    move v0, v3

    goto :goto_3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "isSystemApp NameNotFoundException : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "isSystemApp RuntimeException : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_3
    iput-boolean v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mIsSystemApp:Z

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, v11, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, v11, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    const v5, 0xc0280

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-object v2, v0

    :goto_4
    iput-object v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->isSecCustomTile()Z

    move-result v2

    iput-boolean v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mIsSecCustomTile:Z

    iget-object v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    const-string v4, "android.service.quicksettings.SEM_SUPPORT_DETAIL_VIEW"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :cond_1
    iput-boolean v3, v11, Lcom/android/systemui/qs/external/CustomTile;->mIsSupportDetailView:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->isSecActiveTile()Z

    move-result v2

    iput-boolean v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    invoke-virtual {v12, p0}, Lcom/android/systemui/qs/external/TileServices;->getTileWrapper(Lcom/android/systemui/qs/external/CustomTileInterface;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v2

    iput-object v2, v11, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    iget-object v3, v2, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iput-object v3, v11, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    move-object/from16 v4, p12

    iput-object v4, v11, Lcom/android/systemui/qs/external/CustomTile;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    move-object/from16 v4, p14

    iput-object v4, v11, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object/from16 v4, p15

    iput-object v4, v11, Lcom/android/systemui/qs/external/CustomTile;->mIUriGrantsManager:Landroid/app/IUriGrantsManager;

    iget-boolean v4, v11, Lcom/android/systemui/qs/external/CustomTile;->mIsSupportDetailView:Z

    if-eqz v4, :cond_2

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;-><init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/service/quicksettings/IQSTileService;)V

    iput-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mDetailAdapter:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    goto :goto_5

    :cond_2
    iput-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mDetailAdapter:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    :goto_5
    iget-boolean v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mIsSecCustomTile:Z

    iput-boolean v0, v2, Lcom/android/systemui/qs/external/TileServiceManager;->mIsSecCustomTile:Z

    iget-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v2, "android.service.quicksettings.SEM_DEFAULT_TILE_UNLOCK_POLICY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mUnlockPolicy:Ljava/lang/String;

    :cond_3
    iget-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const-string v2, "android.service.quicksettings.SEM_DEFAULT_TILE_USER_POLICY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mUserPolicy:Ljava/lang/String;

    :cond_4
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_5

    move-object/from16 v1, p18

    iput-object v1, v11, Lcom/android/systemui/qs/external/CustomTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object v13, v11, Lcom/android/systemui/qs/external/CustomTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mSubscreenCustomTileReceiver:Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;

    if-nez v0, :cond_5

    if-eqz v13, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.android.systemui.qs.external.customTile.unlock."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/qs/external/CustomTile;->mIntentAction:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;-><init>(Lcom/android/systemui/qs/external/CustomTile;)V

    iput-object v1, v11, Lcom/android/systemui/qs/external/CustomTile;->mSubscreenCustomTileReceiver:Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 p0, p17

    move-object p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    invoke-virtual/range {p0 .. p6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty custom tile spec action"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "custom("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final allowNonActive()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.service.quicksettings.SEM_PERMISSION_NON_ACTIVE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    const v2, 0x7f1301a6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final applyTileState(Landroid/service/quicksettings/Tile;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    :cond_1
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getCustomLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getCustomLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/service/quicksettings/Tile;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getActivityLaunchForClick()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/service/quicksettings/Tile;->setActivityLaunchForClick(Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->isSecCustomTile()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->isSecActiveTile()Z

    move-result p2

    if-nez p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "NonActiveTile "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  allow="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->allowNonActive()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->allowNonActive()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_0

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_0

    :cond_b
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateState : Label = "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", State = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Icon = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecCustomTile:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    if-nez p1, :cond_d

    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_d
    iget p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileState:I

    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p2

    if-eq p1, p2, :cond_e

    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileState:I

    :cond_e
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "CustomTile:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecTile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->isSecCustomTile()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " SecActiveTile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->isSecActiveTile()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " supportDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSupportDetailView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listeners size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSupportDetailView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDetailAdapter:Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDetailView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_2

    return-object v0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return-object v0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSupportDetailView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->shouldUseArchivedDetailInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mSettingsIntent:Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->semGetSettingsIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mSettingsIntent:Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecCustomTile:Z

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p0

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "package"

    invoke-static {v2, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x10c

    return p0
.end method

.method public final getMetricsSpec()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getQsTile()Landroid/service/quicksettings/Tile;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    return-object p0
.end method

.method public final getSearchTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const-string v1, " "

    const-string v2, "line.separator"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mSearchTitle:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSearchWords()Ljava/util/ArrayList;
    .locals 9

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    const v3, 0xc0280

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v2, "android.service.quicksettings.SEM_DEFAULT_TILE_SEARCH_KEYWORDS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "string"

    iget-object v8, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchWords()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->getSearchTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0

    :cond_3
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchWords()Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchWords()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getStaleTimeout()J
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->indexOf(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTileIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getUser()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    return p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 7

    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->hasPendingBind()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleClick : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassName:Ljava/lang/String;

    const-string v1, " hasPendingBind"

    invoke-static {p1, v0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mExpandableClicked:Lcom/android/systemui/animation/Expandable;

    const/4 p1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v6, 0x7f3

    invoke-interface {v3, v4, v6, p1, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    :cond_2
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    goto :goto_0

    :cond_3
    move v2, p1

    :goto_0
    if-nez v2, :cond_4

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->finishFlashLightActivity()V

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getActivityLaunchForClick()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getActivityLaunchForClick()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/CustomTile;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onClick(Landroid/os/IBinder;)V

    :goto_1
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v0, :cond_6

    iget-boolean p1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    :cond_6
    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;->values()[Lcom/android/systemui/qs/external/CustomTile$SubscreenSALog;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_7
    return-void
.end method

.method public final handleDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileServices:Lcom/android/systemui/qs/external/TileServices;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/external/TileServices;->freeService(Lcom/android/systemui/qs/external/CustomTileInterface;Lcom/android/systemui/qs/external/TileServiceManager;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mSubscreenCustomTileReceiver:Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mSubscreenCustomTileReceiver:Lcom/android/systemui/qs/external/CustomTile$SubscreenCustomTileReceiver;

    :cond_1
    return-void
.end method

.method public final handleInitialize()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialDefaultIconFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No default icon for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    const-string v4, ", destroying tile"

    invoke-static {v0, v3, v4}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/CustomTile$1;-><init>(Lcom/android/systemui/qs/external/CustomTile;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->isToggleableTile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTmpState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iput-object p0, v3, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mCustomTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    check-cast v3, Lcom/android/systemui/qs/external/CustomTileStatePersisterImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/external/CustomTileStatePersisterImpl;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mKey:Lcom/android/systemui/qs/external/TileServiceKey;

    iget-object v4, v4, Lcom/android/systemui/qs/external/TileServiceKey;->string:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_0
    move-object v3, v5

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {v3}, Lcom/android/systemui/qs/external/CustomTileStatePersisterKt;->readTileFromString(Ljava/lang/String;)Landroid/service/quicksettings/Tile;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v6, "Bad saved state: "

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "TileServicePersistence"

    invoke-static {v6, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/external/CustomTile;->applyTileState(Landroid/service/quicksettings/Tile;Z)V

    iput-boolean v1, v0, Lcom/android/systemui/qs/external/TileServiceManager;->mPendingBind:Z

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/CustomTile;I)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "handleSetListening  "

    const-string v1, "  initialized="

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  isTileReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isTileReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  getTileSpec() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz v0, :cond_1

    iput-boolean p1, v1, Lcom/android/systemui/qs/external/TileServiceManager;->mIsTileListening:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->isTileReady()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialized:Z

    if-nez p1, :cond_6

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialized:Z

    iget-boolean p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->refreshDetailInfo()V

    goto :goto_0

    :cond_4
    iput-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mExpandableClicked:Lcom/android/systemui/animation/Expandable;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_5

    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v2, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    :cond_5
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_6
    :goto_0
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8

    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->hasPendingBind()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleUpdateState : hasPendingBind "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassName:Ljava/lang/String;

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2, v0}, Lcom/android/systemui/qs/QSHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassName:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassNameFromMetaData:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassName:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassName:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassName:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->tileClassName:Ljava/lang/String;

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isCustomTile:Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/external/CustomTile;->mIUriGrantsManager:Landroid/app/IUriGrantsManager;

    iget v6, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceUid:I

    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawableCheckingUriGrant(Landroid/content/Context;Landroid/app/IUriGrantsManager;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "Invalid icon, forcing into unavailable state"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    new-instance v3, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_5
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_6
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_7
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    :goto_4
    instance-of p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz p0, :cond_9

    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    move-object p0, p1

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    goto :goto_5

    :cond_8
    move p2, v0

    :goto_5
    iput-boolean p2, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    goto :goto_6

    :cond_9
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_6
    return-void
.end method

.method public final isAvailable()Z
    .locals 3

    const-string v0, "OWNER"

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserPolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v2, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isAvailable : return false , mComponent = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mUserPolicy = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserPolicy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialDefaultIconFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public final isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialized:Z

    return p0
.end method

.method public final isSecActiveTile()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "android.service.quicksettings.SEM_ACTIVE_TILE_SUPPORT_SEM_PLATFORM_VER"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-gt p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final isSecCustomTile()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSecCustomTile : mComponent ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v2, "android.service.quicksettings.SEM_DEFAULT_TILE_NAME"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "isSecCustomTile : tileName ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTileClassNameFromMetaData:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final lazyInitialize()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/CustomTile;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isToggleableTile()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-object p0
.end method

.method public final onDialogHidden()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onDialogShown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    return-void
.end method

.method public final populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final postStale()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->postStale()V

    :cond_0
    return-void
.end method

.method public final refreshDetailInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Lcom/android/systemui/qs/external/TileLifecycleManager;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->semGetSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mSettingsIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "android.service.quicksettings.SEM_SUPPORT_DETAIL_VIEW"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mDetailView:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->semGetDetailViewTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mDetailViewTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->semIsToggleButtonExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsToggleButtonExist:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final refreshMetaInfo()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "refreshMetaInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    const v2, 0xc0280

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->isSecCustomTile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecCustomTile:Z

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mMetaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "android.service.quicksettings.SEM_SUPPORT_DETAIL_VIEW"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSupportDetailView:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile;->isSecActiveTile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    return-void
.end method

.method public final setToggleEnabledState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mToggleEnabled:Z

    return-void
.end method

.method public final shouldUseArchivedDetailInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecActiveTile:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mOptionalWrapper:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startActivityAndCollapse(Landroid/app/PendingIntent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, "Intent not for activity."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsUnlockAndRun:Z

    if-nez v0, :cond_1

    const-string p0, "Launching activity before click"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "The activity is starting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mStopUnlockAndRun:Lcom/android/systemui/qs/external/CustomTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsUnlockAndRun:Z

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mExpandableClicked:Lcom/android/systemui/animation/Expandable;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/animation/Expandable;->activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentMaybeDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    :goto_1
    return-void
.end method

.method public final startUnlockAndRun()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qp/util/SubscreenUtil;->showLockscreenOnCoverScreen(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsUnlockAndRun:Z

    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/external/CustomTile;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateDefaultTileAndIcon()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSystemApp:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecCustomTile:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x4c0000

    goto :goto_1

    :cond_1
    :goto_0
    const v2, 0x4c0200

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v4}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v4}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-ne v4, v5, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_7

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    if-eq v6, v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v7

    if-eq v6, v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    :goto_3
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_6

    :cond_9
    move-object v3, v0

    :goto_6
    iput-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v4, v3}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    :cond_a
    invoke-virtual {v2, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setDefaultLabel(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mSearchTitle:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    :cond_b
    :goto_7
    return-void
.end method

.method public final updateTileState(Landroid/service/quicksettings/Tile;I)V
    .locals 1

    iput p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceUid:I

    new-instance p2, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0, p1}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
