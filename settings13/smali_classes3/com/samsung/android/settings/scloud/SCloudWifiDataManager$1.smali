.class Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;
.super Ljava/lang/Object;
.source "SCloudWifiDataManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->bindSamsungCloudRPCSetting()V
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

    .line 539
    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()Ljava/lang/String;
    .locals 0

    const-string p0, "SYNC"

    return-object p0
.end method

.method public onBind(Z)V
    .locals 2

    const-string v0, "WifiSettings.SCloudMgr"

    if-eqz p1, :cond_0

    const-string p1, "bind success"

    .line 543
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-static {p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fgetsyncHandler(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "bind fail"

    .line 546
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$fputmSamsungCloudRPCSetting(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;)V

    .line 548
    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->-$$Nest$sfputsInstance(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V

    :goto_0
    return-void
.end method
