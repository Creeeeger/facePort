.class public abstract Landroidx/compose/material3/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final CircularIndicatorDiameter:F

.field public static final SemanticsBoundsPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xa

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->SemanticsBoundsPadding:F

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v2, Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$2;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$2;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    sget v0, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->TrackThickness:F

    sget v1, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->Size:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    sput v1, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3e4ccccd    # 0.2f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v5, 0x3f266666    # 0.65f

    invoke-direct {v0, v2, v2, v5, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3ee66666    # 0.45f

    invoke-direct {v0, v5, v2, v6, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v3, v2, v1, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method public static final CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V
    .locals 33

    move/from16 v8, p8

    const/16 v0, 0x10

    const/4 v1, 0x4

    move-object/from16 v2, p7

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x6e80f9f

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v3, 0x1

    and-int/lit8 v4, p9, 0x1

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    or-int/lit8 v6, v8, 0x6

    move v7, v6

    move-object/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v8, 0x6

    if-nez v6, :cond_2

    move-object/from16 v6, p0

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    or-int/2addr v7, v8

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    move v7, v8

    :goto_1
    and-int/lit8 v9, v8, 0x30

    if-nez v9, :cond_5

    and-int/lit8 v9, p9, 0x2

    if-nez v9, :cond_3

    move-wide/from16 v9, p1

    invoke-virtual {v2, v9, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v9, p1

    :cond_4
    move v11, v0

    :goto_2
    or-int/2addr v7, v11

    goto :goto_3

    :cond_5
    move-wide/from16 v9, p1

    :goto_3
    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move/from16 v11, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v11, v8, 0x180

    if-nez v11, :cond_6

    move/from16 v11, p3

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v7, v12

    :goto_5
    and-int/lit16 v12, v8, 0xc00

    if-nez v12, :cond_a

    and-int/lit8 v12, p9, 0x8

    move-wide/from16 v13, p4

    if-nez v12, :cond_9

    invoke-virtual {v2, v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x800

    goto :goto_6

    :cond_9
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v7, v12

    goto :goto_7

    :cond_a
    move-wide/from16 v13, p4

    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_c

    or-int/lit16 v7, v7, 0x6000

    :cond_b
    move/from16 v12, p6

    goto :goto_9

    :cond_c
    and-int/lit16 v12, v8, 0x6000

    if-nez v12, :cond_b

    move/from16 v12, p6

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v7, v7, v17

    :goto_9
    and-int/lit16 v15, v7, 0x2493

    const/16 v5, 0x2492

    if-ne v15, v5, :cond_f

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v6

    move v4, v11

    move v7, v12

    move-wide v5, v13

    goto/16 :goto_11

    :cond_f
    :goto_a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_13

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/4 v0, 0x2

    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_11

    and-int/lit8 v7, v7, -0x71

    :cond_11
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_12

    and-int/lit16 v7, v7, -0x1c01

    :cond_12
    move-wide v0, v9

    move v4, v11

    move v5, v12

    :goto_b
    move-wide v14, v13

    goto :goto_d

    :cond_13
    :goto_c
    if-eqz v4, :cond_14

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v4

    :cond_14
    const/4 v4, 0x2

    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_15

    sget v4, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget v4, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->TrackThickness:F

    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v4, v2}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v4

    and-int/lit8 v7, v7, -0x71

    move-wide v9, v4

    :cond_15
    if-eqz v1, :cond_16

    sget v1, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    move v11, v1

    :cond_16
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_17

    sget v1, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Transparent:J

    and-int/lit16 v1, v7, -0x1c01

    move v7, v1

    move-wide v13, v4

    :cond_17
    if-eqz v0, :cond_12

    sget v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularIndeterminateStrokeCap:I

    move v5, v0

    move-wide v0, v9

    move v4, v11

    goto :goto_b

    :goto_d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/Density;

    new-instance v13, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v9, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1a

    move-object/from16 p0, v13

    move/from16 p1, v9

    move/from16 p2, v10

    move/from16 p3, v5

    move/from16 p4, v11

    move/from16 p5, v12

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v12, :cond_18

    new-instance v9, Landroidx/compose/animation/core/InfiniteTransition;

    invoke-direct {v9}, Landroidx/compose/animation/core/InfiniteTransition;-><init>()V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    move-object v11, v9

    check-cast v11, Landroidx/compose/animation/core/InfiniteTransition;

    const/4 v10, 0x0

    invoke-virtual {v11, v2, v10}, Landroidx/compose/animation/core/InfiniteTransition;->run$animation_core_release(Landroidx/compose/runtime/Composer;I)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    sget-object v20, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v9, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    const/16 v3, 0x1a04

    move/from16 p0, v5

    const/4 v5, 0x2

    invoke-static {v3, v10, v9, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v3

    const/16 v5, 0x10

    const/16 v22, 0x0

    const v23, 0x81b8

    move-object/from16 v29, v9

    move-object v9, v11

    move-object/from16 v10, v18

    move-object/from16 v30, v11

    move-object/from16 v11, v19

    move-object/from16 v31, v12

    move-object/from16 v12, v20

    move-object/from16 v32, v13

    move-object v13, v3

    move/from16 p1, v4

    move-wide v3, v14

    move-object/from16 v14, v22

    move-object v15, v2

    move/from16 v16, v23

    move/from16 v17, v5

    invoke-static/range {v9 .. v17}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateValue(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v5

    const/16 v9, 0x534

    move-object/from16 v12, v29

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v9, v11, v12, v10}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v9

    invoke-static {v9}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v9

    const/high16 v10, 0x438f0000    # 286.0f

    move-object/from16 v12, v30

    invoke-static {v12, v10, v9, v2}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v9

    sget-object v10, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$endAngle$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$endAngle$1;

    new-instance v13, Landroidx/compose/animation/core/KeyframesSpec;

    new-instance v14, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-direct {v14}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    invoke-virtual {v10, v14}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$endAngle$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v13, v14}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    invoke-static {v13}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v10

    const/high16 v13, 0x43910000    # 290.0f

    invoke-static {v12, v13, v10, v2}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v10

    sget-object v14, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$startAngle$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$startAngle$1;

    new-instance v15, Landroidx/compose/animation/core/KeyframesSpec;

    new-instance v11, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-direct {v11}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;-><init>()V

    invoke-virtual {v14, v11}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$startAngle$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v15, v11}, Landroidx/compose/animation/core/KeyframesSpec;-><init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V

    invoke-static {v15}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v11

    invoke-static {v12, v13, v11, v2}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v11

    invoke-static {v6}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget v13, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    invoke-static {v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    and-int/lit16 v13, v7, 0x1c00

    xor-int/lit16 v13, v13, 0xc00

    const/16 v14, 0x800

    if-le v13, v14, :cond_19

    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v13

    if-nez v13, :cond_1a

    :cond_19
    and-int/lit16 v13, v7, 0xc00

    if-ne v13, v14, :cond_1b

    :cond_1a
    move-object/from16 v14, v32

    const/4 v13, 0x1

    goto :goto_e

    :cond_1b
    move-object/from16 v14, v32

    const/4 v13, 0x0

    :goto_e
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    and-int/lit16 v15, v7, 0x380

    move-object/from16 p2, v6

    const/16 v6, 0x100

    if-ne v15, v6, :cond_1c

    const/4 v6, 0x1

    goto :goto_f

    :cond_1c
    const/4 v6, 0x0

    :goto_f
    or-int/2addr v6, v13

    and-int/lit8 v13, v7, 0x70

    xor-int/lit8 v13, v13, 0x30

    const/16 v15, 0x20

    if-le v13, v15, :cond_1d

    invoke-virtual {v2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v13

    if-nez v13, :cond_1e

    :cond_1d
    and-int/lit8 v7, v7, 0x30

    if-ne v7, v15, :cond_1f

    :cond_1e
    const/16 v21, 0x1

    goto :goto_10

    :cond_1f
    const/16 v21, 0x0

    :goto_10
    or-int v6, v6, v21

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_20

    move-object/from16 v6, v31

    if-ne v7, v6, :cond_21

    :cond_20
    new-instance v7, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;

    move-object/from16 v18, v7

    move-wide/from16 v19, v3

    move-object/from16 v21, v14

    move-object/from16 v22, v5

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v25, v9

    move/from16 v26, p1

    move-wide/from16 v27, v0

    invoke-direct/range {v18 .. v28}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;-><init>(JLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;FJ)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_21
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-static {v12, v7, v2, v5}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move/from16 v7, p0

    move-wide v9, v0

    move-wide v5, v3

    move/from16 v4, p1

    move-object/from16 v1, p2

    :goto_11
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_22

    new-instance v12, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6;

    move-object v0, v12

    move-wide v2, v9

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6;-><init>(Landroidx/compose/ui/Modifier;JFJIII)V

    iput-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method

.method public static final drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 13

    move-object/from16 v10, p5

    iget v0, v10, Landroidx/compose/ui/graphics/drawscope/Stroke;->width:F

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v7

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object v0, p0

    move-wide/from16 v1, p3

    move v3, p1

    move v4, p2

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo(JFFJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method
