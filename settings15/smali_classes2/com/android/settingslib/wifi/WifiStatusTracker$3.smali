.class public final Lcom/android/settingslib/wifi/WifiStatusTracker$3;
.super Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$3;->this$0:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object p1, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
