.class public final Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method public static getWifiWarningIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.wifi.WifiWarning"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final isNeedToConfirmApDisable()Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_sharing_lite_popup_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiApEnabled()Z

    move-result v1

    const-string/jumbo v3, "wifiwarning"

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v1, v1

    if-le v1, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabledWithDualBand()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, " configured dualAp, but single softap interface is running"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v1

    const-string/jumbo v5, "statusbar"

    const-string v6, "extra_type"

    const-string/jumbo v7, "req_type"

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiApEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabledWithDualBand()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "vendor.wifiap.debug.BridgedApSta"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " supportBridgedApStaConcurrency() "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-nez v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_5
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->getWifiWarningIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v4

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_7
    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->getWifiWarningIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x5

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v4

    :cond_8
    return v2
.end method

.method public final isWifiApEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

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
