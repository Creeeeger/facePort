.class public final Lcom/android/settingslib/wifi/WifiStatusTracker$3;
.super Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$3;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final networkCacheUpdated(Ljava/util/List;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$3;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    sget-object v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->SSDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$3;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object p1, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
