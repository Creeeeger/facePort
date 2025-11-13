.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String;

.field public static final WIFIAP_SWITCH_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public isBroadcastReceiverRegistered:Z

.field public final mAOSPWifiManager:Landroid/net/wifi/WifiManager;

.field public final mActivity:Landroid/app/Activity;

.field public mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public final mContext:Landroid/content/Context;

.field public mDataLimitChangeLimitButton:Landroid/widget/Button;

.field public mDataLimitDialog:Landroid/app/AlertDialog;

.field public mDataLimitEditErrorTextView:Landroid/widget/TextView;

.field public mDataLimitEditText:Landroid/widget/EditText;

.field public final mDataLimitEditTextWatcher:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

.field public final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field public mProvisionApp:[Ljava/lang/String;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public final mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

.field public final mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

.field public mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;

.field public waitingForConfigurationSet:Z

.field public waitingForWifiDisable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const-string v0, "WifiApSwitchEnabler"

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->WIFIAP_SWITCH_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/preference/SecSwitchPreferenceScreen;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForWifiDisable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditTextWatcher:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WifiApSwitchEnabler SecTetherSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/widget/SettingsMainSwitchBar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForWifiDisable:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditTextWatcher:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WifiApSwitchEnabler WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    const-string/jumbo p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    return-void
.end method

.method public static putBooleanSharedPreference(Landroid/content/Context;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "putBooleanSharedPreference() - strKey: showhotspotdialoglimit, bValue: "

    invoke-static {v1, v0, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "MHSNoProvisionPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v1, "showhotspotdialoglimit"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "putSharedPreference - showhotspotdialoglimit : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final CheckWiFiConcurrencyAndProceedFurther()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isP2pConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_wifi_p2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->isP2pSoftApConcurrencySupported()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    const-string v6, " isP2pCon: "

    const-string v7, ", isDualBandCurSel: "

    const-string v8, ", isP2pSoftApConcurrencySupported: "

    invoke-static {v6, v0, v7, v2, v8}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isP2pDialogCanBeShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "CheckWiFiConcurrencyAndProceedFurther - "

    invoke-static {v2, v0, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/wifi/SemWifiManager;->reportHotspotDumpLogs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSoftApBandArray:[I

    array-length v0, v0

    if-le v0, v3, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    const-string v2, "Is Dual Band: "

    const-string v6, "WifiApConfiguration"

    invoke-static {v2, v6, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x3

    const/4 v6, 0x2

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->supportBridgedApStaConcurrency()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_3
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_7

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v7, "display"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v8

    if-ne v8, v6, :cond_5

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-ne v0, v6, :cond_5

    const-string v0, "isWirelessDexEnabled:true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_7

    :cond_5
    const-string v0, "isWirelessDexEnabled:false"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    if-ne v7, v6, :cond_6

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "isSmartViewEnabled:true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_7

    const-string v0, "Smartview is enabled. Create dailog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_7

    :cond_6
    const-string v0, "isSmartViewEnabled:false"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNanEnabledDialogRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "WiFi Nan is enabled. Create dailog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/16 v7, 0xa

    const-string v8, "WiFi P2p is connected. Create dailog"

    if-eq v0, v6, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v2, :cond_9

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_7

    :cond_a
    const-string v0, " Wi-Fi is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary$1()V

    goto/16 :goto_7

    :cond_b
    :goto_2
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    const/4 v9, -0x1

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_5

    :cond_c
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v5, :cond_d

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedFrequency()I

    move-result v0

    if-eq v0, v9, :cond_14

    const-string v2, "Frequency : "

    invoke-static {v0, v2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x96c

    const/4 v5, 0x6

    const/4 v7, 0x5

    if-lt v0, v2, :cond_e

    const/16 v2, 0x9b4

    if-gt v0, v2, :cond_e

    goto :goto_3

    :cond_e
    const/16 v2, 0x170c

    if-le v0, v2, :cond_f

    move v6, v5

    goto :goto_3

    :cond_f
    move v6, v7

    :goto_3
    const-string v0, "Frequency band of connected AP:"

    invoke-static {v6, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v6, v7, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getIndoorStatus()I

    move-result v4

    :cond_10
    const-string v0, "WiFi Sharing lite model. Wifi connected , indoor status:"

    invoke-static {v4, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v4, v3, :cond_11

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_7

    :cond_11
    if-eq v6, v7, :cond_13

    if-ne v6, v5, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary$1()V

    goto/16 :goto_7

    :cond_13
    :goto_4
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_7

    :cond_14
    const-string v0, "WiFi Sharing lite model. Wifi not connected"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary$1()V

    goto :goto_7

    :cond_15
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "WiFi Sharing  model."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_16

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_7

    :cond_16
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary$1()V

    goto :goto_7

    :cond_17
    const-string p0, "not handling in any case, it is an error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_18
    :goto_5
    const-string v0, "TMO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "NEWCO"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_6

    :cond_19
    const-string v0, "WiFi Sharing not supported/not enabled. Create dailog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_7

    :cond_1a
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedFrequency()I

    move-result v0

    if-eq v0, v9, :cond_1b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_7

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7
    return-void
.end method

.method public final buttonValidate()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    cmpg-double v0, v3, v0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final checkFirstTimeConfigureAndProceedFurthur()V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "checkFirstTimeConfigureAndProceedFurthur"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierTMO()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isCarrierNEWCO()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->isDefaultPassphraseSet()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForConfigurationSet:Z

    const-string v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "needresult"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching WifiApEditSettings activity with title: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f14332d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    const/16 v1, 0xd48

    iput v1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {v0, v3, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->CheckWiFiConcurrencyAndProceedFurther()V

    :goto_0
    return-void
.end method

.method public final checkFirstTimeWiFiSharingDialogAndProceedFurthur()V
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "checkFirstTimeWiFiSharingDialogAndProceedFurthur"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string/jumbo v3, "wifi_ap_wifi_sharing"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip checkLowBatteryAndProceedFurther"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkFirstTimeConfigureAndProceedFurthur()V

    :goto_0
    return-void
.end method

.method public final checkVZWRoamingAndProceedFurthur()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "checkVZWRoamingAndProceedFurthur"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "us"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "In VZW roaming"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkFirstTimeWiFiSharingDialogAndProceedFurthur()V

    :goto_0
    return-void
.end method

.method public final enableTethering(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "enableTethering:"

    invoke-static {v1, v0, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_0

    :cond_0
    const-string p1, "LGT"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f14341a

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :goto_0
    return-void
.end method

.method public final getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    return-object v0
.end method

.method public final getWifiConnectedFrequency()I
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wifi Frequency is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final isInternetSharingAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "WIFI_AP Internet Sharing is restricted by DPM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1433e6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isOperatorRequiresProvisioning()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vendor.wifiap.provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "Skip isProvisioningCheck"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070125

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->isProvisioningNeeded()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " provisioning is not required for this operator, operator:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length p0, v0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " provisioning app is not set in CSCfeature, operator:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final isWifiApBlocked()Z
    .locals 7

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "isWifiApBlocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

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

.method public final isWifiConnected()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public final isWifiSharingEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "onActivityResult() hit - requestCode: "

    const-string v1, ", resultCode: "

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, " provisioning success"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "wifi_saved_state"

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xc

    const-string v4, " provisioning failed, enabling Wifi "

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, " provisioning failed, Wifi is connected, so enabling MHS "

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto :goto_2

    :cond_3
    if-ne p1, v0, :cond_6

    invoke-static {p3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    :goto_0
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, " provisioning failed, MHS is ON and Wifi is connected"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v2, " provisioning failed, MHS is ON and Wifi is not connected"

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    if-ne p1, v0, :cond_6

    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onSwitchChanged  getWifiApState:"

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->update(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;[I)V

    const-string v1, "onSwitchChanged: wifiApConfiguration updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    const-string p1, "onSwitchChanged, disabling"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_9

    const/16 p2, 0xb

    if-eq p1, p2, :cond_1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_9

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    const-string p1, "onSwitchChanged, enabling/enabled"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "WifiApBlocked so not enabling"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isInternetSharingAllowed()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "InternetSharing not Allowed so not enabling"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    iget p2, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    const/4 v2, 0x1

    if-nez p2, :cond_4

    move p2, v2

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    const-string v3, "Is Open Security Type: "

    const-string v4, "WifiApConfiguration"

    invoke-static {v3, v4, p2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p2, :cond_6

    iget p1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    move v1, v2

    :cond_5
    const-string p1, "Is Open Enhanced Security Type: "

    invoke-static {p1, v4, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v2

    :cond_7
    if-nez v2, :cond_8

    const-string p1, "openSecurity is not allowed"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x10404c5

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkVZWRoamingAndProceedFurthur()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Z)V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "onPreferenceChange:"

    invoke-static {v0, p2, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const-string v3, "TETH_010"

    const-string v4, "8001"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->update(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;[I)V

    const-string v0, "onPreferenceChange: wifiApConfiguration updated"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "WifiApBlocked so not enabling"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isInternetSharingAllowed()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "InternetSharing not Allowed so not enabling"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f1433e6

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    return v0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    iget v1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    const/4 v2, 0x1

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    const-string v3, "Is Open Security Type: "

    const-string v4, "WifiApConfiguration"

    invoke-static {v3, v4, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_6

    iget p1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->mSecurityType:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    const-string v1, "Is Open Enhanced Security Type: "

    invoke-static {v1, v4, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getWifiPolicy()Lcom/samsung/android/knox/net/wifi/WifiPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v2

    :cond_7
    if-nez v2, :cond_8

    const-string p1, "openSecurity is not allowed"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x10404c5

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->checkVZWRoamingAndProceedFurthur()V

    :cond_9
    :goto_3
    return v0
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForConfigurationSet:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "waitingForConfigurationSet()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->waitingForConfigurationSet:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;->isDefaultPassphraseSet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->CheckWiFiConcurrencyAndProceedFurther()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "on Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isBroadcastReceiverRegistered:Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->WIFIAP_SWITCH_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v3, v2}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v2

    const-string/jumbo v3, "updateProgress wifiapstate : "

    invoke-static {v2, v3, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    if-eq v2, v0, :cond_1

    const/16 v0, 0xa

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateMHSSwitch()V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Z)V

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isBroadcastReceiverRegistered:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$WifiApDataSaver;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public final showDialog(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v5, 0x4

    const/16 v6, 0x8

    const/16 v7, 0x9

    const/16 v8, 0x11

    const/16 v9, 0xe

    const/16 v10, 0xa

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x1

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showDialog() - id: "

    invoke-static {v1, v3, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq v1, v15, :cond_7

    const v4, 0x7f141c4e

    const v3, 0x7f140d30

    if-eq v1, v13, :cond_6

    if-eq v1, v12, :cond_4

    if-eq v1, v11, :cond_3

    if-eq v1, v10, :cond_2

    if-eq v1, v9, :cond_1

    if-eq v1, v8, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v4, v1, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0a3e

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0a0492

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f143465

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0a0490

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditTextWatcher:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v6

    double-to-int v2, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    const v2, 0x7f0a048f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    const v1, 0x7f143301

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v2, 0x13

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v2, 0x7f1432e7

    invoke-virtual {v4, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v2, 0x7f140b72

    invoke-virtual {v4, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v2, 0x15

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v4, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v1, v0, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->buttonValidate()V

    goto/16 :goto_2

    :pswitch_1
    const-string v1, "CASE DIALOG_WARN_DUALAP_WIFI_DISABLE"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v8, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f143319

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v4, v0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v2, v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v2, v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f143429

    invoke-static {v0, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :pswitch_2
    const-string v1, "CASE DIALOG_WARN_WIRELESS_DEX_DISABLE"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f143459

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v2, v0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v4, 0x7f143314

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/4 v4, 0x6

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v2, v0, v13}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f14345a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f143423

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v5, 0xb

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v5, 0x7f1432e4

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v4, v0, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v3, v0, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f143424

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f14344e

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v3, 0x7f140d33

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v2, v0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f143453

    invoke-static {v0, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f143451

    invoke-static {v2, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v4, 0x10

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v4, 0x7f140d33

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v2, v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v2, v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f143450

    invoke-static {v0, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_0
    const-string v1, "CASE DIALOG_WARN_SMARTVIEW_DISABLE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f143401

    invoke-static {v2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v2, v0, v12}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v4, 0x7f142fd0    # 1.96974E38f

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v2, v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f143403

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_1
    const-string v1, "DIALOG_WIFI_SHARING_FIRST_TIME"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f1436a6

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f1436a2

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v4, 0x16

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v4, 0x7f140d33

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    const/16 v4, 0xb

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f14342d

    invoke-static {v2, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v5, 0xf

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v5, 0x7f142fd6

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v4, v0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v3, v0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f14342f

    invoke-static {v2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f140ccf

    invoke-static {v2, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v2, v0, v13}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v4, 0x7f140d33

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/4 v4, 0x2

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v2, v0, v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f14181f

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f141611

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f143416

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v5, 0x17

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v4, 0x18

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f143419

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;

    invoke-direct {v2, v0, v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "$20.48"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f143415

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v3, v0, v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f143418

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;

    invoke-direct {v2, v0, v15}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_0
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f143425

    invoke-static {v2, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v5, 0xc

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    const/16 v4, 0xd

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f143429

    invoke-static {v0, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {v1, v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f141806

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_8
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f143708

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    invoke-direct {v2, v0, v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    const v3, 0x7f140d33

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    invoke-direct {v2, v0, v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f14370a

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showProgress(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showProgress() - "

    invoke-static {v1, v0, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setProgressBarVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "both switchbar and Switchpref are null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final showToastMsg(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startProvisioningIfNecessary$1()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isActiveNetworkisCellular(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Wi-Fi is not connected and mobile data is enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isOverAllMhsDataLimitReached()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v1, "isMobileDataUsageSupported data reached dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startProvisioningIfNecessary"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isOperatorRequiresProvisioning()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "isPackageExists | package is enabled ? "

    const-string v6, "isPackageExists() - targetPackage: "

    invoke-static {v6, v4, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    :goto_0
    move v6, v3

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_3

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    if-eqz v6, :cond_4

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v2, "isPackageExists | package is not system app or not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Package not found : "

    invoke-static {v2, v4, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    if-nez v6, :cond_5

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "package mprov : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " disabled."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f141a28

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showToastMsg(I)V

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v4, v2, v3

    aget-object v1, v2, v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TETHER_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "launching Provisioning app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    :cond_8
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "provisioning APK is not present"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableTethering(Z)V

    :goto_5
    return-void
.end method

.method public final updateMHSSwitch()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateMHSSwitch,wifiapstate:"

    invoke-static {v0, v2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const-string v5, "CarrierFeature_Common_Support_Satellite"

    const-string v6, "WifiApSettingsUtils"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v7

    invoke-virtual {v7, v3, v5, v3, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v7

    invoke-virtual {v7, v2, v5, v3, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_2

    :catch_0
    move-exception v4

    move v5, v3

    goto :goto_3

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_4

    :try_start_1
    const-string v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_3

    const-string v4, "isUsingNonTerrestrialNetwork: TelephonyManager is null"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_5

    :goto_3
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    move v4, v3

    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isUsingNonTerrestrialNetwork: supported: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ntn: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v7, "isWifiTetheringEnabled"

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_6

    :cond_5
    move v5, v2

    :goto_6
    new-instance v6, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iget-object v6, v6, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/datausage/DataUsageUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/16 v10, 0xc

    if-nez v1, :cond_19

    if-eqz v5, :cond_19

    if-nez v6, :cond_19

    if-nez v7, :cond_6

    goto/16 :goto_11

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v4, :cond_15

    if-eqz v1, :cond_7

    goto/16 :goto_f

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/16 v4, 0xa

    if-eqz v1, :cond_e

    if-eq v0, v10, :cond_b

    if-ne v0, v4, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_9

    :cond_b
    :goto_8
    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :goto_9
    if-eq v0, v10, :cond_d

    if-ne v0, v9, :cond_c

    goto :goto_a

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_e

    :cond_d
    :goto_a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_e

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_13

    if-eq v0, v10, :cond_10

    if-ne v0, v4, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_c

    :cond_10
    :goto_b
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_c
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eq v0, v10, :cond_12

    if-ne v0, v9, :cond_11

    goto :goto_d

    :cond_11
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_e

    :cond_12
    :goto_d
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez v0, :cond_14

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_e

    :cond_13
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v0, "both SwitchBar and SwitchPref are null, handle WifiApState"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_e
    return-void

    :cond_15
    :goto_f
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v2, "Tethering is disabled by UsingNonTerrestrialNetwork"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_16

    const-string v1, "SatelliteModeOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_10

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_18
    :goto_10
    return-void

    :cond_19
    :goto_11
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v11, "isUsingNonTerrestrialNetwork: "

    const-string v12, ", isAirplaneMode: "

    const-string v13, ", mWifiApAllowed: "

    invoke-static {v11, v4, v12, v1, v13}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "mDataSaverEnabled:"

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "mDataUsageAllowed:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v10, :cond_1a

    if-ne v0, v9, :cond_1b

    :cond_1a
    const-string v0, "Disabling MHS, because of notallowed scenarios"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_13

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_20

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v1, :cond_1d

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    const v0, 0x7f140fdd

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_13

    :cond_1d
    if-eqz v5, :cond_1f

    if-nez v7, :cond_1e

    goto :goto_12

    :cond_1e
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_1f
    :goto_12
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f14181f

    invoke-static {p0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f141cdb

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_20
    const-string p0, "both SwitchBar and SwitchPref are null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void
.end method
