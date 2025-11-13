.class public final Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    iget-object p1, p2, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "passpoint"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "passpoint"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiPasspointPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSubscription()Z

    move-result p0

    return p0
.end method
