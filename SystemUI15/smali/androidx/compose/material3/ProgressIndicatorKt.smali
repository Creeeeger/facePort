.class public abstract Landroidx/compose/material3/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final CircularIndicatorDiameter:F

.field public static final SemanticsBoundsPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xa

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->SemanticsBoundsPadding:F

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v2, Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$1;

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$2;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$IncreaseSemanticsBounds$2;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    sget-object v0, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/ProgressIndicatorTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->Size:F

    sget v1, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->TrackThickness:F

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    sput v0, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

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
    .locals 34

    move/from16 v8, p8

    const/16 v0, 0x10

    const/4 v1, 0x4

    const/4 v2, 0x6

    move-object/from16 v3, p7

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x6e80f9f

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p9, 0x1

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    or-int/lit8 v7, v8, 0x6

    move v9, v7

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v8, 0x6

    if-nez v7, :cond_2

    move-object/from16 v7, p0

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_0
    or-int/2addr v9, v8

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    move v9, v8

    :goto_1
    and-int/lit8 v10, v8, 0x30

    if-nez v10, :cond_5

    and-int/lit8 v10, p9, 0x2

    if-nez v10, :cond_3

    move-wide/from16 v10, p1

    invoke-virtual {v3, v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v10, p1

    :cond_4
    move v12, v0

    :goto_2
    or-int/2addr v9, v12

    goto :goto_3

    :cond_5
    move-wide/from16 v10, p1

    :goto_3
    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move/from16 v12, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v12, v8, 0x180

    if-nez v12, :cond_6

    move/from16 v12, p3

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x100

    goto :goto_4

    :cond_8
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v9, v13

    :goto_5
    and-int/lit16 v13, v8, 0xc00

    if-nez v13, :cond_a

    and-int/lit8 v13, p9, 0x8

    move-wide/from16 v14, p4

    if-nez v13, :cond_9

    invoke-virtual {v3, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v9, v13

    goto :goto_7

    :cond_a
    move-wide/from16 v14, p4

    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_c

    or-int/lit16 v9, v9, 0x6000

    :cond_b
    move/from16 v13, p6

    goto :goto_9

    :cond_c
    and-int/lit16 v13, v8, 0x6000

    if-nez v13, :cond_b

    move/from16 v13, p6

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_8

    :cond_d
    const/16 v18, 0x2000

    :goto_8
    or-int v9, v9, v18

    :goto_9
    and-int/lit16 v2, v9, 0x2493

    const/16 v6, 0x2492

    if-ne v2, v6, :cond_f

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v7

    move v4, v12

    move v7, v13

    move-wide v5, v14

    goto/16 :goto_11

    :cond_f
    :goto_a
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_13

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/4 v0, 0x2

    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_11

    and-int/lit8 v9, v9, -0x71

    :cond_11
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_12

    and-int/lit16 v9, v9, -0x1c01

    :cond_12
    move-wide v0, v10

    move v2, v12

    move/from16 v31, v13

    :goto_b
    move-wide v5, v14

    move v15, v9

    goto :goto_d

    :cond_13
    :goto_c
    if-eqz v5, :cond_14

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v7, v2

    :cond_14
    const/4 v2, 0x2

    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_15

    sget-object v2, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/ProgressIndicatorTokens;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/material3/tokens/ProgressIndicatorTokens;->ActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v2, v3}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v5

    and-int/lit8 v9, v9, -0x71

    move-wide v10, v5

    :cond_15
    if-eqz v1, :cond_16

    sget-object v1, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularStrokeWidth:F

    move v12, v1

    :cond_16
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_17

    sget-object v1, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Transparent:J

    and-int/lit16 v5, v9, -0x1c01

    move-wide v14, v1

    move v9, v5

    :cond_17
    if-eqz v0, :cond_12

    sget-object v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorDefaults;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/material3/ProgressIndicatorDefaults;->CircularIndeterminateStrokeCap:I

    move/from16 v31, v0

    move-wide v0, v10

    move v2, v12

    goto :goto_b

    :goto_d
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/Density;

    new-instance v14, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-interface {v9, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v21

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x1a

    const/16 v27, 0x0

    move-object/from16 v20, v14

    move/from16 v23, v31

    invoke-direct/range {v20 .. v27}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v13, 0x0

    invoke-static {v13, v3, v4}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    move-result-object v20

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget v9, Lkotlin/jvm/internal/IntCompanionObject;->$r8$clinit:I

    sget-object v21, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v9, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    const/16 v4, 0x1a04

    const/4 v13, 0x2

    invoke-static {v4, v12, v9, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    move-object/from16 p2, v14

    move/from16 p1, v15

    const-wide/16 v14, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static {v12, v4, v13, v14, v15}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v4

    const/16 v23, 0x10

    const/16 v24, 0x0

    const v25, 0x81b8

    move-object v12, v9

    move-object/from16 v9, v20

    move-object/from16 v32, v12

    move-object/from16 v12, v21

    move-object v8, v13

    move-object v13, v4

    move-object/from16 v4, p2

    const/16 v15, 0x800

    move-object/from16 v14, v24

    move/from16 v33, p1

    move-object v15, v3

    move/from16 v16, v25

    move/from16 v17, v23

    invoke-static/range {v9 .. v17}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateValue(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v9

    const/16 v10, 0x534

    move-object/from16 v13, v32

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v10, v12, v13, v11}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v10

    const/4 v11, 0x6

    const-wide/16 v13, 0x0

    invoke-static {v11, v10, v8, v13, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v15, 0x438f0000    # 286.0f

    const/16 v16, 0x0

    const/16 v17, 0x11b8

    const/16 v19, 0x8

    move-object/from16 p0, v20

    move/from16 p1, v11

    move/from16 p2, v15

    move-object/from16 p3, v10

    move-object/from16 p4, v16

    move-object/from16 p5, v3

    move/from16 p6, v17

    move/from16 p7, v19

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v10

    sget-object v11, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$endAngle$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$endAngle$1;

    invoke-static {v11}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v11

    const/4 v15, 0x6

    invoke-static {v15, v11, v8, v13, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v11

    const/4 v15, 0x0

    const/high16 v16, 0x43910000    # 290.0f

    const/16 v19, 0x0

    const/16 v23, 0x8

    move/from16 p1, v15

    move/from16 p2, v16

    move-object/from16 p3, v11

    move-object/from16 p4, v19

    move/from16 p7, v23

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v11

    sget-object v15, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$startAngle$1;->INSTANCE:Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$startAngle$1;

    invoke-static {v15}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object v15

    const/4 v12, 0x6

    invoke-static {v12, v15, v8, v13, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(ILandroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    move-result-object v8

    const/4 v12, 0x0

    const/high16 v13, 0x43910000    # 290.0f

    const/4 v14, 0x0

    const/16 v15, 0x8

    move/from16 p1, v12

    move/from16 p2, v13

    move-object/from16 p3, v8

    move-object/from16 p4, v14

    move/from16 p7, v15

    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-result-object v8

    invoke-static {v7}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget v13, Landroidx/compose/material3/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    invoke-static {v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    move/from16 v13, v33

    and-int/lit16 v14, v13, 0x1c00

    xor-int/lit16 v14, v14, 0xc00

    const/16 v15, 0x800

    if-le v14, v15, :cond_18

    invoke-virtual {v3, v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v14

    if-nez v14, :cond_19

    :cond_18
    and-int/lit16 v14, v13, 0xc00

    if-ne v14, v15, :cond_1a

    :cond_19
    const/4 v14, 0x1

    goto :goto_e

    :cond_1a
    const/4 v14, 0x0

    :goto_e
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v14, v15

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v14, v15

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v14, v15

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v14, v15

    invoke-virtual {v3, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v14, v15

    and-int/lit16 v15, v13, 0x380

    move-object/from16 p0, v7

    const/16 v7, 0x100

    if-ne v15, v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_f

    :cond_1b
    const/4 v7, 0x0

    :goto_f
    or-int/2addr v7, v14

    and-int/lit8 v14, v13, 0x70

    xor-int/lit8 v14, v14, 0x30

    const/16 v15, 0x20

    if-le v14, v15, :cond_1c

    invoke-virtual {v3, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v14

    if-nez v14, :cond_1d

    :cond_1c
    and-int/lit8 v13, v13, 0x30

    if-ne v13, v15, :cond_1e

    :cond_1d
    const/16 v22, 0x1

    goto :goto_10

    :cond_1e
    const/16 v22, 0x0

    :goto_10
    or-int v7, v7, v22

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v7, :cond_1f

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v7, :cond_20

    :cond_1f
    new-instance v13, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;

    move-object/from16 v20, v13

    move-wide/from16 v21, v5

    move-object/from16 v23, v4

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v8

    move-object/from16 v27, v10

    move/from16 v28, v2

    move-wide/from16 v29, v0

    invoke-direct/range {v20 .. v30}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$5$1;-><init>(JLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;FJ)V

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_20
    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-static {v12, v13, v3, v4}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-wide v10, v0

    move v4, v2

    move/from16 v7, v31

    move-object/from16 v1, p0

    :goto_11
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_21

    new-instance v13, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6;

    move-object v0, v13

    move-wide v2, v10

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt$CircularProgressIndicator$6;-><init>(Landroidx/compose/ui/Modifier;JFJIII)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_21
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

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v12, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->DefaultBlendMode:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v0, p0

    move-wide/from16 v1, p3

    move v3, p1

    move v4, p2

    move-object/from16 v10, p5

    invoke-interface/range {v0 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo(JFFJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    return-void
.end method
