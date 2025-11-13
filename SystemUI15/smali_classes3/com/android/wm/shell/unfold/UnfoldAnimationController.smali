.class public final Lcom/android/wm/shell/unfold/UnfoldAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;


# instance fields
.field public final mAnimators:Ljava/util/List;

.field public final mAnimatorsByTaskId:Landroid/util/SparseArray;

.field public final mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mIsInStageChange:Z

.field public final mTaskSurfaces:Landroid/util/SparseArray;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

.field public final mUnfoldTransitionHandler:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;Ljava/util/List;Ldagger/Lazy;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;",
            ">;",
            "Ldagger/Lazy;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    iput-object p5, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Ldagger/Lazy;

    iput-object p2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p6, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    sget-object p2, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$1;

    if-eq p3, p2, :cond_0

    new-instance p2, Lcom/android/wm/shell/unfold/UnfoldAnimationController$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/unfold/UnfoldAnimationController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onStateChangeFinished()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v4, v1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->resetAllSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {v4, v1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iput-boolean v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    return-void
.end method

.method public final onStateChangeProgress(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->hasActiveTasks()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    :cond_1
    invoke-interface {v2, p1, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->applyAnimationProgress(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_4
    return-void
.end method

.method public final onStateChangeStarted()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mUnfoldTransitionHandler:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->hasActiveTasks()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    :cond_1
    invoke-interface {v2, v0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v3, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :cond_4
    return-void
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskChanged(Landroid/app/TaskInfo;)V

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mIsInStageChange:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->resetSurface(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :goto_0
    invoke-interface {v0, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskVanished(Landroid/app/TaskInfo;)V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->isApplicableTask(Landroid/app/TaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mAnimatorsByTaskId:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->mTaskSurfaces:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-interface {v1, p1, p0}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onTaskAppeared(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method
