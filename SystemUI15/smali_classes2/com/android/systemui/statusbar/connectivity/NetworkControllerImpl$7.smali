.class public final Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

.field public final synthetic val$enabled:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->val$enabled:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, [Ljava/lang/Void;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->val$enabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    iget-object v1, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_sharing_lite_popup_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiApEnabled()Z

    move-result v2

    const-string/jumbo v4, "wifiwarning"

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApBands()[I

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v2, v2

    if-le v2, v0, :cond_1

    iget-object v2, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabledWithDualBand()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, " configured dualAp, but single softap interface is running"

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move p1, v3

    goto/16 :goto_3

    :cond_1
    iget-object v2, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v2

    const/high16 v5, 0x14800000

    const-string v6, "com.samsung.android.settings.wifi.WifiWarning"

    const-string v7, "com.android.settings"

    const-string/jumbo v8, "statusbar"

    const-string v9, "extra_type"

    const-string v10, "req_type"

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiApEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    iget-object v2, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabledWithDualBand()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/samsung/android/wifi/SemWifiApCust;->DBG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "vendor.wifiap.debug.BridgedApSta"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, " supportBridgedApStaConcurrency() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    if-nez v2, :cond_7

    :cond_5
    iget-object v1, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    move p1, v0

    goto :goto_3

    :cond_7
    iget-object v2, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->isWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x5

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_1
    iget-object p1, p1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_3
    if-nez p1, :cond_a

    :cond_9
    move v3, v0

    :cond_a
    if-eqz v3, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->val$enabled:Z

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wifiap_wifi_tile_clicked"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
