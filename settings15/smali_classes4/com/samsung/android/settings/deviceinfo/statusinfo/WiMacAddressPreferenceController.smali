.class public final Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final CONNECTIVITY_INTENTS:[Ljava/lang/String;


# instance fields
.field public mCM:Landroid/net/ConnectivityManager;

.field public mWiMacPref:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v1, "android.net.wifi.STATE_CHANGE"

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wimax_mac_address"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;->mWiMacPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;->updateConnectivity()V

    return-void
.end method

.method public final getConnectivityIntents()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wimax_mac_address"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;->mCM:Landroid/net/ConnectivityManager;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateConnectivity()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;->mWiMacPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f142d54

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "net.wimax.mac.address"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/WiMacAddressPreferenceController;->mWiMacPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
