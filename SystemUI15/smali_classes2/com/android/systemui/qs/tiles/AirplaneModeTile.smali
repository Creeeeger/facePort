.class public final Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAirplaneTileModeChanged:Z

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field mClickJob:Lkotlinx/coroutines/Job;

.field public final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

.field public final mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

.field public mIsSatelliteModeOn:Z

.field public mIsWiFiOnlyDevice:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLazyConnectivityManager:Ldagger/Lazy;

.field public mListening:Z

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

.field public final mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

.field public final mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

.field public final mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

.field public mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ldagger/Lazy;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSHost;",
            "Lcom/android/systemui/qs/QsEventLogger;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/statusbar/connectivity/NetworkController;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p19

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance v3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v3}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v4, 0x7f080e56

    const v5, 0x7f080e66

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v4, 0x7f080e55

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(II)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v3, 0x10805a9

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAirplaneTileModeChanged:Z

    iput-boolean v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsSatelliteModeOn:Z

    new-instance v3, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    new-instance v4, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v4, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    new-instance v5, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v5, p16

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    move-object/from16 v5, p18

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mLazyConnectivityManager:Ldagger/Lazy;

    sget-boolean v5, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v5, :cond_0

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v3, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput-object v3, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mFoldStateChangedListener:Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    :goto_0
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "AIRPLANE_MODE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.systemui.permission.AIRPLANE_STATE_CHANGE"

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object/from16 p1, p10

    move-object p2, v2

    move-object p3, v3

    move-object p4, v6

    move-object p5, v4

    move p6, v7

    move-object p7, v5

    invoke-virtual/range {p1 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    const-string v3, "airplane_mode_on"

    move-object/from16 v4, p12

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsSatelliteModeOn:Z

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAirplaneModeTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v1

    :cond_1
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x70

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130ea0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getEmergencyState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f130199

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isTelephonyIdle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f13019a

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAirplaneModeTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    xor-int/lit8 v4, v0, 0x1

    const/16 v5, 0x70

    invoke-static {v3, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    const-string v3, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_5

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, p0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v7, "handleClick"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-eqz v7, :cond_9

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_7

    const-string v8, "com.skt.t_smart_charge"

    invoke-virtual {v7, v8, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    move v7, v1

    goto :goto_1

    :cond_6
    move v7, v2

    :goto_1
    if-eqz v7, :cond_8

    const-string/jumbo v8, "supportTLockPackage()"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_7
    move v7, v2

    :cond_8
    :goto_2
    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "off_menu_setting"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_9

    move v7, v1

    goto :goto_3

    :cond_9
    move v7, v2

    :goto_3
    if-eqz v7, :cond_a

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f130194

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v8, :cond_c

    invoke-interface {v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_b

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "AIRPLANE_MODE_CHANGE"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->showLockscreenOnCoverScreen(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_b
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/animation/Expandable;)V

    invoke-interface {v5, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v8, "isKeyguardVisible() = "

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isSecure() = "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", canSkipBouncer() = "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v9, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isLockFunctionsEnabled() = "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/systemui/Operator;->QUICK_IS_OJT_BRANDING:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-nez p1, :cond_d

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f130198

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_d
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p1, v7}, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    const/4 p1, 0x0

    if-eqz v0, :cond_e

    move-object v0, p1

    goto :goto_4

    :cond_e
    sget-object v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    move-result-object v0

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-interface {v5, p0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_5

    :cond_f
    const-string/jumbo p1, "setEnabled :"

    invoke-static {p1, v6, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAirplaneTileModeChanged:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mLazyConnectivityManager:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    :goto_5
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE1005"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

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

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenAirplaneModeTileReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$SubscreenAirplaneModeTileReceiver;

    :cond_0
    return-void
.end method

.method public final handleLongClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsSatelliteModeOn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->handleLongClick(Lcom/android/systemui/animation/Expandable;)V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    if-eqz p1, :cond_2

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->addCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    :cond_1
    invoke-virtual {v2, v4, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->removeCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    const-string v0, "no_airplane_mode"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p2, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsSatelliteModeOn:Z

    if-eqz p2, :cond_1

    :goto_0
    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isNoSimState(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast v3, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->isPowerOffServiceState()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " handleUpdateState mIsWiFiOnlyDevice "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    const-string v6, " isNoSimState "

    const-string v7, " isPowerOffServiceState "

    invoke-static {v4, v5, v6, v0, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mSetting.getValue() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    invoke-virtual {v5}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isSatelliteModeOn "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsSatelliteModeOn:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isChinaDevice "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f080e54

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const-string v0, " handleUpdateState:  isTransient  "

    const-string/jumbo v1, "state.value "

    invoke-static {v0, v1, p2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "state.state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v0, v7, p2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    move-result p2

    if-ne p2, v2, :cond_5

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    if-nez p2, :cond_4

    if-nez v0, :cond_4

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsSatelliteModeOn:Z

    if-eqz p2, :cond_3

    if-nez v6, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    :cond_4
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 p2, 0x2

    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    move-result p2

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWiFiOnlyDevice:Z

    if-nez p2, :cond_7

    if-nez v0, :cond_7

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsSatelliteModeOn:Z

    if-eqz p2, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-nez v3, :cond_8

    :cond_7
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_8
    const-string p2, "Tile.STATE_UNAVAILABLE"

    invoke-static {v7, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p2, p2, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " handleUpdateState:  value = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", state = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v0, v7, p2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_3
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const p2, 0x7f130ea0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method
