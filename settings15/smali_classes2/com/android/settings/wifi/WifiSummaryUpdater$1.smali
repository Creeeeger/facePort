.class public final Lcom/android/settings/wifi/WifiSummaryUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiSummaryUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater$1;->this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater$1;->this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater$1;->this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method
