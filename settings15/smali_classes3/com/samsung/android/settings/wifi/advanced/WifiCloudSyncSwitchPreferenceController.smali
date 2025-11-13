.class public Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_WIFI_CLOUD_SYNC:Ljava/lang/String; = "wifi_cloud_sync"

.field private static final SCLOUD_WIFI_SYNC_ENABLED:Ljava/lang/String; = "scloud_wifi_sync_enabled"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings.WifiCloudSyncSwitch"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mIsChecked:Z

.field private mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

.field private mWifiCloudSyncPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    new-instance p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    new-instance p1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "com.android.settings.wifiprofilesync"

    const-string v1, "com.android.settings.wifiprofilesetting"

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->setRpcSettings(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_cloud_sync"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    const-string p1, "VZW"

    invoke-static {}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    const v0, 0x7f142191    # 1.9690003E38f

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsPersonalInfoOn:Z

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsConsentedToUseNetwork:Z

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isWifiSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsMainSyncOn:Z

    if-eqz v2, :cond_3

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsAllowedInEdp:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;

    move-result-object p0

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Landroid/content/pm/SemUserInfo;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x2

    :cond_4
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417ba

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mIsChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1

    iget-object p0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsUserAgreesPolicyNotice:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f143295

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14217a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi_cloud_sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->showSetting(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mIsChecked:Z

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onChangeWifiSyncEnabled(Landroidx/preference/PreferenceScreen;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mIsChecked:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public refreshSummary(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mIsChecked:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "scloud_wifi_sync_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->setAutoSync(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mIsChecked:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    const-string v0, "WIFI_200"

    const-string v1, "1245"

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setSettingsStore(Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setSettingsStore : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConfigureWifiSettings.WifiCloudSyncSwitch"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->mWifiCloudSyncPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncSwitchPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
