.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ConnectionL3PreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;
    }
.end annotation


# instance fields
.field private mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

.field private mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;

.field private mDns1:Landroidx/preference/Preference;

.field private mDns2:Landroidx/preference/Preference;

.field private mDnsResults:Landroidx/preference/Preference;

.field private mGateway:Landroidx/preference/Preference;

.field private mIpAddress:Landroidx/preference/Preference;

.field private mNetworkPrefixLength:Landroidx/preference/Preference;

.field private mSsidBssidPref:Landroidx/preference/Preference;

.field private mTcpAllSocketStatistic:Landroidx/preference/Preference;

.field private mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->updateView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    .line 63
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;

    .line 64
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private updateView()V
    .locals 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectionL3PrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getBssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mIpAddress:Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mIpAddress:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mGateway:Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getGateway()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mGateway:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mNetworkPrefixLength:Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getNetworkPrefixLength()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mNetworkPrefixLength:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getDns1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getDns1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getDns2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getDns2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 118
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpAllSocketStatistic:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getTcpAllSocketsStatic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpAllSocketStatistic:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getTcpForegroundSocketsStatic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDnsResults:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getDnsResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDnsResults:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const-string v2, "No network connected."

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mIpAddress:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mGateway:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mNetworkPrefixLength:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpAllSocketStatistic:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDnsResults:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "ssid_bssid"

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mIpAddress:Landroidx/preference/Preference;

    const-string v0, "gateway"

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mGateway:Landroidx/preference/Preference;

    const-string v0, "network_prefix_length"

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mNetworkPrefixLength:Landroidx/preference/Preference;

    const-string v0, "dns_1"

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns1:Landroidx/preference/Preference;

    const-string v0, "dns_2"

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDns2:Landroidx/preference/Preference;

    const-string v0, "all_sockets_statistic"

    .line 86
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpAllSocketStatistic:Landroidx/preference/Preference;

    const-string v0, "foreground_sockets_statistic"

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mTcpForegroundSocketsStatistic:Landroidx/preference/Preference;

    const-string v0, "dns_results"

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mDnsResults:Landroidx/preference/Preference;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->updateView()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 69
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->registerCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;)V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->updateView()V

    goto :goto_0

    .line 72
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL3PreferenceController$ConnectionInfoRepoCallback;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->unregisterCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
