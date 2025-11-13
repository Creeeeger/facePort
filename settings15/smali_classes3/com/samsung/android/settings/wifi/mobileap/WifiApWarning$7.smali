.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 p1, 0x0

    const-string p2, "WifiApWarning"

    const-wide/16 v0, 0x64

    const-string v2, "TETH_010"

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkFirstTimeWiFiSharingDialogAndProceedFurthur()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    return-void

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Settings Global data limit : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v0, "You can\'\t set less than the amount of data you used. Please enter again."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Settings Global data limit : "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-wide v2, v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v2, v2

    double-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    :goto_2
    return-void

    :pswitch_3
    const-string p1, "8064"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    return-void

    :pswitch_4
    const-string p1, "8065"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_5
    const-string p1, "8066"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, -0x1

    const-string v2, "disconnect"

    invoke-static {v1, v2, v0, p2}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const/16 v0, 0x64

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    return-void

    :pswitch_6
    const-string p1, "8062"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_7
    const-string v0, "8063"

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AP sta disconnect"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "wifi_ap_wifi_sharing"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/wifi/SemWifiManager;->resetSoftAp(Landroid/os/Message;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_8
    const-string p1, "8035"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
