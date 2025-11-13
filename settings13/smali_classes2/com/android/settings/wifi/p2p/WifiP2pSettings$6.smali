.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;
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

    .line 509
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfgetmThisDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfgetmThisDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$6$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$6;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
