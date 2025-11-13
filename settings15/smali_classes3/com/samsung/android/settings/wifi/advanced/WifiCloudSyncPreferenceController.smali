.class public Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_WIFI_CLOUD_SA:Ljava/lang/String; = "wifi_cloud_sa"

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings.WifiCloudSync"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mHasDigitalLegacyModeFlag:Z

.field private mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

.field private mWifiSync:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mHasDigitalLegacyModeFlag:Z

    new-instance p1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    new-instance p1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "com.android.settings.wifiprofilesync"

    const-string v1, "com.android.settings.wifiprofilesetting"

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->setRpcSettings(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;)V

    return-void
.end method

.method private openSamsungAccount()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mypackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Is_From_SA_Verify"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openScloud()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->openSamsungAccount()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->showSetting(Landroidx/fragment/app/FragmentActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private openScloudStore()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "samsungapps://ProductDetail/com.samsung.android.scloud/?source=Samsung Cloud"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string v2, "cover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_cloud_sa"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mWifiSync:Landroidx/preference/Preference;

    const-string p1, "VZW"

    invoke-static {}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mWifiSync:Landroidx/preference/Preference;

    const v0, 0x7f142191    # 1.9690003E38f

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mWifiSync:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsPersonalInfoOn:Z

    if-eqz v2, :cond_4

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsConsentedToUseNetwork:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsMainSyncOn:Z

    if-eqz v2, :cond_4

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsAllowedInEdp:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isWifiSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x3

    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;

    move-result-object v0

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/pm/SemUserInfo;->hasFlags(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mHasDigitalLegacyModeFlag:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    :cond_4
    :goto_0
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140390

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140967

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mHasDigitalLegacyModeFlag:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142180

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14328f

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsAllowedInEdp:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mWifiSync:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SecPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142194    # 1.969001E38f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142193    # 1.9690007E38f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsConsentedToUseNetwork:Z

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f143291

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsPersonalInfoOn:Z

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->hasPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f143293

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f143292

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_6
    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsUserAgreesPolicyNotice:Z

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f143295

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142190    # 1.969E38f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi_cloud_sa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    if-eqz v1, :cond_3

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsConsentedToUseNetwork:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->showSetting(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsPersonalInfoOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->hasPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->showSetting(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->openScloudStore()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->openScloud()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->openScloud()V

    :cond_4
    :goto_0
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

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mWifiSync:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setSettingsStore(Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setSettingsStore : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSyncPreferenceController;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConfigureWifiSettings.WifiCloudSync"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
