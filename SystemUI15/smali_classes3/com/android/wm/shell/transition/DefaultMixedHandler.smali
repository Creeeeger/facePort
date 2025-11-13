.class public final Lcom/android/wm/shell/transition/DefaultMixedHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/MixedTransitionHandler;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public final mActiveTransitions:Ljava/util/ArrayList;

.field public mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

.field public mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

.field public final mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

.field public mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final mPlayer:Lcom/android/wm/shell/transition/Transitions;

.field public mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

.field public mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

.field public mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/pip/PipTransitionController;Ljava/util/Optional;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/taskview/TaskViewTransitions;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;",
            "Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;",
            ">;",
            "Lcom/android/wm/shell/taskview/TaskViewTransitions;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    move-object v0, p2

    iput-object v0, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v0, p6

    iput-object v0, v9, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v10, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/pip/PipTransitionController;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/taskview/TaskViewTransitions;)V

    move-object v0, p1

    invoke-virtual {p1, v10, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static excludeForceHidingChanges(Landroid/window/TransitionInfo;)V
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

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->isForceHidingEnter()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "excludeForceHidingChanges: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason=animateKeyguard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultMixedHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;
    .locals 3

    new-instance v0, Landroid/window/TransitionInfo;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {v0, p1, v2}, Landroid/window/TransitionInfo;-><init>(II)V

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getTrack()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/window/TransitionInfo;->setTrack(I)V

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/window/TransitionInfo;->setDebugId(I)V

    if-eqz p2, :cond_1

    move p1, v1

    :goto_1
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result p1

    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/TransitionInfo;->addRoot(Landroid/window/TransitionInfo$Root;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/window/TransitionInfo;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    return-object v0
.end method


# virtual methods
.method public final animatePendingEnterPipFromSplit(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;ZZ)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v2

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    const/4 v1, 0x4

    invoke-direct {v7, p0, v2, p5, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p0, :cond_1

    if-eqz p7, :cond_1

    if-nez p6, :cond_1

    iput-boolean v0, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mClosingSplitScreenWithEnterPip:Z

    :cond_1
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/transition/DefaultMixedTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result p0

    return p0
.end method

.method public final animatePendingSplitWithDisplayChange(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/4 v8, 0x1

    invoke-static {v1, v2, v8}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v9

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v12

    invoke-static {v1, v8}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v5

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v12, v4}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_4
    move v2, v3

    :goto_4
    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    if-ge v2, v4, :cond_7

    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v9}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4, v6}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_8

    invoke-virtual {v12}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v9, v8}, Landroid/window/TransitionInfo;->setSeparatedFromCustomDisplayChange(Z)V

    :cond_8
    const/4 v2, 0x2

    invoke-virtual {v0, v7, v2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v4

    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_9

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v14, -0x33befe60e87ec6afL    # -2.135009747976947E59

    const/16 v16, 0x0

    const-string v17, " Animation is a mix of display change and split change."

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iput v2, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v2, :cond_b

    invoke-static {v1, v8}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_6
    if-ltz v2, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    iget-object v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v11

    invoke-virtual {v10, v5, v11}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget v2, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    add-int/2addr v2, v8

    iput v2, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    move/from16 v18, v8

    goto :goto_7

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_b
    move/from16 v18, v3

    :goto_7
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    invoke-virtual {v2, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v9, v8}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v2

    :goto_8
    if-ltz v2, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v10, 0x4

    if-ne v3, v10, :cond_c

    move-object/from16 v3, p3

    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_9

    :cond_c
    move-object/from16 v3, p3

    :goto_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_d
    move-object/from16 v3, p3

    new-instance v5, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    move-object/from16 v2, p5

    invoke-direct {v5, v0, v4, v2, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    iget-object v11, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v10, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v15, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v1

    iput-object v1, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v4, p3

    move-object v10, v5

    move-object/from16 v5, p4

    move-object v11, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v10, v11}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    goto :goto_a

    :cond_e
    move-object v10, v5

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    :cond_f
    :goto_a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_10

    if-eqz v18, :cond_10

    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    :cond_10
    return v8
.end method

.method public final createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;
    .locals 11

    new-instance v10, Lcom/android/wm/shell/transition/DefaultMixedTransition;

    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v6, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v8, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    iget-object v9, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v7, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    move-object v0, v10

    move v1, p2

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/transition/DefaultMixedTransition;-><init>(ILandroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V

    return-object v10
.end method

.method public final createRecentsMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/RecentsMixedTransition;
    .locals 11

    new-instance v10, Lcom/android/wm/shell/transition/RecentsMixedTransition;

    iget-object v5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v6, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v8, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mRecentsHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    iget-object v9, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iget-object v7, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    move-object v0, v10

    move v1, p2

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/transition/RecentsMixedTransition;-><init>(ILandroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/recents/RecentsTransitionHandler;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-object v10
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v5, v4, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v5, :cond_1a

    iget-object v5, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    iget-object v5, v5, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v5

    if-ne v5, v6, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    const/4 v9, -0x1

    iget-object v10, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v11

    if-ne v11, v5, :cond_0

    iget v5, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    goto :goto_0

    :cond_0
    iget-object v11, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v11

    if-ne v11, v5, :cond_1

    iget v5, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    invoke-static {v5}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v9

    :goto_0
    if-eq v5, v9, :cond_2

    goto :goto_1

    :cond_2
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    iget-object v11, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    if-eqz v5, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v13

    if-ne v12, v13, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_1a

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1a

    :cond_4
    :goto_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_5

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v11, -0x2549818cb13ac040L

    const/4 v13, 0x0

    const-string v14, " Got a PiP-enter request while Split-Screen is active, so treat it as Mixed."

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v3

    if-nez v3, :cond_19

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v7}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v4, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/wm/shell/pip/PipTransitionController;->augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V

    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v4, 0x0

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDebugId()I

    move-result v1

    int-to-long v5, v1

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v14, "addEnterOrExitIfNeeded: transition=%d"

    const-wide v11, 0x284c51404ff03f12L

    const/4 v13, 0x1

    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    if-eqz v1, :cond_7

    iget v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq v6, v5, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v2

    if-eqz v1, :cond_8

    iget v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(I)I

    move-result v6

    goto :goto_2

    :cond_8
    move v6, v9

    :goto_2
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v11, v10, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v11, :cond_18

    invoke-static {v2}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStage:Lcom/android/wm/shell/splitscreen/CellStage;

    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    if-eqz v2, :cond_9

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    if-nez v2, :cond_18

    :cond_9
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_a

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    int-to-long v13, v2

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v2

    move v15, v5

    int-to-long v4, v2

    sget-object v16, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v21

    const-string v20, "  One of the splits became empty during a mixed transition (one not handled by split), so make sure split-screen state is cleaned-up. mainStageCount=%d sideStageCount=%d"

    const-wide v17, 0x48d2e0c1e21636e4L    # 6.578008447499252E42

    const/16 v19, 0x5

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    move v15, v5

    :goto_3
    if-eqz v1, :cond_b

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda22;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda22;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_15

    if-ne v6, v9, :cond_e

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-nez v1, :cond_c

    const/4 v6, 0x0

    goto :goto_4

    :cond_c
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-nez v1, :cond_d

    move v6, v7

    goto :goto_4

    :cond_d
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-nez v1, :cond_e

    move v6, v8

    :cond_e
    :goto_4
    iget-object v1, v11, Lcom/android/wm/shell/splitscreen/CellStage;->mHost:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    if-ne v1, v10, :cond_f

    move-object v10, v12

    :cond_f
    if-ne v6, v8, :cond_10

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitMultiSplitScreen(Landroid/window/WindowContainerTransaction;Z)V

    goto :goto_6

    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v4

    if-ne v6, v4, :cond_11

    invoke-virtual {v0, v3, v1, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getCellHostStageType()I

    move-result v1

    if-nez v1, :cond_12

    move v9, v7

    goto :goto_5

    :cond_12
    if-ne v1, v7, :cond_13

    move v9, v2

    :cond_13
    :goto_5
    if-ne v6, v9, :cond_14

    invoke-virtual {v0, v3, v10, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->reparentCellToMainOrSide(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/StageTaskListener;Z)V

    :cond_14
    :goto_6
    const-string v0, "enter_pip_with_multi_split"

    move v1, v15

    invoke-virtual {v3, v1, v0}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-nez v1, :cond_16

    move v9, v2

    goto :goto_7

    :cond_16
    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    move-result v1

    if-nez v1, :cond_17

    move v9, v7

    :cond_17
    :goto_7
    invoke-virtual {v0, v9, v3, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;Z)V

    :cond_18
    :goto_8
    return-object v3

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected remote transition inpip-enter-from-split request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v3

    if-ne v3, v6, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActivityEmbeddingController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    if-eqz v3, :cond_1c

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_1b

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v4, 0x7395ea6809da3504L    # 6.129298776351868E248

    const/4 v6, 0x0

    const-string v7, " Got a PiP-enter request from an Activity Embedding split"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object v0

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    iget-object v6, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    if-eqz v3, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq v3, v8, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq v3, v5, :cond_20

    :cond_1d
    invoke-virtual {v6, v1, v2, v0}, Lcom/android/wm/shell/transition/Transitions;->dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_1e

    return-object v4

    :cond_1e
    invoke-virtual {v0, v1, v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v4

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object v5, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v5, v6, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    if-eq v0, v5, :cond_1f

    iput-boolean v7, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mHasRequestToRemote:Z

    invoke-virtual {v5, v1, v2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    :cond_1f
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/window/WindowContainerTransaction;

    return-object v0

    :cond_20
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    if-ne v3, v7, :cond_25

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    if-eq v3, v8, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    if-ne v3, v5, :cond_25

    :cond_21
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v7

    if-eqz v3, :cond_22

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v9, 0x76818c239cd30eeL

    const/4 v11, 0x0

    const-string v12, " Got a going-home request while Split-Screen is foreground, so treat it as Mixed."

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {v6, v1, v2, v0}, Lcom/android/wm/shell/transition/Transitions;->dispatchRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_24

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_23

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v8, -0x13e19aff7540c348L    # -6.395176341600341E212

    const/4 v10, 0x0

    const-string v11, " Lean on the remote transition handler to fetch a proper remote via TransitionFilter"

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v4, v6, Lcom/android/wm/shell/transition/Transitions;->mRemoteTransitionHandler:Lcom/android/wm/shell/transition/RemoteTransitionHandler;

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createRecentsMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/RecentsMixedTransition;

    move-result-object v1

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object v3, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/window/WindowContainerTransaction;

    return-object v0

    :cond_25
    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    if-eqz v3, :cond_27

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->shouldPlayUnfoldAnimation(Landroid/window/TransitionRequestInfo;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mUnfoldHandler:Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;

    invoke-virtual {v3, v1, v2}, Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;->handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v4}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    return-object v2

    :cond_27
    return-object v4
.end method

.method public final isIntentInPip(Landroid/app/PendingIntent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->isPackageActiveInPip(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    if-eq v1, p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget v1, v2, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-gtz v1, :cond_1

    return-void

    :cond_1
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_2
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v0, p5

    iget-object v1, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_1

    iget-object v4, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    iget-object v4, v4, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    if-eq v4, v9, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v4, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_a

    if-eqz v6, :cond_8

    const/4 v1, 0x5

    iget v5, v6, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    if-eq v5, v1, :cond_8

    invoke-virtual {v8, v9, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v1

    iget-object v7, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    const/4 v13, 0x6

    invoke-direct {v7, v8, v1, v0, v13}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    iget-object v13, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v14, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-nez v14, :cond_2

    iput-object v11, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iput-object v7, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v13, v2, v10, v11}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_3
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v7, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->excludeForceHidingChanges(Landroid/window/TransitionInfo;)V

    :cond_4
    iget-object v7, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    invoke-virtual {v1, v7, v2, v10, v11}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->startSubAnimation(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v14, 0x266e9bc0721330b2L

    const/16 v16, 0x0

    const-string v17, "Converting mixed transition into a keyguard transition"

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, v9, v4, v3}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    if-ne v5, v0, :cond_6

    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v0, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    :cond_6
    return v12

    :cond_7
    iget-object v5, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v1, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v2, v10, v11}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    :goto_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v1, :cond_a

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->excludeForceHidingChanges(Landroid/window/TransitionInfo;)V

    :cond_a
    if-nez v6, :cond_15

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-nez v1, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-static {v2, v12}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    move v5, v4

    move v6, v5

    :goto_3
    const/4 v7, 0x2

    if-ltz v1, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->isEnteringPinnedMode()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    if-eqz v14, :cond_c

    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v14

    if-ne v14, v7, :cond_c

    move v6, v12

    :cond_c
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMinimizeAnimState()I

    move-result v7

    if-eqz v7, :cond_d

    move v5, v12

    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_e
    if-eqz v5, :cond_14

    if-eqz v6, :cond_14

    invoke-static {v2, v12}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_4
    if-ltz v1, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->isEnteringPinnedMode()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    if-ne v6, v7, :cond_f

    move-object v3, v5

    goto :goto_5

    :cond_f
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_10
    :goto_5
    const-string v1, "DefaultMixedHandler"

    if-nez v3, :cond_11

    const-string v0, "animateEnterPipWithDefaultTransition: failed, cannot find pipChange"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move v12, v4

    goto/16 :goto_7

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v5

    invoke-static {v2, v5, v12}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v6

    invoke-static {v2, v6, v4}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v13

    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v13, v3}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    invoke-virtual {v5}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v0, "animateEnterPipWithDefaultTransition: failed, default part is empty"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_12
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_13

    invoke-virtual {v5}, Landroid/window/TransitionInfo;->hasCustomDisplayChangeTransition()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v5, v12}, Landroid/window/TransitionInfo;->setSeparatedFromCustomDisplayChange(Z)V

    :cond_13
    const/16 v2, 0x64

    invoke-virtual {v8, v9, v2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->createDefaultMixedTransition(Landroid/os/IBinder;I)Lcom/android/wm/shell/transition/DefaultMixedTransition;

    move-result-object v14

    iget-object v2, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v7, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "animateEnterPipWithDefaultTransition: enterPipPart="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", defaultPart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    const/4 v1, 0x3

    invoke-direct {v15, v8, v14, v0, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    iget-object v1, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    iget-object v6, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    move-object v2, v5

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v15

    move-object/from16 v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v0

    iput-object v0, v14, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iget-object v0, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-interface/range {v0 .. v5}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    :goto_7
    return v12

    :cond_14
    :goto_8
    return v4

    :cond_15
    new-instance v5, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;

    const/4 v1, 0x7

    invoke-direct {v5, v8, v6, v0, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v1, v8, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_16
    return v0
.end method
