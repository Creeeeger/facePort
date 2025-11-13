.class public abstract Lcom/samsung/sesl/compose/component/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SeslIndeterminateCircularProgressIndicator-5cZf5Bw(Landroidx/compose/ui/Modifier;JJFFFFLandroidx/compose/runtime/Composer;II)V
    .locals 28

    move/from16 v6, p5

    move/from16 v10, p10

    const/4 v0, 0x6

    const/16 v1, 0x10

    const/16 v2, 0x20

    move-object/from16 v3, p9

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x2f45f625

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p11, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v5, :cond_0

    or-int/lit8 v9, v10, 0x6

    move v11, v9

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v10, 0xe

    if-nez v9, :cond_2

    move-object/from16 v9, p0

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v7

    goto :goto_0

    :cond_1
    move v11, v8

    :goto_0
    or-int/2addr v11, v10

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    move v11, v10

    :goto_1
    and-int/lit8 v12, v10, 0x70

    if-nez v12, :cond_5

    and-int/lit8 v12, p11, 0x2

    if-nez v12, :cond_3

    move-wide/from16 v12, p1

    invoke-virtual {v3, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v2

    goto :goto_2

    :cond_3
    move-wide/from16 v12, p1

    :cond_4
    move v14, v1

    :goto_2
    or-int/2addr v11, v14

    goto :goto_3

    :cond_5
    move-wide/from16 v12, p1

    :goto_3
    and-int/lit8 v14, p11, 0x4

    if-eqz v14, :cond_6

    or-int/lit16 v11, v11, 0x180

    move-wide/from16 v7, p3

    goto :goto_5

    :cond_6
    and-int/lit16 v15, v10, 0x380

    move-wide/from16 v7, p3

    if-nez v15, :cond_8

    invoke-virtual {v3, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x100

    goto :goto_4

    :cond_7
    const/16 v16, 0x80

    :goto_4
    or-int v11, v11, v16

    :cond_8
    :goto_5
    and-int/lit8 v16, p11, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v11, v11, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v15, v10, 0x1c00

    if-nez v15, :cond_b

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v11, v15

    :cond_b
    :goto_7
    const v15, 0xe000

    and-int/2addr v15, v10

    if-nez v15, :cond_e

    and-int/lit8 v15, p11, 0x10

    if-nez v15, :cond_c

    move/from16 v15, p6

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_c
    move/from16 v15, p6

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v11, v11, v17

    goto :goto_9

    :cond_e
    move/from16 v15, p6

    :goto_9
    const/high16 v17, 0x70000

    and-int v17, v10, v17

    if-nez v17, :cond_10

    and-int/lit8 v17, p11, 0x20

    move/from16 v0, p7

    if-nez v17, :cond_f

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_f

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v18, 0x10000

    :goto_a
    or-int v11, v11, v18

    goto :goto_b

    :cond_10
    move/from16 v0, p7

    :goto_b
    const/high16 v18, 0x380000

    and-int v18, v10, v18

    if-nez v18, :cond_12

    and-int/lit8 v18, p11, 0x40

    move/from16 v2, p8

    if-nez v18, :cond_11

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_11

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v18, 0x80000

    :goto_c
    or-int v11, v11, v18

    goto :goto_d

    :cond_12
    move/from16 v2, p8

    :goto_d
    const v18, 0x2db6db

    and-int v1, v11, v18

    const v4, 0x92492

    if-ne v1, v4, :cond_14

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v11, v2

    move-wide v4, v7

    move-object v1, v9

    move-wide v7, v12

    move v9, v0

    goto/16 :goto_18

    :cond_14
    :goto_e
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v1, 0x1

    and-int/lit8 v4, v10, 0x1

    const v18, -0x380001

    const v20, -0x70001

    const v21, -0xe001

    if-eqz v4, :cond_1a

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_10

    :cond_15
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/4 v4, 0x2

    and-int/lit8 v5, p11, 0x2

    if-eqz v5, :cond_16

    and-int/lit8 v11, v11, -0x71

    :cond_16
    const/16 v4, 0x10

    and-int/lit8 v4, p11, 0x10

    if-eqz v4, :cond_17

    and-int v11, v11, v21

    :cond_17
    const/16 v4, 0x20

    and-int/lit8 v5, p11, 0x20

    if-eqz v5, :cond_18

    and-int v11, v11, v20

    :cond_18
    and-int/lit8 v4, p11, 0x40

    if-eqz v4, :cond_19

    and-int v11, v11, v18

    :cond_19
    move/from16 v5, p6

    move-wide/from16 v26, v7

    move-object v4, v9

    :goto_f
    move v9, v11

    move-wide v7, v12

    goto :goto_15

    :cond_1a
    :goto_10
    if-eqz v5, :cond_1b

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_11
    const/4 v5, 0x2

    goto :goto_12

    :cond_1b
    move-object v4, v9

    goto :goto_11

    :goto_12
    and-int/lit8 v9, p11, 0x2

    if-eqz v9, :cond_1c

    sget-object v5, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    move-result-object v5

    iget-wide v12, v5, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->primary:J

    and-int/lit8 v11, v11, -0x71

    :cond_1c
    if-eqz v14, :cond_1d

    sget-object v5, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v7, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->indeterminateCircularPointColor:J

    :cond_1d
    const/16 v5, 0x10

    and-int/lit8 v5, p11, 0x10

    if-eqz v5, :cond_1e

    const/high16 v5, 0x3dc00000    # 0.09375f

    mul-float/2addr v5, v6

    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    and-int v11, v11, v21

    :goto_13
    const/16 v9, 0x20

    goto :goto_14

    :cond_1e
    move/from16 v5, p6

    goto :goto_13

    :goto_14
    and-int/lit8 v14, p11, 0x20

    if-eqz v14, :cond_1f

    const v0, 0x3ebaaa3b    # 0.36458f

    mul-float/2addr v0, v6

    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    and-int v9, v11, v20

    move v11, v9

    :cond_1f
    and-int/lit8 v9, p11, 0x40

    if-eqz v9, :cond_20

    const v2, 0x3e555476    # 0.20833f

    mul-float/2addr v2, v6

    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    and-int v11, v11, v18

    :cond_20
    move-wide/from16 v26, v7

    goto :goto_f

    :goto_15
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const-string v11, ""

    const/4 v14, 0x0

    invoke-static {v11, v3, v14}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v19

    sget-object v11, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    const/16 v12, 0x3e8

    const/4 v13, 0x2

    invoke-static {v12, v14, v11, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v11

    const/4 v12, 0x0

    move/from16 p0, v2

    const-wide/16 v1, 0x0

    const/4 v13, 0x6

    invoke-static {v13, v11, v12, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v15

    const/high16 v13, 0x43b40000    # 360.0f

    const-string v16, ""

    const/4 v12, 0x0

    const/16 v17, 0x71b8

    const/16 v18, 0x0

    move-object/from16 v11, v19

    move v1, v14

    move-object v14, v15

    const/16 v2, 0x100

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v15

    sget-object v11, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/unit/Density;

    invoke-interface {v12, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v12

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/unit/Density;

    sub-float v14, v0, p0

    sget-object v16, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {v13, v14}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v13

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/unit/Density;

    invoke-interface {v11, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v14

    const v11, -0x61f1f74e

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v11

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v16

    or-int v11, v11, v16

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v11, :cond_21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v11, :cond_22

    :cond_21
    new-instance v2, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$distancePx$2$1;

    invoke-direct {v2, v12, v13}, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$distancePx$2$1;-><init>(FF)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_22
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v2

    sget-object v11, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    move/from16 p2, v14

    move-object/from16 p1, v15

    const/4 v1, 0x4

    const-wide/16 v14, 0x0

    invoke-static {v1, v2, v11, v14, v15}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v14

    const/16 v18, 0x0

    const-string v15, ""

    const/16 v17, 0x7008

    move-object/from16 v11, v19

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v11

    invoke-static {v4}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v12, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    iget-object v2, v2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v12, v2}, Landroidx/compose/ui/draw/RotateKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v12, -0x61f1b2d4

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit8 v12, v9, 0x70

    xor-int/lit8 v12, v12, 0x30

    const/16 v13, 0x20

    if-le v12, v13, :cond_23

    invoke-virtual {v3, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v12

    if-nez v12, :cond_24

    :cond_23
    and-int/lit8 v12, v9, 0x30

    if-ne v12, v13, :cond_25

    :cond_24
    const/4 v14, 0x1

    goto :goto_16

    :cond_25
    const/4 v14, 0x0

    :goto_16
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v12

    or-int/2addr v12, v14

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    and-int/lit16 v9, v9, 0x380

    const/16 v13, 0x100

    if-ne v9, v13, :cond_26

    const/16 v20, 0x1

    goto :goto_17

    :cond_26
    const/16 v20, 0x0

    :goto_17
    or-int v9, v12, v20

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_27

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v9, :cond_28

    :cond_27
    new-instance v12, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;

    move-object/from16 v19, v12

    move-wide/from16 v20, v7

    move/from16 v22, v1

    move-wide/from16 v23, v26

    move-object/from16 v25, v11

    invoke-direct/range {v19 .. v25}, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$2$1;-><init>(JFJLandroidx/compose/runtime/State;)V

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_28
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v12, v3, v1}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move/from16 v11, p0

    move v9, v0

    move-object v1, v4

    move v15, v5

    move-wide/from16 v4, v26

    :goto_18
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_29

    new-instance v13, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;

    move-object v0, v13

    move-wide v2, v7

    move/from16 v6, p5

    move v7, v15

    move v8, v9

    move v9, v11

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$3;-><init>(Landroidx/compose/ui/Modifier;JJFFFFII)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void
.end method

.method public static final SeslIndeterminateCircularProgressIndicator-h1eT-Ww(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/runtime/Composer;II)V
    .locals 20

    move/from16 v7, p7

    const/4 v0, 0x4

    const/4 v1, 0x2

    move-object/from16 v2, p6

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x214f92a5

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p8, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v4, v7, 0x6

    move v5, v4

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v7, 0xe

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    or-int/2addr v5, v7

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move v5, v7

    :goto_1
    and-int/lit8 v6, v7, 0x70

    if-nez v6, :cond_4

    and-int/lit8 v6, p8, 0x2

    move-wide/from16 v8, p1

    if-nez v6, :cond_3

    invoke-virtual {v2, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    goto :goto_3

    :cond_4
    move-wide/from16 v8, p1

    :goto_3
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_5

    or-int/lit16 v5, v5, 0x180

    move-wide/from16 v10, p3

    goto :goto_5

    :cond_5
    and-int/lit16 v6, v7, 0x380

    move-wide/from16 v10, p3

    if-nez v6, :cond_7

    invoke-virtual {v2, v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v5, v6

    :cond_7
    :goto_5
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v5, v5, 0xc00

    :cond_8
    move/from16 v12, p5

    goto :goto_7

    :cond_9
    and-int/lit16 v12, v7, 0x1c00

    if-nez v12, :cond_8

    move/from16 v12, p5

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v5, v13

    :goto_7
    and-int/lit16 v13, v5, 0x16db

    const/16 v14, 0x492

    if-ne v13, v14, :cond_c

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v4

    move-wide v4, v10

    move v6, v12

    goto/16 :goto_d

    :cond_c
    :goto_8
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_10

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_e

    and-int/lit8 v5, v5, -0x71

    :cond_e
    move-object v3, v4

    :cond_f
    move-wide v0, v8

    move v6, v12

    :goto_9
    move v8, v5

    move-wide v4, v10

    goto :goto_c

    :cond_10
    :goto_a
    if-eqz v3, :cond_11

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_11
    move-object v3, v4

    :goto_b
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_12

    sget-object v1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    move-result-object v1

    iget-wide v8, v1, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;->primary:J

    and-int/lit8 v5, v5, -0x71

    :cond_12
    if-eqz v0, :cond_13

    sget-object v0, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->indeterminateCircularPointColor:J

    move-wide v10, v0

    :cond_13
    if-eqz v6, :cond_f

    sget-object v0, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->CircularProgressSmall:F

    move v6, v0

    move-wide v0, v8

    goto :goto_9

    :goto_c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 v15, v8, 0x1ffe

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x70

    move-object v8, v3

    move-wide v9, v0

    move-wide v11, v4

    move v13, v6

    move/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v2

    invoke-static/range {v8 .. v19}, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt;->SeslIndeterminateCircularProgressIndicator-5cZf5Bw(Landroidx/compose/ui/Modifier;JJFFFFLandroidx/compose/runtime/Composer;II)V

    move-wide v8, v0

    move-object v1, v3

    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_14

    new-instance v11, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$1;

    move-object v0, v11

    move-wide v2, v8

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt$SeslIndeterminateCircularProgressIndicator$1;-><init>(Landroidx/compose/ui/Modifier;JJFII)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
