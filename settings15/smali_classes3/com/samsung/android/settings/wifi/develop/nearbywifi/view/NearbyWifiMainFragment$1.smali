.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo p1, "resultsUpdated"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->scanResultUpdated$1(Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;

    iget-boolean p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWaitingForScanResult:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mWaitingForScanResult:Z

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mRefreshMenu:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiMainFragment;->mProgressMenu:Landroid/view/MenuItem;

    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method
