.class public Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiCloudSyncPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_WIFI_CLOUD_SA:Ljava/lang/String; = "wifi_cloud_sa"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings.WifiCloudSync"

.field private static final mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;


# instance fields
.field private mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

.field private mWifiSync:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    new-instance p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    return-void
.end method

.method private openSamsungAccount()V
    .locals 3

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mypackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Is_From_SA_Verify"

    const/4 v2, 0x1

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openScloudStore()V
    .locals 3

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "samsungapps://ProductDetail/com.samsung.android.scloud/?source=Samsung Cloud"

    .line 137
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "cover"

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x14000020

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_cloud_sa"

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mWifiSync:Landroidx/preference/Preference;

    .line 71
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    sget-object v1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v0, v1, :cond_0

    .line 72
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_with_account_vzw:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mWifiSync:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_with_galaxy_jpn:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 76
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mWifiSync:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 59
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->isPersonalInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->isConsentedToUseNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_2

    .line 63
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isWifiSyncEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x3

    :cond_3
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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->app_name_samsung_account:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->cloud_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->isConsentedToUseNetwork()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_advanced_scloud_sync_no_consent_to_use_network_chn:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->isPersonalInfo()Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.scloud"

    invoke-static {v0, v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_advanced_scloud_sync_personal_information_chn:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 111
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_advanced_scloud_sync_no_scloud_package_chn:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 114
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_samsung_account_jpn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->wifi_advanced_scloud_sync_account_jpn:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->wifi_advanced_scloud_sync_account:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_cloud_sa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->getRpcSettings()Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->isConsentedToUseNetwork()Z

    move-result v0

    const-string v1, "com.android.settings.wifiprofilesync"

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->getRpcSettings()Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->showSetting(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->isPersonalInfo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->hasSamsungCloudPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->getRpcSettings()Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->showSetting(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->openScloudStore()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->openSamsungAccount()V

    goto :goto_0

    .line 95
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->openSamsungAccount()V

    .line 98
    :cond_4
    :goto_0
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

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

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

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mWifiSync:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSettingsStore(Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    const-string p0, "ConfigureWifiSettings.WifiCloudSync"

    const-string p1, "WifiCloudStore is updated"

    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
