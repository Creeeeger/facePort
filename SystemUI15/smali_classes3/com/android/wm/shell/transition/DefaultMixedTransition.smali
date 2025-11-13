.class public final Lcom/android/wm/shell/transition/DefaultMixedTransition;
.super Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

.field public final mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V

    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iput-object p9, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition;->mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    :goto_0
    return-void
.end method


# virtual methods
.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iget v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-eq v2, v0, :cond_6

    const/4 v0, 0x2

    if-eq v2, v0, :cond_5

    const/4 v0, 0x3

    if-eq v2, v0, :cond_4

    const/4 v0, 0x5

    if-eq v2, v0, :cond_3

    const/16 v0, 0xb

    if-eq v2, v0, :cond_5

    const/16 v0, 0x64

    if-eq v2, v0, :cond_1

    const/16 v0, 0x8

    if-eq v2, v0, :cond_0

    const/16 v0, 0x9

    if-ne v2, v0, :cond_2

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition;->mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :cond_1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "mergeAnimation: mixed for pip is running, queueing info="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mergeTarget="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultMixedTransition"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Playing a default mixed transition with unknown or illegal type: "

    invoke-static {v2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v1, :cond_5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :cond_5
    return-void

    :cond_6
    iget v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    if-ne v2, v0, :cond_9

    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    if-eqz v3, :cond_7

    return-void

    :cond_7
    iget-object v3, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_0
    if-ltz v3, :cond_8

    iget-object v0, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v4, v4, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Landroid/animation/Animator;I)V

    check-cast v4, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    iget-object v4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v4, :cond_a

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionController;->end()V

    :cond_a
    :goto_1
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iget v2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-eq v2, v0, :cond_4

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    const/4 v0, 0x5

    if-eq v2, v0, :cond_2

    const/16 v0, 0x8

    if-eq v2, v0, :cond_1

    const/16 v0, 0x9

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition;->mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedTransition;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :cond_4
    invoke-interface {v1, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mHasRequestToRemote:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_5
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v4, p5

    const/4 v10, 0x1

    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-eq v1, v10, :cond_1f

    const/4 v2, 0x2

    const/4 v11, 0x0

    if-eq v1, v2, :cond_20

    const/4 v3, 0x3

    const-string v5, "More than 1 pip-entering changes in one transition? "

    const-string v12, "DefaultMixedTransition"

    iget-object v13, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    if-eq v1, v3, :cond_15

    const/4 v3, 0x5

    if-eq v1, v3, :cond_14

    const/16 v3, 0x65

    if-eq v1, v3, :cond_b

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Starting default mixed animation with unknown or illegal type: "

    invoke-static {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mMixedHandler:Lcom/android/wm/shell/transition/MixedTransitionHandler;

    iget-object v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v7, v13

    move-object v8, v10

    move v9, v11

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/transition/MixedTransitionHelper;->animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)Z

    move-result v11

    goto/16 :goto_d

    :pswitch_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v14, v1

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v21, "Mixed transition for entering PIP from an Activity Embedding window #%d"

    const-wide v18, 0x527cc60f293d3bdcL    # 2.2895702577334857E89

    const/16 v20, 0x1

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x4

    invoke-static {v7, v1, v10}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v3

    invoke-static {v7, v10}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    const/4 v14, 0x0

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v12

    invoke-virtual {v13, v6, v12}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez v14, :cond_1

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v14, v6

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v4, v1}, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedTransition;->mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->shouldAnimate(Landroid/window/TransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    move v10, v11

    goto :goto_4

    :cond_4
    if-eqz v14, :cond_5

    iput v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v8, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v13, v14, v1, v9, v5}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_3

    :cond_5
    iput v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    :goto_3
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedTransition;->mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    :cond_6
    :goto_4
    move v11, v10

    goto/16 :goto_d

    :pswitch_2
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v1, v1

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v18, "Mixed transition for unfolding #%d"

    const-wide v15, -0x11fdca0af784ca10L    # -8.228395060384717E221

    const/16 v17, 0x1

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    new-instance v5, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v5, v0, v4, v1}, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    iput v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-eqz v13, :cond_8

    invoke-virtual {v13, v7, v8, v9}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_8
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v2, v2, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ADJUST_FOR_IME:Z

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz v2, :cond_9

    iget-object v3, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget v3, v3, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    if-eqz v3, :cond_9

    invoke-virtual {v1, v2, v8, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v2, v8, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {v1, v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    :cond_a
    :goto_5
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedTransition;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v11

    goto/16 :goto_d

    :cond_b
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    if-nez v1, :cond_c

    goto/16 :goto_2

    :cond_c
    new-instance v13, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v13, v0, v4, v1}, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v7, v1, v10}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x2041

    invoke-virtual {v3, v1}, Landroid/window/TransitionInfo;->setFlags(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v7, v1, v10}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v14

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findPending(Landroid/os/IBinder;)Lcom/android/wm/shell/taskview/TaskViewTransitions$PendingTransition;

    move-result-object v5

    const-string v6, "TaskViewTransitions"

    if-nez v5, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "addTransparentFlagForConsumedChange: failed, cannot find "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    iget-object v4, v1, Lcom/android/wm/shell/taskview/TaskViewTransitions;->mTaskViews:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v1, "addTransparentFlagForConsumedChange: failed, taskView is empty"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    :goto_6
    invoke-virtual {v14}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v11, v4, :cond_12

    invoke-virtual {v14}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-nez v5, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->findTaskView(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/taskview/TaskViewTaskController;

    move-result-object v5

    if-nez v5, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v4, v10}, Landroid/window/TransitionInfo$Change;->addFlags2(I)V

    :cond_11
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_12
    :goto_8
    iput v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/taskview/TaskViewTransitions;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "animateKeyguardUnOccludingWithTaskView: failed to start taskView transit"

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :cond_13
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    move-object v3, v14

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "animateKeyguardUnOccludingWithTaskView: failed to start keyguard transit"

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    iget-object v11, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

    iget-object v12, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mMixedHandler:Lcom/android/wm/shell/transition/MixedTransitionHandler;

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v13

    move-object v7, v11

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    goto/16 :goto_4

    :cond_14
    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/transition/MixedTransitionHelper;->animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;)Z

    move-result v11

    goto/16 :goto_d

    :cond_15
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v14, v1

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v21, "Mixed transition for opening an intent with a remote transition and PIP #%d"

    const-wide v18, -0x6c2850f28af1c85fL    # -4.396979561554806E-213

    const/16 v20, 0x1

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    invoke-static {v7, v10}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    const/4 v3, 0x0

    :goto_9
    if-ltz v1, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v14

    invoke-virtual {v13, v6, v14}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v14

    if-eqz v14, :cond_18

    if-nez v3, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v3, v6

    goto :goto_a

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_19
    new-instance v14, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v14, v0, v4, v1}, Lcom/android/wm/shell/transition/DefaultMixedTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    if-nez v3, :cond_1b

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v1, :cond_1a

    iput v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v14

    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_c

    :cond_1a
    move v10, v11

    goto/16 :goto_c

    :cond_1b
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v4, v1

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v22

    const-wide v18, 0x2623748b64fd3b04L    # 5.748157620399889E-125

    const/16 v20, 0x1

    const-string v21, "Splitting PIP into a separate animation because remote-animation likely doesn\'t support it #%d"

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    iput v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v2, :cond_1d

    iget-object v2, v13, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v2, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget-boolean v4, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz v4, :cond_1d

    iget v2, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-ne v2, v10, :cond_1d

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const-string v4, "PipStartTransaction"

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    const-string v4, "PipFinishTransaction"

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v9, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "animateOpenIntentWithRemoteAndPip: new finishT, pipChange="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", inSwipeHome=true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v3, v1, v2, v14}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    goto :goto_b

    :cond_1d
    invoke-virtual {v13, v3, v1, v9, v14}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :goto_b
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    if-eqz v1, :cond_1e

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v14

    invoke-interface/range {v1 .. v6}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_c

    :cond_1e
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    const/4 v12, 0x0

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v13, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mMixedHandler:Lcom/android/wm/shell/transition/MixedTransitionHandler;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v14

    move-object v7, v13

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    :goto_c
    if-eqz v10, :cond_6

    iget-boolean v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mHasRequestToRemote:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    if-eq v1, v0, :cond_6

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    goto/16 :goto_4

    :cond_1f
    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mMixedHandler:Lcom/android/wm/shell/transition/MixedTransitionHandler;

    iget-object v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v11, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v7, v10

    move-object v8, v11

    move v9, v12

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/transition/MixedTransitionHelper;->animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)Z

    move-result v11

    :cond_20
    :goto_d
    :pswitch_3
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
