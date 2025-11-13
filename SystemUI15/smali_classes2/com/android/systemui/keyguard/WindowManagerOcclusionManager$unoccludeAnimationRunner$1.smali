.class public final Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $executor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

.field public unoccludeAnimator:Landroid/animation/ValueAnimator;

.field public final unoccludeMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->unoccludeMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 4

    sget-object v0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->Companion:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unoccludeAnimationRunner#onAnimationCancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object v2, v2, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationCancelled$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationCancelled$1;-><init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Unocclude animation cancelled."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2

    sget-object p1, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->Companion:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->TAG:Ljava/lang/String;

    const-string/jumbo p3, "unoccludeAnimationRunner#onAnimationStart"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    new-instance p4, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$1;

    iget-object v0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    invoke-direct {p4, p5, v0}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$1;-><init>(Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V

    iput-object p4, p3, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->unoccludeAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iget-object p3, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object p3, p3, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->keyguardOcclusionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;

    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/RemoteAnimationTarget;

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p4, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    :cond_0
    move-object p4, p5

    :goto_0
    iget-object p3, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardOcclusionRepository;

    iget-object p3, p3, Lcom/android/systemui/keyguard/data/repository/KeyguardOcclusionRepository;->showWhenLockedActivityInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/ShowWhenLockedActivityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4}, Lcom/android/systemui/keyguard/data/repository/ShowWhenLockedActivityInfo;-><init>(ZLandroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p3, p5, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object p4, p3, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object p3, p3, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->keyguardViewController:Ldagger/Lazy;

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p3}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p3

    const/16 p5, 0x40

    invoke-static {p5, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p3

    const-string p5, "UNOCCLUDE"

    invoke-virtual {p3, p5}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    array-length p3, p2

    if-nez p3, :cond_2

    const-string p2, "No apps provided to unocclude runner; skipping animation and unoccluding."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->unoccludeAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_1
    return-void

    :cond_2
    aget-object p1, p2, v1

    iget-object p2, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object p2, p2, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->keyguardViewController:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p2

    new-instance p3, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p3, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->$executor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;

    iget-object p5, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    invoke-direct {p4, p0, p1, p5, p3}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1$onAnimationStart$2;-><init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$unoccludeAnimationRunner$1;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;Landroid/view/SyncRtSurfaceTransactionApplier;)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
