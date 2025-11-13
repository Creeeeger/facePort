.class public final Lcom/android/systemui/ambient/touch/TouchMonitor$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/touch/TouchMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$1;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroy$1()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$1;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor;->stopMonitoring(Z)V

    return-void
.end method

.method public final onPause$1()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$1;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor;->stopMonitoring(Z)V

    return-void
.end method

.method public final onResume$1()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$1;->this$0:Lcom/android/systemui/ambient/touch/TouchMonitor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/touch/TouchMonitor;->stopMonitoring(Z)V

    sget-object v1, Lcom/android/systemui/shared/Flags;->FEATURE_FLAGS:Lcom/android/systemui/shared/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/ambient/touch/TouchMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ambient/touch/TouchMonitor;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInputEventListener:Lcom/android/systemui/ambient/touch/TouchMonitor$3;

    iget-object v2, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mOnGestureListener:Lcom/android/systemui/ambient/touch/TouchMonitor$4;

    iget-object v3, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInputSessionFactory:Lcom/android/systemui/ambient/touch/dagger/InputSessionComponent$Factory;

    const-string v4, "dreamOverlay"

    invoke-interface {v3, v4, v1, v2, v0}, Lcom/android/systemui/ambient/touch/dagger/InputSessionComponent$Factory;->create(Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Z)Lcom/android/systemui/ambient/touch/dagger/InputSessionComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/ambient/touch/dagger/InputSessionComponent;->getInputSession()Lcom/android/systemui/ambient/touch/InputSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mCurrentInputSession:Lcom/android/systemui/ambient/touch/InputSession;

    return-void
.end method
