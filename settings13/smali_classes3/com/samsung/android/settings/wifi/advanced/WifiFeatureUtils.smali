.class public Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;
.super Ljava/lang/Object;
.source "WifiFeatureUtils.java"


# instance fields
.field private final mFeaturesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->mFeaturesMap:Ljava/util/HashMap;

    .line 60
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getMenuStatusForPasspoint()Ljava/lang/String;

    move-result-object p0

    const-string v1, "sem_wifi"

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 65
    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isWifiSyncEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "wifi_cloud_sa"

    .line 64
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isWifiSyncEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "wifi_cloud_sync"

    .line 66
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_SECURE_SVC_INTEGRATION:Ljava/lang/String;

    const-string v5, "TencentSecurityWiFi"

    .line 69
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "tencent_wifi_security_detection"

    .line 68
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "wifi_network_diagnostics"

    .line 70
    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Wifi_SupportNotificationMenu"

    .line 73
    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 72
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "notify_open_networks"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-boolean v5, Lcom/android/settings/Utils;->isSupportMobileWips:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "MobileWIPS"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "MENU_OFF"

    if-nez v5, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v3

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "wifi_hs20_profile"

    .line 75
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v3

    goto :goto_4

    :cond_4
    move p0, v4

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v5, "wifi_hs20_list"

    .line 77
    invoke-virtual {v0, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    move p0, v3

    goto :goto_5

    :cond_5
    move p0, v4

    :goto_5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v5, "auto_wifi"

    invoke-virtual {v0, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v5, "SEC_FLOATING_FEATURE_WIFI_SUPPORT_ADPS"

    invoke-virtual {p0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v5, "wifi_adps"

    invoke-virtual {v0, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ape"

    .line 82
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedQoSProvider()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "network_scorer"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p1}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6

    move p0, v3

    goto :goto_6

    :cond_6
    move p0, v4

    :goto_6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "wifi_poor_network_detection"

    .line 84
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isAdvancedAutohotspotSupported()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_7

    :cond_7
    move v3, v4

    :goto_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "auto_connect_hotspot"

    .line 86
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->isSupported(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->mFeaturesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->mFeaturesMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
