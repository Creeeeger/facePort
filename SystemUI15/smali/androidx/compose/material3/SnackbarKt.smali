.class public abstract Landroidx/compose/material3/SnackbarKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ContainerMaxWidth:F

.field public static final HeightToFirstLine:F

.field public static final HorizontalSpacing:F

.field public static final HorizontalSpacingButtonSide:F

.field public static final LongButtonVerticalOffset:F

.field public static final SeparateButtonExtraY:F

.field public static final SnackbarVerticalPadding:F

.field public static final TextEndExtraSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x258

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Landroidx/compose/material3/SnackbarKt;->ContainerMaxWidth:F

    const/16 v0, 0x1e

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/SnackbarKt;->HeightToFirstLine:F

    const/16 v0, 0x10

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacing:F

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacingButtonSide:F

    const/4 v1, 0x2

    int-to-float v1, v1

    sput v1, Landroidx/compose/material3/SnackbarKt;->SeparateButtonExtraY:F

    const/4 v1, 0x6

    int-to-float v1, v1

    sput v1, Landroidx/compose/material3/SnackbarKt;->SnackbarVerticalPadding:F

    sput v0, Landroidx/compose/material3/SnackbarKt;->TextEndExtraSpacing:F

    const/16 v0, 0xc

    int-to-float v0, v0

    sput v0, Landroidx/compose/material3/SnackbarKt;->LongButtonVerticalOffset:F

    return-void
.end method

.method public static final Snackbar-eQBnUkQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    move/from16 v15, p15

    move/from16 v14, p16

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/16 v4, 0x10

    const/16 v5, 0x20

    move-object/from16 v6, p14

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x49a8a49b

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v7, v14, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v8, v15, 0x6

    move v9, v8

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v15, 0x6

    if-nez v8, :cond_2

    move-object/from16 v8, p0

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    move v9, v0

    :goto_0
    or-int/2addr v9, v15

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    move v9, v15

    :goto_1
    and-int/2addr v0, v14

    if-eqz v0, :cond_4

    or-int/lit8 v9, v9, 0x30

    :cond_3
    move-object/from16 v10, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v10, v15, 0x30

    if-nez v10, :cond_3

    move-object/from16 v10, p1

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v5

    goto :goto_2

    :cond_5
    move v11, v4

    :goto_2
    or-int/2addr v9, v11

    :goto_3
    and-int/2addr v1, v14

    if-eqz v1, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move-object/from16 v11, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v11, v15, 0x180

    if-nez v11, :cond_6

    move-object/from16 v11, p2

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v9, v12

    :goto_5
    and-int/lit8 v12, v14, 0x8

    if-eqz v12, :cond_a

    or-int/lit16 v9, v9, 0xc00

    :cond_9
    move/from16 v13, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v13, v15, 0xc00

    if-nez v13, :cond_9

    move/from16 v13, p3

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v9, v9, v16

    :goto_7
    and-int/lit16 v3, v15, 0x6000

    if-nez v3, :cond_e

    and-int/lit8 v3, v14, 0x10

    if-nez v3, :cond_c

    move-object/from16 v3, p4

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v3, p4

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v9, v9, v17

    goto :goto_9

    :cond_e
    move-object/from16 v3, p4

    :goto_9
    const/high16 v17, 0x30000

    and-int v17, v15, v17

    if-nez v17, :cond_10

    and-int/lit8 v17, v14, 0x20

    move-wide/from16 v4, p5

    if-nez v17, :cond_f

    invoke-virtual {v6, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_f

    const/high16 v19, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v19, 0x10000

    :goto_a
    or-int v9, v9, v19

    goto :goto_b

    :cond_10
    move-wide/from16 v4, p5

    :goto_b
    const/high16 v19, 0x180000

    and-int v19, v15, v19

    if-nez v19, :cond_12

    and-int/lit8 v19, v14, 0x40

    move-wide/from16 v2, p7

    if-nez v19, :cond_11

    invoke-virtual {v6, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_11

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v20, 0x80000

    :goto_c
    or-int v9, v9, v20

    goto :goto_d

    :cond_12
    move-wide/from16 v2, p7

    :goto_d
    const/high16 v20, 0xc00000

    and-int v20, v15, v20

    if-nez v20, :cond_15

    const/16 v2, 0x80

    and-int/lit16 v3, v14, 0x80

    if-nez v3, :cond_13

    move-wide/from16 v2, p9

    invoke-virtual {v6, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_14

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_13
    move-wide/from16 v2, p9

    :cond_14
    const/high16 v20, 0x400000

    :goto_e
    or-int v9, v9, v20

    goto :goto_f

    :cond_15
    move-wide/from16 v2, p9

    :goto_f
    const/high16 v20, 0x6000000

    and-int v20, v15, v20

    if-nez v20, :cond_18

    const/16 v2, 0x100

    and-int/lit16 v3, v14, 0x100

    if-nez v3, :cond_16

    move-wide/from16 v2, p11

    invoke-virtual {v6, v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_17

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_16
    move-wide/from16 v2, p11

    :cond_17
    const/high16 v20, 0x2000000

    :goto_10
    or-int v9, v9, v20

    goto :goto_11

    :cond_18
    move-wide/from16 v2, p11

    :goto_11
    and-int/lit16 v2, v14, 0x200

    const/high16 v3, 0x30000000

    if-eqz v2, :cond_19

    or-int/2addr v9, v3

    move-object/from16 v3, p13

    goto :goto_13

    :cond_19
    and-int v2, v15, v3

    move-object/from16 v3, p13

    if-nez v2, :cond_1b

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/high16 v2, 0x20000000

    goto :goto_12

    :cond_1a
    const/high16 v2, 0x10000000

    :goto_12
    or-int/2addr v9, v2

    :cond_1b
    :goto_13
    const v2, 0x12492493

    and-int/2addr v2, v9

    const v3, 0x12492492

    if-ne v2, v3, :cond_1d

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-wide/from16 v17, p9

    move-wide/from16 v19, p11

    move-object v1, v8

    move-object v2, v10

    move-object v3, v11

    move-wide/from16 v11, p7

    move-wide v7, v4

    move v4, v13

    move-object/from16 v5, p4

    goto/16 :goto_21

    :cond_1d
    :goto_14
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, v15, 0x1

    const v3, -0xe000001

    const v20, -0x1c00001

    const v21, -0x380001

    const v22, -0x70001

    const v23, -0xe001

    if-eqz v2, :cond_24

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_15

    :cond_1e
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x10

    and-int/2addr v0, v14

    if-eqz v0, :cond_1f

    and-int v9, v9, v23

    :cond_1f
    const/16 v0, 0x20

    and-int/2addr v0, v14

    if-eqz v0, :cond_20

    and-int v9, v9, v22

    :cond_20
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_21

    and-int v9, v9, v21

    :cond_21
    const/16 v0, 0x80

    and-int/2addr v0, v14

    if-eqz v0, :cond_22

    and-int v9, v9, v20

    :cond_22
    const/16 v0, 0x100

    and-int/2addr v0, v14

    if-eqz v0, :cond_23

    and-int/2addr v9, v3

    :cond_23
    move-object/from16 v1, p4

    move-wide/from16 v17, p9

    move-wide/from16 v19, p11

    move-object v2, v8

    move-object v7, v11

    move v0, v13

    move-wide/from16 v11, p7

    goto/16 :goto_20

    :cond_24
    :goto_15
    if-eqz v7, :cond_25

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_16

    :cond_25
    move-object v2, v8

    :goto_16
    const/4 v7, 0x0

    if-eqz v0, :cond_26

    move-object v10, v7

    :cond_26
    if-eqz v1, :cond_27

    goto :goto_17

    :cond_27
    move-object v7, v11

    :goto_17
    if-eqz v12, :cond_28

    const/4 v0, 0x0

    :goto_18
    const/16 v1, 0x10

    goto :goto_19

    :cond_28
    move v0, v13

    goto :goto_18

    :goto_19
    and-int/2addr v1, v14

    if-eqz v1, :cond_29

    sget-object v1, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v1, v6}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    and-int v9, v9, v23

    :goto_1a
    const/16 v8, 0x20

    goto :goto_1b

    :cond_29
    move-object/from16 v1, p4

    goto :goto_1a

    :goto_1b
    and-int/2addr v8, v14

    if-eqz v8, :cond_2a

    sget-object v4, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v4, v6}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v4

    and-int v9, v9, v22

    :cond_2a
    and-int/lit8 v8, v14, 0x40

    if-eqz v8, :cond_2b

    sget-object v8, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/material3/tokens/SnackbarTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v8, v6}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v11

    and-int v9, v9, v21

    :goto_1c
    const/16 v8, 0x80

    goto :goto_1d

    :cond_2b
    move-wide/from16 v11, p7

    goto :goto_1c

    :goto_1d
    and-int/2addr v8, v14

    if-eqz v8, :cond_2c

    sget-object v8, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/material3/tokens/SnackbarTokens;->ActionLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v8, v6}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v17

    and-int v8, v9, v20

    move v9, v8

    :goto_1e
    const/16 v8, 0x100

    goto :goto_1f

    :cond_2c
    move-wide/from16 v17, p9

    goto :goto_1e

    :goto_1f
    and-int/2addr v8, v14

    if-eqz v8, :cond_2d

    sget-object v8, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/material3/tokens/SnackbarTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v8, v6}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v19

    and-int/2addr v9, v3

    goto :goto_20

    :cond_2d
    move-wide/from16 v19, p11

    :goto_20
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerElevation:F

    new-instance v8, Landroidx/compose/material3/SnackbarKt$Snackbar$1;

    move-object/from16 p0, v8

    move/from16 p1, v0

    move-object/from16 p2, v10

    move-object/from16 p3, p13

    move-object/from16 p4, v7

    move-wide/from16 p5, v17

    move-wide/from16 p7, v19

    invoke-direct/range {p0 .. p8}, Landroidx/compose/material3/SnackbarKt$Snackbar$1;-><init>(ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;JJ)V

    const v13, -0x6d0e72d6

    invoke-static {v13, v6, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    and-int/lit8 v13, v9, 0xe

    const/high16 v16, 0xc30000

    or-int v13, v13, v16

    shr-int/lit8 v9, v9, 0x9

    and-int/lit8 v16, v9, 0x70

    or-int v13, v13, v16

    move/from16 p14, v0

    and-int/lit16 v0, v9, 0x380

    or-int/2addr v0, v13

    and-int/lit16 v9, v9, 0x1c00

    or-int/2addr v0, v9

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x50

    move-object/from16 p0, v2

    move-object/from16 p1, v1

    move-wide/from16 p2, v4

    move-wide/from16 p4, v11

    move/from16 p6, v9

    move/from16 p7, v3

    move-object/from16 p8, v13

    move-object/from16 p9, v8

    move-object/from16 p10, v6

    move/from16 p11, v0

    move/from16 p12, v16

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v3, v7

    move-wide v7, v4

    move/from16 v4, p14

    move-object v5, v1

    move-object v1, v2

    move-object v2, v10

    :goto_21
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2e

    new-instance v10, Landroidx/compose/material3/SnackbarKt$Snackbar$2;

    move-object v0, v10

    move-wide v6, v7

    move-wide v8, v11

    move-object v12, v10

    move-wide/from16 v10, v17

    move-object/from16 v25, v12

    move-object/from16 v24, v13

    move-wide/from16 v12, v19

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/SnackbarKt$Snackbar$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJJJLkotlin/jvm/functions/Function2;II)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method

.method public static final Snackbar-sDKtq54(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/Composer;II)V
    .locals 40

    move-object/from16 v1, p0

    move/from16 v15, p15

    move/from16 v13, p16

    const/4 v0, 0x2

    const/4 v2, 0x4

    const/16 v5, 0x10

    const/16 v6, 0x20

    move-object/from16 v7, p14

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v8, 0x105e641f

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v8, v13, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v15, 0x6

    if-nez v8, :cond_2

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v0

    :goto_0
    or-int/2addr v8, v15

    goto :goto_1

    :cond_2
    move v8, v15

    :goto_1
    and-int/2addr v0, v13

    if-eqz v0, :cond_4

    or-int/lit8 v8, v8, 0x30

    :cond_3
    move-object/from16 v9, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v15, 0x30

    if-nez v9, :cond_3

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v6

    goto :goto_2

    :cond_5
    move v10, v5

    :goto_2
    or-int/2addr v8, v10

    :goto_3
    and-int/2addr v2, v13

    if-eqz v2, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move/from16 v10, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v15, 0x180

    if-nez v10, :cond_6

    move/from16 v10, p2

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v8, v11

    :goto_5
    and-int/lit16 v11, v15, 0xc00

    if-nez v11, :cond_b

    and-int/lit8 v11, v13, 0x8

    if-nez v11, :cond_9

    move-object/from16 v11, p3

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v11, p3

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v8, v12

    goto :goto_7

    :cond_b
    move-object/from16 v11, p3

    :goto_7
    and-int/lit16 v12, v15, 0x6000

    if-nez v12, :cond_d

    and-int/lit8 v12, v13, 0x10

    move-wide/from16 v4, p4

    if-nez v12, :cond_c

    invoke-virtual {v7, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    const/16 v16, 0x2000

    :goto_8
    or-int v8, v8, v16

    goto :goto_9

    :cond_d
    move-wide/from16 v4, p4

    :goto_9
    const/high16 v16, 0x30000

    and-int v16, v15, v16

    if-nez v16, :cond_f

    and-int/lit8 v16, v13, 0x20

    move-wide/from16 v3, p6

    if-nez v16, :cond_e

    invoke-virtual {v7, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_e

    const/high16 v5, 0x20000

    goto :goto_a

    :cond_e
    const/high16 v5, 0x10000

    :goto_a
    or-int/2addr v8, v5

    goto :goto_b

    :cond_f
    move-wide/from16 v3, p6

    :goto_b
    const/high16 v5, 0x180000

    and-int/2addr v5, v15

    if-nez v5, :cond_11

    and-int/lit8 v5, v13, 0x40

    move-wide/from16 v12, p8

    if-nez v5, :cond_10

    invoke-virtual {v7, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_10

    const/high16 v5, 0x100000

    goto :goto_c

    :cond_10
    const/high16 v5, 0x80000

    :goto_c
    or-int/2addr v8, v5

    goto :goto_d

    :cond_11
    move-wide/from16 v12, p8

    :goto_d
    const/high16 v5, 0xc00000

    and-int/2addr v5, v15

    if-nez v5, :cond_13

    move/from16 v13, p16

    const/16 v5, 0x80

    and-int/lit16 v12, v13, 0x80

    move-wide/from16 v14, p10

    if-nez v12, :cond_12

    invoke-virtual {v7, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v12

    if-eqz v12, :cond_12

    const/high16 v12, 0x800000

    goto :goto_e

    :cond_12
    const/high16 v12, 0x400000

    :goto_e
    or-int/2addr v8, v12

    goto :goto_f

    :cond_13
    move-wide/from16 v14, p10

    move/from16 v13, p16

    :goto_f
    const/high16 v12, 0x6000000

    and-int v12, p15, v12

    if-nez v12, :cond_16

    const/16 v12, 0x100

    and-int/lit16 v14, v13, 0x100

    if-nez v14, :cond_14

    move-wide/from16 v14, p12

    invoke-virtual {v7, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v17

    if-eqz v17, :cond_15

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_14
    move-wide/from16 v14, p12

    :cond_15
    const/high16 v17, 0x2000000

    :goto_10
    or-int v8, v8, v17

    goto :goto_11

    :cond_16
    move-wide/from16 v14, p12

    :goto_11
    const v17, 0x2492493

    and-int v5, v8, v17

    const v12, 0x2492492

    if-ne v5, v12, :cond_18

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_12

    :cond_17
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-wide/from16 v5, p4

    move-wide/from16 v12, p10

    move-object v2, v9

    move-wide/from16 v33, v14

    move-wide v8, v3

    move v3, v10

    move-object v4, v11

    move-wide/from16 v10, p8

    goto/16 :goto_22

    :cond_18
    :goto_12
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v5, p15, 0x1

    const v18, -0xe000001

    const v19, -0x1c00001

    const v20, -0x380001

    const v21, -0x70001

    const v22, -0xe001

    const/4 v12, 0x0

    if-eqz v5, :cond_19

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    move v5, v12

    goto :goto_13

    :cond_1a
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_1b

    and-int/lit16 v8, v8, -0x1c01

    :cond_1b
    const/16 v0, 0x10

    and-int/2addr v0, v13

    if-eqz v0, :cond_1c

    and-int v8, v8, v22

    :cond_1c
    and-int/lit8 v0, v13, 0x20

    if-eqz v0, :cond_1d

    and-int v8, v8, v21

    :cond_1d
    and-int/lit8 v0, v13, 0x40

    if-eqz v0, :cond_1e

    and-int v8, v8, v20

    :cond_1e
    const/16 v0, 0x80

    and-int/2addr v0, v13

    if-eqz v0, :cond_1f

    and-int v8, v8, v19

    :cond_1f
    const/16 v0, 0x100

    and-int/2addr v0, v13

    if-eqz v0, :cond_20

    and-int v8, v8, v18

    :cond_20
    move v6, v8

    move-object v0, v9

    move-object v2, v11

    move v5, v12

    move-wide/from16 v33, v14

    move-wide/from16 v14, p4

    move-wide/from16 v8, p8

    move-wide/from16 v11, p10

    goto/16 :goto_1d

    :goto_13
    if-eqz v0, :cond_21

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_14

    :cond_21
    move-object v0, v9

    :goto_14
    if-eqz v2, :cond_22

    move v10, v5

    :cond_22
    and-int/lit8 v2, v13, 0x8

    if-eqz v2, :cond_23

    sget-object v2, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v2, v7}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int/lit16 v8, v8, -0x1c01

    :goto_15
    const/16 v9, 0x10

    goto :goto_16

    :cond_23
    move-object v2, v11

    goto :goto_15

    :goto_16
    and-int/2addr v9, v13

    if-eqz v9, :cond_24

    sget-object v9, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/material3/tokens/SnackbarTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v9, v7}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v14

    and-int v8, v8, v22

    goto :goto_17

    :cond_24
    move-wide/from16 v14, p4

    :goto_17
    and-int/2addr v6, v13

    if-eqz v6, :cond_25

    sget-object v3, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/material3/tokens/SnackbarTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v7}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v3

    and-int v8, v8, v21

    :cond_25
    and-int/lit8 v6, v13, 0x40

    if-eqz v6, :cond_26

    sget-object v6, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/material3/tokens/SnackbarTokens;->ActionLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v21

    and-int v8, v8, v20

    :goto_18
    const/16 v6, 0x80

    goto :goto_19

    :cond_26
    move-wide/from16 v21, p8

    goto :goto_18

    :goto_19
    and-int/2addr v6, v13

    if-eqz v6, :cond_27

    sget-object v6, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/material3/tokens/SnackbarTokens;->ActionLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v16

    and-int v6, v8, v19

    move v8, v6

    :goto_1a
    const/16 v6, 0x100

    goto :goto_1b

    :cond_27
    move-wide/from16 v16, p10

    goto :goto_1a

    :goto_1b
    and-int/2addr v6, v13

    if-eqz v6, :cond_28

    sget-object v6, Landroidx/compose/material3/SnackbarDefaults;->INSTANCE:Landroidx/compose/material3/SnackbarDefaults;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/material3/tokens/SnackbarTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v6, v7}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v11

    and-int v8, v8, v18

    move v6, v8

    move-wide/from16 v33, v11

    :goto_1c
    move-wide/from16 v11, v16

    move-wide/from16 v8, v21

    goto :goto_1d

    :cond_28
    move-wide/from16 v33, p12

    move v6, v8

    goto :goto_1c

    :goto_1d
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object v5, v1

    check-cast v5, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    iget-object v13, v5, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->visuals:Landroidx/compose/material3/SnackbarVisuals;

    invoke-interface {v13}, Landroidx/compose/material3/SnackbarVisuals;->getActionLabel()Ljava/lang/String;

    move-result-object v13

    move-wide/from16 p1, v11

    const v11, 0x5d10286a

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v11, 0x0

    if-eqz v13, :cond_29

    new-instance v12, Landroidx/compose/material3/SnackbarKt$Snackbar$actionComposable$1;

    invoke-direct {v12, v8, v9, v1, v13}, Landroidx/compose/material3/SnackbarKt$Snackbar$actionComposable$1;-><init>(JLandroidx/compose/material3/SnackbarData;Ljava/lang/String;)V

    const v13, -0x5227657f

    invoke-static {v13, v7, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    move-object/from16 v17, v12

    :goto_1e
    const/4 v12, 0x0

    goto :goto_1f

    :cond_29
    move-object/from16 v17, v11

    goto :goto_1e

    :goto_1f
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v12, 0x5d105a04

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v5, v5, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->visuals:Landroidx/compose/material3/SnackbarVisuals;

    invoke-interface {v5}, Landroidx/compose/material3/SnackbarVisuals;->getWithDismissAction()Z

    move-result v5

    if-eqz v5, :cond_2a

    new-instance v5, Landroidx/compose/material3/SnackbarKt$Snackbar$dismissActionComposable$1;

    invoke-direct {v5, v1}, Landroidx/compose/material3/SnackbarKt$Snackbar$dismissActionComposable$1;-><init>(Landroidx/compose/material3/SnackbarData;)V

    const v11, -0x6c0a98b1

    invoke-static {v11, v7, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    move-object/from16 v18, v5

    :goto_20
    const/4 v5, 0x0

    goto :goto_21

    :cond_2a
    move-object/from16 v18, v11

    goto :goto_20

    :goto_21
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v5, 0xc

    int-to-float v5, v5

    sget-object v11, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    new-instance v5, Landroidx/compose/material3/SnackbarKt$Snackbar$3;

    invoke-direct {v5, v1}, Landroidx/compose/material3/SnackbarKt$Snackbar$3;-><init>(Landroidx/compose/material3/SnackbarData;)V

    const v11, -0x4b7b9086

    invoke-static {v11, v7, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v29

    shl-int/lit8 v5, v6, 0x3

    and-int/lit16 v11, v5, 0x1c00

    const/high16 v12, 0x30000000

    or-int/2addr v11, v12

    const v12, 0xe000

    and-int/2addr v12, v5

    or-int/2addr v11, v12

    const/high16 v12, 0x70000

    and-int/2addr v12, v5

    or-int/2addr v11, v12

    const/high16 v12, 0x380000

    and-int/2addr v5, v12

    or-int/2addr v5, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v11, v6

    or-int/2addr v5, v11

    const/high16 v11, 0xe000000

    and-int/2addr v6, v11

    or-int v31, v5, v6

    const/16 v32, 0x0

    move/from16 v19, v10

    move-object/from16 v20, v2

    move-wide/from16 v21, v14

    move-wide/from16 v23, v3

    move-wide/from16 v25, p1

    move-wide/from16 v27, v33

    move-object/from16 v30, v7

    invoke-static/range {v16 .. v32}, Landroidx/compose/material3/SnackbarKt;->Snackbar-eQBnUkQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-wide/from16 v12, p1

    move-wide v5, v14

    move-object/from16 v37, v2

    move-object v2, v0

    move-wide/from16 v38, v3

    move-object/from16 v4, v37

    move v3, v10

    move-wide v10, v8

    move-wide/from16 v8, v38

    :goto_22
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_2b

    new-instance v14, Landroidx/compose/material3/SnackbarKt$Snackbar$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-object/from16 v35, v14

    move-wide/from16 v13, v33

    move-object/from16 v36, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/SnackbarKt$Snackbar$4;-><init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJII)V

    move-object/from16 v1, v35

    move-object/from16 v0, v36

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2b
    return-void
.end method

.method public static final access$NewLineButtonSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v9, p9

    move-object/from16 v0, p8

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x4f6c4929

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, v9, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v9

    goto :goto_1

    :cond_1
    move v5, v9

    :goto_1
    and-int/lit8 v8, v9, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v5, v8

    :cond_3
    and-int/lit16 v8, v9, 0x180

    if-nez v8, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v5, v8

    :cond_5
    and-int/lit16 v8, v9, 0xc00

    if-nez v8, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v5, v8

    :cond_7
    and-int/lit16 v8, v9, 0x6000

    move-wide/from16 v10, p4

    if-nez v8, :cond_9

    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_5

    :cond_8
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v5, v8

    :cond_9
    const/high16 v8, 0x30000

    and-int/2addr v8, v9

    move-wide/from16 v12, p6

    if-nez v8, :cond_b

    invoke-virtual {v0, v12, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v5, v8

    :cond_b
    const v8, 0x12493

    and-int/2addr v8, v5

    const v14, 0x12492

    if-ne v8, v14, :cond_d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v9, v2

    move-object v13, v3

    move-object v7, v4

    goto/16 :goto_f

    :cond_d
    :goto_7
    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget v14, Landroidx/compose/material3/SnackbarKt;->ContainerMaxWidth:F

    invoke-static {v8, v14}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v15}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v21, 0x6

    sget v17, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacing:F

    const/16 v19, 0x0

    sget v20, Landroidx/compose/material3/SnackbarKt;->SeparateButtonExtraY:F

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v14

    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v16, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v7, 0x0

    invoke-static {v15, v6, v0, v7}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    iget v15, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v0, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_22

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_e

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_8
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v6, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    :cond_f
    invoke-static {v15, v0, v15, v7}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_10
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v14, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    sget-object v14, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    sget v15, Landroidx/compose/material3/SnackbarKt;->HeightToFirstLine:F

    invoke-static {v15, v14}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v19

    const/4 v2, 0x0

    if-nez v19, :cond_11

    sget-object v4, Landroidx/compose/ui/layout/AlignmentLineKt;->FirstBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    const/4 v3, 0x4

    invoke-static {v8, v4, v15, v2, v3}, Landroidx/compose/foundation/layout/AlignmentLineKt;->paddingFrom-4j6BHR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    goto :goto_9

    :cond_11
    move-object v3, v8

    :goto_9
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/material3/SnackbarKt;->LongButtonVerticalOffset:F

    invoke-static {v4, v14}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v14

    if-nez v14, :cond_12

    sget-object v14, Landroidx/compose/ui/layout/AlignmentLineKt;->LastBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    const/4 v15, 0x2

    invoke-static {v8, v14, v2, v4, v15}, Landroidx/compose/foundation/layout/AlignmentLineKt;->paddingFrom-4j6BHR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/AlignmentLine;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_a

    :cond_12
    move-object v2, v8

    :goto_a
    invoke-interface {v3, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v19

    const/16 v24, 0xb

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v2, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacingButtonSide:F

    const/16 v23, 0x0

    move/from16 v22, v2

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v14, 0x0

    invoke-static {v4, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    iget v14, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move/from16 p8, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v0, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v10, :cond_21

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 v16, v8

    iget-boolean v8, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_13

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_b
    invoke-static {v0, v15, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_14

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    invoke-static {v14, v0, v14, v7}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_15
    invoke-static {v0, v3, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    and-int/lit8 v2, v5, 0xe

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$$ExternalSyntheticOutline0;->m(ILkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;Z)V

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    invoke-direct {v8, v2}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    move-object/from16 v13, p2

    if-nez v13, :cond_16

    move/from16 v22, p8

    goto :goto_c

    :cond_16
    const/4 v2, 0x0

    int-to-float v14, v2

    move/from16 v22, v14

    :goto_c
    const/16 v20, 0x0

    const/16 v24, 0xb

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v8

    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget v8, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v0, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v10, :cond_20

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v15, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v15, :cond_17

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_17
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_d
    invoke-static {v0, v4, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v14, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_18

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    invoke-static {v8, v0, v8, v7}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_19
    invoke-static {v0, v2, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v8, 0x0

    invoke-static {v2, v4, v0, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v4, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    move-object/from16 v14, v16

    invoke-static {v0, v14}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    if-eqz v10, :cond_1f

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_1a

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_e
    invoke-static {v0, v2, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    invoke-static {v4, v0, v4, v7}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1c
    invoke-static {v0, v14, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    sget-object v6, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    filled-new-array {v4, v6}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    and-int/lit8 v6, v5, 0x70

    const/16 v8, 0x8

    or-int/2addr v6, v8

    move-object/from16 v9, p1

    invoke-static {v4, v9, v0, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v4, 0x24df0b35

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v13, :cond_1d

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    shr-int/lit8 v4, v5, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v4, v8

    invoke-static {v2, v13, v0, v4}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1e

    new-instance v11, Landroidx/compose/material3/SnackbarKt$NewLineButtonSnackbar$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SnackbarKt$NewLineButtonSnackbar$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJI)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void

    :cond_1f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_20
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0

    :cond_21
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0

    :cond_22
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0
.end method

.method public static final access$OneRowSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v9, p9

    move-object/from16 v0, p8

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x35d64793

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, v9, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v9

    goto :goto_1

    :cond_1
    move v5, v9

    :goto_1
    and-int/lit8 v6, v9, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_3
    and-int/lit16 v6, v9, 0x180

    if-nez v6, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v5, v6

    :cond_5
    and-int/lit16 v6, v9, 0xc00

    if-nez v6, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x800

    goto :goto_4

    :cond_6
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v5, v6

    :cond_7
    and-int/lit16 v6, v9, 0x6000

    if-nez v6, :cond_9

    move-wide/from16 v6, p4

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_5

    :cond_8
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v5, v8

    goto :goto_6

    :cond_9
    move-wide/from16 v6, p4

    :goto_6
    const/high16 v8, 0x30000

    and-int/2addr v8, v9

    move-wide/from16 v10, p6

    if-nez v8, :cond_b

    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v8, 0x10000

    :goto_7
    or-int/2addr v5, v8

    :cond_b
    const v8, 0x12493

    and-int/2addr v8, v5

    const v12, 0x12492

    if-ne v8, v12, :cond_d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v6, v3

    move-object v11, v4

    goto/16 :goto_12

    :cond_d
    :goto_8
    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v15, 0x0

    if-nez v3, :cond_e

    sget v12, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacingButtonSide:F

    :goto_9
    move/from16 v16, v12

    goto :goto_a

    :cond_e
    int-to-float v12, v15

    sget-object v13, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_9

    :goto_a
    sget v13, Landroidx/compose/material3/SnackbarKt;->HorizontalSpacing:F

    const/16 v17, 0xa

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v12, v8

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const-string/jumbo v15, "text"

    const-string v6, "action"

    const-string v7, "dismissAction"

    if-ne v13, v14, :cond_f

    new-instance v13, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;

    invoke-direct {v13, v6, v7, v15}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v13, Landroidx/compose/ui/layout/MeasurePolicy;

    iget v14, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v0, v12}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    const/16 v16, 0x0

    if-eqz v11, :cond_22

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 p8, v7

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_10

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_10
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_b
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v9, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v3, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_11

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    invoke-static {v14, v0, v14, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_12
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v12, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v15}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v12, 0x0

    sget v14, Landroidx/compose/material3/SnackbarKt;->SnackbarVerticalPadding:F

    const/4 v15, 0x1

    invoke-static {v4, v12, v14, v15}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v12, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    iget v14, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move-object/from16 v18, v12

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v0, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v11, :cond_21

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v19, v11

    iget-boolean v11, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_13

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_c
    invoke-static {v0, v15, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v12, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v11, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v11, :cond_14

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    :cond_14
    invoke-static {v14, v0, v14, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_15
    invoke-static {v0, v4, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    and-int/lit8 v4, v5, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, -0x35ede90a    # -2393533.5f

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v2, :cond_1a

    invoke-static {v8, v6}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object/from16 v12, v18

    const/4 v11, 0x0

    invoke-static {v12, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    iget v11, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v0, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v19, :cond_19

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v4, :cond_16

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_16
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_d
    invoke-static {v0, v14, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v15, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v4, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_17

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_17
    invoke-static {v11, v0, v11, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_18
    invoke-static {v0, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    sget-object v6, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-object/from16 v11, p3

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    filled-new-array {v4, v6}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    and-int/lit8 v6, v5, 0x70

    const/16 v14, 0x8

    or-int/2addr v6, v14

    invoke-static {v4, v2, v0, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_e
    const/4 v4, 0x0

    goto :goto_f

    :cond_19
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_1a
    move-object/from16 v11, p3

    move-object/from16 v12, v18

    goto :goto_e

    :goto_f
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, -0x35edbc33

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v6, p2

    if-eqz v6, :cond_1f

    move-object/from16 v14, p8

    invoke-static {v8, v14}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v12, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget v4, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v0, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v19, :cond_1e

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v15, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v15, :cond_1b

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_10
    invoke-static {v0, v12, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v14, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_1c

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    :cond_1c
    invoke-static {v4, v0, v4, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1d
    invoke-static {v0, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    shr-int/lit8 v4, v5, 0x3

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x8

    or-int/2addr v4, v5

    invoke-static {v3, v6, v0, v4}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v4, 0x0

    goto :goto_11

    :cond_1e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_1f
    const/4 v3, 0x1

    :goto_11
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_12
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_20

    new-instance v12, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJI)V

    iput-object v12, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void

    :cond_21
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_22
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16
.end method
