.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;
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

    .line 489
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 494
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfgetmIdleStartCnt()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmAvailablePeers(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIdleTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 496
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mhideProgressBar(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mcancelFullScan(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmNoDevicesPreference(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fputmNoDevicesPreference(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroidx/preference/Preference;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$misP2pConnected(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 501
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$maddNoDeviceLayout(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_0

    .line 504
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mtriggerFullScan(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
