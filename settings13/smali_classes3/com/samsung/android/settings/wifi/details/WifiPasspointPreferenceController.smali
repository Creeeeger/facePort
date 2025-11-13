.class public Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiPasspointPreferenceController.java"


# instance fields
.field private final mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private mPasspointPref:Landroidx/preference/Preference;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    check-cast p2, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 40
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getPasspointConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->mPasspointPref:Landroidx/preference/Preference;

    .line 48
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "passpoint"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSubscription()Z

    move-result p0

    return p0
.end method
