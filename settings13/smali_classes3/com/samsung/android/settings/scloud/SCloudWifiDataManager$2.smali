.class Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;
.super Ljava/lang/Object;
.source "SCloudWifiDataManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->startFastSync()V
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

    .line 560
    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 573
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onComplete rcode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rcode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rmsg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rmsg"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiSettings.SCloudMgr"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .locals 0

    const-string p0, "WifiSettings.SCloudMgr"

    const-string p1, "onProgress"

    .line 568
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    const-string p0, "WifiSettings.SCloudMgr"

    const-string p1, "start sync"

    .line 563
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
