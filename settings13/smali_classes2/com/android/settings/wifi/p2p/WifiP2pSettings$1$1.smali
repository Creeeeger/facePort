.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;


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

    .line 215
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkInfoAvailable(Landroid/net/NetworkInfo;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pConnected:Z

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsP2pConnected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-boolean v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsP2pConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiP2pSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$misP2pConnected(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mrequestGroupPeers(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p1, p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->-$$Nest$mrequestExternalPeers(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 223
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
