.class public final Lcom/android/systemui/unfold/UnfoldLatencyTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final contentResolver:Landroid/content/ContentResolver;

.field public final context:Landroid/content/Context;

.field public final deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final foldStateListener:Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;

.field public folded:Ljava/lang/Boolean;

.field public isTransitionEnabled:Ljava/lang/Boolean;

.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final transitionProgressProvider:Ljava/util/Optional;

.field public final uiBgExecutor:Ljava/util/concurrent/Executor;

.field public unfoldInProgress:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/util/LatencyTracker;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/Optional;Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/systemui/keyguard/ScreenLifecycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/LatencyTracker;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->deviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iput-object p3, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->transitionProgressProvider:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->uiBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->contentResolver:Landroid/content/ContentResolver;

    iput-object p7, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    new-instance p1, Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;

    invoke-direct {p1, p0, p5}, Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;-><init>(Lcom/android/systemui/unfold/UnfoldLatencyTracker;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->foldStateListener:Lcom/android/systemui/unfold/UnfoldLatencyTracker$FoldStateListener;

    return-void
.end method


# virtual methods
.method public final onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->folded:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->isTransitionEnabled:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->unfoldInProgress:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->unfoldInProgress:Z

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const-string p0, "Switch displays during unfold"

    invoke-static {p0, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTransitionStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->folded:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->isTransitionEnabled:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->unfoldInProgress:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->unfoldInProgress:Z

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLatencyTracker;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const-string p0, "Switch displays during unfold"

    invoke-static {p0, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
