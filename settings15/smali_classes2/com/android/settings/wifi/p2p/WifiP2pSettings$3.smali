.class public final Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-wide/32 v0, 0x1f400

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    const-string v0, "WifiP2pSettings"

    const-string v1, "mListen Default finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiP2pSettings"

    if-eqz v0, :cond_1

    const-string p1, "mListen Default canceled in timer"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mListenTimer:Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    :cond_1
    long-to-double p1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x405f000000000000L    # 124.0

    rem-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mListen Default set time: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->startListening(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_2
    :goto_0
    return-void
.end method
