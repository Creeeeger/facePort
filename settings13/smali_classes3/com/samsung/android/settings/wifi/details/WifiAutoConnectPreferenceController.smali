.class public Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "WifiAutoConnectPreferenceController.java"


# static fields
.field private static final KEY_AUTO_CONNECT_PREF:Ljava/lang/String; = "auto_connect"

.field private static final TAG:Ljava/lang/String; = "WifiAutoConnectPrefCtrl"


# instance fields
.field private mAutoConnectPref:Landroidx/preference/SwitchPreferenceCompat;

.field private mAutoJoinStore:Z

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mSAScreenId:Ljava/lang/String;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 1

    const-string v0, "auto_connect"

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 58
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoJoinStore:Z

    .line 60
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private exitActivity()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private isSupportAutoJoin()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private syncAutoReconnectAndCarrierNetworkOffload(ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canSetAutoJoinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->setAutoJoinEnabled(Z)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCarrierNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->isCarrierNetworkOffloadEnabled(IZ)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p2, p2, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {p0, p2, v2, p1}, Landroid/net/wifi/WifiManager;->setCarrierNetworkOffloadEnabled(IZZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoConnectPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 69
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 74
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

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCarrierNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiManager;->isCarrierNetworkOffloadEnabled(IZ)Z

    move-result p0

    goto :goto_0

    .line 83
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoJoinStore:Z

    :goto_0
    return p0

    .line 85
    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoJoinStore:Z

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mSAScreenId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "1022"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    .line 97
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->syncAutoReconnectAndCarrierNetworkOffload(ZLandroid/net/wifi/WifiConfiguration;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    .line 100
    new-instance v0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportDisconnectNetwork()V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->exitActivity()V

    .line 105
    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiAutoConnectPreferenceController;->mAutoJoinStore:Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
