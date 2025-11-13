.class public Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;
.super Ljava/lang/Object;
.source "WifiWarningDialogController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "sem_wifi"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private collapsePanels()V
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method private static getWifiWarningIntent()Landroid/content/Intent;
    .locals 3

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.wifi.WifiWarning"

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14800000

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private isWifiApEnabled()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isWifiSharingEnabled()Z
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isNeedToConfirmApDisable()Z
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sharing_lite_popup_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiSharingEnabled()Z

    move-result v1

    const-string v3, "extra_type"

    const-string v4, "req_type"

    const/4 v5, 0x1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiApEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 29
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabledWithDualBand()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->collapsePanels()V

    .line 32
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->getWifiWarningIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v5

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->collapsePanels()V

    .line 43
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->getWifiWarningIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 45
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v5

    :cond_3
    return v2
.end method

.method public needToNotifyPasspointUpdate(Ljava/lang/String;)Z
    .locals 3

    .line 56
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->getWifiWarningIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "req_type"

    const/4 v2, 0x7

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "friendly_name"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method
