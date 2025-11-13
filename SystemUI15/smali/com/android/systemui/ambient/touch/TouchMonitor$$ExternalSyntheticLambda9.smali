.class public final synthetic Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

.field public final synthetic f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

.field public final synthetic f$2:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/TouchMonitor;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda9;->f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    iput-object p3, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda9;->f$2:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda9;->f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda9;->f$2:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->-$$Nest$monRemoved(Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V

    iget-object v1, v1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mPredecessor:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-boolean p0, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mStopMonitoringPending:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/systemui/ambient/touch/TouchMonitor;->stopMonitoring(Z)V

    :cond_2
    return-void
.end method
