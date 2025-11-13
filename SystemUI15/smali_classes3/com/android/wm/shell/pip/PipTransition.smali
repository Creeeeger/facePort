.class public final Lcom/android/wm/shell/pip/PipTransition;
.super Lcom/android/wm/shell/pip/PipTransitionController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

.field public mEndFixedRotation:I

.field public mEnterAnimationType:I

.field public final mEnterExitAnimationDuration:I

.field public final mExitDestinationBounds:Landroid/graphics/Rect;

.field public mExitTransition:Landroid/os/IBinder;

.field public mExitTransitionType:I

.field public mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mFixedRotationState:I

.field public mHasFadeOut:Z

.field public final mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

.field public mInEnterPipFromSplit:Z

.field public mIsDisplayChangeInExiting:Z

.field public mLeftoverTransitionInfo:Landroid/window/TransitionInfo;

.field public mMoveToBackTransition:Landroid/os/IBinder;

.field public final mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

.field public mRequestedEnterTask:Landroid/window/WindowContainerToken;

.field public mRequestedEnterTransition:Landroid/os/IBinder;

.field public final mSplitScreenOptional:Ljava/util/Optional;

.field public mStartTransactionForRemote:Landroid/view/SurfaceControl$Transaction;

.field public final mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

.field public final mTransactionConsumer:Lcom/android/wm/shell/pip/PipTransition$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/common/pip/PipMenuController;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/transition/HomeTransitionObserver;Ljava/util/Optional;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/pip/PipBoundsState;",
            "Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            "Lcom/android/wm/shell/common/pip/PipMenuController;",
            "Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            "Lcom/android/wm/shell/transition/HomeTransitionObserver;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTransitionController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipMenuController;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;)V

    const/4 v0, 0x0

    iput v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    iput v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    new-instance v0, Lcom/android/wm/shell/pip/PipTransition$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipTransition$1;-><init>(Lcom/android/wm/shell/pip/PipTransition;)V

    iput-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipTransition$1;

    move-object v0, p1

    iput-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mContext:Landroid/content/Context;

    move-object v1, p7

    iput-object v1, v7, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    move-object v1, p6

    iput-object v1, v7, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    move-object/from16 v1, p10

    iput-object v1, v7, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    move-object/from16 v0, p11

    iput-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-object/from16 v0, p12

    iput-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    move-object/from16 v0, p13

    iput-object v0, v7, Lcom/android/wm/shell/pip/PipTransition;->mSplitScreenOptional:Ljava/util/Optional;

    return-void
.end method

.method public static getPipChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTask:Landroid/window/WindowContainerToken;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, p1, p0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called PiP augmentRequest when request has no PiP"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final callFinishCallback(Landroid/window/WindowContainerTransaction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/wm/shell/pip/PipTransition;->mInEnterPipFromSplit:Z

    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/wm/shell/pip/PipTransition;->mInEnterPipFromSplit:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFinishEnterPipFromSplit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PipTransition"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mLeftoverTransitionInfo:Landroid/window/TransitionInfo;

    move-object p1, v1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mStartTransactionForRemote:Landroid/view/SurfaceControl$Transaction;

    :cond_2
    invoke-interface {v0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipTransition"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentPipTaskToken="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mFinishCallback="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final end()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTransition;->end(Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;)V

    return-void
.end method

.method public final end(Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;->run()V

    :cond_1
    return-void
.end method

.method public final fadeEnteredPipIfNeed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    if-eqz v0, :cond_0

    new-instance p1, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/PipTransition;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/transition/Transitions;->runOnIdle(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransition;->fadeExistingPip$1(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final fadeExistingPip$1(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    if-eqz p1, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    new-instance v0, Lcom/android/wm/shell/pip/PipTransition$3;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/PipTransition$3;-><init>(Lcom/android/wm/shell/pip/PipTransition;Z)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iput-object v0, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    iget v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    return-void

    :cond_3
    :goto_2
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p1, 0x3

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "PipTransition"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0x65c23deee61dc3e5L

    const/4 v3, 0x0

    const-string v4, "%s: Invalid leash on fadeExistingPip: %s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final forceFinishTransition(Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;->run()V

    :cond_1
    return-void
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 8

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "PipTransition"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, 0x5a6b684ffd43e61L

    const/4 v5, 0x0

    const-string v6, "%s: handle PiP enter request"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/pip/PipTransition;->augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V

    return-object v0

    :cond_2
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/4 v2, 0x4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v6, 0x0

    if-ne v0, v2, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget-boolean p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez p2, :cond_3

    const-string p0, "[PipTaskOrganizer] abort handle TRANSIT_TO_BACK, triggerTask is not visible"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mMoveToBackTransition:Landroid/os/IBinder;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0

    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result p1

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result p2

    if-eq p1, p2, :cond_5

    iget p1, v5, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-ne p1, v4, :cond_5

    iput-boolean v3, p0, Lcom/android/wm/shell/pip/PipTransition;->mIsDisplayChangeInExiting:Z

    :cond_5
    return-object v6
.end method

.method public final handleRotateDisplay(IILandroid/window/WindowContainerTransaction;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->rotateTo(I)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTask:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, p0, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z
    .locals 2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget p0, p0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-eqz p0, :cond_5

    :cond_0
    const/16 p0, 0xa

    const/4 v1, 0x1

    if-eq p2, p0, :cond_4

    if-eq p2, v1, :cond_4

    const/4 p0, 0x3

    if-ne p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x6

    if-ne p2, p0, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->isEnteringPinnedMode()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Found new PIP in transition with mis-matched type="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string p2, "PipTransition"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnteringPip(Landroid/window/TransitionInfo;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/pip/PipTransition;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransition;->end(Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;)V

    return-void
.end method

.method public final onFinishResize(Landroid/app/TaskInfo;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    sget v4, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[PipTransition] onFinishResize dest="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " direction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PipTaskOrganizer"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    :cond_0
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v6, :cond_a

    :cond_1
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v6, v6, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/4 v9, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v9

    goto :goto_0

    :cond_2
    move v10, v7

    :goto_0
    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v11

    iget-object v12, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v13, v0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    const/4 v14, 0x2

    if-eqz v11, :cond_4

    iget v5, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-eq v5, v14, :cond_3

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    move-object v11, v8

    goto/16 :goto_2

    :cond_4
    new-instance v11, Landroid/window/WindowContainerTransaction;

    invoke-direct {v11}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v5, v7}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v5, v1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v5, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v5, v12, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getEndValue()Ljava/lang/Object;

    move-result-object v5

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v5, v5, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v15, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda0;

    invoke-direct {v15, v0}, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTransition;)V

    invoke-virtual {v3, v5, v15}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_5
    iget-object v5, v1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v5, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_6
    :goto_1
    if-eqz v10, :cond_7

    invoke-virtual {v13, v2, v3, v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v13, v2, v3, v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v13, v6, v9, v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v9, v5, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mAppBounds:Landroid/graphics/Rect;

    iget-object v5, v5, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v9, v2}, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->getOverlaySize(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    sub-int/2addr v15, v9

    div-int/2addr v15, v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    sub-int v16, v16, v9

    div-int/lit8 v9, v16, 0x2

    invoke-virtual {v5, v15, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v9, v9, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v13, v5, v3, v9}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_7
    iget-object v5, v1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v5, v3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    if-eqz v4, :cond_9

    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-ne v3, v14, :cond_9

    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    if-eq v3, v1, :cond_9

    if-eqz v10, :cond_9

    iget-object v3, v12, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    invoke-static {v5, v4, v9, v1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getEndValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v9, 0x3

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_8

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v3, "PipTransition"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v19

    const-wide v15, -0x28fd51c51158c376L    # -1.4039089093577247E111

    const/16 v17, 0x0

    const-string v18, "%s: Destination bounds were changed during animation"

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    invoke-static {v5, v4, v3, v1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v13, v5, v1, v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_9
    iput-object v8, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v11}, Lcom/android/wm/shell/pip/PipTransition;->callFinishCallback(Landroid/window/WindowContainerTransaction;)V

    :cond_a
    iput v7, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    invoke-interface {v0, v2, v8, v8}, Lcom/android/wm/shell/common/pip/PipMenuController;->movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-interface {v0, v2}, Lcom/android/wm/shell/common/pip/PipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onFixedRotationFinished()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTransition;->fadeEnteredPipIfNeed(Z)V

    return-void
.end method

.method public final onFixedRotationStarted()V
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipTransition;->fadeEnteredPipIfNeed(Z)V

    return-void
.end method

.method public final onInit()V
    .locals 1

    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    :cond_0
    return-void
.end method

.method public final onStartEnterPipFromSplit(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mInEnterPipFromSplit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mInEnterPipFromSplit:Z

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTransition;->mLeftoverTransitionInfo:Landroid/window/TransitionInfo;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onStartEnterPipFromSplit: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PipTransition"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 10

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v0, p1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v3, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_5

    if-eqz p2, :cond_3

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p2, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v2, p3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v0, p3}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(ILandroid/window/WindowContainerTransaction;Z)V

    goto :goto_1

    :cond_3
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransitionType:I

    const/16 v0, 0x3eb

    if-ne p2, v0, :cond_4

    invoke-virtual {p1, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    goto :goto_1

    :cond_4
    iget-object v4, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    invoke-direct {v7, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/pip/PipTransition;->startExpandAnimation(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p1, :cond_6

    iput p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransitionType:I

    :cond_6
    return-void
.end method

.method public final removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V
    .locals 6

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "info.getChanges is empty info="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " callers="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PipTaskOrganizer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransition;->findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x3f108f0221ed33adL    # 6.31661464300509E-5

    const/4 v3, 0x0

    const-string/jumbo v4, "removePipImmediately is called without pip change"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final setEnterAnimationType(I)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    return-void
.end method

.method public final setStartTransactionForRemote(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mStartTransactionForRemote:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 41

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v8, p5

    const/4 v11, -0x1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    const-string v7, "PipTransition"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    if-ne v1, v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleKeyguardTransitionIfNeeded: force consume, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v0, v13, v14}, Lcom/android/wm/shell/pip/PipTransition;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    return v12

    :cond_0
    invoke-virtual {v9, v10}, Lcom/android/wm/shell/pip/PipTransition;->findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    invoke-static {v10, v13}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_0
    const/4 v5, 0x0

    if-ltz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    move-result v3

    if-eq v3, v11, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v11

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_1
    iget v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    const/4 v4, 0x2

    const/4 v3, 0x3

    if-ne v1, v4, :cond_4

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_3

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v21

    const-wide v17, 0x6567f8ad98103869L    # 3.108427895947775E180

    const/16 v19, 0x0

    const-string v20, "%s: startAnimation() should start with clear fixed rotation state"

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iput v12, v9, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    :cond_4
    if-eqz v2, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    iget v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    :goto_2
    iput v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-ne v1, v4, :cond_6

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    move-result v1

    goto :goto_3

    :cond_6
    move v1, v11

    :goto_3
    iput v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    iget-object v2, v9, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v11, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v2, :cond_7

    iget-object v2, v9, Lcom/android/wm/shell/pip/PipTransition;->mMoveToBackTransition:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move v12, v3

    move-object v2, v6

    const/4 v0, 0x0

    move v6, v4

    goto/16 :goto_1b

    :cond_8
    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    if-ne v0, v1, :cond_9

    iput-object v5, v9, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    iput-object v5, v9, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTask:Landroid/window/WindowContainerToken;

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    if-eq v1, v4, :cond_a

    invoke-virtual {v9, v10}, Lcom/android/wm/shell/pip/PipTransition;->isEnteringPip(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "skip resetPrevPip"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object v12, v5

    move-object/from16 v21, v6

    :cond_b
    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v15, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v12, v1

    move-object/from16 v1, p3

    move-object/from16 v26, v2

    move/from16 v5, v23

    move-object/from16 v21, v6

    move/from16 v6, v24

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {v15, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget v1, v12, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, v12, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v15, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-boolean v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    if-eqz v1, :cond_e

    invoke-virtual/range {v21 .. v21}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    invoke-virtual {v15, v2, v13}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_e
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    const/4 v12, 0x0

    iput-object v12, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v3, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-ne v3, v2, :cond_b

    invoke-virtual/range {v21 .. v21}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    goto :goto_4

    :goto_5
    invoke-static {v10, v1}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_6
    if-ltz v2, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/window/TransitionInfo$Change;

    const/16 v1, 0x20

    invoke-virtual {v5, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    const/4 v1, -0x1

    add-int/2addr v2, v1

    goto :goto_6

    :cond_10
    move-object v5, v12

    :goto_7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_15

    iget-boolean v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mIsDisplayChangeInExiting:Z

    if-eqz v1, :cond_15

    if-eqz v5, :cond_15

    const/4 v1, 0x1

    invoke-static {v10, v1}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_8
    if-ltz v2, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_11

    goto :goto_b

    :cond_11
    :goto_9
    const/4 v1, -0x1

    goto :goto_a

    :cond_12
    const/4 v6, 0x2

    goto :goto_9

    :goto_a
    add-int/2addr v2, v1

    goto :goto_8

    :cond_13
    const/4 v6, 0x2

    move-object v5, v12

    :goto_b
    if-eqz v5, :cond_14

    const-string/jumbo v1, "reset Pip leash crop in DisplayChange transition."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v15, v1, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v14, v1, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_14
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mIsDisplayChangeInExiting:Z

    goto :goto_c

    :cond_15
    const/4 v6, 0x2

    :goto_c
    invoke-virtual {v9, v10}, Lcom/android/wm/shell/pip/PipTransition;->isEnteringPip(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-nez v1, :cond_1a

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/shared/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_e

    :cond_16
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/pip/PipTransition;->getPipChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object v11

    if-nez v11, :cond_17

    goto :goto_e

    :cond_17
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_18

    sget-object v26, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v31

    const/16 v29, 0x0

    const-string v30, "%s: handle entering PiP with display change"

    const-wide v27, -0x132e75876ab3cfbfL    # -1.5117112236656406E216

    invoke-static/range {v26 .. v31}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_18
    iget-object v9, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_19

    const/4 v1, 0x1

    invoke-static {v10, v2, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v2

    goto :goto_d

    :cond_19
    move-object v2, v10

    :goto_d
    const/16 v1, 0xb

    invoke-virtual {v9, v0, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v12

    iget-object v0, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v6, v12, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    new-instance v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    const/4 v0, 0x5

    invoke-direct {v13, v9, v12, v8, v0}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    iget-object v1, v12, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    iget-object v6, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    const/4 v7, 0x0

    iget-object v0, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v0

    iput-object v0, v12, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    new-instance v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v9, v13}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v11, v15, v0, v2}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v0, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    iget-object v0, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v0, v10, v15, v14}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return v3

    :cond_1a
    :goto_e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v1, :cond_27

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/pip/PipTransition;->getPipChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/shared/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_27

    iget v2, v9, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-nez v2, :cond_27

    iget-object v2, v9, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget-boolean v2, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-nez v2, :cond_1b

    goto/16 :goto_13

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v12

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eq v1, v3, :cond_1c

    if-nez v4, :cond_1d

    :cond_1c
    const/4 v12, 0x3

    goto :goto_10

    :cond_1d
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    if-nez v5, :cond_20

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    const/4 v13, 0x1

    const/4 v12, 0x3

    if-eq v11, v13, :cond_1e

    if-ne v11, v12, :cond_21

    :cond_1e
    if-ne v4, v13, :cond_21

    move-object v5, v3

    :cond_1f
    :goto_10
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_20
    const/4 v12, 0x3

    :cond_21
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-eq v11, v6, :cond_22

    const/4 v13, 0x4

    if-ne v11, v13, :cond_1f

    :cond_22
    if-ne v4, v6, :cond_1f

    goto :goto_11

    :cond_23
    const/4 v12, 0x3

    const/4 v3, 0x0

    :goto_11
    if-eqz v5, :cond_27

    if-nez v3, :cond_24

    goto/16 :goto_13

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "handleEnteringPipWithRemoteTransition: pipChange="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", opening="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", closing="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v3

    invoke-virtual {v2, v0, v12}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v4

    iput v6, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object v5, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    const/4 v5, 0x0

    invoke-direct {v6, v2, v4, v8, v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v9, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v9}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v11, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v11, v15}, Lcom/android/wm/shell/pip/PipTransitionController;->setStartTransactionForRemote(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v11, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    new-instance v13, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda5;

    invoke-direct {v13, v5, v2, v6}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v1, v7, v8, v13}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v5, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v5}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    iget-object v5, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v5, v10, v9, v14}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v5, 0x1

    invoke-static {v10, v12, v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "animateEnteringPipWithRemoteTransition: pipChange="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remote="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "DefaultMixedHandler"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    iput-object v2, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v5, v2, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v9, ", reason=enter_pip_remote"

    const-string v10, "RemoteTransitionHandler"

    if-eqz v5, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestRemoteTransition: exist "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_25
    iget-object v5, v2, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->mRequestedRemotes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "requestRemoteTransition: "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    iget-object v1, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v0, v2

    move-object v2, v7

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "animateEnteringPipWithRemoteTransition: failed to start remote!"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :cond_26
    const/4 v0, 0x1

    return v0

    :cond_27
    :goto_13
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/pip/PipTransition;->getPipChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v2, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;

    invoke-direct {v2, v10}, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;-><init>(Landroid/window/TransitionInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_14
    if-ltz v1, :cond_2b

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    if-ne v2, v0, :cond_29

    :cond_28
    :goto_15
    const/4 v2, -0x1

    goto :goto_16

    :cond_29
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_15

    :cond_2a
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_15

    :goto_16
    add-int/2addr v1, v2

    goto :goto_14

    :cond_2b
    invoke-virtual {v9, v0, v15, v14, v8}, Lcom/android/wm/shell/pip/PipTransition;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    const/4 v0, 0x1

    return v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to start PiP animation without a pipparticipant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move-object/from16 v2, v21

    const/4 v0, 0x1

    if-eqz v2, :cond_2e

    invoke-virtual {v9, v2, v15, v14}, Lcom/android/wm/shell/pip/PipTransition;->updatePipForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_2e
    invoke-static {v10, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_17
    if-ltz v1, :cond_31

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_18

    :cond_2f
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v11, Lcom/android/wm/shell/common/pip/PipBoundsState;->mLastPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x1

    goto :goto_19

    :cond_30
    const/4 v3, 0x0

    :goto_19
    if-nez v2, :cond_32

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    if-ne v0, v6, :cond_32

    if-eqz v3, :cond_32

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setLastPipComponentName(Landroid/content/ComponentName;)V

    :cond_31
    const/4 v0, 0x0

    goto :goto_1a

    :cond_32
    const/4 v0, -0x1

    add-int/2addr v1, v0

    goto :goto_17

    :goto_1a
    return v0

    :goto_1b
    iget-object v3, v9, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v3, 0x0

    iput-object v3, v9, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v4, :cond_33

    iput v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mExitTransitionType:I

    :cond_33
    iput-object v3, v9, Lcom/android/wm/shell/pip/PipTransition;->mMoveToBackTransition:Landroid/os/IBinder;

    iput-boolean v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-nez v0, :cond_4c

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    :goto_1c
    move-object v13, v0

    goto :goto_1d

    :cond_34
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_1c

    :goto_1d
    if-eqz v13, :cond_4b

    const/4 v0, 0x4

    if-eq v1, v0, :cond_4a

    packed-switch v1, :pswitch_data_0

    if-eqz v4, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startAnimation: mExitTransition with unexpected transit type="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pipTaskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v10, v15, v8, v13}, Lcom/android/wm/shell/pip/PipTransition;->removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V

    :goto_1e
    const/4 v0, 0x0

    const/4 v11, 0x1

    goto/16 :goto_34

    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mExitTransition with unexpected transit type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v2, v13

    move-object v1, v15

    const/4 v0, 0x0

    const/4 v11, 0x1

    goto/16 :goto_33

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_1f
    if-ltz v1, :cond_38

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_36

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    if-eqz v3, :cond_36

    const/4 v0, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_21

    :cond_36
    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-nez v2, :cond_37

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v15, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v3, v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v3, v2, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :goto_20
    const/4 v0, -0x1

    goto :goto_21

    :cond_37
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_20

    :goto_21
    add-int/2addr v1, v0

    goto :goto_1f

    :cond_38
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0, v13}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    goto/16 :goto_1e

    :pswitch_2
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    const-string v5, "PipTaskOrganizer"

    if-nez v0, :cond_39

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string v0, "[PipTransition] There is no existing PiP Task for TRANSIT_EXIT_PIP"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_3b

    sget-object v30, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v35

    const/16 v33, 0x0

    const-string v34, "%s: There is no existing PiP Task for TRANSIT_EXIT_PIP"

    const-wide v31, 0x63a390cf47863660L    # 9.451529772369541E171

    invoke-static/range {v30 .. v35}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23

    :cond_39
    if-nez v2, :cond_3b

    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_22
    if-ltz v1, :cond_3b

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    iget-object v3, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    move-object v4, v0

    goto :goto_24

    :cond_3a
    const/4 v0, -0x1

    add-int/2addr v1, v0

    goto :goto_22

    :cond_3b
    :goto_23
    move-object v4, v2

    const/4 v1, 0x0

    :goto_24
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3c

    invoke-virtual {v15, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_25

    :cond_3c
    const/4 v3, 0x0

    :goto_25
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mHomeTransitionObserver:Lcom/android/wm/shell/transition/HomeTransitionObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/transition/HomeTransitionObserver;->notifyHomeVisibilityChanged(Z)V

    if-nez v4, :cond_3e

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string v0, "[PipTransition] No window of exiting PIP is found. Can\'t play expand animation"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_3d

    sget-object v20, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v25

    const/16 v23, 0x0

    const-string v24, "%s: No window of exiting PIP is found. Can\'t play expand animation"

    const-wide v21, 0x6270be5c8f8a3478L

    invoke-static/range {v20 .. v25}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3d
    invoke-virtual {v9, v10, v15, v8, v13}, Lcom/android/wm/shell/pip/PipTransition;->removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V

    move-object v8, v3

    :goto_26
    const/4 v11, 0x1

    goto/16 :goto_32

    :cond_3e
    invoke-static {v4, v10}, Lcom/android/wm/shell/shared/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v0

    if-eqz v1, :cond_3f

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v7, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "_pip-leash"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    const-string v6, "PipTransition.startExitAnimation"

    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v15, v1, v6, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-object v7, v3

    goto :goto_27

    :cond_3f
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-object v7, v2

    :goto_27
    const v2, 0x7fffffff

    invoke-virtual {v15, v7, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v6, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget v2, v6, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v15, v7, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v17

    if-eqz v1, :cond_40

    const/16 v21, 0x1

    goto :goto_28

    :cond_40
    const/16 v21, 0x0

    :goto_28
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v11, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    new-instance v2, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v12, v2

    move-object v2, v13

    move-object/from16 v23, v3

    const/16 v22, 0x0

    move v3, v11

    move-object/from16 v24, v4

    move-object/from16 v4, v17

    move-object v11, v5

    move/from16 v5, v21

    move-object/from16 p1, v13

    move-object v13, v6

    move-object/from16 v6, p4

    move-object/from16 v21, v7

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iput-object v12, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object v14, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    const/16 v1, -0x5a

    const/16 v2, 0x5a

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v3

    :goto_29
    if-ltz v3, :cond_43

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_42

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    const/16 v6, 0x20

    and-int/2addr v0, v6

    if-eqz v0, :cond_41

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v0

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v7

    if-eq v0, v7, :cond_41

    goto :goto_2c

    :cond_41
    :goto_2a
    const/4 v0, -0x1

    goto :goto_2b

    :cond_42
    const/16 v6, 0x20

    goto :goto_2a

    :goto_2b
    add-int/2addr v3, v0

    goto :goto_29

    :cond_43
    move-object/from16 v5, v22

    :goto_2c
    if-eqz v5, :cond_46

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string v0, "[PipTransition] startExpandAndRotationAnimation"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v0

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v3

    invoke-static {v0, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v0

    new-instance v3, Lcom/android/wm/shell/transition/CounterRotatorHelper;

    invoke-direct {v3}, Lcom/android/wm/shell/transition/CounterRotatorHelper;-><init>()V

    invoke-virtual {v3, v10, v15, v5}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->handleClosingChanges(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {v24 .. v24}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {v24 .. v24}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v6, v13, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    iget v7, v13, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    iget v6, v13, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    iget v7, v13, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_44

    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    move/from16 v40, v2

    move v2, v1

    move/from16 v1, v40

    goto :goto_2d

    :cond_44
    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    :goto_2d
    invoke-virtual/range {v24 .. v24}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v12

    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v8, v8

    const/4 v13, 0x3

    if-ne v0, v13, :cond_45

    move/from16 v20, v7

    goto :goto_2e

    :cond_45
    move/from16 v20, v6

    :goto_2e
    iget-object v10, v9, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    const/16 v19, 0x1

    move-object/from16 v11, p3

    move-object/from16 v6, v22

    move v6, v13

    move-object v13, v5

    move-object v7, v14

    move-object v14, v4

    move-object/from16 v15, v16

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v20}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->rotateAndScaleWithCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v3, v7}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual/range {v24 .. v24}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v32

    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/16 v36, 0x0

    const/16 v37, 0x3

    const/16 v38, 0x0

    move-object/from16 v30, v1

    move-object/from16 v31, p1

    move-object/from16 v33, v4

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move/from16 v39, v0

    invoke-virtual/range {v30 .. v39}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTransitionController$1;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v0

    iget v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v8, 0x0

    goto/16 :goto_26

    :cond_46
    move-object v7, v14

    move-object/from16 v8, v22

    const/4 v0, 0x0

    const/4 v6, 0x3

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {v24 .. v24}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, v13, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget v4, v13, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget v3, v9, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_49

    invoke-virtual/range {v24 .. v24}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v3

    iget v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    invoke-static {v3, v4}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v3

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v14, v5, v3}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_47

    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    move/from16 v40, v2

    move v2, v1

    move/from16 v1, v40

    goto :goto_2f

    :cond_47
    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    :goto_2f
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v13, v10

    if-ne v3, v6, :cond_48

    move/from16 v20, v4

    goto :goto_30

    :cond_48
    move/from16 v20, v0

    :goto_30
    iget-object v10, v9, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    const/16 v19, 0x1

    move-object/from16 v11, p4

    move-object/from16 v12, v21

    move v0, v13

    move-object v13, v14

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v0

    invoke-virtual/range {v10 .. v20}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->rotateAndScaleWithCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZZ)V

    move v6, v3

    goto :goto_31

    :cond_49
    const/4 v4, 0x1

    move v6, v0

    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    move v7, v4

    move-object/from16 v4, v23

    move v11, v7

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTransition;->startExpandAnimation(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    :goto_32
    move-object v0, v8

    goto :goto_34

    :cond_4a
    const/4 v0, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p3

    move-object v2, v13

    :goto_33
    invoke-virtual {v9, v10, v1, v8, v2}, Lcom/android/wm/shell/pip/PipTransition;->removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V

    :goto_34
    iput-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    return v11

    :cond_4b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find the pip task for exit-pip transition."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/wm/shell/pip/PipTransition;->callFinishCallback(Landroid/window/WindowContainerTransaction;)V

    iput-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Previous callback not called, aborting exit PIP."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-nez v3, :cond_20

    sget v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string v3, "PipTaskOrganizer"

    const-string v5, "[PipTransition] startEnterAnimation"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v5

    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput-object v2, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v8

    iget v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    const/4 v13, -0x1

    const/4 v12, 0x2

    if-eq v9, v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    move-result v9

    iput v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    if-eq v9, v13, :cond_0

    move v9, v12

    goto :goto_0

    :cond_0
    iget v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    :goto_0
    iput v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    :cond_1
    iget v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-ne v9, v12, :cond_2

    iget v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v9

    :goto_1
    iget-object v10, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v11, v15, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v13, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v7, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v5, v10, v13, v11, v7}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;)V

    iget-object v10, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-static {v8, v9}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v10

    iget-object v12, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v4, v12, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipeSourceRectHint:Landroid/graphics/Rect;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v17, v4

    const/4 v4, 0x0

    iput-object v4, v12, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipeSourceRectHint:Landroid/graphics/Rect;

    iget-object v4, v12, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget-boolean v4, v4, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v17, 0x0

    :goto_3
    if-nez v17, :cond_5

    iget-object v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v4, v11}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4, v13}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->isSourceRectHintValidForEnterPip(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    move-object/from16 v4, v17

    :cond_6
    :goto_4
    if-eqz v10, :cond_9

    iget-object v12, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iget-object v2, v12, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-eq v9, v2, :cond_9

    invoke-virtual {v12, v9}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->rotateTo(I)V

    iget v2, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    invoke-virtual {v5, v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->updateMinMaxSize(F)V

    invoke-virtual {v12}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v12, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    move-object/from16 v25, v7

    const/4 v7, 0x2

    if-ne v12, v7, :cond_7

    invoke-static {v13, v2, v9, v8}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    :cond_7
    if-eqz v4, :cond_8

    iget-object v2, v15, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_8

    const/4 v7, 0x3

    if-ne v10, v7, :cond_8

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v7, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "[PipTransition] computeEnterPipRotatedBounds, currentBounds="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " destinationBounds="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startRotation="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "endRotation="

    invoke-static {v2, v8, v7, v9, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object/from16 v25, v7

    :goto_5
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v2, v2, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/pip/PipTransition$2;

    invoke-direct {v3, v0, v14}, Lcom/android/wm/shell/pip/PipTransition$2;-><init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/view/SurfaceControl;)V

    const-wide/16 v7, 0x0

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v3, v7, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    iget-object v2, v15, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipTransition$1;

    const-string v12, "PipTransition"

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, v6, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz v2, :cond_f

    iget v2, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    const/4 v11, 0x2

    if-ne v2, v11, :cond_a

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v8, 0x3

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    int-to-long v9, v2

    sget-object v18, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v12, v2}, [Ljava/lang/Object;

    move-result-object v23

    const-string v22, "%s: SwipePipToHome should not use fixed rotation %d"

    const-wide v19, -0xfcf400398b6c7d2L    # -2.600459284566025E232

    const/16 v21, 0x4

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v2, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_b

    invoke-virtual {v1, v2, v14}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    const v9, 0x7fffffff

    invoke-virtual {v8, v2, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_b
    iget-object v8, v15, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/16 v18, 0x2

    const/4 v10, 0x1

    move-object v9, v15

    move-object v10, v14

    move/from16 v19, v11

    move-object v11, v12

    move/from16 v7, v19

    move-object/from16 p4, v13

    move-object/from16 v28, v14

    move-object v14, v4

    move-object v4, v15

    move/from16 v15, v18

    invoke-virtual/range {v8 .. v17}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v8

    iput-object v3, v8, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    invoke-virtual {v8, v7}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v3

    invoke-virtual/range {p2 .. p3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v15, v28

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v15, v1, v8}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTransition;->mStartTransactionForRemote:Landroid/view/SurfaceControl$Transaction;

    if-eqz v1, :cond_c

    invoke-virtual {v3, v15, v1, v8}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTransition;->mStartTransactionForRemote:Landroid/view/SurfaceControl$Transaction;

    :cond_c
    move-object/from16 v14, p4

    invoke-virtual {v5, v14}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v0, v4, v14, v7, v1}, Lcom/android/wm/shell/pip/PipTransition;->onFinishResize(Landroid/app/TaskInfo;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    if-eqz v2, :cond_d

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_e

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/16 v1, 0xfa

    const/4 v13, 0x1

    invoke-virtual {v0, v2, v13, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;ZI)V

    :cond_d
    const/4 v1, 0x0

    goto :goto_6

    :cond_e
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;ZI)V

    :goto_6
    iput-boolean v1, v6, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    return-void

    :cond_f
    move-object v2, v15

    const/4 v7, 0x2

    move-object v15, v14

    move-object v14, v13

    const/4 v13, 0x1

    iget v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    const/4 v8, 0x0

    if-ne v6, v13, :cond_10

    invoke-virtual {v1, v15, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7

    :cond_10
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v15, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    if-nez v6, :cond_15

    const/16 v16, 0x0

    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/4 v1, 0x2

    move/from16 v26, v9

    move-object v9, v2

    move/from16 v27, v10

    move-object v10, v15

    move-object v6, v11

    move-object v13, v12

    move-object v12, v6

    move-object/from16 p4, v13

    move-object v13, v14

    move-object/from16 v22, v14

    move-object v14, v4

    move-object/from16 v29, v15

    move v15, v1

    move/from16 v17, v27

    invoke-virtual/range {v8 .. v17}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    if-nez v4, :cond_13

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_11

    iget v4, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-eq v4, v7, :cond_11

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTransition;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mLauncherState:Lcom/android/wm/shell/common/pip/PipBoundsState$LauncherState;

    iget v5, v5, Lcom/android/wm/shell/common/pip/PipBoundsState$LauncherState;->mAppIconSizePx:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;

    new-instance v9, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v9, v4}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    iget-object v10, v9, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v9, v2, v10}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v19, v8

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    move/from16 v24, v5

    invoke-direct/range {v19 .. v24}, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v8}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    goto :goto_8

    :cond_11
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v4, 0x3

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_12

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array/range {p4 .. p4}, [Ljava/lang/Object;

    move-result-object v13

    const-wide v9, -0x46af2080a48dc0e1L    # -1.299851493590833E-32

    const/4 v11, 0x0

    const-string v12, "%s: TaskInfo.topActivityInfo is null"

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    invoke-direct {v4, v2}, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    goto :goto_8

    :cond_13
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->launchIntoPipHostTaskId:I

    invoke-static {v2}, Lcom/android/wm/shell/common/pip/PipUtils;->getTaskSnapshot(I)Landroid/window/TaskSnapshot;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/wm/shell/pip/PipContentOverlay$PipSnapshotOverlay;

    invoke-direct {v5, v2, v4}, Lcom/android/wm/shell/pip/PipContentOverlay$PipSnapshotOverlay;-><init>(Landroid/window/TaskSnapshot;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    :cond_14
    :goto_8
    move-object v2, v1

    move-object v4, v6

    move/from16 v9, v26

    move-object/from16 v15, v29

    const/4 v5, 0x0

    move-object/from16 v6, p3

    move-object/from16 v1, p4

    goto/16 :goto_d

    :cond_15
    move/from16 v26, v9

    move/from16 v27, v10

    move-object v4, v11

    move-object/from16 p4, v12

    move-object/from16 v22, v14

    move-object/from16 v29, v15

    if-ne v6, v13, :cond_1f

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    iget-object v14, v0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    if-eqz v6, :cond_17

    iget-boolean v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mInEnterPipFromSplit:Z

    if-eqz v6, :cond_17

    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mLeftoverTransitionInfo:Landroid/window/TransitionInfo;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_16

    move-object/from16 v6, p3

    move-object/from16 v15, v29

    invoke-virtual {v6, v15, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move/from16 v16, v13

    goto :goto_9

    :cond_16
    move-object/from16 v6, p3

    move-object/from16 v15, v29

    const/16 v16, 0x0

    :goto_9
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "startEnterAnimation: enterPipFromSplit, leash="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", destinationBounds="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v22

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v11, p4

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v12}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v0, v2, v12, v7, v5}, Lcom/android/wm/shell/pip/PipTransition;->onFinishResize(Landroid/app/TaskInfo;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v14, v12, v1, v15}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v14, v15, v13, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/4 v5, 0x0

    move-object v9, v2

    move-object v10, v15

    move-object v2, v11

    move-object v11, v12

    move-object/from16 p4, v12

    move v12, v5

    move v5, v13

    move v13, v1

    invoke-virtual/range {v8 .. v13}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    move-object/from16 v8, p4

    move-object/from16 v30, v2

    move-object v2, v1

    move-object/from16 v1, v30

    goto :goto_c

    :cond_17
    move-object/from16 v6, p3

    move-object/from16 v1, p4

    move v5, v13

    move-object/from16 p4, v22

    move-object/from16 v15, v29

    if-eqz v27, :cond_18

    iget v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-ne v9, v5, :cond_18

    move/from16 v16, v5

    goto :goto_a

    :cond_18
    const/16 v16, 0x0

    :goto_a
    if-eqz v16, :cond_19

    move v13, v8

    goto :goto_b

    :cond_19
    const/high16 v13, 0x3f800000    # 1.0f

    :goto_b
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/4 v12, 0x0

    move-object v9, v2

    move-object v10, v15

    move-object/from16 v11, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    move-object/from16 v8, p4

    if-eqz v16, :cond_1a

    const/16 v16, 0x0

    const/16 v26, 0x0

    goto :goto_c

    :cond_1a
    const/16 v16, 0x0

    :goto_c
    invoke-virtual {v14, v8, v6, v15}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v14, v15, v5, v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    const/4 v5, 0x0

    iput v5, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    move/from16 v5, v16

    move/from16 v9, v26

    :goto_d
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v10, v2, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    if-nez v10, :cond_1b

    const/4 v10, 0x0

    goto :goto_e

    :cond_1b
    iget-object v10, v10, Lcom/android/wm/shell/pip/PipContentOverlay;->mLeash:Landroid/view/SurfaceControl;

    :goto_e
    iput-object v10, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    if-eqz v10, :cond_1c

    iget-object v8, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_f

    :cond_1c
    iget-object v4, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    :goto_f
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v4

    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTransitionController$1;

    invoke-virtual {v4, v8}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v4

    int-to-long v8, v9

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v27, :cond_1d

    iget v4, v0, Lcom/android/wm/shell/pip/PipTransition;->mFixedRotationState:I

    if-ne v4, v7, :cond_1d

    invoke-virtual/range {v25 .. v25}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    :cond_1d
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v4, :cond_1e

    if-eqz v5, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startEnterAnimation: skip to apply end fraction for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1e
    iput-object v3, v2, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v15, v6, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    :goto_10
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    iput-object v0, v2, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unrecognized animation type: "

    invoke-static {v6, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipTransition;->callFinishCallback(Landroid/window/WindowContainerTransaction;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Previous callback not called, aborting entering PIP."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object p3, p3, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p2, :cond_2

    iput p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransitionType:I

    :cond_2
    return-void
.end method

.method public final startExpandAnimation(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v6, p5

    move-object v2, p1

    move-object/from16 v11, p7

    iget-object v1, v2, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-static {v1, v6}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    sget v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[PipTransition] startExpandAnimation startBounds="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " endBounds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rotDelta="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PipTaskOrganizer"

    move/from16 v10, p6

    invoke-static {v10, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v9, 0x0

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    const/4 v8, 0x3

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v2

    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipTransition$1;

    iput-object v2, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    const/4 v2, 0x0

    move-object v3, p2

    invoke-virtual {v1, p2, v11, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    invoke-virtual/range {p7 .. p7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTransitionController$1;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    iput-object v0, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransition;->findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTransition;->updatePipForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final updatePipForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {v1}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v2, v0, p2, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2, v0, p3, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    return-void
.end method
