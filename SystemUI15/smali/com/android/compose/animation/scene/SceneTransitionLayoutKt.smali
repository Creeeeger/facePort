.class public abstract Lcom/android/compose/animation/scene/SceneTransitionLayoutKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SceneTransitionLayout(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/SwipeSourceDetector;Lcom/android/compose/animation/scene/SwipeDetector;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move/from16 v7, p7

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-object/from16 v4, p6

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x56de3c13

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, p8, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v7, 0x6

    move v6, v5

    move-object/from16 v5, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v7, 0xe

    if-nez v5, :cond_2

    move-object/from16 v5, p0

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    or-int/2addr v6, v7

    goto :goto_1

    :cond_2
    move-object/from16 v5, p0

    move v6, v7

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v6, v6, 0x30

    :cond_3
    move-object/from16 v8, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v8, v7, 0x70

    if-nez v8, :cond_3

    move-object/from16 v8, p1

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v1

    goto :goto_2

    :cond_5
    move v9, v0

    :goto_2
    or-int/2addr v6, v9

    :goto_3
    and-int/lit8 v3, p8, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v6, v6, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v7, 0x380

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v6, v10

    :goto_5
    and-int/lit8 v10, p8, 0x8

    if-eqz v10, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v11, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v11, v7, 0x1c00

    if-nez v11, :cond_9

    move-object/from16 v11, p3

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v6, v12

    :goto_7
    and-int/lit8 v0, p8, 0x10

    const v12, 0xe000

    if-eqz v0, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move/from16 v13, p4

    goto :goto_9

    :cond_d
    and-int v13, v7, v12

    if-nez v13, :cond_c

    move/from16 v13, p4

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x4000

    goto :goto_8

    :cond_e
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v6, v14

    :goto_9
    and-int/lit8 v1, p8, 0x20

    const/high16 v14, 0x30000

    if-eqz v1, :cond_10

    or-int/2addr v6, v14

    :cond_f
    move-object/from16 v1, p5

    goto :goto_b

    :cond_10
    const/high16 v1, 0x70000

    and-int/2addr v1, v7

    if-nez v1, :cond_f

    move-object/from16 v1, p5

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v6, v15

    :goto_b
    const v15, 0x5b6db

    and-int/2addr v15, v6

    const v12, 0x12492

    if-ne v15, v12, :cond_13

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v8

    move-object v3, v9

    goto :goto_11

    :cond_13
    :goto_c
    if-eqz v2, :cond_14

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_d

    :cond_14
    move-object v2, v8

    :goto_d
    if-eqz v3, :cond_15

    sget-object v3, Lcom/android/compose/animation/scene/EdgeDetectorKt;->DefaultEdgeDetector:Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;

    goto :goto_e

    :cond_15
    move-object v3, v9

    :goto_e
    if-eqz v10, :cond_16

    sget-object v8, Lcom/android/compose/animation/scene/SwipeDetectorKt;->DefaultSwipeDetector:Lcom/android/compose/animation/scene/PassthroughSwipeDetector;

    move-object/from16 v18, v8

    goto :goto_f

    :cond_16
    move-object/from16 v18, v11

    :goto_f
    if-eqz v0, :cond_17

    const v0, 0x3d4ccccd    # 0.05f

    goto :goto_10

    :cond_17
    move v0, v13

    :goto_10
    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v8, v6, 0xe

    or-int/2addr v8, v14

    and-int/lit8 v9, v6, 0x70

    or-int/2addr v8, v9

    and-int/lit16 v9, v6, 0x380

    or-int/2addr v8, v9

    and-int/lit16 v9, v6, 0x1c00

    or-int/2addr v8, v9

    const v9, 0xe000

    and-int/2addr v9, v6

    or-int/2addr v8, v9

    shl-int/lit8 v6, v6, 0x3

    const/high16 v9, 0x380000

    and-int/2addr v6, v9

    or-int v16, v8, v6

    const/16 v17, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v2

    move-object v10, v3

    move-object/from16 v11, v18

    move v12, v0

    move-object/from16 v14, p5

    move-object v15, v4

    invoke-static/range {v8 .. v17}, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt;->SceneTransitionLayoutForTesting(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/SwipeSourceDetector;Lcom/android/compose/animation/scene/SwipeDetector;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move v13, v0

    move-object/from16 v11, v18

    :goto_11
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_18

    new-instance v10, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayout$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v4, v11

    move v5, v13

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayout$1;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/SwipeSourceDetector;Lcom/android/compose/animation/scene/SwipeDetector;FLkotlin/jvm/functions/Function1;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final SceneTransitionLayoutForTesting(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/SwipeSourceDetector;Lcom/android/compose/animation/scene/SwipeDetector;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v14, p6

    move/from16 v15, p8

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-object/from16 v5, p7

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x3d74761

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, p9, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v15, 0xe

    if-nez v4, :cond_2

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_2
    move v4, v15

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v15, 0x70

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v1

    goto :goto_2

    :cond_5
    move v8, v0

    :goto_2
    or-int/2addr v4, v8

    :goto_3
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v15, 0x380

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v4, v9

    :goto_5
    and-int/lit8 v9, p9, 0x8

    if-eqz v9, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v15, 0x1c00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v4, v11

    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move/from16 v11, p4

    goto :goto_9

    :cond_d
    const v11, 0xe000

    and-int/2addr v11, v15

    if-nez v11, :cond_c

    move/from16 v11, p4

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x4000

    goto :goto_8

    :cond_e
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v4, v12

    :goto_9
    and-int/lit8 v1, p9, 0x20

    if-eqz v1, :cond_10

    const/high16 v12, 0x30000

    or-int/2addr v4, v12

    :cond_f
    move-object/from16 v12, p5

    goto :goto_b

    :cond_10
    const/high16 v12, 0x70000

    and-int/2addr v12, v15

    if-nez v12, :cond_f

    move-object/from16 v12, p5

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const/high16 v13, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v13, 0x10000

    :goto_a
    or-int/2addr v4, v13

    :goto_b
    and-int/lit8 v13, p9, 0x40

    if-eqz v13, :cond_13

    const/high16 v13, 0x180000

    :goto_c
    or-int/2addr v4, v13

    :cond_12
    move/from16 v16, v4

    goto :goto_d

    :cond_13
    const/high16 v13, 0x380000

    and-int/2addr v13, v15

    if-nez v13, :cond_12

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    const/high16 v13, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v13, 0x80000

    goto :goto_c

    :goto_d
    const v4, 0x2db6db

    and-int v4, v16, v4

    const v13, 0x92492

    if-ne v4, v13, :cond_16

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v7

    move-object v3, v8

    move-object v4, v10

    move/from16 v20, v11

    move-object v11, v5

    move/from16 v5, v20

    goto/16 :goto_14

    :cond_16
    :goto_e
    if-eqz v2, :cond_17

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v4, v2

    goto :goto_f

    :cond_17
    move-object v4, v7

    :goto_f
    if-eqz v3, :cond_18

    sget-object v2, Lcom/android/compose/animation/scene/EdgeDetectorKt;->DefaultEdgeDetector:Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;

    move-object/from16 v17, v2

    goto :goto_10

    :cond_18
    move-object/from16 v17, v8

    :goto_10
    if-eqz v9, :cond_19

    sget-object v2, Lcom/android/compose/animation/scene/SwipeDetectorKt;->DefaultSwipeDetector:Lcom/android/compose/animation/scene/PassthroughSwipeDetector;

    move-object v3, v2

    goto :goto_11

    :cond_19
    move-object v3, v10

    :goto_11
    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_12

    :cond_1a
    move/from16 v18, v11

    :goto_12
    if-eqz v1, :cond_1b

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_13

    :cond_1b
    move-object v2, v12

    :goto_13
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_1c

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v5}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, v5}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v0

    :cond_1c
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v13, v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v0, 0x3bbea32

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1e

    new-instance v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    move-object v8, v6

    check-cast v8, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    move-object v7, v0

    move-object/from16 v9, v19

    move-object/from16 v10, v17

    move/from16 v11, v18

    move-object/from16 v12, p6

    invoke-direct/range {v7 .. v13}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;-><init>(Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;Landroidx/compose/ui/unit/Density;Lcom/android/compose/animation/scene/SwipeSourceDetector;FLkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V

    if-eqz v2, :cond_1d

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1e
    move-object v7, v0

    check-cast v7, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v7, v14}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->updateScenes$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lkotlin/jvm/functions/Function1;)V

    new-instance v8, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v12, v2

    move-object v2, v7

    move-object v10, v3

    move-object/from16 v3, v19

    move-object v9, v4

    move-object/from16 v4, v17

    move-object v11, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/ui/unit/Density;Lcom/android/compose/animation/scene/SwipeSourceDetector;F)V

    invoke-static {v8, v11}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    shr-int/lit8 v0, v16, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0x180

    shr-int/lit8 v1, v16, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    invoke-virtual {v7, v9, v10, v11, v0}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->Content$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/SwipeDetector;Landroidx/compose/runtime/Composer;I)V

    move-object v2, v9

    move-object v4, v10

    move-object/from16 v3, v17

    move/from16 v5, v18

    :goto_14
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1f

    new-instance v11, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v6, v12

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$2;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/SwipeSourceDetector;Lcom/android/compose/animation/scene/SwipeDetector;FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method
