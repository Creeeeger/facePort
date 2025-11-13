.class public Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_AUTO_CONNECT_PREF:Ljava/lang/String; = "auto_connect"

.field private static final TAG:Ljava/lang/String; = "WifiAutoConnectPrefCtrl"


# instance fields
.field private mAutoConnectPref:Landroidx/preference/SwitchPreferenceCompat;

.field private mAutoJoinStore:Z

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field mIsBlockUnsecureWifiAutojoin:Z

.field private final mSAScreenId:Ljava/lang/String;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "auto_connect"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoJoinStore:Z

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "rampart_blocked_unsecure_wifi_autojoin"

    invoke-static {p2, v0, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_2
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mIsBlockUnsecureWifiAutojoin:Z

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private exitActivity()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private isCarrierNetworkAllowAutoJoinEnabled(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoJoinStore:Z

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sem_wifi_carrier_network_offload_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    iget-boolean p0, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSupportAutoJoin()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v2, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v2, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isLocked:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isWeakSecuredWifiBlockedByAutoBlocker(I)Z
    .locals 1

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mIsBlockUnsecureWifiAutojoin:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private syncAutoReconnectAndCarrierNetworkOffload(ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->updateAllowAutojoin(Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p2, p2, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/net/wifi/WifiManager;->isCarrierNetworkOffloadEnabled(IZ)Z

    move-result p2

    if-eq p2, p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "sem_wifi_carrier_network_offload_enabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private updateAllowAutojoin(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canSetAutoJoinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->setAutoJoinEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoConnectPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->isSupportAutoJoin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
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

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->isWeakSecuredWifiBlockedByAutoBlocker(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v1, v0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v1, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->isCarrierNetworkAllowAutoJoinEnabled(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0

    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoJoinStore:Z

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "1022"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetHighestSecurity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "security_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v1, v1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v1, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_carrier_network"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v3, v0, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v1, v1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v1, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->syncAutoReconnectAndCarrierNetworkOffload(ZLandroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->updateAllowAutojoin(Z)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sem_wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v3, -0x1

    const-string v4, "disconnect"

    invoke-static {v3, v4, v2, v1}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->exitActivity()V

    :cond_3
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoJoinStore:Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f143746

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->isWeakSecuredWifiBlockedByAutoBlocker(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f143470

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
