.class public final Lcom/android/wifitrackerlib/BaseWifiTracker$8;
.super Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$8;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-direct {p0, p2}, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final networkCacheUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$8;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleQosScoreCacheUpdated()V

    return-void
.end method
