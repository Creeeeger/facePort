.class public abstract Lcom/android/compose/animation/scene/AnimateToSceneKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static animate$default(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ZFFZLcom/android/compose/animation/scene/SceneKey;ZI)Lcom/android/compose/animation/scene/OneOffTransition;
    .locals 16

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p5

    :goto_0
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move/from16 v3, p7

    :goto_2
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object/from16 v4, p8

    :goto_3
    and-int/lit16 v0, v0, 0x100

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    move v0, v7

    goto :goto_4

    :cond_4
    move/from16 v0, p9

    :goto_4
    if-eqz v3, :cond_5

    :goto_5
    move v6, v2

    goto :goto_6

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_5

    :goto_6
    if-eqz v3, :cond_6

    new-instance v2, Lcom/android/compose/animation/scene/OneOffTransition;

    const/4 v15, 0x0

    move-object v9, v2

    move-object/from16 v10, p3

    move-object/from16 v11, p2

    move-object v12, v4

    move-object/from16 v13, p2

    move/from16 v14, p4

    invoke-direct/range {v9 .. v15}, Lcom/android/compose/animation/scene/OneOffTransition;-><init>(Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;ZZ)V

    :goto_7
    move-object/from16 v3, p1

    goto :goto_8

    :cond_6
    new-instance v2, Lcom/android/compose/animation/scene/OneOffTransition;

    const/4 v15, 0x0

    move-object v9, v2

    move-object/from16 v10, p3

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p2

    move/from16 v14, p4

    invoke-direct/range {v9 .. v15}, Lcom/android/compose/animation/scene/OneOffTransition;-><init>(Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;ZZ)V

    goto :goto_7

    :goto_8
    invoke-virtual {v3, v2, v0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->startTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Z)V

    iget-object v0, v2, Lcom/android/compose/animation/scene/TransitionState$Transition;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    iget-object v0, v0, Lcom/android/compose/animation/scene/TransformationSpecImpl;->progressSpec:Landroidx/compose/animation/core/AnimationSpec;

    instance-of v4, v0, Landroidx/compose/animation/core/SpringSpec;

    const/4 v13, 0x0

    if-eqz v4, :cond_7

    move-object v4, v0

    check-cast v4, Landroidx/compose/animation/core/SpringSpec;

    goto :goto_9

    :cond_7
    move-object v4, v13

    :goto_9
    if-eqz v4, :cond_8

    iget-object v4, v4, Landroidx/compose/animation/core/SpringSpec;->visibilityThreshold:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_a

    :cond_8
    const v4, 0x3a83126f    # 0.001f

    :goto_a
    invoke-static {v1, v4}, Landroidx/compose/animation/core/AnimatableKt;->Animatable(FF)Landroidx/compose/animation/core/Animatable;

    move-result-object v5

    iput-object v5, v2, Lcom/android/compose/animation/scene/OneOffTransition;->animatable:Landroidx/compose/animation/core/Animatable;

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    new-instance v14, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;

    const/4 v12, 0x0

    move-object v4, v14

    move v15, v7

    move-object v7, v0

    move-object/from16 v9, p1

    move-object v10, v2

    move-object/from16 v11, p2

    invoke-direct/range {v4 .. v12}, Lcom/android/compose/animation/scene/AnimateToSceneKt$animate$1;-><init>(Landroidx/compose/animation/core/Animatable;FLandroidx/compose/animation/core/AnimationSpec;FLcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/OneOffTransition;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p0

    invoke-static {v0, v13, v1, v14, v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v2, Lcom/android/compose/animation/scene/OneOffTransition;->job:Lkotlinx/coroutines/Job;

    return-object v2
.end method

.method public static final animateToScene(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)Lcom/android/compose/animation/scene/OneOffTransition;
    .locals 12

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    instance-of v3, v0, Lcom/android/compose/animation/scene/TransitionState$Idle;

    if-eqz v3, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1f0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v10}, Lcom/android/compose/animation/scene/AnimateToSceneKt;->animate$default(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ZFFZLcom/android/compose/animation/scene/SceneKey;ZI)Lcom/android/compose/animation/scene/OneOffTransition;

    move-result-object v4

    goto/16 :goto_1

    :cond_1
    instance-of v3, v0, Lcom/android/compose/animation/scene/TransitionState$Transition;

    if-eqz v3, :cond_b

    move-object v3, v0

    check-cast v3, Lcom/android/compose/animation/scene/TransitionState$Transition;

    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->isInitiatedByUserInput()Z

    move-result v5

    iget-object v6, v3, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const v8, 0x3a83126f    # 0.001f

    const-string v9, "Check failed."

    iget-object v10, v3, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    if-eqz v7, :cond_4

    invoke-interface {v0}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v0

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_2

    invoke-virtual {p1, v3, p2}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgressVelocity()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v10

    move v10, v11

    invoke-static/range {v0 .. v10}, Lcom/android/compose/animation/scene/AnimateToSceneKt;->animate$default(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ZFFZLcom/android/compose/animation/scene/SceneKey;ZI)Lcom/android/compose/animation/scene/OneOffTransition;

    move-result-object v4

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v10, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgress()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_5

    invoke-virtual {p1, v3, p2}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->finishTransition$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/TransitionState$Transition;Lcom/android/compose/animation/scene/SceneKey;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/android/compose/animation/scene/TransitionState$Transition;->getProgressVelocity()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x180

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v10

    move v10, v11

    invoke-static/range {v0 .. v10}, Lcom/android/compose/animation/scene/AnimateToSceneKt;->animate$default(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ZFFZLcom/android/compose/animation/scene/SceneKey;ZI)Lcom/android/compose/animation/scene/OneOffTransition;

    move-result-object v4

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-interface {p1}, Lcom/android/compose/animation/scene/SceneTransitionLayoutState;->getTransitions()Lcom/android/compose/animation/scene/SceneTransitions;

    move-result-object v7

    iget-object v7, v7, Lcom/android/compose/animation/scene/SceneTransitions;->interruptionHandler:Lcom/android/compose/animation/scene/InterruptionHandler;

    check-cast v7, Lcom/android/compose/animation/scene/DefaultInterruptionHandler;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/compose/animation/scene/InterruptionResult;

    invoke-interface {v3}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v3

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8}, Lcom/android/compose/animation/scene/InterruptionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Z)V

    iget-object v8, v7, Lcom/android/compose/animation/scene/InterruptionResult;->animateFrom:Lcom/android/compose/animation/scene/SceneKey;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v10, Lcom/android/compose/animation/scene/Key;->debugName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/compose/animation/scene/Key;->debugName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "InterruptionResult.animateFrom must be either the fromScene ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") or the toScene ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") of the interrupted transition."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_0
    iget-boolean v9, v7, Lcom/android/compose/animation/scene/InterruptionResult;->chain:Z

    if-eqz v9, :cond_a

    invoke-interface {v0}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0, p1, v8, v4}, Lcom/android/compose/animation/scene/AnimateToSceneKt;->animateToScene(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)Lcom/android/compose/animation/scene/OneOffTransition;

    :cond_a
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v5

    move v5, v10

    move v10, v11

    invoke-static/range {v0 .. v10}, Lcom/android/compose/animation/scene/AnimateToSceneKt;->animate$default(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ZFFZLcom/android/compose/animation/scene/SceneKey;ZI)Lcom/android/compose/animation/scene/OneOffTransition;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
