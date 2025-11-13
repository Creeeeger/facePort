.class Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;
.super Landroid/os/Handler;
.source "ConnectionInfoRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionInfoRepoHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;-><init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 612
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "ConnectionInfoRepo"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 645
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage undefined msg: msg.what = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const-string p1, "ConnectionInfoRepo: EVENT_GET_TCP_INFO_POLL"

    .line 634
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$mupdateTcpMonitorInfo(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)V

    .line 636
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmConnectionInfoUpdatedCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 637
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmConnectionInfoUpdatedCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;->tcpMonitorInfoUpdated()V

    :cond_1
    const-wide/16 v2, 0x3e8

    .line 639
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 642
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/net/wifi/WifiScanner$ScanData;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$mupdateConnectedBssidScanResult(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;[Landroid/net/wifi/WifiScanner$ScanData;)V

    goto :goto_0

    :cond_3
    const-string p1, "ConnectionInfoRepo: EVENT_GET_WIFI_INFO_POLL"

    .line 626
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateWifiInfo()V

    .line 628
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmConnectionInfoUpdatedCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 629
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmConnectionInfoUpdatedCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;->wifiInfoUpdated()V

    :cond_4
    const-wide/16 v2, 0xbb8

    .line 631
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 614
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_6

    .line 616
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmConnectionInfo(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    iput-boolean p1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    .line 617
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ConnectionInfoRepo: EVENT_NETWORK_STATE_CHANGED, mIsConnected = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmConnectionInfo(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfo;->mIsConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fputmIsValidCu(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;Z)V

    .line 620
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->updateAllConnectionInfo()V

    .line 621
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmConnectionInfoUpdatedCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 622
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->-$$Nest$fgetmConnectionInfoUpdatedCallback(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;)Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$InfoUpdatedCallback;->allConnectionInfoUpdated()V

    :cond_7
    :goto_0
    return-void
.end method

.method startPolling()V
    .locals 3

    const/4 v0, 0x2

    const-wide/16 v1, 0xbb8

    .line 601
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x4

    const-wide/16 v1, 0x3e8

    .line 602
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method stopPolling()V
    .locals 1

    const/4 v0, 0x2

    .line 606
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x4

    .line 607
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
