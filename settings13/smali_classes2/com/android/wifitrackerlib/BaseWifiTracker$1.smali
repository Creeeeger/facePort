.class Lcom/android/wifitrackerlib/BaseWifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/BaseWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmTag(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    const/4 v0, 0x1

    const-string/jumbo v1, "wifi_state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fputmWifiState(Lcom/android/wifitrackerlib/BaseWifiTracker;I)V

    .line 115
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmWifiState(Lcom/android/wifitrackerlib/BaseWifiTracker;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 116
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmScanner(Lcom/android/wifitrackerlib/BaseWifiTracker;)Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->-$$Nest$mstart(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmScanner(Lcom/android/wifitrackerlib/BaseWifiTracker;)Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->-$$Nest$mstop(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$mnotifyOnWifiStateChanged(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    .line 121
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleWifiStateChangedAction()V

    goto/16 :goto_1

    :cond_2
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-boolean v0, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoringUiEnabled:Z

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mQoSScoredCache:Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;

    iget-object p1, p1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda0;-><init>()V

    .line 127
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/wifitrackerlib/BaseWifiTracker$1$$ExternalSyntheticLambda1;-><init>()V

    .line 128
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 129
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 125
    invoke-virtual {v0, p1}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;->requestScoresForBssid(Ljava/util/Collection;)Ljava/util/Set;

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleScanResultsAvailableAction(Landroid/content/Intent;)V

    .line 134
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->semNotifyScanStateChanged(I)V

    goto :goto_1

    :cond_4
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleNetworkStateChangedAction(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 141
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleRssiChangedAction()V

    goto :goto_1

    :cond_7
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 143
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    const/4 p1, -0x1

    const-string/jumbo v0, "subscription"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleDefaultSubscriptionChanged(I)V

    :cond_8
    :goto_1
    return-void
.end method
