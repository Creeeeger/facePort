.class public final Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/net/wifi/WifiManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mWifiState:I

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    new-instance p1, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/tiles/dialog/WifiStateWorker;->mWifiState:I

    :cond_2
    return-void
.end method
