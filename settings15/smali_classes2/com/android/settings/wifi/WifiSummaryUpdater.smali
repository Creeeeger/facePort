.class public final Lcom/android/settings/wifi/WifiSummaryUpdater;
.super Lcom/android/settings/widget/SummaryUpdater;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public final mReceiver:Lcom/android/settings/wifi/WifiSummaryUpdater$1;

.field public final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSummaryUpdater;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/wifi/WifiStatusTracker;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/android/settingslib/wifi/WifiStatusTracker;

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/net/wifi/WifiManager;

    const-class p2, Landroid/net/NetworkScoreManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/net/NetworkScoreManager;

    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/net/ConnectivityManager;

    new-instance v5, Lcom/android/settings/wifi/WifiSummaryUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSummaryUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/WifiSummaryUpdater;)V

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    :goto_0
    iput-object p3, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    new-instance p1, Lcom/android/settings/wifi/WifiSummaryUpdater$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiSummaryUpdater$1;-><init>(Lcom/android/settings/wifi/WifiSummaryUpdater;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mReceiver:Lcom/android/settings/wifi/WifiSummaryUpdater$1;

    return-void
.end method


# virtual methods
.method public final getSummary()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    const v0, 0x7f142e1e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    const v0, 0x7f140d1f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f141ca2

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final register(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mReceiver:Lcom/android/settings/wifi/WifiSummaryUpdater$1;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->fetchInitialState()V

    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/wifi/WifiSummaryUpdater;->INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setListening(Z)V

    return-void
.end method
