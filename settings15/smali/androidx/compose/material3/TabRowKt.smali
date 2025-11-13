.class public abstract Landroidx/compose/material3/TabRowKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TabRowIndicatorSpec:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/animation/core/EasingKt;->FastOutSlowInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v1, 0xfa

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TabRowKt;->TabRowIndicatorSpec:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method public static final TabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move/from16 v1, p0

    move/from16 v10, p10

    const/16 v0, 0x10

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/4 v4, 0x4

    move-object/from16 v5, p9

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0x477a035a

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, p11, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v10, 0x6

    if-nez v6, :cond_2

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    or-int/2addr v6, v10

    goto :goto_1

    :cond_2
    move v6, v10

    :goto_1
    and-int/lit8 v3, p11, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v6, v6, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v10, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v2

    goto :goto_2

    :cond_5
    move v8, v0

    :goto_2
    or-int/2addr v6, v8

    :goto_3
    and-int/lit16 v8, v10, 0x180

    if-nez v8, :cond_8

    and-int/lit8 v8, p11, 0x4

    if-nez v8, :cond_6

    move-wide/from16 v8, p2

    invoke-virtual {v5, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v8, p2

    :cond_7
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v6, v11

    goto :goto_5

    :cond_8
    move-wide/from16 v8, p2

    :goto_5
    and-int/lit16 v11, v10, 0xc00

    if-nez v11, :cond_b

    and-int/lit8 v11, p11, 0x8

    if-nez v11, :cond_9

    move-wide/from16 v11, p4

    invoke-virtual {v5, v11, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v11, p4

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v6, v13

    goto :goto_7

    :cond_b
    move-wide/from16 v11, p4

    :goto_7
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move-object/from16 v13, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_c

    move-object/from16 v13, p6

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x4000

    goto :goto_8

    :cond_e
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v6, v14

    :goto_9
    and-int/lit8 v2, p11, 0x20

    const/high16 v14, 0x30000

    if-eqz v2, :cond_10

    or-int/2addr v6, v14

    :cond_f
    move-object/from16 v14, p7

    goto :goto_b

    :cond_10
    and-int/2addr v14, v10

    if-nez v14, :cond_f

    move-object/from16 v14, p7

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v6, v15

    :goto_b
    and-int/lit8 v15, p11, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_13

    or-int v6, v6, v16

    :cond_12
    move-object/from16 v15, p8

    goto :goto_d

    :cond_13
    and-int v15, v10, v16

    if-nez v15, :cond_12

    move-object/from16 v15, p8

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_14
    const/high16 v16, 0x80000

    :goto_c
    or-int v6, v6, v16

    :goto_d
    const v16, 0x92493

    and-int v4, v6, v16

    const v7, 0x92492

    if-ne v4, v7, :cond_16

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-wide v3, v8

    move-wide/from16 v21, v11

    move-object v7, v13

    move-object v8, v14

    goto/16 :goto_14

    :cond_16
    :goto_e
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v10, 0x1

    if-eqz v4, :cond_1b

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/4 v0, 0x4

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_18

    and-int/lit16 v6, v6, -0x381

    :cond_18
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_19

    and-int/lit16 v6, v6, -0x1c01

    :cond_19
    move-object/from16 v3, p1

    move-wide v7, v8

    :cond_1a
    move-wide/from16 v21, v11

    move-object v0, v13

    move-object v2, v14

    goto :goto_13

    :cond_1b
    :goto_f
    if-eqz v3, :cond_1c

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    :goto_10
    const/4 v4, 0x4

    goto :goto_11

    :cond_1c
    move-object/from16 v3, p1

    goto :goto_10

    :goto_11
    and-int/lit8 v4, p11, 0x4

    if-eqz v4, :cond_1d

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v4, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v7

    and-int/lit16 v6, v6, -0x381

    goto :goto_12

    :cond_1d
    move-wide v7, v8

    :goto_12
    and-int/lit8 v4, p11, 0x8

    if-eqz v4, :cond_1e

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/PrimaryNavigationTabTokens;->ActiveLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v4, v5}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v11

    and-int/lit16 v4, v6, -0x1c01

    move v6, v4

    :cond_1e
    if-eqz v0, :cond_1f

    new-instance v0, Landroidx/compose/material3/TabRowKt$TabRow$1;

    invoke-direct {v0, v1}, Landroidx/compose/material3/TabRowKt$TabRow$1;-><init>(I)V

    const v4, -0x7a5029ff

    invoke-static {v4, v0, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object v13, v0

    :cond_1f
    if-eqz v2, :cond_1a

    sget-object v0, Landroidx/compose/material3/ComposableSingletons$TabRowKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v2, v0

    move-wide/from16 v21, v11

    move-object v0, v13

    :goto_13
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v4, v6, 0x3

    const v6, 0x7fffe

    and-int v20, v4, v6

    move-object v11, v3

    move-wide v12, v7

    move-wide/from16 v14, v21

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, p8

    move-object/from16 v19, v5

    invoke-static/range {v11 .. v20}, Landroidx/compose/material3/TabRowKt;->TabRowWithSubcomposeImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-wide/from16 v23, v7

    move-object v7, v0

    move-object v8, v2

    move-object v2, v3

    move-wide/from16 v3, v23

    :goto_14
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_20

    new-instance v13, Landroidx/compose/material3/TabRowKt$TabRow$2;

    move-object v0, v13

    move/from16 v1, p0

    move-wide/from16 v5, v21

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/TabRowKt$TabRow$2;-><init>(ILandroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public static final TabRowWithSubcomposeImpl-DTcfvLk(Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object/from16 v0, p8

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x9971f65

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v9, 0x6

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v9

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v2, v9

    :goto_1
    and-int/lit8 v3, v9, 0x30

    if-nez v3, :cond_3

    move-wide/from16 v3, p1

    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_3
    move-wide/from16 v3, p1

    :goto_3
    and-int/lit16 v5, v9, 0x180

    move-wide/from16 v14, p3

    if-nez v5, :cond_5

    invoke-virtual {v0, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_4

    :cond_4
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :cond_5
    and-int/lit16 v5, v9, 0xc00

    if-nez v5, :cond_7

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_5

    :cond_6
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v2, v5

    :cond_7
    and-int/lit16 v5, v9, 0x6000

    if-nez v5, :cond_9

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x4000

    goto :goto_6

    :cond_8
    const/16 v5, 0x2000

    :goto_6
    or-int/2addr v2, v5

    :cond_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v9

    if-nez v5, :cond_b

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/high16 v5, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v5, 0x10000

    :goto_7
    or-int/2addr v2, v5

    :cond_b
    const v5, 0x12493

    and-int/2addr v5, v2

    const v10, 0x12492

    if-ne v5, v10, :cond_d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_9

    :cond_d
    :goto_8
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/selection/SelectableGroupKt;->selectableGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    new-instance v5, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1;

    invoke-direct {v5, v8, v7, v6}, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    const v11, -0x606c2e20

    invoke-static {v11, v5, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    shl-int/lit8 v2, v2, 0x3

    and-int/lit16 v5, v2, 0x380

    const/high16 v11, 0xc00000

    or-int/2addr v5, v11

    and-int/lit16 v2, v2, 0x1c00

    or-int v21, v5, v2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x72

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    move-object/from16 v20, v0

    invoke-static/range {v10 .. v22}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_e

    new-instance v11, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$2;-><init>(Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method
