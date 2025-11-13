.class Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;
.super Ljava/lang/Object;
.source "SCloudWifiDataManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 587
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_4

    const-string v5, "WifiSettings.SCloudMgr"

    if-eq v0, v2, :cond_0

    .line 616
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unhandled message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    const-string p1, "FAST_SYNC_FINISH"

    .line 602
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 607
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetmSamsungCloudRPCSetting(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 609
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetmSamsungCloudRPCSetting(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->close(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fputmSamsungCloudRPCSetting(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "Pending job is exist. Do not close."

    .line 604
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 589
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 591
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 592
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetmSamsungCloudRPCSetting(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    move-result-object p1

    if-nez p1, :cond_4

    .line 593
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$mbindSamsungCloudRPCSetting(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V

    goto :goto_1

    .line 597
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$misWifiSyncAvailable(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 598
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$mstartFastSync(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V

    .line 599
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$3;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    :goto_1
    return v1
.end method
