.class public final synthetic Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

.field public final synthetic f$1:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iput-object p2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda0;->f$1:Landroidx/lifecycle/Lifecycle;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mLifecycleObserver:Lcom/android/wifitrackerlib/BaseWifiTracker$WifiTrackerLifecycleObserver;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
