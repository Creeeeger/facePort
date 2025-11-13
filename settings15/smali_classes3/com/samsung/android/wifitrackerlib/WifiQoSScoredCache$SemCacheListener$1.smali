.class public final Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker$8;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker$8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker$8;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker$8;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$8;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleQosScoreCacheUpdated()V

    return-void
.end method
