.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;
.super Landroid/os/CountDownTimer;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;JJ)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "WifiP2pSettings"

    const-string v1, "mListen Offloading finished"

    .line 576
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmSemWifiP2pManager(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmSemWifiP2pManager(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setListenOffloading(IIII)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7

    .line 563
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmSemWifiP2pManager(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmPowerManager(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    const-string v1, "WifiP2pSettings"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string p1, "mListen Offloading canceled in timer"

    .line 565
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmListenTimer(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 567
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmSemWifiP2pManager(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setListenOffloading(IIII)V

    goto :goto_0

    :cond_0
    long-to-double p1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v3

    .line 568
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x403f000000000000L    # 31.0

    rem-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_1

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListen Offloading set time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmSemWifiP2pManager(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    move-result-object p0

    const/16 p1, 0x1f4

    const/16 p2, 0x1388

    const/4 v0, 0x6

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setListenOffloading(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
