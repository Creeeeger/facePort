.class public abstract Landroidx/compose/foundation/lazy/LazyDslKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move/from16 v10, p10

    move/from16 v11, p11

    const/16 v0, 0x80

    const/16 v2, 0x20

    const/4 v3, 0x4

    const/16 v4, 0x10

    const/4 v5, 0x2

    move-object/from16 v6, p9

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x2c266969

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v11, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v9, v10, 0x6

    move v12, v9

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v10, 0x6

    if-nez v9, :cond_2

    move-object/from16 v9, p0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v3

    goto :goto_0

    :cond_1
    move v12, v5

    :goto_0
    or-int/2addr v12, v10

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    move v12, v10

    :goto_1
    and-int/lit8 v13, v10, 0x30

    if-nez v13, :cond_5

    and-int/lit8 v13, v11, 0x2

    if-nez v13, :cond_3

    move-object/from16 v13, p1

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v2

    goto :goto_2

    :cond_3
    move-object/from16 v13, p1

    :cond_4
    move v14, v4

    :goto_2
    or-int/2addr v12, v14

    goto :goto_3

    :cond_5
    move-object/from16 v13, p1

    :goto_3
    and-int/2addr v3, v11

    if-eqz v3, :cond_7

    or-int/lit16 v12, v12, 0x180

    :cond_6
    move-object/from16 v14, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v14, v10, 0x180

    if-nez v14, :cond_6

    move-object/from16 v14, p2

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v15, 0x100

    goto :goto_4

    :cond_8
    move v15, v0

    :goto_4
    or-int/2addr v12, v15

    :goto_5
    and-int/lit8 v15, v11, 0x8

    if-eqz v15, :cond_a

    or-int/lit16 v12, v12, 0xc00

    :cond_9
    move/from16 v5, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v5, v10, 0xc00

    if-nez v5, :cond_9

    move/from16 v5, p3

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x800

    goto :goto_6

    :cond_b
    const/16 v17, 0x400

    :goto_6
    or-int v12, v12, v17

    :goto_7
    and-int/lit16 v7, v10, 0x6000

    if-nez v7, :cond_e

    and-int/lit8 v7, v11, 0x10

    if-nez v7, :cond_c

    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v7, p4

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v12, v12, v17

    goto :goto_9

    :cond_e
    move-object/from16 v7, p4

    :goto_9
    and-int/2addr v2, v11

    const/high16 v17, 0x30000

    if-eqz v2, :cond_f

    or-int v12, v12, v17

    move-object/from16 v4, p5

    goto :goto_b

    :cond_f
    and-int v17, v10, v17

    move-object/from16 v4, p5

    if-nez v17, :cond_11

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v12, v12, v18

    :cond_11
    :goto_b
    const/high16 v18, 0x180000

    and-int v18, v10, v18

    if-nez v18, :cond_13

    and-int/lit8 v18, v11, 0x40

    move-object/from16 v1, p6

    if-nez v18, :cond_12

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v19, 0x80000

    :goto_c
    or-int v12, v12, v19

    goto :goto_d

    :cond_13
    move-object/from16 v1, p6

    :goto_d
    and-int/2addr v0, v11

    const/high16 v19, 0xc00000

    if-eqz v0, :cond_15

    :goto_e
    or-int v12, v12, v19

    :cond_14
    const/16 v1, 0x100

    goto :goto_f

    :cond_15
    and-int v19, v10, v19

    move/from16 v1, p7

    if-nez v19, :cond_14

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    goto :goto_e

    :goto_f
    and-int/2addr v1, v11

    const/high16 v18, 0x6000000

    if-eqz v1, :cond_18

    or-int v12, v12, v18

    :cond_17
    move-object/from16 v1, p8

    goto :goto_11

    :cond_18
    and-int v1, v10, v18

    if-nez v1, :cond_17

    move-object/from16 v1, p8

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v12, v12, v18

    :goto_11
    const v18, 0x2492493

    and-int v1, v12, v18

    const v4, 0x2492492

    if-ne v1, v4, :cond_1b

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v8, p6

    move v4, v5

    move-object v5, v7

    move-object v1, v9

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v7, p5

    move/from16 v9, p7

    goto/16 :goto_1d

    :cond_1b
    :goto_12
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v1, 0x1

    and-int/lit8 v4, v10, 0x1

    const v18, -0x380001

    const v19, -0xe001

    if-eqz v4, :cond_20

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/4 v0, 0x2

    and-int/2addr v0, v11

    if-eqz v0, :cond_1d

    and-int/lit8 v12, v12, -0x71

    :cond_1d
    const/16 v0, 0x10

    and-int/2addr v0, v11

    if-eqz v0, :cond_1e

    and-int v12, v12, v19

    :cond_1e
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_1f

    and-int v12, v12, v18

    :cond_1f
    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v1, p7

    move-object v4, v9

    move-object v8, v13

    move-object v0, v14

    goto/16 :goto_1c

    :cond_20
    :goto_13
    if-eqz v8, :cond_21

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    :goto_14
    const/4 v8, 0x2

    goto :goto_15

    :cond_21
    move-object v4, v9

    goto :goto_14

    :goto_15
    and-int/2addr v8, v11

    if-eqz v8, :cond_22

    invoke-static {v6}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v8

    and-int/lit8 v12, v12, -0x71

    goto :goto_16

    :cond_22
    move-object v8, v13

    :goto_16
    const/4 v9, 0x0

    if-eqz v3, :cond_23

    int-to-float v3, v9

    new-instance v13, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v13, v3, v3, v3, v3}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    goto :goto_17

    :cond_23
    move-object v13, v14

    :goto_17
    if-eqz v15, :cond_24

    move v5, v9

    :cond_24
    const/16 v3, 0x10

    and-int/2addr v3, v11

    if-eqz v3, :cond_26

    if-nez v5, :cond_25

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    goto :goto_18

    :cond_25
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Bottom:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    :goto_18
    and-int v12, v12, v19

    move-object v7, v3

    :cond_26
    if-eqz v2, :cond_27

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    goto :goto_19

    :cond_27
    move-object/from16 v2, p5

    :goto_19
    and-int/lit8 v3, v11, 0x40

    if-eqz v3, :cond_2a

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v6}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_28

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v9, :cond_29

    :cond_28
    new-instance v14, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-direct {v14, v3}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_29
    move-object v3, v14

    check-cast v3, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    and-int v9, v12, v18

    move v12, v9

    goto :goto_1a

    :cond_2a
    move-object/from16 v3, p6

    :goto_1a
    if-eqz v0, :cond_2b

    :goto_1b
    move-object v0, v13

    goto :goto_1c

    :cond_2b
    move/from16 v1, p7

    goto :goto_1b

    :goto_1c
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v9, v12, 0xe

    or-int/lit16 v9, v9, 0x6000

    and-int/lit8 v13, v12, 0x70

    or-int/2addr v9, v13

    and-int/lit16 v13, v12, 0x380

    or-int/2addr v9, v13

    and-int/lit16 v13, v12, 0x1c00

    or-int/2addr v9, v13

    shr-int/lit8 v13, v12, 0x3

    const/high16 v14, 0x70000

    and-int/2addr v14, v13

    or-int/2addr v9, v14

    const/high16 v14, 0x380000

    and-int/2addr v13, v14

    or-int/2addr v9, v13

    shl-int/lit8 v13, v12, 0x9

    const/high16 v14, 0xe000000

    and-int/2addr v13, v14

    or-int/2addr v9, v13

    shl-int/lit8 v13, v12, 0xf

    const/high16 v14, 0x70000000

    and-int/2addr v13, v14

    or-int v26, v9, v13

    shr-int/lit8 v9, v12, 0x12

    and-int/lit16 v9, v9, 0x380

    move/from16 v27, v9

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x1

    const/16 v19, 0x0

    const/16 v28, 0xc80

    move-object v12, v4

    move-object v13, v8

    move-object v14, v0

    move v15, v5

    move-object/from16 v17, v3

    move/from16 v18, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v24, p8

    move-object/from16 v25, v6

    invoke-static/range {v12 .. v28}, Landroidx/compose/foundation/lazy/LazyListKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move v9, v1

    move-object v1, v4

    move v4, v5

    move-object v5, v7

    move-object v7, v2

    move-object v2, v8

    move-object v8, v3

    move-object v3, v0

    :goto_1d
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_2c

    new-instance v13, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$1;

    move-object v0, v13

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method
