.class public final Lcom/android/systemui/qs/tiles/WifiTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

.field public mDetailListening:Z

.field public final mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field public final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public mExpectDisabled:Z

.field public final mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/WifiTile$2;

.field public final mHandler:Landroid/os/Handler;

.field public mIsSatelliteModeOn:Z

.field public mIsTransientEnabled:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mListening:Z

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

.field public final mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/WifiTile$1;

.field public final mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

.field public final mSubscreenWifiTileReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/connectivity/AccessPointController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;)V
    .locals 17

    move-object/from16 v11, p0

    move-object/from16 v6, p10

    move-object/from16 v12, p16

    move-object/from16 v13, p17

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080f82

    const v2, 0x7f080f9e

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v1, 0x7f080f65

    const v2, 0x7f080f81

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    invoke-direct {v0, v11}, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    new-instance v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    iput-object v1, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    const/4 v14, 0x0

    iput-object v14, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    new-instance v15, Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    invoke-direct {v15, v11}, Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v15, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenWifiTileReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mIsTransientEnabled:Z

    iput-boolean v2, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mIsSatelliteModeOn:Z

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {v2, v11}, Lcom/android/systemui/qs/tiles/WifiTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v2, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/WifiTile$1;

    new-instance v10, Lcom/android/systemui/qs/tiles/WifiTile$2;

    invoke-direct {v10, v11}, Lcom/android/systemui/qs/tiles/WifiTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v10, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/WifiTile$2;

    move-object/from16 v2, p4

    iput-object v2, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mHandler:Landroid/os/Handler;

    iput-object v6, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    move-object/from16 v4, p11

    iput-object v4, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    iget-object v3, v11, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v6, v3, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "wifi"

    iput-object v0, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    move-object/from16 v8, p12

    iput-object v8, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v7, p13

    iput-object v7, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const-string v1, "device_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    iput-object v1, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, v11, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p14

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v5, p15

    iput-object v5, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object v12, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v9, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    iget-object v1, v11, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v3, v11, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v2, p4

    move-object/from16 v4, p11

    move-object/from16 v6, p10

    move-object v14, v9

    move-object/from16 v9, v16

    move-object v12, v10

    move-object/from16 v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/connectivity/AccessPointController;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v14, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    move-object/from16 v0, p18

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v0, :cond_0

    iput-object v13, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    if-eqz v13, :cond_1

    invoke-virtual {v13, v12}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/WifiTile$2;

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "WIFI_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "com.samsung.systemui.permission.WIFI_STATE_CHANGE"

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 p1, p16

    move-object/from16 p2, v15

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move-object/from16 p5, v1

    move/from16 p6, v4

    move-object/from16 p7, v2

    invoke-virtual/range {p1 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    invoke-direct {v0, v11}, Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    iput-object v0, v11, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.server.wifi.softap.smarttethering.collapseQuickPanel"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p16

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    :cond_4
    return-void
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    :try_start_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+$"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-object p0, v0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

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

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiTileBlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    :cond_0
    return-object v1
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7e

    return p0
.end method

.method public final getState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130f3c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 6

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiTileBlocked()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedByEASPolicy$1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_2

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-ne v1, v3, :cond_2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v0, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "WIFI_STATE_CHANGE"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->showLockscreenOnCoverScreen(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/animation/Expandable;)V

    invoke-interface {v4, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isShowing() = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSecure() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", canSkipBouncer() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLockFunctionsEnabled() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigWifi()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.WIFI_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v3, :cond_4

    const-string p0, "handleClick pass enabling or disabling "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p1, v3}, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-nez v3, :cond_5

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v3, v3, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v3, v3, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const-string p1, "handleClick refresh value "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const-string v3, "handleClick "

    invoke-static {v3, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    xor-int/lit8 v0, p1, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;

    invoke-direct {v4, v3, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Z)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    if-eqz p1, :cond_7

    new-instance p1, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/WifiTile$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    const-wide/16 v0, 0x15e

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p0, :cond_8

    if-eqz v2, :cond_8

    iget-boolean p0, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez p0, :cond_8

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE2015"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    :goto_1
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    goto :goto_2

    :cond_a
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    :goto_2
    return-void
.end method

.method public final handleDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSettingsForegroundState(I)V

    :cond_1
    const-string v0, "removing wififoreground"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiTile$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiTile$3;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "destroy exception:"

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSubscreenWifiTileReceiver:Lcom/android/systemui/qs/tiles/WifiTile$WifiTileReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsSatelliteModeOn:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiTileBlocked()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->isBlockedByEASPolicy$1()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->canConfigWifi()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_3

    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4a

    iput v1, p0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "enable"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "lock"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/WifiTile$1;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->addCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->removeCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    :goto_0
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleUpdateState arg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->copyTo(Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mExpectDisabled:Z

    :cond_2
    sget-object v2, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v4, 0x1

    if-ne p2, v2, :cond_3

    move p2, v4

    goto :goto_0

    :cond_3
    move p2, v3

    :goto_0
    if-eqz v1, :cond_4

    iget v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    iget v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    if-lez v5, :cond_5

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    :cond_5
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eq v5, v1, :cond_6

    move v5, v4

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    const-string v6, ""

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;->setItemsVisible(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    :cond_7
    if-nez p2, :cond_9

    iget-boolean v5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsSatelliteModeOn:Z

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    move v5, v3

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v4

    :goto_4
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v8, "handleUpdateState isTransient="

    const-string v9, " transientEnabling ="

    const-string v10, " cb.isTransient="

    invoke-static {v8, v9, v10, v5, p2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v8, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " state.state = "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mStateBeforeClick.value ="

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v8, v8, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    const-string v9, " enabled ="

    invoke-static {p2, v8, v9, v1, v7}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz v5, :cond_b

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsTransientEnabled:Z

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsSatelliteModeOn:Z

    if-eqz p2, :cond_b

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsTransientEnabled:Z

    goto :goto_5

    :cond_b
    if-nez v1, :cond_c

    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mIsTransientEnabled:Z

    goto :goto_5

    :cond_c
    const/4 p2, 0x2

    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v2, :cond_d

    const p2, 0x7f080f9e

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_d
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    :goto_5
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_e
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :goto_6
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_7
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

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
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowWifi(Landroid/content/ComponentName;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final setDetailListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/detail/WifiDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->addAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz p1, :cond_4

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiPickerTrackerFactory:Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiPickerTrackerFactory;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/wifi/SemWifiManager;->registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_2
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->removeAccessPointCallback(Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;)V

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhanced:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedLite:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/android/systemui/util/Utils;->SPF_SupportMobileApEnhancedWifiOnlyLite:Z

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$1;

    invoke-virtual {p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V

    :cond_4
    :goto_0
    return-void
.end method
