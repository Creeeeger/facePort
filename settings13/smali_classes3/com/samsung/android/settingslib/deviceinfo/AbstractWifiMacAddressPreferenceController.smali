.class public abstract Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractWifiMacAddressPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field static final OFF:I = 0x0

.field static final ON:I = 0x1


# instance fields
.field private mWifiMacAddress:Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 46
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 59
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi_mac_address"

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;

    iput-object p1, p0, Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->updateConnectivity()V

    :cond_0
    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 0

    .line 85
    sget-object p0, Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_mac_address"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected updateConnectivity()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 94
    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;

    sget v0, Lcom/android/settingslib/R$string;->status_unavailable:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 101
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Lcom/samsung/android/settingslib/deviceinfo/CopyablePreference;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
