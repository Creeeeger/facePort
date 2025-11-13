.class public final Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAOSPWifiManager:Landroid/net/wifi/WifiManager;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field public mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

.field public final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field public final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public mIsSatelliteModeOn:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mListening:Z

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/HotspotTile$1;

.field public final mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V
    .locals 6

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const v3, 0x7f080ed0

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance v3, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;I)V

    new-instance v5, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v5}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iput-boolean v4, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIsSatelliteModeOn:Z

    new-instance v4, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v4, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/HotspotTile$1;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v1, v4, v3}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    return-void
.end method

.method public static isBlockedByOthers()Z
    .locals 5

    sget-boolean v0, Lcom/android/systemui/CvRune;->HOTSPOT_ENABLED_SPRINT_EXTENSION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "persist.sys.tether_data_wifi"

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, " isBlockedByOthers : SPRINT_EXTENSION = "

    const-string v4, "HotspotTile"

    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq v0, v2, :cond_1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSatelliteModeOn(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "satellite_mode_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "satellite_mode_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HotspotTile  getDetailAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotspotTile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 5

    const-string v0, "HotspotTile"

    const-string v1, "getLongClickIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiHotspotTileBlocked()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_8

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v4, "no_config_tethering"

    invoke-virtual {v1, v4, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isDataSaverEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    return-object v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v3

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v3

    :cond_6
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v3

    :cond_7
    const-string p0, "Launching Mobile Hotspot settings onLong click"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_AP_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-object v3
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x78

    return p0
.end method

.method public final getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130f16

    invoke-static {v0}, Lcom/android/systemui/CvOperator;->getHotspotStringID(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 6

    const-string v0, "HotspotTile"

    const-string v1, "handleClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, " handleClick SemWifiManager is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    array-length v2, v2

    if-le v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_ap_wifi_sharing"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifiap_wifi_tile_clicked"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    const-string p0, " handleClick wifi tile is clicked return "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string v2, "Checking WifiAp State"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v2

    if-nez v1, :cond_4

    const/16 v4, 0xb

    if-eq v2, v4, :cond_4

    const/16 v4, 0xe

    if-eq v2, v4, :cond_4

    const-string/jumbo p0, "return , wifiapstate"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz v1, :cond_5

    const/16 v4, 0xd

    if-eq v2, v4, :cond_5

    const-string/jumbo p0, "return, wifiapstate"

    invoke-static {v2, p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled$1()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->showDataSaverToast()V

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiHotspotTileBlocked()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isDataAllowed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    const-string p0, " handleClick  : isWifiApBlocked"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p0, " handleClick  : SatelliteModeOn"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string p0, " handleClick  : isBlockedByOthers"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string p0, " handleClick  : isSatModeEnabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v4, :cond_d

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "isShowing() = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSecure() = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canSkipBouncer() = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLockFunctionsEnabled() = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mStateBeforeClick:Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p1, v2}, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    if-eqz v1, :cond_e

    const/4 p1, 0x0

    goto :goto_2

    :cond_e
    sget-object p1, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setHotspotEnabled() is called in handleClick() "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->setHotspotEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE1010"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleSecondaryClick(Z)V

    return-void
.end method

.method public final handleSecondaryClick(Z)V
    .locals 3

    const-string v0, "HotspotTile"

    const-string v1, "handleSecondaryClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiHotspotTileBlocked()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_config_tethering"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByEASPolicy()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isDataAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->isSatModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    if-eqz p1, :cond_8

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const-string p1, "Hotspot"

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->openQSPanelWithDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->showDetail(Z)V

    :goto_0
    return-void

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSatelliteModeObserverHelper:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSatelliteModeCallback:Lcom/android/systemui/qs/tiles/HotspotTile$1;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->addCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->removeCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V

    :goto_0
    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    const-string v0, "HotspotTile"

    const-string v1, "handleUpdateState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "no_wifi_tethering"

    invoke-static {v3, v4}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "WifiEntResUtils"

    const-string v4, "Wi-Fi Tethering isn\'t available due to user restriction."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIsSatelliteModeOn:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    const-string v3, "no_config_tethering"

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    instance-of v3, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-eqz v3, :cond_4

    check-cast p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v3

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->getNumConnectedDevices()I

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled$1()Z

    :goto_4
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->isBlockedByOthers()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz p2, :cond_6

    const/4 v2, 0x2

    :cond_6
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_6

    :cond_7
    :goto_5
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const-string p0, ""

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public final isAirplaneModeEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130c4c

    invoke-static {p0, v0, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    return v2
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotSupported()Z

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

.method public final isBlockedByEASPolicy()Z
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

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDataSaverEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->isDataSaverEnabled$1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSatModeEnabled()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CarrierFeature_Common_Support_Satellite"

    invoke-virtual {v0, v1, v2, v1, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v1, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public final isWifiApBlocked()Z
    .locals 7

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v4, "isWifiTetheringEnabled"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "isWifiTetheringEnabled"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final setHotspotEnabled(Z)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "HotspotTile"

    if-eqz p1, :cond_21

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sem_wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v6, 0x2

    if-nez v5, :cond_1

    const-string v4, " checkWhetherWifiApWarningNeedToLaunch mSemWifiManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, v2

    goto/16 :goto_f

    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiManager;->isOverAllMhsDataLimitReached()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v7, "ActiveNetwork is Null"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    move v7, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "networkCapabilities is Null"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    const/16 v9, 0xc

    invoke-virtual {v7, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    move v7, v1

    :goto_1
    if-nez v7, :cond_6

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    const/4 v9, -0x1

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    if-eq v10, v9, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Wifi Frequency is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v8

    goto :goto_2

    :cond_5
    move v8, v9

    :goto_2
    if-ne v8, v9, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "Wi-Fi is not connected and mobile data is enabled"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    :cond_6
    if-eqz v7, :cond_7

    const-string v4, "Data limit is reached"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v4, v1

    goto/16 :goto_f

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    move-result-object v5

    if-eqz v5, :cond_8

    array-length v5, v5

    if-le v5, v1, :cond_8

    move v5, v1

    goto :goto_4

    :cond_8
    move v5, v2

    :goto_4
    const/4 v7, 0x3

    if-eqz v5, :cond_a

    if-eq v4, v6, :cond_9

    if-ne v4, v7, :cond_a

    :cond_9
    const-string v4, "DualAP with Wi-Fi Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v8, "display"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v5

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v9}, Lcom/samsung/android/wifi/SemWifiManager;->isP2pConnected()Z

    move-result v9

    const-string v10, "isSmartViewEnabled:p2pstatus:"

    invoke-static {v10, v3, v9}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v10

    if-ne v10, v6, :cond_b

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v5

    if-nez v5, :cond_b

    if-eqz v9, :cond_b

    const-string v5, "isSmartViewEnabled:true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v1

    goto :goto_5

    :cond_b
    const-string v5, "isSmartViewEnabled:false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    :goto_5
    if-eqz v5, :cond_c

    const-string/jumbo v4, "smartView Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v8

    if-ne v8, v6, :cond_d

    invoke-virtual {v5}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v5

    if-ne v5, v6, :cond_d

    const-string v5, "isWirelessDexEnabled:true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v1

    goto :goto_6

    :cond_d
    const-string v5, "isWirelessDexEnabled:false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    :goto_6
    if-eqz v5, :cond_e

    const-string v4, "WirelessDex Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "android.hardware.wifi.aware"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v9, "sem_wifi_aware"

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    goto :goto_7

    :cond_f
    move-object v5, v0

    :goto_7
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->isAwareSoftApConcurrencySupported()Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v1

    goto :goto_8

    :cond_10
    move v5, v2

    :goto_8
    const-string v10, "isNanSoftApConcurrencySupported: "

    invoke-static {v10, v3, v5}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifiaware"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/aware/WifiAwareManager;

    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    goto :goto_9

    :cond_11
    move-object v5, v0

    move-object v8, v5

    :goto_9
    if-eqz v5, :cond_15

    if-nez v8, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Landroid/net/wifi/aware/WifiAwareManager;->isDeviceAttached()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v8}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->isPreEnabled()I

    move-result v9

    if-eq v9, v1, :cond_13

    move v9, v1

    goto :goto_a

    :cond_13
    move v9, v2

    :goto_a
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "WifiAware`s isDeviceAttached: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/wifi/aware/WifiAwareManager;->isDeviceAttached()Z

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isPreEnabledResult: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;->isPreEnabled()I

    move-result v5

    if-eq v5, v1, :cond_14

    move v5, v1

    goto :goto_b

    :cond_14
    move v5, v2

    :goto_b
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isNanEnabled: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_15
    :goto_c
    move v9, v2

    :goto_d
    if-eqz v9, :cond_16

    const-string v4, "NAN Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_16
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiManager;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v4, "P2p Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_17
    const-string/jumbo v5, "wifi_ap_wifi_sharing"

    if-eq v4, v1, :cond_1a

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "WifiSharingLite model"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_18
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_19

    move v4, v1

    goto :goto_e

    :cond_19
    move v4, v2

    :goto_e
    if-nez v4, :cond_1a

    const-string v4, "Wifi is not disabled and wifisharing is not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1a
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v8, 0xa

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-eq v4, v6, :cond_1b

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-ne v4, v7, :cond_0

    :cond_1b
    const-string v4, "Wi-Fi Sharing First dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :goto_f
    if-nez v4, :cond_1f

    sget-boolean v4, Lcom/android/systemui/CvRune;->HOTSPOT_CHECK_MHSDBG:Z

    if-eqz v4, :cond_1d

    const-string/jumbo v4, "vendor.wifiap.provisioning.disable"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "Skip isProvisioningCheck"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_10
    move v4, v2

    goto :goto_11

    :cond_1d
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->isProvisioningNeeded()Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, " provisioning is not required for this operator"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1e
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070125

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "Calling UTP apk"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v4

    if-ne v4, v6, :cond_1c

    move v4, v1

    :goto_11
    if-eqz v4, :cond_21

    :cond_1f
    const-string p1, "enable hotspot for USA or SBM"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApWarningActivityRunningState()I

    move-result p1

    const-string v0, "com.android.settings"

    if-ne p1, v1, :cond_20

    const-string/jumbo p1, "sending WIFIAP_WARNING_STOP_DIALOG "

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_20
    :goto_12
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "wifiap_warning_dialog_type"

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "launchWifiApWarning start for USA or SBM"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    return-void

    :cond_21
    const-string/jumbo v4, "setHotspotEnabled -"

    invoke-static {v4, v3, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_22

    const-string v3, "LGT"

    sget-object v4, Lcom/android/systemui/CvRune;->HOTSPOT_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f1314a2

    invoke-static {v3, v4, v2}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    const-string v4, "HotspotController"

    if-eqz v3, :cond_23

    sget-boolean p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz p0, :cond_26

    const-string p0, "Ignoring setHotspotEnabled; waiting for terminal state."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_23
    if-eqz p1, :cond_25

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    sget-boolean p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_24

    const-string p1, "Starting tethering"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const-string p1, "Starting SemWifiManager tethering"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_26

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_13

    :cond_25
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_26

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_26
    :goto_13
    return-void
.end method

.method public final showDataSaverToast()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "com.samsung.android.sm_cn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f140604

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v2, 0x104107a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v2, 0x1041077

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    const v3, 0x1041079

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v2, 0x1041078

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/HotspotTile$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$5;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x104088f

    invoke-static {p0, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
