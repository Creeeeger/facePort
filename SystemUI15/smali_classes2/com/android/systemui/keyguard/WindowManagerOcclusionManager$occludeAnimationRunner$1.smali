.class public final Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 1

    sget-object p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->Companion:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->TAG:Ljava/lang/String;

    const-string v0, "occludeAnimationRunner#onAnimationCancelled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 7

    sget-object v0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->Companion:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->TAG:Ljava/lang/String;

    const-string v1, "occludeAnimationRunner#onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    new-instance v1, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1$onAnimationStart$1;

    iget-object v2, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    invoke-direct {v1, p5, v2}, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1$onAnimationStart$1;-><init>(Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->occludeAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iget-object p5, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object p5, p5, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->keyguardOcclusionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;

    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p5, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardOcclusionRepository;

    iget-object p5, p5, Lcom/android/systemui/keyguard/data/repository/KeyguardOcclusionRepository;->showWhenLockedActivityInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v2, Lcom/android/systemui/keyguard/data/repository/ShowWhenLockedActivityInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/keyguard/data/repository/ShowWhenLockedActivityInfo;-><init>(ZLandroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p5, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p5, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object v0, p5, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->activityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object p5, p5, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->occludeAnimationController:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationController$1;

    invoke-virtual {v0, p5}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->createRunner(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;

    iget-object v6, p0, Lcom/android/systemui/keyguard/WindowManagerOcclusionManager;->occludeAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Runner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
