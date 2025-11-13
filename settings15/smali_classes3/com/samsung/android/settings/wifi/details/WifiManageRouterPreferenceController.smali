.class public final Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final mIgnorableNetworkMasks:[I


# instance fields
.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mGateway:Ljava/lang/String;

.field public mHttpResponse:I

.field public mManageRouterPref:Landroidx/preference/Preference;

.field public final mSAScreenId:Ljava/lang/String;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x2ba8c0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mIgnorableNetworkMasks:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mGateway:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string p2, "WIFI_106"

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mSAScreenId:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v0, "WifiManageRouterPrefCtrl"

    if-eqz p2, :cond_0

    const-string p0, "Go to Webpage: Setup Wizard"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    iget-object p2, p1, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v1, p2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-nez v1, :cond_4

    iget-boolean v1, p2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isLocked:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean p2, p2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCaptivePortal:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsMobileHotspot()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mIgnorableNetworkMasks:[I

    const/4 v1, 0x0

    aget p2, p2, v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    const v2, 0xffffff

    and-int/2addr p1, v2

    if-ne p1, p2, :cond_2

    const-string p0, "Go to Webpage: Masked Android Hotspot"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "dhcpInfo.gateway : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {p2, p3, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p2, p1, Landroid/net/DhcpInfo;->gateway:I

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "http://"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mGateway:Ljava/lang/String;

    :cond_3
    new-instance p1, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;

    invoke-direct {p1}, Landroid/os/AsyncTask;-><init>()V

    iput v1, p1, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->mCallback:Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mGateway:Ljava/lang/String;

    if-eqz p0, :cond_4

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "displayPreference mHttpResponse is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mHttpResponse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManageRouterPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "manage_router"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mManageRouterPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "manage_router"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mHttpResponse:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string p1, "WifiManageRouterPrefCtrl"

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "1024"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mGateway:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Go to Webpage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :goto_1
    const-string v1, "Go to Webpage: Activity not found"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return v0
.end method
