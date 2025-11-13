.class public Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "PasspointPreferenceSwitchController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;


# static fields
.field private static final DBG:Z

.field private static final KEY_HOTSPOT_PROFILE:Ljava/lang/String; = "wifi_hs20_profile"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings.Hotspot20"

.field private static final mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field private mPasspoint:Landroidx/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->DBG:Z

    .line 56
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "wifi_hs20_profile"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mPasspoint:Landroidx/preference/Preference;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->getReceiver(Landroidx/preference/Preference;Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 115
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getMenuStatusForPasspoint()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MENU_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->getDetailAvailableStatus(Landroid/net/wifi/WifiManager;Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

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

.method public bridge synthetic getDetailAvailableStatus(Landroid/net/wifi/WifiManager;Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;->getDetailAvailableStatus(Landroid/net/wifi/WifiManager;Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
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

.method public bridge synthetic getReceiver(Landroidx/preference/Preference;Ljava/lang/String;)Landroid/content/BroadcastReceiver;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;->getReceiver(Landroidx/preference/Preference;Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 86
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
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->DCM:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    sget-object v2, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v1, v2, :cond_0

    .line 77
    sget p0, Lcom/android/settings/R$string;->wifi_hotspot20_summary_dcm:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    sget-object v1, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->TMB:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v1, v2, :cond_1

    .line 79
    sget p0, Lcom/android/settings/R$string;->wifi_hotspot20_summary_tmo:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

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

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiPasspointEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isNeedToGrayOut(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;->isNeedToGrayOut(Landroid/content/Context;Ljava/lang/String;)Z

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

    .line 125
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiPasspointEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_hotspot20_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportDisconnectNetwork()V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "WIFI_200"

    const-string v2, "1240"

    .line 107
    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceSwitchController;->mPasspoint:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
