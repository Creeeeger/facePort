.class public Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiManageRouterPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final mIgnorableNetworkMasks:[I


# instance fields
.field private mCheckManageRouterTask:Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mGateway:Ljava/lang/String;

.field private mHttpResponse:I

.field private mManageRouterPref:Landroidx/preference/Preference;

.field private final mSAScreenId:Ljava/lang/String;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x2ba8c0

    aput v2, v0, v1

    .line 55
    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mIgnorableNetworkMasks:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mGateway:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 71
    const-class p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 73
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mSAScreenId:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->isSupportManageRouter()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dhcpInfo.gateway : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WifiManageRouterPrefCtrl"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget p2, p1, Landroid/net/DhcpInfo;->gateway:I

    if-eqz p2, :cond_0

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mGateway:Ljava/lang/String;

    .line 83
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mCheckManageRouterTask:Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;

    .line 84
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;->setListener(Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;)V

    .line 85
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mGateway:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mCheckManageRouterTask:Lcom/samsung/android/settings/wifi/details/CheckManageRouterTask;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-virtual {p0, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private isSetupWizard()Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isSupportManageRouter()Z
    .locals 8

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->isSetupWizard()Z

    move-result v0

    const-string v1, "WifiManageRouterPrefCtrl"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Go to Webpage: Setup Wizard"

    .line 113
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 117
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCarrierNetwork()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsLocked()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->canModifyNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 118
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsMobileHotspot()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 120
    sget-object v0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mIgnorableNetworkMasks:[I

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    if-eqz p0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    if-ne v6, v5, :cond_1

    const-string p0, "Go to Webpage: Masked Android Hotspot"

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v2
.end method

.method private isWifiNetworkConnected()Z
    .locals 2

    .line 167
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canModifyNetwork()Z
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 183
    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayPreference mHttpResponse is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mHttpResponse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManageRouterPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mManageRouterPref:Landroidx/preference/Preference;

    .line 96
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "manage_router"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 101
    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mHttpResponse:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->isWifiNetworkConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string p1, "WifiManageRouterPrefCtrl"

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v1, "1024"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mGateway:Ljava/lang/String;

    .line 152
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Go to Webpage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    const-string v1, "Go to Webpage: Activity not found"

    .line 155
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return v0
.end method

.method public onReceiveResponse(I)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gateway Http response - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManageRouterPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mHttpResponse:I

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mManageRouterPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x191

    if-ne p1, v1, :cond_1

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiManageRouterPreferenceController;->isWifiNetworkConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 140
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method
