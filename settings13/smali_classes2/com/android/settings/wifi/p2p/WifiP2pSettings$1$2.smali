.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceInfoAvailable(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 232
    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfputmThisDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 233
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfgetmThisDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const-string v0, "WifiP2pSettings"

    if-nez p1, :cond_0

    const-string p1, "P2P Connected"

    .line 234
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mrequestGroupPeers(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfgetmThisDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string p1, "P2P Available"

    .line 237
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mrequestExternalPeers(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$sfgetmThisDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const-string p1, "P2P Unavailable"

    .line 240
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mfinishDueToDisabled(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    return-void

    .line 245
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
