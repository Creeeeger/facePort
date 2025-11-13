.class public final Lcom/android/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# static fields
.field public static final DATA_SETTINGS:Landroid/content/Intent;

.field public static final DATA_SETTINGS_UPSM:Landroid/content/Intent;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$3;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

.field public final mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public final mDataRoamingObserver:Lcom/android/systemui/qs/tiles/MobileDataTile$6;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public mIsCSCall:Z

.field public mIsSatelliteModeOn:Z

.field public mIsVoLteCall:Z

.field public mIsVolteVideoCall:Z

.field public mIsVolteWifiCall:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mListening:Z

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mPhoneStateListener:Lcom/android/systemui/qs/tiles/MobileDataTile$4;

.field public final mReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$5;

.field public final mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/MobileDataTile$1;

.field public final mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

.field public final mSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$2;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSubscreenContext:Landroid/content/Context;

.field public mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

.field public final mSubscreenUtil:Lcom/android/systemui/qp/util/SubscreenUtil;

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.DATA_USAGE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/qp/util/SubscreenUtil;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p14

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    const-string v6, "mobile_data"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    const-string v6, "airplane_mode_on"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v3, v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v1, :cond_0

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenUtil:Lcom/android/systemui/qp/util/SubscreenUtil;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iget-object v1, v1, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "MOBILEDATA_STATE_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 p0, p14

    move-object p1, v1

    move-object p2, v0

    move-object p3, v5

    move-object p4, v3

    move p5, v6

    move-object p6, v4

    invoke-virtual/range {p0 .. p6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getContext$2()Landroid/content/Context;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenContext:Landroid/content/Context;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsSatelliteModeOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMobileDataTileBlocked()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isUserMobileDataRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming$1()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f1307a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f1307a6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    const v6, 0x7f130d5f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-object v1

    :cond_4
    sget-object p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS_UPSM:Landroid/content/Intent;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming$1()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo v0, "root_key"

    const-string v1, "T_GLOBAL_ROAMING"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0

    :cond_6
    sget-object p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->DATA_SETTINGS:Landroid/content/Intent;

    return-object p0

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v1
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x73

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130f15

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 13

    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteVideoCall:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteWifiCall:Z

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->getValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext$2()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130c32

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "handleClick : state "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " is enabled :  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v1, :cond_3

    return-void

    :cond_3
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMobileDataTileBlocked()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    :goto_0
    return-void

    :cond_5
    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f1307a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f1307a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    const v3, 0x7f130d5f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming$1()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v1, :cond_7

    iget-boolean v1, v1, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSubScreenContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToastOnSubScreen(Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    :goto_1
    return-void

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v6, :cond_c

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v6, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v6, v6, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eq v6, v3, :cond_a

    if-nez v6, :cond_c

    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isMobileDataConnectionPopupShowing()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_a
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v1, :cond_b

    if-eqz v8, :cond_b

    iget-boolean v1, v8, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v1, :cond_b

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v2, "MOBILEDATA_STATE_CHANGE"

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qp/util/SubscreenUtil;->showLockscreenOnCoverScreen(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_b
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "isKeyguardVisible() = "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSecure() = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canSkipBouncer() = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLockFunctionsEnabled() = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v1

    const v6, 0x7f130c36

    const/4 v7, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming$1()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_d

    move v1, v3

    goto :goto_3

    :cond_d
    move v1, v2

    :goto_3
    xor-int/2addr v1, v3

    const-string/jumbo v3, "setDataRoaming "

    invoke-static {v3, v5, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    const-string v1, "content://com.samsung.android.app.telephonyui.internal"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "roaming_data_popup"

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_b

    :cond_e
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->setDataRoamingEnabled(Z)V

    sget-boolean v3, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-eqz v3, :cond_f

    new-instance v7, Landroid/content/Intent;

    const-string v3, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "ENABLED"

    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_f
    if-eqz v7, :cond_22

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext$2()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130c1d

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    :cond_10
    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/Operator;->getMessageIdForMobileDataOnOffPopup(Z)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    const v5, 0x7f13107a

    const v7, 0x7f130ebf

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v5

    move v5, v7

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    goto/16 :goto_b

    :cond_11
    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/Operator;->getMessageIdForMobileDataOnOffPopup(Z)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    const v5, 0x7f130d5f

    const v7, 0x7f130ebf

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v5

    move v5, v7

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    goto/16 :goto_b

    :cond_12
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataOffDontShowPopup()Z

    move-result v1

    const v9, 0x7f130c23

    const v10, 0x7f130c22

    const v11, 0x7f130c20

    const v12, 0x7f130c21

    if-eqz v1, :cond_1c

    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "mobile_data_off_popup_show_again"

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4

    :cond_13
    move v3, v2

    :goto_4
    const-string v1, "handleClick : doNotShowAgainChecked :  "

    invoke-static {v1, v5, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_14

    invoke-virtual {v4, v2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_14
    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    if-eqz v1, :cond_15

    const v3, 0x7f130c38

    goto :goto_5

    :cond_15
    const v3, 0x7f130c37

    :goto_5
    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataOffDontShowPopup()Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v1, :cond_18

    move v11, v12

    goto :goto_6

    :cond_16
    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    if-eqz v1, :cond_17

    move v9, v10

    :cond_17
    move v11, v9

    :cond_18
    :goto_6
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    const v5, 0x7f0a03a7

    const v6, 0x7f0a0722

    if-eqz v4, :cond_1b

    if-eqz v8, :cond_1b

    iget-boolean v4, v8, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v4, :cond_1b

    const v2, 0x7f0d0483

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f071548

    const v6, 0x3fa66666    # 1.3f

    const v7, 0x3f666666    # 0.9f

    if-nez v2, :cond_19

    goto :goto_7

    :cond_19
    invoke-static {v2, v4, v7, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :goto_7
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-nez v5, :cond_1a

    goto :goto_8

    :cond_1a
    invoke-static {v5, v4, v7, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    :goto_8
    move-object v7, v1

    goto :goto_9

    :cond_1b
    const v4, 0x7f0d0392

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string/jumbo v6, "sec"

    invoke-static {v6, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    const/16 v7, 0x190

    invoke-static {v6, v7, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v7, v1

    move-object v2, v4

    :goto_9
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/widget/CheckBox;)V

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    const v3, 0x7f13107a

    const v5, 0x7f130ebf

    const/4 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    goto :goto_b

    :cond_1c
    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    if-nez v1, :cond_1d

    sget-boolean v2, Lcom/android/systemui/Operator;->QUICK_IS_KDI_BRANDING:Z

    if-nez v2, :cond_1d

    sget-boolean v2, Lcom/android/systemui/Operator;->QUICK_IS_SBM_BRANDING:Z

    if-nez v2, :cond_1d

    sget-boolean v2, Lcom/android/systemui/Operator;->QUICK_IS_XJP_BRANDING:Z

    if-nez v2, :cond_1d

    sget-boolean v2, Lcom/android/systemui/Operator;->QUICK_IS_RKT_BRANDING:Z

    if-eqz v2, :cond_21

    :cond_1d
    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataOffDontShowPopup()Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    if-eqz v1, :cond_20

    move v11, v12

    goto :goto_a

    :cond_1e
    if-eqz v1, :cond_1f

    move v9, v10

    :cond_1f
    move v11, v9

    :cond_20
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    new-instance v6, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v6, p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    const v3, 0x7f13107a

    const v5, 0x7f130ebf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    goto :goto_b

    :cond_21
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    xor-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    :cond_22
    :goto_b
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v0, :cond_23

    if-eqz v8, :cond_23

    iget-boolean v0, v8, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_23

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPBE2020"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public final handleDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenMobileDataTileReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$SubscreenMobileDataTileReceiver;

    :cond_0
    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 9

    iget-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsSatelliteModeOn:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->getValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext$2()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130c32

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMobileDataTileBlocked()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isUserMobileDataRestricted()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1307a5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1307a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;

    const/4 p1, 0x3

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    const v4, 0x7f130d5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming$1()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    if-eqz p1, :cond_6

    check-cast v7, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v7, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->addCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    :cond_2
    const-string v1, "registerPhoneStateListener"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_4

    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/SQSTileImpl$SHandler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_4
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_roaming"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->removeCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    check-cast v7, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v7, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->removeCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    if-eqz v5, :cond_8

    iget-object v0, v5, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    iget-object v0, v0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    :cond_8
    const-string/jumbo v0, "unregisterPhoneStateListener"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mCallAttributesListener:Lcom/android/systemui/qs/tiles/MobileDataTile$CallAttributesListener;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_9
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataRoamingObserver:Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    invoke-virtual {v3, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    if-eqz p1, :cond_b

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    :cond_b
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_2
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    const-string p2, "no_config_mobile_networks"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080e6b

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isNetworkRoaming$1()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    if-eqz v0, :cond_1

    const v0, 0x7f130edc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->getValue()I

    move-result p2

    if-eq p2, v1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "data_roaming"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    goto :goto_2

    :cond_1
    const v0, 0x7f130f15

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$GlobalSetting;->getValue()I

    move-result p2

    if-eq p2, v1, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "handleUpdateState : state "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsSatelliteModeOn:Z

    if-eqz p2, :cond_3

    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_4

    :cond_3
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    goto :goto_3

    :cond_4
    move p2, v1

    :goto_3
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_4
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    invoke-static {}, Lcom/android/systemui/Operator;->shouldSupportMobileDataNotDisableVolteCall()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVoLteCall:Z

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteVideoCall:Z

    if-nez p2, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsVolteWifiCall:Z

    if-eqz p0, :cond_6

    :cond_5
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :cond_6
    return-void
.end method

.method public final isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

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

.method public final isNetworkRoaming$1()Z
    .locals 4

    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    const-string v3, "getDefaultDataPhoneId "

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    move v2, v3

    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "isNetworkRoaming : Roaming state"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final setMobileDataEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMobileDataEnabled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .locals 14

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    const v2, 0x7f140604

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mSubscreenUtil:Lcom/android/systemui/qp/util/SubscreenUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v2, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v9, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext$2()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/systemui/util/SystemUIDialogUtils;->createSystemUIDialogUtils(Landroid/content/Context;I)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    if-eqz p7, :cond_3

    iget-object v2, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v8, v0

    move-object/from16 v9, p7

    invoke-virtual/range {v8 .. v13}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v4, :cond_4

    move-object/from16 v2, p4

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    iget-object v2, v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {v2}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    new-instance v2, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
