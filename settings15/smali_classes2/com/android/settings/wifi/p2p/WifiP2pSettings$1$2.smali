.class public final Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# instance fields
.field public final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    return-void
.end method


# virtual methods
.method public final onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-object p1, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Device status : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const-string v1, "WifiP2pSettings"

    invoke-static {p1, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->updateSearchOff()V

    :goto_0
    return-void
.end method
