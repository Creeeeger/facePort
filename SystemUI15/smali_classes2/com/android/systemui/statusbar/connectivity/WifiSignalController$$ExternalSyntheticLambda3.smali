.class public final synthetic Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/connectivity/WifiSignalController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/connectivity/WifiSignalController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/WifiSignalController;->copyWifiStates()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    return-void
.end method
