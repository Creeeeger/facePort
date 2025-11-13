.class public Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AutoWifiPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static DBG:Z = false

.field private static final KEY_AUTO_WIFI:Ljava/lang/String; = "auto_wifi"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings.AutoWifi"


# instance fields
.field private mAutoWifi:Landroidx/preference/SwitchPreferenceCompat;

.field private mFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScanState:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoWifi(Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mAutoWifi:Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmWifiScanState(Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mWifiScanState:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    new-instance p2, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string p2, "sem_wifi"

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string p2, "phone"

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mAutoWifi:Landroidx/preference/SwitchPreferenceCompat;

    .line 90
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isAvailableAutoWifiScan()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mWifiScanState:Z

    return v1

    .line 152
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mWifiScanState:Z

    const/4 p0, 0x5

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x3

    return p0
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

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 129
    sget p0, Lcom/android/settings/R$string;->menu_key_connections:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSimCardReady(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    sget p0, Lcom/android/settings/R$string;->wifi_autowifi_insert_sim_card_to_use:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    sget p0, Lcom/android/settings/R$string;->wifi_autowifi_turn_off_airplane_mode_to_use:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    sget p0, Lcom/android/settings/R$string;->wifi_autowifi_turn_on_location_to_use:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p0

    if-nez p0, :cond_3

    .line 121
    sget p0, Lcom/android/settings/R$string;->wifi_autowifi_turn_on_improve_accuracy:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_3
    sget p0, Lcom/android/settings/R$string;->wifi_autowifi_summary:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isAutoWifiEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
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
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.wifi.AUTO_WIFI_SCAN_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mAutoWifi:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->updateState(Landroidx/preference/Preference;)V

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

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sem_auto_wifi_control_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "WIFI_200"

    const-string v3, "1215"

    .line 102
    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    if-nez p1, :cond_1

    const-string p1, "ConfigureWifiSettings.AutoWifi"

    const-string v0, "Users turn off Auto Wi-Fi. Clear Data"

    .line 105
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->resetBadgedNetwork(Landroid/content/Context;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoWifi updateState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mWifiScanState:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigureWifiSettings.AutoWifi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isAutoWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->hasNewFavoriteNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/intelligent/AutoWifiPreferenceController;->mWifiScanState:Z

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
