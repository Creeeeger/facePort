.class public Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SmartNetworkSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final CscFeature_Wifi_ConfigAutoWifiNaming:Ljava/lang/String; = "CscFeature_Wifi_ConfigAutoWifiNaming"

.field private static final DBG:Z

.field private static final KEY_POOR_NETWORK_DETECTION:Ljava/lang/String; = "wifi_poor_network_detection"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings.SNS"

.field private static final mIsSupportAdaptiveWifi:Z


# instance fields
.field private mDataRoamingObserver:Landroid/database/ContentObserver;

.field private mFilter:Landroid/content/IntentFilter;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mPoorNetworkDetection:Landroidx/preference/SwitchPreferenceCompat;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPoorNetworkDetection(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mPoorNetworkDetection:Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->DBG:Z

    .line 66
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mIsSupportAdaptiveWifi:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    new-instance p2, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 77
    new-instance p2, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mDataRoamingObserver:Landroid/database/ContentObserver;

    .line 83
    new-instance p2, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController$3;-><init>(Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mPoorNetworkDetection:Landroidx/preference/SwitchPreferenceCompat;

    .line 110
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const-string v0, "ro.radio.noril"

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mPoorNetworkDetection:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    const-string v0, "ro.radio.noril"

    const/4 v1, 0x0

    .line 167
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    if-eqz v0, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v2, 0x5

    if-nez v0, :cond_1

    return v2

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v3, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    sget p0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check_disabled_by_data_roaming:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :cond_1
    sget p0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check_disabled_mobile_data_off:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_2
    sget p0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check_disabled_airplane_mode:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_3
    sget p0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check_disabled_no_sim:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 141
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 136
    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 137
    sget p0, Lcom/android/settings/R$string;->wifi_use_mobile_data:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mPoorNetworkDetection:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_poor_network_detection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x152

    .line 250
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchSettings;

    .line 251
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data:I

    .line 252
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 255
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 146
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_watchdog_poor_network_test_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 234
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mPoorNetworkDetection:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_num_of_switch_to_mobile_data_toggle"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "WIFI_200"

    const-string v2, "1210"

    .line 157
    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 159
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mPoorNetworkDetection:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return v3
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    sget v0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check_disabled_by_data_roaming:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 211
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 206
    :cond_2
    sget v0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check_disabled_mobile_data_off:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 207
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 202
    :cond_3
    sget v0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check_disabled_airplane_mode:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 203
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 198
    :cond_4
    sget v0, Lcom/android/settings/R$string;->wifi_watchdog_connectivity_check_disabled_no_sim:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 199
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SmartNetworkSwitchPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 215
    :cond_6
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 217
    sget v0, Lcom/android/settings/R$string;->wifi_use_mobile_data:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 222
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
