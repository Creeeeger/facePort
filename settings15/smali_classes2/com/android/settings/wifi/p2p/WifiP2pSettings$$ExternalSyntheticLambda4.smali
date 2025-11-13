.class public final synthetic Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    return-void
.end method


# virtual methods
.method public final onNetworkInfoAvailable(Landroid/net/NetworkInfo;)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInitialized:Z

    :goto_0
    return-void
.end method
