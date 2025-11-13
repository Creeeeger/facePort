.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$7;

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$7;->val$finalPercentageDataLimitUsedForToday:I

    const/16 p1, 0x64

    const-string p2, "TETH_013"

    if-lt p0, p1, :cond_0

    const-string p0, "8077"

    invoke-static {p2, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "8076"

    invoke-static {p2, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "8081"

    const-wide/16 v3, 0x0

    const-string v5, "8082"

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v6

    cmpl-double p2, v6, v3

    const-wide/16 v3, 0x1

    const-string v1, "TETH_013"

    if-lez p2, :cond_1

    invoke-static {v3, v4, v1, v5, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v3, v4, v1, v2, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitDialog;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v2

    cmpg-double p2, v0, v2

    if-gez p2, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error Settings Global data limit : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f143300

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Settings Global data limit : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Landroid/content/Context;

    move-result-object p0

    iget-wide p1, p1, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double p1, p1

    double-to-long p1, p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V

    goto :goto_2

    :cond_3
    const/4 p1, -0x2

    const-wide/16 v6, 0x0

    const-string v1, "TETH_014"

    if-ne p2, p1, :cond_4

    const-wide/16 p1, 0x2

    invoke-static {p1, p2, v1, v5, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->setWifiApActiveSessionDataLimit(Landroid/content/Context;J)V

    goto :goto_2

    :cond_4
    const/4 p1, -0x3

    if-ne p2, p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide p0

    cmpl-double p0, p0, v3

    if-lez p0, :cond_5

    invoke-static {v6, v7, v1, v5, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {v6, v7, v1, v2, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Lock network dialog Lock button clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const-string p2, "TETH_013"

    const-string v0, "8099"

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, p2, v0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    const-string/jumbo p1, "setHotspotNetworkLocked : true"

    const-string p2, "WifiApFrameworkUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setSmartMHSLocked(I)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
