.class public final Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

.field public mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;

.field public mDns1:Landroidx/preference/Preference;

.field public mDns2:Landroidx/preference/Preference;

.field public mDnsResults:Landroidx/preference/Preference;

.field public mGateway:Landroidx/preference/Preference;

.field public mIpAddress:Landroidx/preference/Preference;

.field public mNetworkPrefixLength:Landroidx/preference/Preference;

.field public mSsidBssidPref:Landroidx/preference/Preference;

.field public mTcpAllSocketStatistic:Landroidx/preference/Preference;

.field public mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "ssid_bssid"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mIpAddress:Landroidx/preference/Preference;

    const-string v0, "gateway"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mGateway:Landroidx/preference/Preference;

    const-string v0, "network_prefix_length"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mNetworkPrefixLength:Landroidx/preference/Preference;

    const-string v0, "dns_1"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    const-string v0, "dns_2"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    const-string v0, "all_sockets_statistic"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpAllSocketStatistic:Landroidx/preference/Preference;

    const-string v0, "foreground_sockets_statistic"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;

    const-string v0, "dns_results"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDnsResults:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->updateView$2()V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    if-ne p2, p1, :cond_0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->updateView$2()V

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p0, :cond_1

    iget-object p0, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfoUpdatedCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateView$2()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateView "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-boolean v2, v2, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    const-string v3, "ConnectionL3PrefCtrl"

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mIpAddress:Landroidx/preference/Preference;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mIpAddress:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mGateway:Landroidx/preference/Preference;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mGateway:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mGateway:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mNetworkPrefixLength:Landroidx/preference/Preference;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mNetworkPrefixLength:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mNetworkPrefixLength:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns1:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDns2:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpAllSocketStatistic:Landroidx/preference/Preference;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpAllSocketStatistic:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpAllSocketStatistic:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mTcpForegroundSocketStatistic:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDnsResults:Landroidx/preference/Preference;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mConnectionInfo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mDnsResults:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDnsResults:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const-string v1, "No network connected."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mIpAddress:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mGateway:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mNetworkPrefixLength:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpAllSocketStatistic:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDnsResults:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    return-void
.end method
