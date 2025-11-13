.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractWiMacPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mWiMacPref:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v3, "android.net.wifi.STATE_CHANGE"

    .line 23
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const-string p2, "connectivity"

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->mCM:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->mWiMacPref:Landroidx/preference/Preference;

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->updateConnectivity()V

    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 0

    .line 58
    sget-object p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wimax_mac_address"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->mCM:Landroid/net/ConnectivityManager;

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

.method protected updateConnectivity()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->mWiMacPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->status_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.wimax.mac.address"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/AbstractWiMacPreferenceController;->mWiMacPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
