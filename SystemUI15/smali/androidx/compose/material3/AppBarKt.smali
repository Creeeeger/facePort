.class public abstract Landroidx/compose/material3/AppBarKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TopAppBarHorizontalPadding:F

.field public static final TopAppBarTitleInset:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x10

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    new-instance v1, Landroidx/compose/animation/core/CubicBezierEasing;

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v3, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    const/4 v1, 0x4

    int-to-float v1, v1

    sput v1, Landroidx/compose/material3/AppBarKt;->TopAppBarHorizontalPadding:F

    sub-float/2addr v0, v1

    sput v0, Landroidx/compose/material3/AppBarKt;->TopAppBarTitleInset:F

    return-void
.end method

.method public static final CenterAlignedTopAppBar-GHTll3U(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move/from16 v9, p9

    move/from16 v10, p10

    const/16 v0, 0x80

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x20

    move-object/from16 v5, p8

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x74683b90

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v6, v10, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v9, 0x6

    move v7, v6

    move-object/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v9, 0x6

    if-nez v6, :cond_2

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    or-int/2addr v7, v9

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    move v7, v9

    :goto_1
    and-int/2addr v2, v10

    if-eqz v2, :cond_4

    or-int/lit8 v7, v7, 0x30

    :cond_3
    move-object/from16 v8, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v8, v9, 0x30

    if-nez v8, :cond_3

    move-object/from16 v8, p1

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v4

    goto :goto_2

    :cond_5
    move v11, v1

    :goto_2
    or-int/2addr v7, v11

    :goto_3
    and-int/2addr v3, v10

    if-eqz v3, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v11, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v11, v9, 0x180

    if-nez v11, :cond_6

    move-object/from16 v11, p2

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    move v12, v0

    :goto_4
    or-int/2addr v7, v12

    :goto_5
    and-int/lit8 v12, v10, 0x8

    if-eqz v12, :cond_a

    or-int/lit16 v7, v7, 0xc00

    :cond_9
    move-object/from16 v13, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v13, v9, 0xc00

    if-nez v13, :cond_9

    move-object/from16 v13, p3

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x800

    goto :goto_6

    :cond_b
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v7, v14

    :goto_7
    and-int/2addr v1, v10

    if-eqz v1, :cond_d

    or-int/lit16 v7, v7, 0x6000

    :cond_c
    move/from16 v14, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v14, v9, 0x6000

    if-nez v14, :cond_c

    move/from16 v14, p4

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v15

    if-eqz v15, :cond_e

    const/16 v15, 0x4000

    goto :goto_8

    :cond_e
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v7, v15

    :goto_9
    const/high16 v15, 0x30000

    and-int/2addr v15, v9

    if-nez v15, :cond_11

    and-int/lit8 v15, v10, 0x20

    if-nez v15, :cond_f

    move-object/from16 v15, p5

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v15, p5

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v7, v7, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v9, v16

    if-nez v16, :cond_13

    and-int/lit8 v16, v10, 0x40

    move-object/from16 v4, p6

    if-nez v16, :cond_12

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    :goto_c
    or-int v7, v7, v17

    goto :goto_d

    :cond_13
    move-object/from16 v4, p6

    :goto_d
    and-int/2addr v0, v10

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_14

    or-int v7, v7, v17

    move-object/from16 v4, p7

    goto :goto_f

    :cond_14
    and-int v17, v9, v17

    move-object/from16 v4, p7

    if-nez v17, :cond_16

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v17, 0x400000

    :goto_e
    or-int v7, v7, v17

    :cond_16
    :goto_f
    const v17, 0x492493

    and-int v4, v7, v17

    const v6, 0x492492

    if-ne v4, v6, :cond_18

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_10

    :cond_17
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move-object v2, v8

    move-object v3, v11

    move-object v4, v13

    move-object v6, v15

    move-object/from16 v8, p7

    goto/16 :goto_17

    :cond_18
    :goto_10
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v9, 0x1

    const v6, -0x380001

    const v17, -0x70001

    if-eqz v4, :cond_1c

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_12

    :cond_19
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x20

    and-int/2addr v0, v10

    if-eqz v0, :cond_1a

    and-int v7, v7, v17

    :cond_1a
    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_1b

    and-int/2addr v7, v6

    :cond_1b
    move-object/from16 v4, p6

    move-object/from16 v6, p7

    :goto_11
    move-object v0, v11

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    goto/16 :goto_14

    :cond_1c
    :goto_12
    if-eqz v2, :cond_1d

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v8, v2

    :cond_1d
    if-eqz v3, :cond_1e

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$AppBarKt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->lambda-7:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v11, v2

    :cond_1e
    if-eqz v12, :cond_1f

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$AppBarKt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/material3/ComposableSingletons$AppBarKt;->lambda-8:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v13, v2

    :cond_1f
    if-eqz v1, :cond_20

    sget-object v1, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    move v14, v1

    :cond_20
    const/16 v1, 0x20

    and-int/2addr v1, v10

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    sget-object v1, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/foundation/layout/WindowInsets;->Companion:Landroidx/compose/foundation/layout/WindowInsets$Companion;

    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->getSystemBars(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v1

    sget-object v3, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/foundation/layout/WindowInsetsSides;->Horizontal:I

    sget v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    or-int/2addr v3, v4

    new-instance v4, Landroidx/compose/foundation/layout/LimitInsets;

    invoke-direct {v4, v1, v3, v2}, Landroidx/compose/foundation/layout/LimitInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int v7, v7, v17

    move-object v15, v4

    :cond_21
    and-int/lit8 v1, v10, 0x40

    if-eqz v1, :cond_22

    sget-object v1, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/material3/TopAppBarDefaults;->getDefaultCenterAlignedTopAppBarColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/TopAppBarColors;

    move-result-object v1

    and-int v3, v7, v6

    move v7, v3

    goto :goto_13

    :cond_22
    move-object/from16 v1, p6

    :goto_13
    if-eqz v0, :cond_23

    move-object v4, v1

    move-object v6, v2

    goto :goto_11

    :cond_23
    move-object/from16 v6, p7

    move-object v4, v1

    goto :goto_11

    :goto_14
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v11, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/TopAppBarSmallTokens;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/material3/tokens/TopAppBarSmallTokens;->HeadlineFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    invoke-static {v11, v5}, Landroidx/compose/material3/TypographyKt;->getValue(Landroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v13

    sget-object v11, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    invoke-static {v2, v11}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v11

    if-nez v11, :cond_25

    sget v11, Landroidx/compose/ui/unit/Dp;->Infinity:F

    invoke-static {v2, v11}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v11

    if-eqz v11, :cond_24

    goto :goto_15

    :cond_24
    move/from16 v17, v2

    goto :goto_16

    :cond_25
    :goto_15
    sget-object v11, Landroidx/compose/material3/TopAppBarDefaults;->INSTANCE:Landroidx/compose/material3/TopAppBarDefaults;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Landroidx/compose/material3/TopAppBarDefaults;->TopAppBarExpandedHeight:F

    move/from16 v17, v11

    :goto_16
    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0xe

    or-int/lit16 v11, v11, 0xc00

    shl-int/lit8 v12, v7, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    shl-int/lit8 v7, v7, 0x6

    const v12, 0xe000

    and-int/2addr v12, v7

    or-int/2addr v11, v12

    const/high16 v12, 0x70000

    and-int/2addr v12, v7

    or-int/2addr v11, v12

    const/high16 v12, 0x1c00000

    and-int/2addr v12, v7

    or-int/2addr v11, v12

    const/high16 v12, 0xe000000

    and-int/2addr v12, v7

    or-int/2addr v11, v12

    const/high16 v12, 0x70000000

    and-int/2addr v7, v12

    or-int v22, v11, v7

    const/16 v23, 0x0

    const/4 v14, 0x1

    move-object v11, v8

    move-object/from16 v12, p0

    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v5

    invoke-static/range {v11 .. v23}, Landroidx/compose/material3/AppBarKt;->SingleRowTopAppBar-cJHQLPU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    move v14, v2

    move-object v7, v4

    move-object v2, v8

    move-object v4, v1

    move-object v8, v6

    move-object v6, v3

    move-object v3, v0

    :goto_17
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_26

    new-instance v12, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V

    iput-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_26
    return-void
.end method

.method public static final SingleRowTopAppBar-cJHQLPU(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V
    .locals 35

    move-object/from16 v6, p5

    move/from16 v5, p6

    move-object/from16 v4, p8

    move-object/from16 v3, p9

    move/from16 v2, p11

    move/from16 v1, p12

    const/16 v0, 0x80

    const/16 v8, 0x10

    const/16 v9, 0x20

    const/4 v10, 0x2

    const/4 v11, 0x4

    move-object/from16 v15, p10

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v12, -0x14657adf

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/16 v19, 0x1

    and-int/lit8 v12, v1, 0x1

    if-eqz v12, :cond_0

    or-int/lit8 v13, v2, 0x6

    move v14, v13

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v13, v2, 0x6

    if-nez v13, :cond_2

    move-object/from16 v13, p0

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v14, v11

    goto :goto_0

    :cond_1
    move v14, v10

    :goto_0
    or-int/2addr v14, v2

    goto :goto_1

    :cond_2
    move-object/from16 v13, p0

    move v14, v2

    :goto_1
    and-int/2addr v10, v1

    if-eqz v10, :cond_4

    or-int/lit8 v14, v14, 0x30

    :cond_3
    move-object/from16 v10, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v10, v2, 0x30

    if-nez v10, :cond_3

    move-object/from16 v10, p1

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 v16, v9

    goto :goto_2

    :cond_5
    move/from16 v16, v8

    :goto_2
    or-int v14, v14, v16

    :goto_3
    and-int/2addr v11, v1

    if-eqz v11, :cond_7

    or-int/lit16 v14, v14, 0x180

    :cond_6
    move-object/from16 v11, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v11, v2, 0x180

    if-nez v11, :cond_6

    move-object/from16 v11, p2

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    move/from16 v16, v0

    :goto_4
    or-int v14, v14, v16

    :goto_5
    and-int/lit8 v16, v1, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v14, v14, 0xc00

    :cond_9
    move/from16 v7, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v7, v2, 0xc00

    if-nez v7, :cond_9

    move/from16 v7, p3

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x800

    goto :goto_6

    :cond_b
    const/16 v17, 0x400

    :goto_6
    or-int v14, v14, v17

    :goto_7
    and-int/2addr v8, v1

    if-eqz v8, :cond_d

    or-int/lit16 v14, v14, 0x6000

    :cond_c
    move-object/from16 v8, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v8, v2, 0x6000

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x4000

    goto :goto_8

    :cond_e
    const/16 v17, 0x2000

    :goto_8
    or-int v14, v14, v17

    :goto_9
    and-int/2addr v9, v1

    const/high16 v17, 0x30000

    if-eqz v9, :cond_f

    or-int v14, v14, v17

    goto :goto_b

    :cond_f
    and-int v9, v2, v17

    if-nez v9, :cond_11

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/high16 v9, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v9, 0x10000

    :goto_a
    or-int/2addr v14, v9

    :cond_11
    :goto_b
    and-int/lit8 v9, v1, 0x40

    const/high16 v17, 0x180000

    if-eqz v9, :cond_12

    or-int v14, v14, v17

    goto :goto_d

    :cond_12
    and-int v9, v2, v17

    if-nez v9, :cond_14

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_13

    const/high16 v9, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v9, 0x80000

    :goto_c
    or-int/2addr v14, v9

    :cond_14
    :goto_d
    and-int/2addr v0, v1

    const/high16 v9, 0xc00000

    if-eqz v0, :cond_16

    or-int/2addr v14, v9

    :cond_15
    move-object/from16 v0, p7

    :goto_e
    const/16 v9, 0x100

    goto :goto_10

    :cond_16
    and-int v0, v2, v9

    if-nez v0, :cond_15

    move-object/from16 v0, p7

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    const/high16 v9, 0x800000

    goto :goto_f

    :cond_17
    const/high16 v9, 0x400000

    :goto_f
    or-int/2addr v14, v9

    goto :goto_e

    :goto_10
    and-int/2addr v9, v1

    const/high16 v16, 0x6000000

    if-eqz v9, :cond_18

    or-int v14, v14, v16

    goto :goto_12

    :cond_18
    and-int v9, v2, v16

    if-nez v9, :cond_1a

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/high16 v9, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v9, 0x2000000

    :goto_11
    or-int/2addr v14, v9

    :cond_1a
    :goto_12
    and-int/lit16 v9, v1, 0x200

    const/high16 v16, 0x30000000

    if-eqz v9, :cond_1b

    or-int v14, v14, v16

    goto :goto_14

    :cond_1b
    and-int v9, v2, v16

    if-nez v9, :cond_1d

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const/high16 v9, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v9, 0x10000000

    :goto_13
    or-int/2addr v14, v9

    :cond_1d
    :goto_14
    const v9, 0x12492493

    and-int/2addr v9, v14

    const v0, 0x12492492

    if-ne v9, v0, :cond_1f

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_15

    :cond_1e
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v13

    move-object v2, v15

    goto/16 :goto_1d

    :cond_1f
    :goto_15
    if-eqz v12, :cond_20

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_20
    move-object v0, v13

    :goto_16
    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2e

    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v9, v5, v9

    if-nez v9, :cond_21

    move/from16 v9, v19

    goto :goto_17

    :cond_21
    const/4 v9, 0x0

    :goto_17
    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2e

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/Density;

    invoke-interface {v9, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v9

    const/4 v13, 0x0

    invoke-static {v9, v13}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v9

    const/high16 v16, 0x70000000

    and-int v14, v14, v16

    const/high16 v12, 0x20000000

    if-ne v14, v12, :cond_22

    move/from16 v12, v19

    goto :goto_18

    :cond_22
    const/4 v12, 0x0

    :goto_18
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v16

    or-int v12, v12, v16

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v12, :cond_23

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v12, :cond_24

    :cond_23
    new-instance v13, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2$1;

    invoke-direct {v13, v3, v9}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$2$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;F)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_24
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-static {v13, v15}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v12, :cond_25

    new-instance v9, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1;

    invoke-direct {v9, v3}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_25
    check-cast v9, Landroidx/compose/runtime/State;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {v13, v9}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    move-result v9

    iget-wide v1, v4, Landroidx/compose/material3/TopAppBarColors;->containerColor:J

    iget-wide v7, v4, Landroidx/compose/material3/TopAppBarColors;->scrolledContainerColor:J

    invoke-static {v1, v2, v7, v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v1

    const/high16 v7, 0x43c80000    # 400.0f

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v13, 0x0

    invoke-static {v13, v7, v8, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v7

    const/16 v18, 0xc

    const/4 v9, 0x0

    const/16 v17, 0x30

    move-object v8, v12

    move-wide v12, v1

    move v1, v14

    move-object v14, v7

    move-object v2, v15

    move-object v15, v9

    move-object/from16 v16, v2

    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v7

    new-instance v9, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$actionsRow$1;

    invoke-direct {v9, v6}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$actionsRow$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v12, 0x51ac10ea

    invoke-static {v12, v2, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    const v9, -0x4725de19

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v3, :cond_2c

    move-object v9, v3

    check-cast v9, Landroidx/compose/material3/PinnedScrollBehavior;

    iget-boolean v9, v9, Landroidx/compose/material3/PinnedScrollBehavior;->isPinned:Z

    if-nez v9, :cond_2c

    sget-object v26, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v28, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/high16 v9, 0x20000000

    if-ne v1, v9, :cond_26

    move/from16 v12, v19

    goto :goto_19

    :cond_26
    const/4 v12, 0x0

    :goto_19
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v12, :cond_27

    if-ne v9, v8, :cond_28

    :cond_27
    new-instance v9, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$appBarDragModifier$1$1;

    invoke-direct {v9, v3}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$appBarDragModifier$1$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_28
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v9}, Landroidx/compose/foundation/gestures/DraggableKt;->rememberDraggableState(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v27

    const/high16 v9, 0x20000000

    if-ne v1, v9, :cond_29

    goto :goto_1a

    :cond_29
    const/16 v19, 0x0

    :goto_1a
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v19, :cond_2a

    if-ne v1, v8, :cond_2b

    :cond_2a
    new-instance v1, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$appBarDragModifier$2$1;

    const/4 v8, 0x0

    invoke-direct {v1, v3, v8}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$appBarDragModifier$2$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    move-object/from16 v32, v1

    check-cast v32, Lkotlin/jvm/functions/Function3;

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v34, 0xbc

    invoke-static/range {v26 .. v34}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :goto_1b
    const/4 v8, 0x0

    goto :goto_1c

    :cond_2c
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1b

    :goto_1c
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Color;

    iget-wide v14, v7, Landroidx/compose/ui/graphics/Color;->value:J

    new-instance v13, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$3;

    move-object v7, v13

    move-object/from16 v8, p7

    move/from16 v9, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p8

    move-object/from16 v12, p1

    move-object/from16 v25, v0

    move-object v0, v13

    move-object/from16 v13, p2

    move-wide/from16 v17, v14

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v7 .. v16}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$3;-><init>(Landroidx/compose/foundation/layout/WindowInsets;FLandroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/material3/TopAppBarColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v7, -0x73db1c9a

    invoke-static {v7, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    const/high16 v23, 0xc00000

    const/16 v24, 0x7a

    move-object v12, v1

    move-wide/from16 v14, v17

    move-wide/from16 v16, v7

    move/from16 v18, v0

    move-object/from16 v22, v2

    invoke-static/range {v12 .. v24}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v1, v25

    :goto_1d
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2d

    new-instance v14, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$4;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/AppBarKt$SingleRowTopAppBar$4;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The expandedHeight is expected to be specified and finite"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final access$TopAppBarLayout-kXwM9vE(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ScrolledOffset;JJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v11, p15

    move-object/from16 v10, p16

    move/from16 v9, p18

    move/from16 v7, p19

    move-object/from16 v0, p17

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x2c40c538

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v9, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_1
    move v3, v9

    :goto_1
    and-int/lit8 v6, v9, 0x30

    if-nez v6, :cond_4

    and-int/lit8 v6, v9, 0x40

    if-nez v6, :cond_2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    :goto_2
    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_3

    :cond_3
    const/16 v6, 0x10

    :goto_3
    or-int/2addr v3, v6

    :cond_4
    and-int/lit16 v6, v9, 0x180

    const/16 v16, 0x80

    const/16 v17, 0x100

    move-wide/from16 v4, p2

    if-nez v6, :cond_6

    invoke-virtual {v0, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_5

    move/from16 v19, v17

    goto :goto_4

    :cond_5
    move/from16 v19, v16

    :goto_4
    or-int v3, v3, v19

    :cond_6
    and-int/lit16 v6, v9, 0xc00

    const/16 v20, 0x400

    const/16 v21, 0x800

    move-wide/from16 v8, p4

    if-nez v6, :cond_8

    invoke-virtual {v0, v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v22

    if-eqz v22, :cond_7

    move/from16 v22, v21

    goto :goto_5

    :cond_7
    move/from16 v22, v20

    :goto_5
    or-int v3, v3, v22

    :cond_8
    move/from16 v9, p18

    and-int/lit16 v8, v9, 0x6000

    move-wide/from16 v5, p6

    if-nez v8, :cond_a

    invoke-virtual {v0, v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x4000

    goto :goto_6

    :cond_9
    const/16 v8, 0x2000

    :goto_6
    or-int/2addr v3, v8

    :cond_a
    const/high16 v8, 0x30000

    and-int/2addr v8, v9

    if-nez v8, :cond_c

    move-object/from16 v8, p8

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/high16 v22, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v22, 0x10000

    :goto_7
    or-int v3, v3, v22

    goto :goto_8

    :cond_c
    move-object/from16 v8, p8

    :goto_8
    const/high16 v22, 0x180000

    and-int v22, v9, v22

    move-object/from16 v8, p9

    if-nez v22, :cond_e

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/high16 v22, 0x100000

    goto :goto_9

    :cond_d
    const/high16 v22, 0x80000

    :goto_9
    or-int v3, v3, v22

    :cond_e
    const/high16 v22, 0xc00000

    and-int v22, v9, v22

    move/from16 v8, p10

    if-nez v22, :cond_10

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v22

    if-eqz v22, :cond_f

    const/high16 v22, 0x800000

    goto :goto_a

    :cond_f
    const/high16 v22, 0x400000

    :goto_a
    or-int v3, v3, v22

    :cond_10
    const/high16 v22, 0x6000000

    and-int v22, v9, v22

    if-nez v22, :cond_12

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    const/high16 v22, 0x4000000

    goto :goto_b

    :cond_11
    const/high16 v22, 0x2000000

    :goto_b
    or-int v3, v3, v22

    :cond_12
    const/high16 v22, 0x30000000

    and-int v22, v9, v22

    if-nez v22, :cond_14

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x20000000

    goto :goto_c

    :cond_13
    const/high16 v22, 0x10000000

    :goto_c
    or-int v3, v3, v22

    :cond_14
    and-int/lit8 v22, v7, 0x6

    if-nez v22, :cond_16

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v22

    if-eqz v22, :cond_15

    const/16 v22, 0x4

    goto :goto_d

    :cond_15
    const/16 v22, 0x2

    :goto_d
    or-int v22, v7, v22

    goto :goto_e

    :cond_16
    move/from16 v22, v7

    :goto_e
    and-int/lit8 v25, v7, 0x30

    if-nez v25, :cond_18

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v25, 0x20

    goto :goto_f

    :cond_17
    const/16 v25, 0x10

    :goto_f
    or-int v22, v22, v25

    :cond_18
    and-int/lit16 v4, v7, 0x180

    if-nez v4, :cond_1a

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move/from16 v16, v17

    :cond_19
    or-int v22, v22, v16

    :cond_1a
    and-int/lit16 v4, v7, 0xc00

    if-nez v4, :cond_1c

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v20, v21

    :cond_1b
    or-int v22, v22, v20

    :cond_1c
    move/from16 v4, v22

    const v16, 0x12492493

    and-int v5, v3, v16

    const v6, 0x12492492

    if-ne v5, v6, :cond_1e

    and-int/lit16 v5, v4, 0x493

    const/16 v6, 0x492

    if-ne v5, v6, :cond_1e

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_10

    :cond_1d
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_1b

    :cond_1e
    :goto_10
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v5, v3, 0x70

    const/16 v6, 0x20

    if-eq v5, v6, :cond_20

    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_1f

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v5, 0x0

    goto :goto_12

    :cond_20
    :goto_11
    const/4 v5, 0x1

    :goto_12
    const/high16 v6, 0x70000000

    and-int/2addr v6, v3

    const/high16 v7, 0x20000000

    if-ne v6, v7, :cond_21

    const/4 v6, 0x1

    goto :goto_13

    :cond_21
    const/4 v6, 0x0

    :goto_13
    or-int/2addr v5, v6

    const/high16 v6, 0xe000000

    and-int/2addr v6, v3

    const/high16 v7, 0x4000000

    if-ne v6, v7, :cond_22

    const/4 v6, 0x1

    goto :goto_14

    :cond_22
    const/4 v6, 0x0

    :goto_14
    or-int/2addr v5, v6

    and-int/lit8 v6, v4, 0xe

    const/4 v7, 0x4

    if-ne v6, v7, :cond_23

    const/4 v6, 0x1

    goto :goto_15

    :cond_23
    const/4 v6, 0x0

    :goto_15
    or-int/2addr v5, v6

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_24

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v5, :cond_25

    :cond_24
    new-instance v6, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$1;

    invoke-direct {v6, v2, v13, v12, v14}, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$2$1;-><init>(Landroidx/compose/material3/ScrolledOffset;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;I)V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_25
    check-cast v6, Landroidx/compose/ui/layout/MeasurePolicy;

    iget v5, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    const/16 v33, 0x0

    if-eqz v8, :cond_37

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_26

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_26
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_16
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v6, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_27

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    :cond_27
    invoke-static {v5, v0, v5, v7}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_28
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const-string v12, "navigationIcon"

    invoke-static {v2, v12}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    const/16 v25, 0x0

    const/16 v28, 0xe

    sget v12, Landroidx/compose/material3/AppBarKt;->TopAppBarHorizontalPadding:F

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v24, v12

    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v16, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    move/from16 p17, v3

    const/4 v10, 0x0

    invoke-static {v14, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v10, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move-object/from16 v40, v14

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v0, v13}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    if-eqz v8, :cond_36

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v41, v8

    iget-boolean v8, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_29

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    :cond_29
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_17
    invoke-static {v0, v3, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v14, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_2a

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_2a
    invoke-static {v10, v0, v10, v7}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2b
    invoke-static {v0, v13, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v3, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v8

    shr-int/lit8 v10, v4, 0x3

    and-int/lit8 v10, v10, 0x70

    const/16 v13, 0x8

    or-int/2addr v10, v13

    invoke-static {v8, v11, v0, v10}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const-string/jumbo v8, "title"

    invoke-static {v2, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v14, 0x2

    invoke-static {v8, v12, v10, v14}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v15, :cond_2c

    sget-object v10, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$1$2;->INSTANCE:Landroidx/compose/material3/AppBarKt$TopAppBarLayout$1$2;

    invoke-static {v2, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->clearAndSetSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    goto :goto_18

    :cond_2c
    move-object v10, v2

    :goto_18
    invoke-interface {v8, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    const/16 v30, 0x0

    const v32, 0x1fffb

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    move/from16 v26, p10

    invoke-static/range {v23 .. v32}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZII)Landroidx/compose/ui/Modifier;

    move-result-object v8

    move-object/from16 v14, v40

    const/4 v10, 0x0

    invoke-static {v14, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    iget v10, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v0, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v41, :cond_35

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v15, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v15, :cond_2d

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_2d
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_19
    invoke-static {v0, v13, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v11, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v11, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v11, :cond_2e

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2f

    :cond_2e
    invoke-static {v10, v0, v10, v7}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2f
    invoke-static {v0, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v8, p17, 0x9

    and-int/lit8 v10, v8, 0xe

    shr-int/lit8 v11, p17, 0xf

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    and-int/lit16 v8, v8, 0x380

    or-int v21, v10, v8

    move-wide/from16 v16, p4

    move-object/from16 v18, p9

    move-object/from16 v19, p8

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v21}, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt;->ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const-string v8, "actionIcons"

    invoke-static {v2, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v39, 0xb

    const/16 v36, 0x0

    const/16 v38, 0x0

    move/from16 v37, v12

    invoke-static/range {v34 .. v39}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v14, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v8

    iget v10, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v41, :cond_34

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_30

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1a

    :cond_30
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1a
    invoke-static {v0, v8, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v11, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_31

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    :cond_31
    invoke-static {v10, v0, v10, v7}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_32
    invoke-static {v0, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    shr-int/lit8 v2, v4, 0x6

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x8

    or-int/2addr v2, v3

    move-object/from16 v10, p16

    invoke-static {v1, v10, v0, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_33

    new-instance v14, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v42, v14

    move/from16 v14, p13

    move-object/from16 v43, v15

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ScrolledOffset;JJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    move-object/from16 v1, v42

    move-object/from16 v0, v43

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_33
    return-void

    :cond_34
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v33

    :cond_35
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v33

    :cond_36
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v33

    :cond_37
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v33
.end method

.method public static final access$settleAppBar(Landroidx/compose/material3/TopAppBarState;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Landroidx/compose/material3/AppBarKt$settleAppBar$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;

    iget v1, v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/compose/material3/AppBarKt$settleAppBar$1;

    invoke-direct {v0, p2}, Landroidx/compose/material3/AppBarKt$settleAppBar$1;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p2, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->label:I

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_3

    const/4 p0, 0x1

    if-eq v1, p0, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p1, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    iget-object v1, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/material3/TopAppBarState;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v1

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p2

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float p2, p2, v1

    if-ltz p2, :cond_8

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v1

    if-nez p2, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance p2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput p1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_7

    iget-object v1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    cmpg-float v1, v1, v8

    if-gez v1, :cond_7

    iget-object v1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    iget-object v4, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_7

    iget-object v1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    const/16 v5, 0x1e

    invoke-static {v1, v8, v5}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    move v4, v8

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v4

    :goto_3
    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v4}, Ljava/lang/Float;-><init>(F)V

    new-instance v7, Landroidx/compose/material3/AppBarKt$settleAppBar$3;

    invoke-direct {v7, p0}, Landroidx/compose/material3/AppBarKt$settleAppBar$3;-><init>(Landroidx/compose/material3/TopAppBarState;)V

    iput-object p2, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    iput-object v2, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    iput-object v2, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    iput v3, v6, Landroidx/compose/material3/AppBarKt$settleAppBar$1;->label:I

    const/4 p0, 0x4

    const/4 v4, 0x0

    move-object v2, v5

    move-object v3, p1

    move-object v5, v7

    move v7, p0

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    goto :goto_6

    :cond_6
    move-object p0, p2

    :goto_4
    move-object p2, p0

    :cond_7
    iget p0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v8, p0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    goto :goto_6

    :cond_8
    :goto_5
    sget-object p0, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    :goto_6
    return-object v0
.end method

.method public static final rememberTopAppBarState(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/TopAppBarState;
    .locals 7

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v0, Landroidx/compose/material3/TopAppBarState;->Companion:Landroidx/compose/material3/TopAppBarState$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/material3/TopAppBarState;->Saver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x800001

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v0

    move-object v4, p0

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v4

    or-int/2addr v0, v4

    move-object v4, p0

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v4

    or-int/2addr v0, v4

    move-object v4, p0

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p0, v0, :cond_1

    :cond_0
    new-instance p0, Landroidx/compose/material3/AppBarKt$rememberTopAppBarState$1$1;

    invoke-direct {p0, v3, v5, v5}, Landroidx/compose/material3/AppBarKt$rememberTopAppBarState$1$1;-><init>(FFF)V

    invoke-virtual {v4, p0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object v3, p0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/TopAppBarState;

    return-object p0
.end method
