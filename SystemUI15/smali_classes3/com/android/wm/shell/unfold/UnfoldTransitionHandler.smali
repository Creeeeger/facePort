.class public final Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;


# instance fields
.field public mAnimationFinished:Z

.field public final mAnimators:Ljava/util/List;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public mTransition:Landroid/os/IBinder;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$1;

    const-string/jumbo v1, "progress"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$1;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;Lcom/android/wm/shell/unfold/animation/FullscreenUnfoldTaskAnimator;Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;Lcom/android/wm/shell/common/TransactionPool;Ljava/util/concurrent/Executor;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimationFinished:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    iput-object p2, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mUnfoldProgressProvider:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    iput-object p7, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p5, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p6, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p3, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;->NO_PROVIDER:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$1;

    if-eq p2, p3, :cond_0

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static shouldPlayUnfoldAnimation(Landroid/window/TransitionRequestInfo;)Z
    .locals 3

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->isPhysicalDisplayChanged()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p0, v0

    if-le v2, p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final finishTransitionIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {v1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->clearTasks()V

    invoke-interface {v1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->stop()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iput-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object v1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    return-void
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-static {p2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->shouldPlayUnfoldAnimation(Landroid/window/TransitionRequestInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 2

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/4 p4, 0x6

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p1

    const p4, 0x43900

    and-int/2addr p1, p4

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    move p4, p1

    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p4, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SHELL_TRANSITION:Z

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {p1, p3}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->onSplitScreenTransitionMerged(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p0, 0x0

    invoke-interface {p5, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final onFoldStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimationFinished:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->finishTransitionIfNeeded()V

    :cond_0
    return-void
.end method

.method public final onStateChangeFinished()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimationFinished:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->finishTransitionIfNeeded()V

    return-void
.end method

.method public final onStateChangeProgress(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 9

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v3, v4

    if-le v5, v3, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    if-eq p1, v0, :cond_5

    iput-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v4, -0x656edc718a8ecf1aL

    const/4 v6, 0x0

    const-string v7, "UnfoldTransitionHandler: take over startAnimation"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-static {p2, v1}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_3
    const/4 v3, 0x6

    if-ltz v0, :cond_8

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_7

    const/high16 v3, 0x1000000

    invoke-virtual {v4, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, -0x80000000

    invoke-virtual {v4, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    return v2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_a

    invoke-static {p2, v1}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_4
    if-ltz v0, :cond_a

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_9

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_9

    return v2

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mTransition:Landroid/os/IBinder;

    if-eq p1, v0, :cond_b

    return v2

    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimators:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;

    invoke-interface {p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->clearTasks()V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->hasActiveTasks()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1, p3}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p1, p4}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->prepareFinishTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-interface {p1}, Lcom/android/wm/shell/unfold/animation/UnfoldTaskAnimator;->start()V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object p5, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-boolean p1, p0, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mAnimationFinished:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->finishTransitionIfNeeded()V

    :cond_e
    return v1
.end method
