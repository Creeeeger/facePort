.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;
.super Ljava/lang/Object;
.source "WifiApConfigUpdater.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WifiApConfigUpdater"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConfigDialogCreate:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mNewSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mTempSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

.field private mWifiBigDataLogger:Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNewSoftApConfig(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mNewSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmOldSoftApConfig(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetWifiAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->resetWifiAp(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendConfigChangedBroadcastToSmartTethering(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->sendConfigChangedBroadcastToSmartTethering()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldConfigChangedBroadcastToBeSent(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->shouldConfigChangedBroadcastToBeSent(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateStatus(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->updateStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mTempSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mNewSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 49
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mConfigDialogCreate:Landroid/app/AlertDialog;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mContext:Landroid/content/Context;

    .line 56
    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mActivity:Landroid/app/Activity;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    .line 58
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiBigDataLogger:Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    .line 59
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mContext:Landroid/content/Context;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mContext:Landroid/content/Context;

    const-string p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private resetWifiAp(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 2

    .line 158
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string v1, "resetWifiAp()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 160
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->resetSoftAp(Landroid/os/Message;)V

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->updateStatus()V

    return-void
.end method

.method private sendConfigChangedBroadcastToSmartTethering()V
    .locals 2

    .line 174
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string v1, "sendConfigChangedBroadcastToSmartTethering() - Sending Broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private shouldConfigChangedBroadcastToBeSent(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 3

    .line 183
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string v1, "shouldConfigChangedBroadcastToBeSent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 189
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string p1, "shouldConfigChangedBroadcastToBeSent() - SSID changed."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 194
    :cond_2
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string p1, "shouldConfigChangedBroadcastToBeSent() - Password changed to OPEN."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 198
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 200
    :cond_4
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string p1, "shouldConfigChangedBroadcastToBeSent() - Password changed from OPEN."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 204
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p0

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p1

    if-eq p0, p1, :cond_6

    .line 205
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string p1, "shouldConfigChangedBroadcastToBeSent() - Hidden SSId changed."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    return v1

    .line 185
    :cond_7
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string p1, "shouldConfigChangedBroadcastToBeSent() - WifiConfiguration to be compared is NULL."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private updateStatus()V
    .locals 2

    .line 169
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string v1, "updateStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiApSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshPreferenceStates(Z)V

    return-void
.end method


# virtual methods
.method public updateConfigurationToFramework(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 3

    .line 64
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string v1, "updateConfigurationToFramework() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mNewSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 66
    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 67
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 68
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_save:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 69
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_config_summary:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 71
    sget v0, Lcom/android/settings/R$string;->common_continue:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mConfigDialogCreate:Landroid/app/AlertDialog;

    .line 104
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mOldSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mNewSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mNewSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->shouldConfigChangedBroadcastToBeSent(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->sendConfigChangedBroadcastToSmartTethering()V

    :cond_1
    const-wide/16 v0, 0x64

    .line 112
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error InterruptedException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 117
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->updateStatus()V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mNewSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->resetWifiAp(Landroid/net/wifi/SoftApConfiguration;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateConfigurationToFramework(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 126
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfigurationToFramework() - ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " securityTypeIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 128
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiBigDataLogger:Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    .line 130
    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiBigDataLogger:Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    const/4 p1, 0x2

    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_2

    if-eq p3, p1, :cond_1

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string v3, "updatePreviousConfigurationFromContentProvider() - KeyMgmt.SOFTAP_WPA3_SAE"

    invoke-static {p3, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v1, p2, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 146
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiBigDataLogger:Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    goto :goto_0

    .line 149
    :cond_1
    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string v2, "updatePreviousConfigurationFromContentProvider() - KeyMgmt.SOFTAP_WPA3_SAE_TRANSITION"

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v1, p2, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 151
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiBigDataLogger:Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    goto :goto_0

    .line 139
    :cond_2
    sget-object p3, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string v2, "updatePreviousConfigurationFromContentProvider() - KeyMgmt.WPA2_PSK"

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v1, p2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 141
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiBigDataLogger:Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    goto :goto_0

    .line 134
    :cond_3
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->TAG:Ljava/lang/String;

    const-string p3, "updatePreviousConfigurationFromContentProvider() - KeyMgmt.NONE"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 135
    invoke-virtual {v1, p2, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 136
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->mWifiBigDataLogger:Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;

    invoke-virtual {p2, p1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBigDataLogger;->insertMHSBigData(II)V

    .line 154
    :goto_0
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConfigUpdater;->updateConfigurationToFramework(Landroid/net/wifi/SoftApConfiguration;)V

    return-void
.end method
