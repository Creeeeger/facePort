.class public final Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;
.super Landroid/window/RemoteTransitionStub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFinishRunnables:Landroid/util/ArrayMap;

.field public mLeashMap:Landroid/util/ArrayMap;

.field public final synthetic val$runner:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public constructor <init>(Landroid/view/IRemoteAnimationRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-direct {p0}, Landroid/window/RemoteTransitionStub;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->mLeashMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/window/RemoteAnimationRunnerHelper;->getInstance()Landroid/window/RemoteAnimationRunnerHelper;

    move-result-object v1

    iget-object v7, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->mLeashMap:Landroid/util/ArrayMap;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/window/RemoteAnimationRunnerHelper;->mergeOrTransferAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/util/ArrayMap;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_0
    iget-object p5, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    invoke-virtual {p5, p4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Runnable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    if-nez p4, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    sget-boolean v3, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v3, :cond_0

    iput-object v12, v0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->mLeashMap:Landroid/util/ArrayMap;

    :cond_0
    new-instance v3, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;

    invoke-direct {v3}, Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;-><init>()V

    new-instance v4, Lcom/android/systemui/animation/RemoteAnimationTargetCompat$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/systemui/animation/RemoteAnimationTargetCompat$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/shared/TransitionUtil$LeafTaskFilter;)V

    invoke-static {v5, v2, v12, v4}, Lcom/android/systemui/animation/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v13

    new-instance v3, Lcom/android/systemui/animation/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/systemui/animation/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-static {v5, v2, v12, v3}, Lcom/android/systemui/animation/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v14

    new-instance v3, Lcom/android/systemui/animation/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/systemui/animation/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-static {v5, v2, v12, v3}, Lcom/android/systemui/animation/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v15

    invoke-static {v5, v4}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    move/from16 v16, v9

    move/from16 v19, v16

    move/from16 v20, v19

    move/from16 v17, v7

    move/from16 v18, v17

    move-object v10, v8

    move-object v11, v10

    :goto_0
    const/4 v8, 0x2

    if-ltz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v7

    if-ne v7, v8, :cond_6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    if-eq v7, v4, :cond_3

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_2

    goto :goto_1

    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v19, v4

    :goto_2
    invoke-static {v5, v3}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v9

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    if-eq v7, v8, :cond_4

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    :cond_4
    const-string v7, "RemoteAnimRunnerCompat"

    const-string v8, "go to home from home. ignore isReturnToHome if set"

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v4

    :cond_5
    move-object v11, v6

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v7

    and-int/2addr v7, v8

    if-eqz v7, :cond_7

    move-object v10, v6

    :cond_7
    :goto_3
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v7

    if-ltz v7, :cond_8

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v8

    if-eq v7, v8, :cond_8

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v8

    sub-int v16, v7, v8

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    move/from16 v18, v6

    move/from16 v17, v7

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x4

    const/4 v7, 0x3

    new-instance v6, Lcom/android/wm/shell/shared/CounterRotator;

    invoke-direct {v6}, Lcom/android/wm/shell/shared/CounterRotator;-><init>()V

    new-instance v4, Lcom/android/wm/shell/shared/CounterRotator;

    invoke-direct {v4}, Lcom/android/wm/shell/shared/CounterRotator;-><init>()V

    if-eqz v11, :cond_b

    if-eqz v16, :cond_b

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v21

    if-eqz v21, :cond_b

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v7, p3

    move-object/from16 v24, v15

    move v15, v8

    move-object v8, v3

    move v3, v9

    move/from16 v9, v16

    move-object/from16 v25, v10

    move/from16 v10, v17

    move-object v15, v11

    move/from16 v11, v18

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/shared/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    :goto_5
    move-object/from16 v11, v22

    goto :goto_6

    :cond_a
    move-object/from16 v22, v6

    move/from16 v23, v7

    move v3, v9

    move-object/from16 v25, v10

    move-object/from16 v24, v15

    move-object v15, v11

    const-string v6, "RemoteAnimRunnerCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Malformed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " but it\'s not in info."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_6
    iget-object v6, v11, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_c

    invoke-virtual {v2, v6, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7

    :cond_b
    move/from16 v23, v7

    move-object/from16 v25, v10

    move-object/from16 v24, v15

    move-object v15, v11

    move-object v11, v6

    :cond_c
    :goto_7
    if-eqz v19, :cond_16

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v3, :cond_d

    if-nez v20, :cond_16

    :cond_d
    iget-object v3, v11, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_e
    const/4 v3, 0x1

    invoke-static {v5, v3}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v6

    :goto_8
    if-ltz v6, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl;

    if-nez v7, :cond_f

    :goto_9
    const/4 v3, 0x2

    const/4 v9, 0x4

    goto :goto_a

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    invoke-static {v3, v5}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_9

    :cond_10
    const/4 v3, 0x2

    const/4 v9, 0x4

    if-eq v8, v3, :cond_11

    if-ne v8, v9, :cond_13

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    sub-int/2addr v8, v6

    invoke-virtual {v2, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v11, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v8, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual {v2, v7, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_13
    :goto_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_14
    array-length v3, v14

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    :goto_b
    if-ltz v3, :cond_15

    aget-object v6, v14, v3

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object v6, v14, v3

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_15
    move-object v15, v11

    goto/16 :goto_e

    :cond_16
    if-eqz v15, :cond_18

    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    iget-object v6, v11, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v6, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_18
    :goto_c
    move-object/from16 v3, v25

    if-eqz v3, :cond_15

    if-eqz v16, :cond_15

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    move-object v6, v4

    move-object/from16 v7, p3

    move/from16 v9, v16

    move/from16 v10, v17

    move-object v15, v11

    move/from16 v11, v18

    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/shared/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_d

    :cond_19
    move-object v15, v11

    const-string v6, "RemoteAnimRunnerCompat"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Malformed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " but it\'s not in info."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    iget-object v6, v4, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_1b

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    iget-object v6, v4, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v6, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-virtual {v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1b
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v8, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;

    move-object v2, v8

    move-object v3, v15

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/shared/CounterRotator;Lcom/android/wm/shell/shared/CounterRotator;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    iget-object v2, v0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->mFinishRunnables:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v0, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    new-instance v10, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$1;

    invoke-direct {v10, v0, v1, v8}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$1;-><init>(Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1;Landroid/os/IBinder;Ljava/lang/Runnable;)V

    const/4 v6, 0x0

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v9, v24

    invoke-interface/range {v5 .. v10}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
