.class Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "TabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "resultsUpdated"

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->-$$Nest$mscanResultUpdated(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;Ljava/util/List;)V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->-$$Nest$fgetmWaitingForScanResult(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->-$$Nest$fputmWaitingForScanResult(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;Z)V

    .line 85
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->-$$Nest$fgetmRefreshMenu(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->-$$Nest$fgetmProgressMenu(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method
