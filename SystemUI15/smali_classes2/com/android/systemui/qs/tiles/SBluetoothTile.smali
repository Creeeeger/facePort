.class public final Lcom/android/systemui/qs/tiles/SBluetoothTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BLUETOOTH_SETTINGS:Landroid/content/Intent;

.field public static final DEBUG:Z


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAvailableItemList:Ljava/util/ArrayList;

.field public mBlueToothState:I

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCallback:Lcom/android/systemui/qs/tiles/SBluetoothTile$4;

.field public final mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

.field public mDetailListening:Z

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public mDoStopScan:Z

.field public final mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/SBluetoothTile$2;

.field public mIsSatelliteModeOn:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mListening:Z

.field public final mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/SBluetoothTile$1;

.field public final mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

.field public mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SBluetoothTile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/SBluetoothController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 19

    move-object/from16 v12, p0

    move-object/from16 v13, p11

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDoStopScan:Z

    new-instance v11, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v11}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    iput-object v11, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mAvailableItemList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mIsSatelliteModeOn:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$1;

    invoke-direct {v0, v12}, Lcom/android/systemui/qs/tiles/SBluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    iput-object v0, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/SBluetoothTile$1;

    const/4 v10, 0x0

    iput-object v10, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    new-instance v9, Lcom/android/systemui/qs/tiles/SBluetoothTile$2;

    invoke-direct {v9, v12}, Lcom/android/systemui/qs/tiles/SBluetoothTile$2;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    iput-object v9, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/SBluetoothTile$2;

    new-instance v8, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;

    invoke-direct {v8, v12}, Lcom/android/systemui/qs/tiles/SBluetoothTile$4;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    iput-object v13, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    move-object/from16 v3, p9

    iput-object v3, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v4, p5

    iput-object v4, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v7, p12

    iput-object v7, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v5, p13

    iput-object v5, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v0, v13

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    iput v0, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBlueToothState:I

    new-instance v2, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    iget-object v1, v12, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-boolean v0, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    move/from16 v16, v0

    move-object v0, v2

    move-object v15, v2

    move-object/from16 v2, p4

    move-object/from16 v3, p9

    move-object/from16 v4, p5

    move/from16 v5, v16

    move-object/from16 v7, p14

    move-object v14, v8

    move-object/from16 v8, p11

    move-object/from16 v17, v9

    move-object/from16 v9, p13

    move-object/from16 v10, p12

    move-object/from16 v18, v11

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/SettingsHelper;ZLjava/util/ArrayList;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/statusbar/policy/SBluetoothController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    iput-object v15, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    iget-object v0, v12, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v13, v0, v14}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bluetooth"

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_0

    move-object/from16 v1, p16

    iput-object v1, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iput-object v2, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/SBluetoothTile$2;

    :goto_0
    if-eqz v0, :cond_1

    move-object/from16 v0, p17

    iput-object v0, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    invoke-direct {v1, v12}, Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    iput-object v1, v12, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BLUETOOTH_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.systemui.permission.BLUETOOTH_STATE_CHANGE"

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 p0, p17

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v5

    move-object/from16 p4, v3

    move/from16 p5, v6

    move-object/from16 p6, v4

    invoke-virtual/range {p0 .. p6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;

    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy$1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "SBluetoothTile"

    const-string v0, " getLongClickIntent is called:++++ "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v1
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130eb2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 6

    const-string v0, "SBluetoothTile"

    const-string v1, " handleClick is called:++++ "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mEnabled:Z

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy$1()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    iget-boolean v0, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_2

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "BLUETOOTH_STATE_CHANGE"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->showLockscreenOnCoverScreen(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;Lcom/android/systemui/animation/Expandable;)V

    invoke-interface {v4, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    check-cast v2, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->canConfigBluetooth()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v4, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p1, v1}, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    const/4 p0, 0x1

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {v2, p1, p0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setBluetoothEnabled(ZZ)V

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p0, :cond_6

    if-eqz v3, :cond_6

    iget-boolean p0, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez p0, :cond_6

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE2017"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    goto :goto_2

    :cond_8
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    :goto_2
    return-void
.end method

.method public final handleDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    const-string v0, "SBluetoothTile"

    const-string v1, "handleDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$3;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "destroy exception:"

    invoke-static {v2, v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSubscreenBlueotoothTileReceiver:Lcom/android/systemui/qs/tiles/SBluetoothTile$SubscreenBluetoothTileReceiver;

    :cond_0
    return-void
.end method

.method public final handleSecondaryClick()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mIsSatelliteModeOn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;I)V

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy$1()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->canConfigBluetooth()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    return-void

    :cond_4
    :goto_0
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->handleSecondaryClick()V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/SBluetoothTile$1;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->addCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->removeCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    :goto_0
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    const-string v2, "no_bluetooth"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v5, p2

    if-ne v5, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget v6, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mConnectionState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_1
    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    iget-boolean v9, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mEnabled:Z

    iget v10, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    iget-boolean v11, v1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eq v11, v9, :cond_3

    move v11, v4

    goto :goto_3

    :cond_3
    move v11, v3

    :goto_3
    iget v12, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBlueToothState:I

    if-eq v12, v10, :cond_4

    move v12, v4

    goto :goto_4

    :cond_4
    move v12, v3

    :goto_4
    const-string v13, " handleUpdateState enabled = "

    const-string v14, " connected = "

    const-string v15, " connecting = "

    invoke-static {v13, v14, v15, v9, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " changedState ="

    const-string v15, " bluetoothState = "

    invoke-static {v13, v6, v14, v12, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " enabledChanging = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "SBluetoothTile"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    iget-boolean v11, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    if-eqz v11, :cond_6

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->onToggleStateChange(Z)V

    :cond_6
    iput v10, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mBlueToothState:I

    const/16 v10, 0xb

    if-nez v2, :cond_8

    if-nez v6, :cond_8

    iget v6, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    if-eq v6, v10, :cond_8

    iget-boolean v6, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mIsSatelliteModeOn:Z

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    move v6, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v6, v4

    :goto_6
    iput-boolean v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iput-boolean v9, v1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    sget-boolean v11, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    iget-object v13, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v11, :cond_9

    :try_start_0
    iget-object v11, v13, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    iget-object v11, v11, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-virtual {v11}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const/4 v11, 0x0

    :goto_7
    if-nez v11, :cond_a

    const-string v11, "getCastDeviceConnectedList return null : count"

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v15, v3

    goto :goto_9

    :cond_a
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v15, v3

    :cond_b
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getLocalDeviceRole()I

    move-result v12

    if-ne v12, v4, :cond_b

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_c
    :goto_9
    const v11, 0x7f130eb2

    const-string v12, ","

    const-string v16, ""

    if-eqz v6, :cond_e

    const v4, 0x7f080a96

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f130107

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    if-nez v2, :cond_d

    iget v2, v5, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    if-eq v2, v10, :cond_d

    iget-boolean v2, v0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mIsSatelliteModeOn:Z

    if-eqz v2, :cond_1d

    :cond_d
    iput v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto/16 :goto_f

    :cond_e
    const v2, 0x7f080a98

    if-eqz v9, :cond_1e

    if-nez v8, :cond_10

    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz v6, :cond_f

    if-lez v15, :cond_f

    goto :goto_b

    :cond_f
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f13010b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f1300f1

    invoke-static {v3, v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    :goto_a
    const/4 v2, 0x2

    goto/16 :goto_e

    :cond_10
    :goto_b
    const v2, 0x7f080a95

    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getConnectedDevicesForGroup()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :cond_11
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    const-string v6, "no connected device"

    const v9, 0x7f130ea8

    if-eqz v2, :cond_1a

    sget-boolean v10, Lcom/android/systemui/qs/tiles/SBluetoothTile;->DEBUG:Z

    if-eqz v10, :cond_12

    const-string v10, "connectedDeviceCount = "

    const-string v7, ", musicShareConnectedCount = "

    invoke-static {v3, v15, v10, v7, v14}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    sub-int/2addr v3, v15

    add-int v7, v15, v3

    if-le v7, v4, :cond_13

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_a

    :cond_13
    if-ne v15, v4, :cond_18

    if-eqz v2, :cond_14

    :try_start_1
    iget-object v2, v13, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    iget-object v2, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_15

    const-string v2, "getCastDeviceConnectedList return null : label"

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v2, 0x0

    goto :goto_d

    :cond_15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getLocalDeviceRole()I

    move-result v5

    if-ne v5, v4, :cond_16

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    :goto_d
    if-nez v2, :cond_17

    const-string v2, "getMusicShareLabel return null."

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_17
    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v3

    const v7, 0x7f13005b

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_a

    :cond_18
    const v7, 0x7f13005b

    if-ne v3, v4, :cond_19

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getLastDeviceName()Ljava/lang/String;

    move-result-object v16

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_a

    :cond_19
    invoke-static {v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_1a
    const v7, 0x7f13005b

    if-ne v3, v4, :cond_1b

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getLastDeviceName()Ljava/lang/String;

    move-result-object v16

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_a

    :cond_1b
    const/4 v2, 0x2

    if-lt v3, v2, :cond_1c

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_a

    :cond_1c
    invoke-static {v14, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :goto_e
    iput v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :cond_1d
    :goto_f
    move-object/from16 v2, v16

    goto :goto_10

    :cond_1e
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f13010a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iput v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_f

    :goto_10
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    const v2, 0x7f080e68

    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    if-eqz v8, :cond_1f

    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f13005b

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    :cond_1f
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v8, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    :cond_20
    return-void
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isBlockedByEASPolicy$1()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final onToggleStateChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/SBluetoothTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SBluetoothTile;I)V

    const-wide/16 v0, 0x1f4

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final setDetailListening(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    const-string v1, "QP setForegroundActivity :: isForeground = "

    monitor-enter v0

    :try_start_0
    const-string v2, "LocalBluetoothManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_settings_foreground_qp"

    const/4 v3, -0x2

    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SBluetoothControllerImpl"

    const-string v1, " updateListDevices "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->stopScan()V

    iget-object p1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    iget-object p1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readRestoredDevices()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    const/16 v0, 0x17

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setScanMode(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scanMusicShareDevices(ZZ)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x15

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setScanMode(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SBluetoothControllerImpl"

    const-string v1, " onDetailClosed clearNonBondedDevices "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDoStopScan:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v3

    :goto_1
    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDetailListening:Z

    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scanMusicShareDevices(ZZ)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireScanStateChanged(Z)V

    :cond_7
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->mDoStopScan:Z

    return-void
.end method
