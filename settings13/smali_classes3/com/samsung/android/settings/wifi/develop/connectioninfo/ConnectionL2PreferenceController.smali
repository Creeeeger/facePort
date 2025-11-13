.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ConnectionL2PreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback;
    }
.end annotation


# instance fields
.field mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

.field private mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback;

.field private mCountryCodePref:Landroidx/preference/Preference;

.field private mFrequencyPref:Landroidx/preference/Preference;

.field private mGenerationPref:Landroidx/preference/Preference;

.field private mKVRPref:Landroidx/preference/Preference;

.field private mModulationPref:Landroidx/preference/Preference;

.field private mProtocolPref:Landroidx/preference/Preference;

.field private mSecurityTypePref:Landroidx/preference/Preference;

.field private mSsidBssidPref:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->updateView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    .line 60
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback;

    .line 61
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private updateView()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mKVRPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getKVRString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mKVRPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mCountryCodePref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mCountryCodePref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSecurityTypePref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getCurrentSecurityTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSecurityTypePref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mGenerationPref:Landroidx/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wi-Fi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getGeneration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mGenerationPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mProtocolPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mProtocolPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mModulationPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->getModulation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mModulationPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const-string v1, "No network connected."

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mKVRPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mCountryCodePref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSecurityTypePref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mGenerationPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mProtocolPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mModulationPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "ssid_bssid"

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSsidBssidPref:Landroidx/preference/Preference;

    const-string v0, "kvr"

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mKVRPref:Landroidx/preference/Preference;

    const-string v0, "country_code"

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mCountryCodePref:Landroidx/preference/Preference;

    const-string v0, "security_type"

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mSecurityTypePref:Landroidx/preference/Preference;

    const-string v0, "frequency"

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mFrequencyPref:Landroidx/preference/Preference;

    const-string v0, "generation"

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mGenerationPref:Landroidx/preference/Preference;

    const-string v0, "protocol"

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mProtocolPref:Landroidx/preference/Preference;

    const-string v0, "modulation"

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mModulationPref:Landroidx/preference/Preference;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->updateView()V

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

    .line 66
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->registerCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;)V

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->updateView()V

    goto :goto_0

    .line 69
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepo:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController;->mConnectionInfoRepoCallback:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionL2PreferenceController$ConnectionInfoRepoCallback;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->unregisterCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
