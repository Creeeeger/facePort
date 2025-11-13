.class public Lcom/samsung/android/settings/wifi/WifiReset;
.super Ljava/lang/Object;
.source "WifiReset.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field private static final SUPPORT_COMCAST_WIFI:Z

.field private static final mIsAutoWifiEnabled:Z

.field private static final mIsNotificationMenuSupported:Z


# instance fields
.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/WifiReset;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 46
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    .line 47
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiReset;->SUPPORT_COMCAST_WIFI:Z

    .line 49
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableAutoWifi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsAutoWifiEnabled:Z

    .line 51
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportNotificationMenu"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiReset;->mIsNotificationMenuSupported:Z

    .line 124
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiReset$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/WifiReset$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiReset;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wifi"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "sem_wifi"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private static isPasspointDefaultOff()Z
    .locals 2

    .line 115
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getMenuStatusForPasspoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DEFAULT_OFF"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 7

    const-string v0, "WifiReset"

    const-string v1, "WifiReset - reset"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi"

    .line 73
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string v2, "sem_wifi"

    .line 74
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v2, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    .line 76
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiReset;->mIsNotificationMenuSupported:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "wifi_networks_available_notification_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "sem_wifi_ape_enabled"

    const/4 v4, 0x1

    .line 78
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiReset;->SUPPORT_COMCAST_WIFI:Z

    xor-int/2addr v2, v4

    const-string v5, "sem_wifi_network_rating_scorer_enabled"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    sget-object v2, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v5

    const-string v6, "sem_wifi_switch_to_better_wifi_enabled"

    if-ne v2, v5, :cond_1

    .line 81
    invoke-static {v0, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 83
    :cond_1
    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    :goto_1
    new-instance v2, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;-><init>(Landroid/content/Context;)V

    const-string v4, "auto_wifi"

    .line 88
    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiReset;->mIsAutoWifiEnabled:Z

    const-string v5, "sem_auto_wifi_control_enabled"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-string v4, "wifi_adps"

    .line 92
    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "wifi_adps_enable"

    .line 93
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiReset;->isPasspointDefaultOff()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiPasspointEnabled(Z)V

    const-string v0, "SettingsSCloudWifi"

    .line 108
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 109
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 110
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public networkReset(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiReset;->reset(Landroid/content/Context;)V

    .line 62
    new-instance p1, Lcom/samsung/android/settings/wifi/WifiReset$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiReset$1;-><init>(Lcom/samsung/android/settings/wifi/WifiReset;)V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
