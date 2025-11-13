.class public final Lcom/android/wm/shell/transition/RecentsMixedTransition;
.super Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

.field public final mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/recents/RecentsTransitionHandler;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(ILandroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V

    iput-object p8, p0, Lcom/android/wm/shell/transition/RecentsMixedTransition;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iput-object p9, p0, Lcom/android/wm/shell/transition/RecentsMixedTransition;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iput-object p8, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    return-void
.end method


# virtual methods
.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 11

    move-object v7, p0

    move-object v8, p3

    const/4 v0, 0x4

    const/4 v1, 0x1

    iget v2, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-eq v2, v0, :cond_9

    const/4 v0, 0x6

    if-eq v2, v0, :cond_1

    const/4 v0, 0x7

    if-ne v2, v0, :cond_0

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Playing a Recents mixed transition with unknown or illegal type: "

    invoke-static {v2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_2

    move-object v9, p2

    invoke-virtual {p2, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-object v9, p2

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {p3, v4, v10}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->setLeash(Landroid/view/SurfaceControl;)V

    goto :goto_2

    :cond_6
    iget-object v3, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object v5, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    iget-object v6, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/transition/MixedTransitionHelper;->animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;)Z

    move-result v0

    move-object/from16 v5, p5

    if-eqz v0, :cond_8

    invoke-interface {v5, v10}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    goto :goto_3

    :cond_7
    move-object v9, p2

    move-object/from16 v5, p5

    :cond_8
    :goto_3
    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void

    :cond_9
    move-object v9, p2

    move-object/from16 v5, p5

    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-object v2, p1

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput v1, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    :cond_a
    iget-object v0, v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mHasRequestToRemote:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_1
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move-object/from16 v5, p5

    const/4 v9, 0x1

    const/4 v1, 0x4

    const/4 v10, 0x0

    iget v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-eq v2, v1, :cond_b

    const/4 v1, 0x6

    if-eq v2, v1, :cond_8

    const/4 v1, 0x7

    if-ne v2, v1, :cond_7

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v1, v1

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v15, "Transition for Recents during Desktop #%d"

    const-wide v12, -0x3c0e553616f9cbaeL    # -2.0368829557667865E19

    const/4 v14, 0x1

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInfo:Landroid/window/TransitionInfo;

    if-nez v1, :cond_1

    iput-object v7, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInfo:Landroid/window/TransitionInfo;

    iput-object v8, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iput-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    :cond_1
    new-instance v6, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda0;

    move-object v1, v5

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0, v1}, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/RecentsMixedTransition;Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;)V

    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object v1, v0, Lcom/android/wm/shell/transition/RecentsMixedTransition;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    sub-int/2addr v1, v9

    iput v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    :cond_2
    move v9, v10

    goto/16 :goto_7

    :cond_3
    iget-object v0, v0, Lcom/android/wm/shell/transition/RecentsMixedTransition;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/wm/shell/shared/DesktopModeStatus;->USE_ROUNDED_CORNERS:Z

    if-nez v1, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-object v0, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v8, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting Recents mixed animation with unknown or illegal type: "

    invoke-static {v2, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v1, v1

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v13, "Mixed transition for Recents during Keyguard #%d"

    const-wide v10, -0x6547367adac3c3f1L    # -5.973513649215211E-180

    const/4 v12, 0x1

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInfo:Landroid/window/TransitionInfo;

    if-nez v1, :cond_a

    iput-object v7, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInfo:Landroid/window/TransitionInfo;

    iput-object v8, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iput-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    :cond_a
    iget-object v1, v0, Lcom/android/wm/shell/transition/RecentsMixedTransition;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    invoke-virtual {v0, v1, v7, v4, v8}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->startSubAnimation(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v9

    goto/16 :goto_7

    :cond_b
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v1, v1

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v15, "Mixed transition for Recents during split screen #%d"

    const-wide v12, -0x61f169b6384dc735L    # -6.639420171750877E-164

    const/4 v14, 0x1

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    invoke-static {v7, v9}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_2
    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-ltz v1, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v11

    invoke-virtual {v3, v2, v11}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v2, :cond_f

    :cond_d
    iget-object v9, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v10, 0x0

    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v11, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mMixedHandler:Lcom/android/wm/shell/transition/MixedTransitionHandler;

    iget-object v12, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v6

    move-object v6, v11

    move-object v7, v12

    move-object v8, v9

    move v9, v10

    invoke-static/range {v0 .. v9}, Lcom/android/wm/shell/transition/MixedTransitionHelper;->animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)Z

    move-result v0

    :cond_e
    :goto_3
    move v9, v0

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_10
    new-instance v11, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda1;

    move-object v1, v5

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    invoke-direct {v11, v0, v8, v1}, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/RecentsMixedTransition;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;)V

    iput v9, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_11

    invoke-virtual {v6, v7, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->adjustBoundsForMinSizeTaskAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    :cond_11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v1, v1

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v17

    const-wide v13, -0x4859784e7a9ece2fL    # -1.2931615939547668E-40

    const/4 v15, 0x1

    const-string v16, "onRecentsInSplitAnimationStart: transition=%d"

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    const-string v2, "StageCoordinator"

    if-eqz v1, :cond_17

    move v1, v10

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/shared/TransitionUtil;->isClosingType(I)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v12

    iget-object v13, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eq v12, v5, :cond_13

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v12

    if-eq v12, v5, :cond_13

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v12, :cond_16

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v12

    if-eqz v12, :cond_16

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v12

    if-ne v12, v5, :cond_16

    :cond_13
    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v5, :cond_14

    iget-object v5, v13, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_14

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelActivity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastFlexPanelTaskId:I

    if-eq v12, v5, :cond_14

    iput v5, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLastFlexPanelTaskId:I

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "setLastFlexPanelTaskId: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v5, :cond_16

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v12, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v12, v12, Lcom/android/wm/shell/common/split/SplitLayout;->mImePositionProcessor:Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;

    iget v12, v12, Lcom/android/wm/shell/common/split/SplitLayout$ImePositionProcessor;->mYOffsetForIme:I

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v13, v13, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v13

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_15

    move v13, v9

    goto :goto_5

    :cond_15
    move v13, v10

    :goto_5
    if-eqz v12, :cond_16

    if-eqz v13, :cond_16

    iget v13, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int/2addr v14, v13

    iput v14, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v12, v13

    iput v12, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v5}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v5}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_17
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_18

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "onRecentsInSplitAnimationStart: skip divider, reason=split_invisible"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_18
    invoke-virtual {v6, v7, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    :goto_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v2, :cond_19

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v6, v7, v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addCellDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    :cond_19
    iget-object v2, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitBackgroundController:Lcom/android/wm/shell/splitscreen/SplitBackgroundController;

    iget-boolean v3, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    iput-boolean v3, v2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mHiddenWhileRecentsTransition:Z

    invoke-virtual {v2, v10, v10}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    if-eqz v1, :cond_1a

    iput-boolean v9, v6, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRecentsInSplitAnimating:Z

    :cond_1a
    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v11

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRecentsInSplitAnimationCanceled()V

    goto/16 :goto_3

    :cond_1b
    :goto_7
    return v9
.end method
