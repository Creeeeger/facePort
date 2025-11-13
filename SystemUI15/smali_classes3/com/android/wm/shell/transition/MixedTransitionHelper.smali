.class public final Lcom/android/wm/shell/transition/MixedTransitionHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateEnterPipFromSplit(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p7

    move-object/from16 v3, p8

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v12, 0x1

    aget-boolean v4, v4, v12

    if-eqz v4, :cond_0

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v14, 0x2b518c287de13470L    # 5.014140770349527E-100

    const/16 v16, 0x0

    const-string v17, " Animating a mixed transition for entering PIP while Split-Screen is foreground."

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x4

    invoke-static {v1, v4, v12}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    move-result-object v13

    invoke-static {v1, v12}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v4

    const/4 v14, 0x0

    move v5, v14

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v7, 0x2

    if-ltz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v15

    invoke-virtual {v11, v8, v15}, Lcom/android/wm/shell/pip/PipTransitionController;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    move-result v15

    if-eqz v15, :cond_2

    if-nez v9, :cond_1

    invoke-virtual {v13}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v9, v8

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "More than 1 pip-entering changes in one transition? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v15

    if-ne v15, v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v15

    const/4 v12, 0x3

    if-ne v15, v12, :cond_4

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v12

    and-int/2addr v7, v12

    if-eqz v7, :cond_5

    move-object v6, v8

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, -0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_6
    if-nez v9, :cond_7

    return v14

    :cond_7
    new-instance v12, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;

    move-object/from16 v4, p4

    invoke-direct {v12, v0, v5, v3, v4}, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;ZLcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    const/4 v4, -0x1

    if-nez v5, :cond_b

    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    move-result v8

    if-eq v8, v4, :cond_8

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_9

    sget-object v18, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v19, 0x6b584a120bda3c74L    # 1.2477072082692325E209

    const/16 v21, 0x0

    const-string v22, "  Not leaving split, so just forward animation to Pip-Handler."

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v4, :cond_a

    invoke-virtual/range {p8 .. p8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mCellStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    iget-boolean v4, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    if-eqz v4, :cond_a

    new-instance v7, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v7}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v9, 0x1

    const/4 v4, -0x1

    const/16 v5, 0x9

    move-object/from16 v3, p8

    move-object v6, v13

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_a
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object v0, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    move-object/from16 p4, p7

    move-object/from16 p5, v0

    move-object/from16 p6, p1

    move-object/from16 p7, p2

    move-object/from16 p8, p3

    move-object/from16 p9, v12

    invoke-interface/range {p4 .. p9}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_12

    :cond_b
    :goto_4
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v15, 0x1

    aget-boolean v8, v8, v15

    if-eqz v8, :cond_c

    sget-object v18, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v19, -0x191ef3379ad8cf3aL    # -3.709283155210795E187

    const/16 v21, 0x0

    const-string v22, " Animation is actually mixed since entering-PiP caused us to leave split and return home."

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iput v7, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_d
    new-instance v15, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v15}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v6, :cond_12

    invoke-virtual/range {p8 .. p8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitScreenVisible()Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v7

    :goto_5
    if-ltz v7, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    if-ne v6, v9, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemStage(Landroid/window/WindowContainerToken;)I

    move-result v6

    if-eq v6, v4, :cond_10

    move v4, v6

    :cond_f
    const/4 v6, 0x1

    goto :goto_7

    :cond_10
    :goto_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :goto_7
    xor-int/lit8 v18, v5, 0x1

    const/16 v5, 0x9

    move-object/from16 v3, p8

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v8, p3

    move-object v14, v9

    move/from16 v9, v18

    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_11
    :goto_8
    const/4 v3, 0x1

    goto :goto_f

    :cond_12
    move-object v14, v9

    invoke-virtual/range {p8 .. p8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz p9, :cond_13

    goto :goto_a

    :cond_13
    :goto_9
    const/4 v5, 0x1

    goto :goto_b

    :cond_14
    :goto_a
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v5, :cond_11

    iget-boolean v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mClosingSplitScreenWithEnterPip:Z

    if-eqz v5, :cond_11

    goto :goto_9

    :goto_b
    invoke-static {v1, v5}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v6

    :goto_c
    if-ltz v6, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    if-ne v5, v14, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemStage(Landroid/window/WindowContainerToken;)I

    move-result v5

    if-eq v5, v4, :cond_16

    move v4, v5

    goto :goto_e

    :cond_16
    :goto_d
    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :cond_17
    :goto_e
    const/4 v9, 0x0

    const/16 v5, 0x9

    move-object/from16 v3, p8

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Z)V

    goto :goto_8

    :goto_f
    invoke-static {v13, v3}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v4

    :goto_10
    if-ltz v4, :cond_19

    invoke-virtual {v13}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v3

    const/high16 v5, 0x800000

    and-int/2addr v3, v5

    if-eqz v3, :cond_18

    invoke-virtual {v13}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_11

    :cond_18
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    :cond_19
    :goto_11
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v3, :cond_1c

    invoke-virtual {v11, v14, v13}, Lcom/android/wm/shell/pip/PipTransitionController;->onStartEnterPipFromSplit(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)V

    invoke-virtual {v14}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v3

    new-instance v4, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/wm/shell/transition/MixedTransitionHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v13, v4}, Landroid/window/TransitionInfo;->findChange(Ljava/util/function/Predicate;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {v13}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v4

    if-gez v4, :cond_1a

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartDisplayId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v4

    :cond_1a
    if-gez v4, :cond_1b

    const/4 v4, 0x0

    :cond_1b
    invoke-virtual {v1, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "animateEnterPipFromSplit: reparent "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    const-string v4, "PipTaskOrganizer"

    invoke-static {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/wm/shell/pip/PipTransitionController;->setEnterAnimationType(I)V

    invoke-virtual {v11, v14, v2, v10, v12}, Lcom/android/wm/shell/pip/PipTransitionController;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v2, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    const/4 v8, 0x0

    move-object/from16 v1, p5

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, p3

    move-object v6, v12

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    goto/16 :goto_3

    :goto_12
    return v0
.end method

.method public static animateKeyguard(Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p6, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTransitionController;->syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    invoke-virtual {p0, p5, p1, p2, p3}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->startSubAnimation(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    move-result p0

    return p0
.end method
