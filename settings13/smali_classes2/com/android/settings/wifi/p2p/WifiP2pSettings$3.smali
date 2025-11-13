.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->requestExternalPeers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2

    .line 354
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 355
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 357
    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 358
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$fgetmChannel(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    return-void

    .line 362
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$msetScanTimerEnableScan(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    return-void
.end method
