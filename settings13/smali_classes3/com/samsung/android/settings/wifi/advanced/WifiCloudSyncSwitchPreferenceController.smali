.class public Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "WifiCloudSyncSwitchPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_WIFI_CLOUD_SYNC:Ljava/lang/String; = "wifi_cloud_sync"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings.WifiCloudSyncSwitch"

.field public static final mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

.field private mWifiCloudSyncPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 61
    new-instance p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_cloud_sync"

    .line 117
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    .line 118
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    sget-object v1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v0, v1, :cond_0

    .line 119
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_with_account_vzw:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_with_galaxy_jpn:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 123
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 101
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->isPersonalInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->isConsentedToUseNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isWifiSyncEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
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

    .line 111
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
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    .line 142
    iget-object p0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_auto_sync_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 129
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_cloud_sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.scloud.app.activity.LAUNCH_OTHER_PHONE_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "authority"

    const-string v2, "com.android.settings.wifiprofilesync"

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
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
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    const-string v0, "com.android.settings.wifiprofilesync"

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

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

.method public onResume()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 7

    const/4 v0, 0x1

    const-string v1, "com.android.settings.wifiprofilesync"

    if-eqz p1, :cond_1

    .line 72
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.scloud.NOTIFY_SEND_PROPERTY_DATA"

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.wifi"

    .line 74
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 77
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v1, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 81
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->getRpcSettings()Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->getRpcSettings()Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.settings.wifiprofilesync/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "clear_data"

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 87
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 88
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->getRpcSettings()Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->getRpcSettings()Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 92
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v1, p1}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    :goto_1
    const-string p1, "WIFI_200"

    const-string v3, "1245"

    .line 93
    invoke-static {p1, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return v0
.end method

.method public setSettingsStore(Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    const-string p0, "ConfigureWifiSettings.WifiCloudSyncSwitch"

    const-string p1, "WifiCloudStore is updated"

    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
