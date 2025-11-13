.class public abstract Landroidx/compose/material3/IconButtonKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final FilledIconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v7, p6

    move/from16 v8, p8

    const/16 v0, 0x20

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x10

    move-object/from16 v4, p7

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x5f0da61b

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v5, 0x1

    and-int/lit8 v6, p9, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v6, v8, 0x6

    move v9, v6

    move-object/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v8, 0x6

    if-nez v6, :cond_2

    move-object/from16 v6, p0

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v2

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    or-int/2addr v9, v8

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    move v9, v8

    :goto_1
    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_4

    or-int/lit8 v9, v9, 0x30

    :cond_3
    move-object/from16 v10, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v10, v8, 0x30

    if-nez v10, :cond_3

    move-object/from16 v10, p1

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v0

    goto :goto_2

    :cond_5
    move v11, v3

    :goto_2
    or-int/2addr v9, v11

    :goto_3
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move/from16 v11, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v11, v8, 0x180

    if-nez v11, :cond_6

    move/from16 v11, p2

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v9, v12

    :goto_5
    and-int/lit16 v12, v8, 0xc00

    if-nez v12, :cond_b

    and-int/lit8 v12, p9, 0x8

    if-nez v12, :cond_9

    move-object/from16 v12, p3

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v12, p3

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v9, v13

    goto :goto_7

    :cond_b
    move-object/from16 v12, p3

    :goto_7
    and-int/lit16 v13, v8, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, p9, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v13, p4

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v9, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p4

    :goto_9
    and-int/lit8 v0, p9, 0x20

    const/high16 v14, 0x30000

    if-eqz v0, :cond_10

    or-int/2addr v9, v14

    :cond_f
    move-object/from16 v14, p5

    goto :goto_b

    :cond_10
    and-int/2addr v14, v8

    if-nez v14, :cond_f

    move-object/from16 v14, p5

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v9, v15

    :goto_b
    and-int/lit8 v15, p9, 0x40

    const/high16 v16, 0x180000

    if-eqz v15, :cond_12

    or-int v9, v9, v16

    goto :goto_d

    :cond_12
    and-int v15, v8, v16

    if-nez v15, :cond_14

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/high16 v15, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v15, 0x80000

    :goto_c
    or-int/2addr v9, v15

    :cond_14
    :goto_d
    const v15, 0x92493

    and-int/2addr v15, v9

    const v3, 0x92492

    if-ne v15, v3, :cond_16

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v10

    move v3, v11

    move-object v5, v13

    goto/16 :goto_15

    :cond_16
    :goto_e
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v3, v8, 0x1

    const v15, -0xe001

    if-eqz v3, :cond_1a

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_18

    and-int/lit16 v9, v9, -0x1c01

    :cond_18
    const/16 v0, 0x10

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_19

    and-int/2addr v9, v15

    :cond_19
    move-object v0, v10

    move v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v5, v14

    goto :goto_10

    :cond_1a
    :goto_f
    if-eqz v1, :cond_1b

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v10, v1

    :cond_1b
    if-eqz v2, :cond_1c

    move v11, v5

    :cond_1c
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_1d

    sget-object v1, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledIconButtonTokens;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/material3/tokens/FilledIconButtonTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v1, v4}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    and-int/lit16 v9, v9, -0x1c01

    move-object v12, v1

    :cond_1d
    const/16 v1, 0x10

    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_1e

    sget-object v1, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/material3/IconButtonDefaults;->getDefaultFilledIconButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/IconButtonColors;

    move-result-object v1

    and-int v2, v9, v15

    move-object v13, v1

    move v9, v2

    :cond_1e
    if-eqz v0, :cond_19

    const/4 v0, 0x0

    move-object v5, v0

    move-object v0, v10

    move v1, v11

    move-object v2, v12

    move-object v3, v13

    :goto_10
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/material3/IconButtonKt$FilledIconButton$1;->INSTANCE:Landroidx/compose/material3/IconButtonKt$FilledIconButton$1;

    const/4 v11, 0x0

    invoke-static {v0, v11, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz v1, :cond_1f

    iget-wide v11, v3, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    :goto_11
    move-wide v13, v11

    goto :goto_12

    :cond_1f
    iget-wide v11, v3, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    goto :goto_11

    :goto_12
    if-eqz v1, :cond_20

    iget-wide v11, v3, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    :goto_13
    move-wide v15, v11

    goto :goto_14

    :cond_20
    iget-wide v11, v3, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    goto :goto_13

    :goto_14
    new-instance v11, Landroidx/compose/material3/IconButtonKt$FilledIconButton$2;

    invoke-direct {v11, v7}, Landroidx/compose/material3/IconButtonKt$FilledIconButton$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v12, -0x5d053b10

    invoke-static {v12, v4, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    and-int/lit16 v11, v9, 0x1f8e

    shl-int/lit8 v9, v9, 0xc

    const/high16 v12, 0x70000000

    and-int/2addr v9, v12

    or-int v22, v11, v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x1c0

    move-object/from16 v9, p0

    move v11, v1

    move-object v12, v2

    move-object/from16 v19, v5

    move-object/from16 v21, v4

    invoke-static/range {v9 .. v23}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v2

    move-object v14, v5

    move-object v2, v0

    move-object v5, v3

    move v3, v1

    :goto_15
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_21

    new-instance v11, Landroidx/compose/material3/IconButtonKt$FilledIconButton$3;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v14

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/IconButtonKt$FilledIconButton$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;II)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

.method public static final IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v6, p5

    move/from16 v7, p7

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/16 v2, 0x8

    move-object/from16 v3, p6

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x441f35f2

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p8, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eqz v5, :cond_0

    or-int/lit8 v5, v7, 0x6

    move v10, v5

    move-object/from16 v5, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v7, 0x6

    if-nez v5, :cond_2

    move-object/from16 v5, p0

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v8

    goto :goto_0

    :cond_1
    move v10, v9

    :goto_0
    or-int/2addr v10, v7

    goto :goto_1

    :cond_2
    move-object/from16 v5, p0

    move v10, v7

    :goto_1
    and-int/lit8 v11, p8, 0x2

    if-eqz v11, :cond_4

    or-int/lit8 v10, v10, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v7, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v1

    goto :goto_2

    :cond_5
    move v13, v0

    :goto_2
    or-int/2addr v10, v13

    :goto_3
    and-int/lit8 v13, p8, 0x4

    if-eqz v13, :cond_7

    or-int/lit16 v10, v10, 0x180

    :cond_6
    move/from16 v14, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v14, v7, 0x180

    if-nez v14, :cond_6

    move/from16 v14, p2

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v15, 0x100

    goto :goto_4

    :cond_8
    const/16 v15, 0x80

    :goto_4
    or-int/2addr v10, v15

    :goto_5
    and-int/lit16 v15, v7, 0xc00

    if-nez v15, :cond_b

    and-int/lit8 v15, p8, 0x8

    if-nez v15, :cond_9

    move-object/from16 v15, p3

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v15, p3

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v10, v10, v16

    goto :goto_7

    :cond_b
    move-object/from16 v15, p3

    :goto_7
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v10, v10, 0x6000

    :cond_c
    move-object/from16 v8, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v8, v7, 0x6000

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v10, v10, v16

    :goto_9
    and-int/lit8 v1, p8, 0x20

    const/high16 v16, 0x30000

    if-eqz v1, :cond_f

    or-int v10, v10, v16

    goto :goto_b

    :cond_f
    and-int v1, v7, v16

    if-nez v1, :cond_11

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v1, 0x10000

    :goto_a
    or-int/2addr v10, v1

    :cond_11
    :goto_b
    const v1, 0x12493

    and-int/2addr v1, v10

    const v9, 0x12492

    if-ne v1, v9, :cond_13

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v12

    move-object v4, v15

    goto/16 :goto_12

    :cond_13
    :goto_c
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, v7, 0x1

    if-eqz v1, :cond_16

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_15

    and-int/lit16 v10, v10, -0x1c01

    :cond_15
    move-object/from16 v17, v8

    move/from16 v18, v10

    move-object v0, v12

    move v1, v14

    move-object v8, v15

    goto :goto_e

    :cond_16
    :goto_d
    if-eqz v11, :cond_17

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v1

    :cond_17
    if-eqz v13, :cond_18

    move v14, v4

    :cond_18
    and-int/lit8 v1, p8, 0x8

    if-eqz v1, :cond_19

    sget-object v1, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/compose/material3/IconButtonDefaults;->iconButtonColors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/IconButtonColors;

    move-result-object v1

    and-int/lit16 v10, v10, -0x1c01

    move-object v15, v1

    :cond_19
    if-eqz v0, :cond_15

    move/from16 v18, v10

    move-object v0, v12

    move v1, v14

    move-object v8, v15

    const/16 v17, 0x0

    :goto_e
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v10, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v0, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/material3/tokens/IconButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/IconButtonTokens;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Landroidx/compose/material3/tokens/IconButtonTokens;->StateLayerSize:F

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v12, Landroidx/compose/material3/tokens/IconButtonTokens;->StateLayerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v12, v3}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v12

    invoke-static {v10, v12}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz v1, :cond_1a

    iget-wide v12, v8, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    goto :goto_f

    :cond_1a
    iget-wide v12, v8, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    :goto_f
    sget-object v14, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v10, v12, v13, v14}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v12, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float/2addr v11, v12

    sget-object v12, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v12, 0x36

    const/4 v15, 0x0

    const/4 v13, 0x4

    invoke-static {v15, v11, v3, v12, v13}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v12

    invoke-static {v15}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v14

    const/16 v16, 0x8

    move-object/from16 v11, v17

    move v13, v1

    move v9, v15

    move-object/from16 v15, p0

    invoke-static/range {v10 .. v16}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v11, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    iget v11, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v3, v10}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v14, v3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    if-eqz v14, :cond_20

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v14, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v14, :cond_1b

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_1b
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_10
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v9, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v12, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_1c

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    :cond_1c
    invoke-static {v11, v3, v11, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1d
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v10, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-eqz v1, :cond_1e

    iget-wide v9, v8, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    goto :goto_11

    :cond_1e
    iget-wide v9, v8, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    :goto_11
    sget-object v11, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v9

    shr-int/lit8 v10, v18, 0xc

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v2, v10

    invoke-static {v9, v6, v3, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v2, v0

    move v14, v1

    move-object v4, v8

    move-object/from16 v8, v17

    :goto_12
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1f

    new-instance v10, Landroidx/compose/material3/IconButtonKt$IconButton$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move v3, v14

    move-object v5, v8

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt$IconButton$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void

    :cond_20
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method
