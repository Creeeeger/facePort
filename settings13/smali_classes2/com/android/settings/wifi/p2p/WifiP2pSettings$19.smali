.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getThisDeviceWithP2pMac()V
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

    .line 1379
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4

    const-string v0, "WifiP2pSettings"

    if-eqz p1, :cond_1

    .line 1383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onDeviceInfoAvailable: Mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mgetSecuredMacAddress(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfputmThisDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1385
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfgetmThisDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1386
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mfinishDueToDisabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_0

    .line 1388
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pEnabled:Z

    goto :goto_0

    :cond_1
    const-string p1, " onDeviceInfoAvailable: wifiP2pDevice is null"

    .line 1390
    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$19;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mfinishDueToDisabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    :goto_0
    return-void
.end method
