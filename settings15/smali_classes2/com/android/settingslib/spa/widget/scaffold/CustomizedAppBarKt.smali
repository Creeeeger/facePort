.class public abstract Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ContainerHeight:F

.field public static final DefaultTitleHeight:F

.field public static final LargeTitleBottomPadding:F

.field public static final MaxHeightWithoutTitle:F

.field public static final TopAppBarHorizontalPadding:F

.field public static final TopAppBarTitleInset:F

.field public static final TopTitleAlphaEasing:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/4 v1, 0x0

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v1, v3, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopTitleAlphaEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v0, 0x7c

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->MaxHeightWithoutTitle:F

    const/16 v0, 0x34

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->DefaultTitleHeight:F

    const/16 v0, 0x38

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->ContainerHeight:F

    const/16 v0, 0x1c

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->LargeTitleBottomPadding:F

    const/4 v0, 0x4

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarHorizontalPadding:F

    const/16 v1, 0x10

    int-to-float v1, v1

    sub-float/2addr v1, v0

    sput v1, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarTitleInset:F

    return-void
.end method

.method public static final CustomizedLargeTopAppBar(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-string v4, "title"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p5

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x2afeb81

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, p7, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v6, 0xe

    if-nez v5, :cond_2

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    or-int/2addr v5, v6

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v6, 0x70

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    move v8, v0

    :goto_2
    or-int/2addr v5, v8

    :goto_3
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v6, 0x380

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v5, v9

    :goto_5
    and-int/lit8 v9, p7, 0x8

    if-eqz v9, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v6, 0x1c00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v5, v11

    :goto_7
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move-object/from16 v11, p4

    goto :goto_9

    :cond_d
    const v11, 0xe000

    and-int/2addr v11, v6

    if-nez v11, :cond_c

    move-object/from16 v11, p4

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x4000

    goto :goto_8

    :cond_e
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v5, v12

    :goto_9
    const v12, 0xb6db

    and-int/2addr v12, v5

    const/16 v13, 0x2492

    if-ne v12, v13, :cond_10

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v7

    move-object v3, v8

    move-object v5, v11

    goto/16 :goto_f

    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_b

    :cond_11
    move-object v2, v7

    :goto_b
    if-eqz v3, :cond_12

    sget-object v3, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_c

    :cond_12
    move-object v3, v8

    :goto_c
    if-eqz v9, :cond_13

    sget-object v7, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->lambda-4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v23, v7

    goto :goto_d

    :cond_13
    move-object/from16 v23, v10

    :goto_d
    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_e

    :cond_14
    move-object v0, v11

    :goto_e
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/material3/Typography;

    iget-object v9, v8, Landroidx/compose/material3/Typography;->displaySmall:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/Typography;

    iget-object v12, v7, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v4}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->topAppBarColors(Landroidx/compose/runtime/Composer;)Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    move-result-object v16

    invoke-static {v4}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->getWindowInsets(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/LimitInsets;

    move-result-object v15

    new-instance v7, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$1;

    invoke-direct {v7, v1}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$1;-><init>(Ljava/lang/String;)V

    const v8, 0x1c1dbe8f

    invoke-static {v8, v7, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    new-instance v7, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$2;

    invoke-direct {v7, v1}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$2;-><init>(Ljava/lang/String;)V

    const v10, -0xe31c294

    invoke-static {v10, v7, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    shr-int/lit8 v7, v5, 0x3

    and-int/lit8 v7, v7, 0xe

    or-int/lit16 v7, v7, 0x6c30

    shl-int/lit8 v10, v5, 0xc

    const/high16 v13, 0x380000

    and-int/2addr v13, v10

    or-int/2addr v7, v13

    const/high16 v13, 0x1c00000

    and-int/2addr v10, v13

    or-int v20, v7, v10

    shr-int/lit8 v5, v5, 0x9

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v21, v5, 0x6

    sget v10, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->LargeTitleBottomPadding:F

    sget v17, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->ContainerHeight:F

    const/16 v22, 0x0

    move-object v7, v2

    move-object v13, v3

    move-object/from16 v14, v23

    move-object/from16 v18, v0

    move-object/from16 v19, v4

    invoke-static/range {v7 .. v22}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TwoRowsTopAppBar-T_xyU-w(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;FLandroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;III)V

    move-object v5, v0

    move-object/from16 v10, v23

    :goto_f
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_15

    new-instance v9, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v4, v10

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedLargeTopAppBar$3;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final CustomizedTopAppBar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 13

    move-object v8, p0

    move/from16 v9, p4

    const/4 v0, 0x2

    const/4 v1, 0x4

    const-string v2, "title"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v2, -0x1ad7cb58

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v9, 0xe

    if-nez v2, :cond_2

    invoke-virtual {v10, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    or-int/2addr v2, v9

    goto :goto_1

    :cond_2
    move v2, v9

    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v9, 0x70

    if-nez v3, :cond_3

    move-object v3, p1

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :goto_3
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object v4, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v9, 0x380

    if-nez v4, :cond_6

    move-object v4, p2

    invoke-virtual {v10, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x100

    goto :goto_4

    :cond_8
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :goto_5
    and-int/lit16 v5, v2, 0x2db

    const/16 v6, 0x92

    if-ne v5, v6, :cond_a

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v3

    move-object v3, v4

    goto :goto_9

    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v11, v0

    goto :goto_7

    :cond_b
    move-object v11, v3

    :goto_7
    if-eqz v1, :cond_c

    sget-object v0, Lcom/android/settingslib/spa/widget/scaffold/ComposableSingletons$CustomizedAppBarKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v12, v0

    goto :goto_8

    :cond_c
    move-object v12, v4

    :goto_8
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/Typography;

    iget-object v1, v0, Landroidx/compose/material3/Typography;->titleMedium:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v10}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->getWindowInsets(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/LimitInsets;

    move-result-object v4

    invoke-static {v10}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->topAppBarColors(Landroidx/compose/runtime/Composer;)Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    move-result-object v5

    and-int/lit8 v0, v2, 0xe

    shl-int/lit8 v2, v2, 0x3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0x1c00

    or-int v7, v0, v2

    move-object v0, p0

    move-object v2, v11

    move-object v3, v12

    move-object v6, v10

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->SingleRowTopAppBar(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;Landroidx/compose/runtime/Composer;I)V

    move-object v2, v11

    move-object v3, v12

    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_d

    new-instance v7, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedTopAppBar$1;

    move-object v0, v7

    move-object v1, p0

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$CustomizedTopAppBar$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final SingleRowTopAppBar(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v4, p3

    move-object/from16 v12, p5

    move/from16 v13, p7

    move-object/from16 v0, p6

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x30f83620

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v13, 0xe

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    move v2, v13

    :goto_1
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v3, p1

    :goto_3
    and-int/lit16 v5, v13, 0x380

    move-object/from16 v15, p2

    if-nez v5, :cond_5

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_4

    :cond_4
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v2, v5

    :cond_5
    and-int/lit16 v5, v13, 0x1c00

    if-nez v5, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    goto :goto_5

    :cond_6
    const/16 v5, 0x400

    :goto_5
    or-int/2addr v2, v5

    :cond_7
    const v5, 0xe000

    and-int/2addr v5, v13

    move-object/from16 v14, p4

    if-nez v5, :cond_9

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x4000

    goto :goto_6

    :cond_8
    const/16 v5, 0x2000

    :goto_6
    or-int/2addr v2, v5

    :cond_9
    const/high16 v5, 0x70000

    and-int/2addr v5, v13

    if-nez v5, :cond_b

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/high16 v5, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v5, 0x10000

    :goto_7
    or-int/2addr v2, v5

    :cond_b
    const v5, 0x5b6db

    and-int/2addr v2, v5

    const v5, 0x12492

    if-ne v2, v5, :cond_d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_9

    :cond_d
    :goto_8
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$actionsRow$1;

    invoke-direct {v2, v4}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$actionsRow$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v5, -0x55c764c9

    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    iget-wide v9, v12, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->scrolledContainerColor:J

    new-instance v2, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;

    move-object v5, v2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p0

    move-wide/from16 v16, v9

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v5, -0x689deec5

    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/high16 v25, 0xc00000

    const/16 v26, 0x7b

    move-object v14, v2

    move-object v15, v5

    move-object/from16 v24, v0

    invoke-static/range {v14 .. v26}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_e

    new-instance v9, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$SingleRowTopAppBar$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;I)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final TwoRowsTopAppBar-T_xyU-w(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;FLandroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;III)V
    .locals 40

    move/from16 v4, p3

    move-object/from16 v8, p7

    move-object/from16 v7, p9

    move/from16 v6, p10

    move-object/from16 v5, p11

    move/from16 v3, p13

    move/from16 v2, p15

    const/16 v11, 0x10

    const/16 v12, 0x20

    move-object/from16 v15, p12

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v13, 0x3ee5fd7e

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v13, 0x1

    and-int/lit8 v14, v2, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x4

    if-eqz v14, :cond_0

    or-int/lit8 v18, v3, 0x6

    move-object/from16 v13, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v18, v3, 0xe

    move-object/from16 v13, p0

    if-nez v18, :cond_2

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    move/from16 v18, v17

    goto :goto_0

    :cond_1
    move/from16 v18, v16

    :goto_0
    or-int v18, v3, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v3

    :goto_1
    and-int/lit8 v19, v2, 0x2

    if-eqz v19, :cond_4

    or-int/lit8 v18, v18, 0x30

    move-object/from16 v1, p1

    :cond_3
    :goto_2
    move/from16 v0, v18

    goto :goto_4

    :cond_4
    and-int/lit8 v19, v3, 0x70

    move-object/from16 v1, p1

    if-nez v19, :cond_3

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move/from16 v20, v12

    goto :goto_3

    :cond_5
    move/from16 v20, v11

    :goto_3
    or-int v18, v18, v20

    goto :goto_2

    :goto_4
    and-int/lit8 v18, v2, 0x4

    if-eqz v18, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v10, p2

    goto :goto_6

    :cond_7
    and-int/lit16 v10, v3, 0x380

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x100

    goto :goto_5

    :cond_8
    const/16 v21, 0x80

    :goto_5
    or-int v0, v0, v21

    :goto_6
    and-int/lit8 v21, v2, 0x8

    if-eqz v21, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v9, v3, 0x1c00

    if-nez v9, :cond_b

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_7

    :cond_a
    const/16 v9, 0x400

    :goto_7
    or-int/2addr v0, v9

    :cond_b
    :goto_8
    and-int/lit8 v9, v2, 0x10

    if-eqz v9, :cond_d

    or-int/lit16 v0, v0, 0x6000

    :cond_c
    move-object/from16 v9, p4

    goto :goto_a

    :cond_d
    const v9, 0xe000

    and-int/2addr v9, v3

    if-nez v9, :cond_c

    move-object/from16 v9, p4

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v22, 0x4000

    goto :goto_9

    :cond_e
    const/16 v22, 0x2000

    :goto_9
    or-int v0, v0, v22

    :goto_a
    and-int/lit8 v22, v2, 0x20

    if-eqz v22, :cond_f

    const/high16 v22, 0x30000

    or-int v0, v0, v22

    move-object/from16 v12, p5

    goto :goto_c

    :cond_f
    const/high16 v22, 0x70000

    and-int v22, v3, v22

    move-object/from16 v12, p5

    if-nez v22, :cond_11

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v23, 0x10000

    :goto_b
    or-int v0, v0, v23

    :cond_11
    :goto_c
    and-int/lit8 v23, v2, 0x40

    if-eqz v23, :cond_13

    const/high16 v23, 0x180000

    or-int v0, v0, v23

    move-object/from16 v1, p6

    :cond_12
    :goto_d
    const/16 v11, 0x80

    goto :goto_f

    :cond_13
    const/high16 v23, 0x380000

    and-int v23, v3, v23

    move-object/from16 v1, p6

    if-nez v23, :cond_12

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x100000

    goto :goto_e

    :cond_14
    const/high16 v23, 0x80000

    :goto_e
    or-int v0, v0, v23

    goto :goto_d

    :goto_f
    and-int/2addr v11, v2

    if-eqz v11, :cond_16

    const/high16 v11, 0xc00000

    :goto_10
    or-int/2addr v0, v11

    :cond_15
    const/16 v11, 0x100

    goto :goto_11

    :cond_16
    const/high16 v11, 0x1c00000

    and-int/2addr v11, v3

    if-nez v11, :cond_15

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    const/high16 v11, 0x800000

    goto :goto_10

    :cond_17
    const/high16 v11, 0x400000

    goto :goto_10

    :goto_11
    and-int/2addr v11, v2

    if-eqz v11, :cond_19

    const/high16 v11, 0x6000000

    or-int/2addr v0, v11

    :cond_18
    move-object/from16 v11, p8

    goto :goto_13

    :cond_19
    const/high16 v11, 0xe000000

    and-int/2addr v11, v3

    if-nez v11, :cond_18

    move-object/from16 v11, p8

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    const/high16 v18, 0x4000000

    goto :goto_12

    :cond_1a
    const/high16 v18, 0x2000000

    :goto_12
    or-int v0, v0, v18

    :goto_13
    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_1c

    const/high16 v1, 0x30000000

    :goto_14
    or-int/2addr v0, v1

    :cond_1b
    const/16 v1, 0x400

    goto :goto_15

    :cond_1c
    const/high16 v1, 0x70000000

    and-int/2addr v1, v3

    if-nez v1, :cond_1b

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/high16 v1, 0x20000000

    goto :goto_14

    :cond_1d
    const/high16 v1, 0x10000000

    goto :goto_14

    :goto_15
    and-int/2addr v1, v2

    if-eqz v1, :cond_1e

    or-int/lit8 v1, p14, 0x6

    :goto_16
    const/16 v3, 0x800

    goto :goto_17

    :cond_1e
    and-int/lit8 v1, p14, 0xe

    if-nez v1, :cond_20

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v1

    if-eqz v1, :cond_1f

    move/from16 v16, v17

    :cond_1f
    or-int v1, p14, v16

    goto :goto_16

    :cond_20
    move/from16 v1, p14

    goto :goto_16

    :goto_17
    and-int/2addr v3, v2

    if-eqz v3, :cond_21

    or-int/lit8 v1, v1, 0x30

    goto :goto_19

    :cond_21
    and-int/lit8 v3, p14, 0x70

    if-nez v3, :cond_23

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/16 v21, 0x20

    goto :goto_18

    :cond_22
    const/16 v21, 0x10

    :goto_18
    or-int v1, v1, v21

    :cond_23
    :goto_19
    const v3, 0x5b6db6db

    and-int/2addr v0, v3

    const v3, 0x12492492

    if-ne v0, v3, :cond_25

    and-int/lit8 v0, v1, 0x5b

    const/16 v3, 0x12

    if-ne v0, v3, :cond_25

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_1a

    :cond_24
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v13

    move-object v3, v15

    goto/16 :goto_24

    :cond_25
    :goto_1a
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v14, :cond_26

    move-object v3, v0

    goto :goto_1b

    :cond_26
    move-object v3, v13

    :goto_1b
    sget-object v13, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget v13, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->MaxHeightWithoutTitle:F

    invoke-static {v13, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-lez v14, :cond_36

    new-instance v14, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object/from16 v16, v0

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/Density;

    invoke-interface {v9, v6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v10

    iput v10, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v9, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v10

    iput v10, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget v10, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->DefaultTitleHeight:F

    add-float/2addr v13, v10

    invoke-interface {v9, v13}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v10

    iput v10, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const v10, -0x2cff9e2f

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_27

    if-ne v13, v4, :cond_28

    :cond_27
    iget v10, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v10}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_28
    check-cast v13, Landroidx/compose/runtime/MutableFloatState;

    const/4 v10, 0x0

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v10, -0x2cff9d5e

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v1, v1, 0x70

    const/16 v10, 0x20

    if-ne v1, v10, :cond_29

    const/4 v10, 0x1

    goto :goto_1c

    :cond_29
    const/4 v10, 0x0

    :goto_1c
    iget v6, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    or-int/2addr v6, v10

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v6, v10

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_2a

    if-ne v10, v4, :cond_2b

    :cond_2a
    new-instance v10, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$2$1;

    invoke-direct {v10, v5, v14, v13}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$2$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/MutableFloatState;)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v10, v15}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    if-eqz v5, :cond_2c

    move-object v6, v5

    check-cast v6, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    iget-object v6, v6, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->state:Landroidx/compose/material3/TopAppBarState;

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result v6

    goto :goto_1d

    :cond_2c
    const/4 v6, 0x0

    :goto_1d
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/animation/core/EasingKt;->FastOutLinearInEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {v10, v6}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    move-result v10

    iget-wide v11, v7, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->containerColor:J

    move-object/from16 v18, v13

    move-object/from16 v17, v14

    iget-wide v13, v7, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;->scrolledContainerColor:J

    invoke-static {v11, v12, v13, v14, v10}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v28

    new-instance v10, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$actionsRow$1;

    invoke-direct {v10, v8}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$actionsRow$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    const v11, -0x1eedb3b9

    invoke-static {v11, v10, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    sget-object v10, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopTitleAlphaEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {v10, v6}, Landroidx/compose/animation/core/CubicBezierEasing;->transform(F)F

    move-result v20

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v23, v10, v6

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v10

    if-gez v6, :cond_2d

    const/4 v6, 0x1

    :goto_1e
    const/4 v10, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v6, 0x0

    goto :goto_1e

    :goto_1f
    xor-int/lit8 v24, v6, 0x1

    const v11, -0x2cff974f

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v5, :cond_34

    const v11, -0x2cff969e

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v11, 0x20

    if-ne v1, v11, :cond_2e

    move v11, v10

    goto :goto_20

    :cond_2e
    const/4 v11, 0x0

    :goto_20
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_2f

    if-ne v12, v4, :cond_30

    :cond_2f
    new-instance v12, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1;

    invoke-direct {v12, v5}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x0

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v12, v15}, Landroidx/compose/foundation/gestures/DraggableKt;->rememberDraggableState(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultDraggableState;

    move-result-object v31

    const v11, -0x2cff962d

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v11, 0x20

    if-ne v1, v11, :cond_31

    move v13, v10

    goto :goto_21

    :cond_31
    const/4 v13, 0x0

    :goto_21
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v13, :cond_32

    if-ne v1, v4, :cond_33

    :cond_32
    new-instance v1, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarDragModifier$2$1;

    const/4 v4, 0x0

    invoke-direct {v1, v5, v4}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$appBarDragModifier$2$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_33
    move-object/from16 v36, v1

    check-cast v36, Lkotlin/jvm/functions/Function3;

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v35, Landroidx/compose/foundation/gestures/DraggableKt;->NoOpOnDragStarted:Lkotlin/jvm/functions/Function3;

    new-instance v1, Landroidx/compose/foundation/gestures/DraggableElement;

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v37}, Landroidx/compose/foundation/gestures/DraggableElement;-><init>(Landroidx/compose/foundation/gestures/DefaultDraggableState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    :goto_22
    const/4 v4, 0x0

    goto :goto_23

    :cond_34
    move-object/from16 v1, v16

    goto :goto_22

    :goto_23
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v3, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;

    move-object/from16 v25, v9

    move-object v9, v4

    move-object/from16 v10, p8

    move-object/from16 v11, v17

    move-object/from16 v12, p9

    move-object/from16 v21, v18

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v30, v3

    move-object v3, v15

    move/from16 v15, v20

    move/from16 v16, v6

    move-object/from16 v17, p6

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    move-object/from16 v20, p11

    move-object/from16 v21, p2

    move/from16 v22, v23

    move-object/from16 v23, v0

    move-object/from16 v26, v2

    move-object/from16 v27, p1

    invoke-direct/range {v9 .. v27}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$3;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/internal/Ref$IntRef;ZLandroidx/compose/ui/unit/Density;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x3b9a0d3d

    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/high16 v24, 0xc00000

    const/16 v25, 0x7a

    move-object v13, v1

    move-wide/from16 v15, v28

    move-object/from16 v23, v3

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v1, v30

    :goto_24
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_35

    new-instance v14, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$4;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object/from16 v38, v14

    move/from16 v14, p14

    move-object/from16 v39, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TwoRowsTopAppBar$4;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;FLandroidx/compose/material3/TopAppBarScrollBehavior;III)V

    move-object/from16 v1, v38

    move-object/from16 v0, v39

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_35
    return-void

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A TwoRowsTopAppBar max height should be greater than its pinned height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final access$Title(Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V
    .locals 27

    move-object/from16 v1, p0

    move/from16 v0, p3

    move/from16 v15, p4

    const/4 v2, 0x2

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x92014e7

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v15, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v0, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v0, 0xe

    if-nez v3, :cond_2

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    or-int/2addr v3, v0

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    and-int/2addr v2, v15

    if-eqz v2, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move/from16 v4, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v0, 0x70

    if-nez v4, :cond_3

    move/from16 v4, p1

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_2

    :cond_5
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :goto_3
    and-int/lit8 v5, v3, 0x5b

    const/16 v6, 0x12

    if-ne v5, v6, :cond_7

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v26, v13

    goto :goto_6

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    const v2, 0x7fffffff

    move/from16 v25, v2

    goto :goto_5

    :cond_8
    move/from16 v25, v4

    :goto_5
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget v5, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    sget v7, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$1;

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    and-int/lit8 v22, v3, 0xe

    shl-int/lit8 v2, v3, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int/lit8 v23, v2, 0x30

    const/16 v18, 0x0

    const v24, 0x1d7fc

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v26, v13

    move-wide/from16 v13, v19

    const/16 v16, 0x2

    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v17, v25

    move-object/from16 v21, v26

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move/from16 v4, v25

    :goto_6
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$2;

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v5, p4

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$Title$2;-><init>(IIILjava/lang/String;)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final access$TopAppBarLayout-7QJOWzY(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/Composer;III)V
    .locals 35

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v11, p15

    move/from16 v0, p18

    move/from16 v11, p19

    move/from16 v15, p20

    const/16 v18, 0x8

    const/16 v22, 0x10

    const/16 v24, 0x4

    move-object/from16 v14, p17

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v11, -0x30670209

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v11, 0x1

    and-int/lit8 v26, v15, 0x1

    if-eqz v26, :cond_0

    or-int/lit8 v11, v0, 0x6

    :goto_0
    const/16 v25, 0x2

    goto :goto_2

    :cond_0
    and-int/lit8 v11, v0, 0xe

    if-nez v11, :cond_2

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move/from16 v11, v24

    goto :goto_1

    :cond_1
    const/4 v11, 0x2

    :goto_1
    or-int/2addr v11, v0

    goto :goto_0

    :cond_2
    move v11, v0

    goto :goto_0

    :goto_2
    and-int/lit8 v26, v15, 0x2

    if-eqz v26, :cond_3

    or-int/lit8 v11, v11, 0x30

    goto :goto_4

    :cond_3
    and-int/lit8 v26, v0, 0x70

    if-nez v26, :cond_5

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_4

    const/16 v26, 0x20

    goto :goto_3

    :cond_4
    move/from16 v26, v22

    :goto_3
    or-int v11, v11, v26

    :cond_5
    :goto_4
    and-int/lit8 v26, v15, 0x4

    if-eqz v26, :cond_6

    or-int/lit16 v11, v11, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v1, v0, 0x380

    if-nez v1, :cond_8

    invoke-virtual {v14, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    goto :goto_5

    :cond_7
    const/16 v1, 0x80

    :goto_5
    or-int/2addr v11, v1

    :cond_8
    :goto_6
    and-int/lit8 v1, v15, 0x8

    if-eqz v1, :cond_9

    or-int/lit16 v11, v11, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v1, v0, 0x1c00

    if-nez v1, :cond_b

    invoke-virtual {v14, v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x800

    goto :goto_7

    :cond_a
    const/16 v1, 0x400

    :goto_7
    or-int/2addr v11, v1

    :cond_b
    :goto_8
    and-int/lit8 v1, v15, 0x10

    if-eqz v1, :cond_d

    or-int/lit16 v11, v11, 0x6000

    :cond_c
    :goto_9
    const/16 v1, 0x20

    goto :goto_b

    :cond_d
    const v1, 0xe000

    and-int/2addr v1, v0

    if-nez v1, :cond_c

    invoke-virtual {v14, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x4000

    goto :goto_a

    :cond_e
    const/16 v1, 0x2000

    :goto_a
    or-int/2addr v11, v1

    goto :goto_9

    :goto_b
    and-int/lit8 v26, v15, 0x20

    if-eqz v26, :cond_f

    const/high16 v1, 0x30000

    :goto_c
    or-int/2addr v11, v1

    goto :goto_d

    :cond_f
    const/high16 v1, 0x70000

    and-int/2addr v1, v0

    if-nez v1, :cond_11

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v1, 0x10000

    goto :goto_c

    :cond_11
    :goto_d
    and-int/lit8 v1, v15, 0x40

    if-eqz v1, :cond_13

    const/high16 v1, 0x180000

    :goto_e
    or-int/2addr v11, v1

    :cond_12
    const/16 v1, 0x80

    goto :goto_f

    :cond_13
    const/high16 v1, 0x380000

    and-int/2addr v1, v0

    if-nez v1, :cond_12

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x100000

    goto :goto_e

    :cond_14
    const/high16 v1, 0x80000

    goto :goto_e

    :goto_f
    and-int/lit16 v7, v15, 0x80

    if-eqz v7, :cond_16

    const/high16 v7, 0xc00000

    or-int/2addr v11, v7

    :cond_15
    move/from16 v7, p10

    :goto_10
    const/16 v8, 0x100

    goto :goto_12

    :cond_16
    const/high16 v7, 0x1c00000

    and-int/2addr v7, v0

    if-nez v7, :cond_15

    move/from16 v7, p10

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v8

    if-eqz v8, :cond_17

    const/high16 v8, 0x800000

    goto :goto_11

    :cond_17
    const/high16 v8, 0x400000

    :goto_11
    or-int/2addr v11, v8

    goto :goto_10

    :goto_12
    and-int/lit16 v1, v15, 0x100

    const/high16 v26, 0xe000000

    if-eqz v1, :cond_18

    const/high16 v1, 0x6000000

    :goto_13
    or-int/2addr v11, v1

    goto :goto_14

    :cond_18
    and-int v1, v0, v26

    if-nez v1, :cond_1a

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/high16 v1, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v1, 0x2000000

    goto :goto_13

    :cond_1a
    :goto_14
    and-int/lit16 v1, v15, 0x200

    const/high16 v27, 0x70000000

    if-eqz v1, :cond_1c

    const/high16 v1, 0x30000000

    :goto_15
    or-int/2addr v11, v1

    :cond_1b
    const/16 v1, 0x400

    goto :goto_16

    :cond_1c
    and-int v1, v0, v27

    if-nez v1, :cond_1b

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/high16 v1, 0x20000000

    goto :goto_15

    :cond_1d
    const/high16 v1, 0x10000000

    goto :goto_15

    :goto_16
    and-int/lit16 v8, v15, 0x400

    if-eqz v8, :cond_1e

    move/from16 v8, p19

    or-int/lit8 v24, v8, 0x6

    move/from16 v7, p13

    :goto_17
    const/16 v1, 0x800

    goto :goto_19

    :cond_1e
    move/from16 v8, p19

    and-int/lit8 v28, v8, 0xe

    move/from16 v7, p13

    const/16 v1, 0x2000

    if-nez v28, :cond_20

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_1f

    goto :goto_18

    :cond_1f
    const/16 v24, 0x2

    :goto_18
    or-int v24, v8, v24

    goto :goto_17

    :cond_20
    move/from16 v24, v8

    goto :goto_17

    :goto_19
    and-int/lit16 v0, v15, 0x800

    if-eqz v0, :cond_21

    or-int/lit8 v24, v24, 0x30

    move v0, v15

    move/from16 v1, v24

    move-object/from16 v15, p14

    goto :goto_1b

    :cond_21
    and-int/lit8 v0, v8, 0x70

    if-nez v0, :cond_23

    move v0, v15

    move-object/from16 v15, p14

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    const/16 v22, 0x20

    :cond_22
    or-int v24, v24, v22

    :goto_1a
    move/from16 v1, v24

    goto :goto_1b

    :cond_23
    move v0, v15

    move-object/from16 v15, p14

    goto :goto_1a

    :goto_1b
    and-int/lit16 v10, v0, 0x1000

    if-eqz v10, :cond_24

    or-int/lit16 v1, v1, 0x180

    :goto_1c
    const/16 v10, 0x2000

    goto :goto_1e

    :cond_24
    and-int/lit16 v10, v8, 0x380

    if-nez v10, :cond_26

    move-object/from16 v10, p15

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_25

    const/16 v20, 0x100

    goto :goto_1d

    :cond_25
    const/16 v20, 0x80

    :goto_1d
    or-int v1, v1, v20

    goto :goto_1c

    :cond_26
    move-object/from16 v10, p15

    goto :goto_1c

    :goto_1e
    and-int/2addr v10, v0

    if-eqz v10, :cond_28

    or-int/lit16 v1, v1, 0xc00

    :cond_27
    move/from16 v0, p16

    goto :goto_20

    :cond_28
    and-int/lit16 v0, v8, 0x1c00

    if-nez v0, :cond_27

    move/from16 v0, p16

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_29

    const/16 v16, 0x800

    goto :goto_1f

    :cond_29
    const/16 v16, 0x400

    :goto_1f
    or-int v1, v1, v16

    :goto_20
    const v16, 0x5b6db6db

    and-int v0, v11, v16

    const v8, 0x12492492

    if-ne v0, v8, :cond_2b

    and-int/lit16 v0, v1, 0x16db

    const/16 v8, 0x492

    if-ne v0, v8, :cond_2b

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_21

    :cond_2a
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-wide/from16 v10, p6

    move-object/from16 v7, p9

    move-object/from16 v12, p15

    move/from16 v17, p16

    goto/16 :goto_2b

    :cond_2b
    :goto_21
    if-eqz v10, :cond_2c

    const/4 v0, 0x1

    goto :goto_22

    :cond_2c
    move/from16 v0, p16

    :goto_22
    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v8, 0x4eeb9823

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v8, v11, 0x70

    const/16 v10, 0x20

    if-ne v8, v10, :cond_2d

    const/4 v8, 0x1

    goto :goto_23

    :cond_2d
    const/4 v8, 0x0

    :goto_23
    and-int v10, v11, v26

    move/from16 v16, v0

    const/high16 v0, 0x4000000

    if-ne v10, v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_24

    :cond_2e
    const/4 v0, 0x0

    :goto_24
    or-int/2addr v0, v8

    and-int v8, v11, v27

    const/high16 v10, 0x20000000

    if-ne v8, v10, :cond_2f

    const/4 v8, 0x1

    goto :goto_25

    :cond_2f
    const/4 v8, 0x0

    :goto_25
    or-int/2addr v0, v8

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_30

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v0, :cond_31

    :cond_30
    new-instance v8, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$2$1;

    invoke-direct {v8, v2, v12, v13}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$2$1;-><init>(FLandroidx/compose/foundation/layout/Arrangement$Vertical;I)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_31
    check-cast v8, Landroidx/compose/ui/layout/MeasurePolicy;

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget v0, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    move-object/from16 v2, p0

    invoke-static {v14, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v13, v14, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    const/16 v17, 0x0

    if-eqz v13, :cond_43

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 p17, v11

    iget-boolean v11, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_32

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_26

    :cond_32
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_26
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v8, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v5, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_33

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    :cond_33
    invoke-static {v0, v14, v0, v10}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_34
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const-string v6, "navigationIcon"

    invoke-static {v5, v6}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v24, 0xe

    sget v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt;->TopAppBarHorizontalPadding:F

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v20, v6

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    move/from16 v19, v6

    const/4 v7, 0x0

    invoke-static {v9, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget v7, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move-object/from16 v20, v9

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v14, v12}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    if-eqz v13, :cond_42

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v21, v13

    iget-boolean v13, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_35

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_27

    :cond_35
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_27
    invoke-static {v14, v6, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v6, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_36

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    :cond_36
    invoke-static {v7, v14, v7, v10}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_37
    invoke-static {v14, v12, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    and-int/lit8 v9, v1, 0x70

    or-int v9, v18, v9

    invoke-static {v7, v15, v14, v9}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const-string v7, "title"

    invoke-static {v5, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v9, 0x0

    move/from16 v12, v19

    const/4 v13, 0x2

    invoke-static {v7, v12, v9, v13}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz p13, :cond_38

    sget-object v9, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$2;->INSTANCE:Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$2;

    sget-object v13, Landroidx/compose/ui/semantics/SemanticsModifierKt;->lastIdentifier:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v13, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;

    invoke-direct {v13, v9}, Landroidx/compose/ui/semantics/ClearAndSetSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_28

    :cond_38
    move-object v13, v5

    :goto_28
    invoke-interface {v7, v13}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v26

    const/16 v31, 0x0

    const v32, 0x1fffb

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v27, p10

    invoke-static/range {v26 .. v32}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move-object/from16 v13, v20

    const/4 v9, 0x0

    invoke-static {v13, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v4, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v14, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-eqz v21, :cond_41

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 v20, v13

    iget-boolean v13, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_39

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_29

    :cond_39
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_29
    invoke-static {v14, v3, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v3, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_3a

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    :cond_3a
    invoke-static {v4, v14, v4, v10}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_3b
    invoke-static {v14, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$3$1;

    move-object/from16 v9, p8

    move/from16 v13, v16

    move-object/from16 v4, v20

    move-object/from16 v16, v6

    move-wide/from16 v6, p4

    invoke-direct {v3, v6, v7, v9, v13}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$1$3$1;-><init>(JLkotlin/jvm/functions/Function2;Z)V

    const v6, 0x2a43dd1c

    invoke-static {v6, v3, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    shr-int/lit8 v6, p17, 0x12

    and-int/lit8 v6, v6, 0xe

    or-int/lit8 v6, v6, 0x30

    move-object/from16 v7, p9

    invoke-static {v7, v3, v14, v6}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const-string v3, "actionIcons"

    invoke-static {v5, v3}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v31, 0xb

    const/16 v28, 0x0

    const/16 v30, 0x0

    move/from16 v29, v12

    invoke-static/range {v26 .. v31}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget v5, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v14, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v21, :cond_40

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_3c

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2a

    :cond_3c
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2a
    invoke-static {v14, v4, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_3d

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    :cond_3d
    invoke-static {v5, v14, v5, v10}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_3e
    invoke-static {v14, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 v10, p6

    invoke-direct {v0, v10, v11}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int v1, v18, v1

    move-object/from16 v12, p15

    invoke-static {v0, v12, v14, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v17, v13

    :goto_2b
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_3f

    new-instance v13, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$3;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v33, v13

    move/from16 v13, p12

    move-object/from16 v34, v14

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$TopAppBarLayout$3;-><init>(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZIII)V

    move-object/from16 v1, v33

    move-object/from16 v0, v34

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3f
    return-void

    :cond_40
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17

    :cond_41
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17

    :cond_42
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17

    :cond_43
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17
.end method

.method public static final access$settleAppBar(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;

    iget v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;

    invoke-direct {v0, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p4, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    const/4 v8, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object p1, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Landroidx/compose/animation/core/AnimationSpec;

    iget-object p1, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/material3/TopAppBarState;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p4, p0

    move-object p0, p1

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p4

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float p4, p4, v1

    if-ltz p4, :cond_9

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p4, p4, v1

    if-nez p4, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance p4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput p1, p4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    if-eqz p2, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_5

    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/16 v4, 0x1c

    invoke-static {v8, p1, v4}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object p1

    new-instance v4, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$2;

    invoke-direct {v4, v1, p0, p4}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/internal/Ref$FloatRef;)V

    iput-object p0, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    iput-object p3, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    iput-object p4, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    iput v3, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v4, v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateDecay(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpecImpl;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto/16 :goto_6

    :cond_5
    :goto_2
    move-object v3, p3

    if-eqz v3, :cond_8

    iget-object p1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    cmpg-float p1, p1, v8

    if-gez p1, :cond_8

    iget-object p1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    iget-object p2, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_8

    iget-object p1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    const/16 p3, 0x1e

    invoke-static {p1, v8, p3}, Landroidx/compose/animation/core/AnimationStateKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getCollapsedFraction()F

    move-result p1

    const/high16 p3, 0x3f000000    # 0.5f

    cmpg-float p1, p1, p3

    if-gez p1, :cond_6

    move p1, v8

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result p1

    :goto_3
    new-instance p2, Ljava/lang/Float;

    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v5, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$3;

    invoke-direct {v5, p0}, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$3;-><init>(Landroidx/compose/material3/TopAppBarState;)V

    iput-object p4, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$0:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$1:Ljava/lang/Object;

    iput-object p0, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->L$2:Ljava/lang/Object;

    iput v2, v6, Lcom/android/settingslib/spa/widget/scaffold/CustomizedAppBarKt$settleAppBar$1;->label:I

    const/4 v7, 0x4

    const/4 v4, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_6

    :cond_7
    move-object p0, p4

    :goto_4
    move-object p4, p0

    :cond_8
    iget p0, p4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v8, p0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p0

    new-instance v0, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    goto :goto_6

    :cond_9
    :goto_5
    new-instance v0, Landroidx/compose/ui/unit/Velocity;

    const-wide/16 p0, 0x0

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    :goto_6
    return-object v0
.end method

.method public static final getWindowInsets(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/LimitInsets;
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x6c374ab2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->Companion:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v0

    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Horizontal:I

    or-int/lit8 v1, v1, 0x10

    new-instance v2, Landroidx/compose/foundation/layout/LimitInsets;

    iget-object v0, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->safeDrawing:Landroidx/compose/foundation/layout/UnionInsets;

    invoke-direct {v2, v0, v1}, Landroidx/compose/foundation/layout/LimitInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v2
.end method

.method public static final topAppBarColors(Landroidx/compose/runtime/Composer;)Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;
    .locals 12

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x6260cb99

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;

    sget-object v1, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/ColorScheme;

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/ColorScheme;

    iget-wide v4, v3, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/ColorScheme;

    iget-wide v6, v3, Landroidx/compose/material3/ColorScheme;->onSurface:J

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/ColorScheme;

    iget-wide v8, v3, Landroidx/compose/material3/ColorScheme;->onSurface:J

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    iget-wide v10, v1, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    iget-wide v2, v2, Landroidx/compose/material3/ColorScheme;->surfaceContainer:J

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/settingslib/spa/widget/scaffold/TopAppBarColors;-><init>(JJJJJ)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method
