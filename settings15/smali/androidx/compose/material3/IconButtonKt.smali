.class public abstract Landroidx/compose/material3/IconButtonKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 36

    move-object/from16 v6, p5

    move/from16 v7, p7

    const/16 v0, 0x10

    const/16 v1, 0x20

    const/4 v2, 0x4

    const/16 v3, 0x8

    move-object/from16 v4, p6

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x441f35f2

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v5, 0x1

    and-int/lit8 v8, p8, 0x1

    const/4 v9, 0x2

    if-eqz v8, :cond_0

    or-int/lit8 v8, v7, 0x6

    move-object/from16 v15, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v7, 0x6

    move-object/from16 v15, p0

    if-nez v8, :cond_2

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    or-int/2addr v8, v7

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    and-int/lit8 v10, p8, 0x2

    if-eqz v10, :cond_4

    or-int/lit8 v8, v8, 0x30

    :cond_3
    move-object/from16 v11, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v11, v7, 0x30

    if-nez v11, :cond_3

    move-object/from16 v11, p1

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v1

    goto :goto_2

    :cond_5
    move v12, v0

    :goto_2
    or-int/2addr v8, v12

    :goto_3
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move/from16 v12, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v12, v7, 0x180

    if-nez v12, :cond_6

    move/from16 v12, p2

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x100

    goto :goto_4

    :cond_8
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v8, v13

    :goto_5
    and-int/lit16 v13, v7, 0xc00

    if-nez v13, :cond_b

    and-int/lit8 v13, p8, 0x8

    if-nez v13, :cond_9

    move-object/from16 v13, p3

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v14, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v13, p3

    :cond_a
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v8, v14

    goto :goto_7

    :cond_b
    move-object/from16 v13, p3

    :goto_7
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move-object/from16 v14, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v14, v7, 0x6000

    if-nez v14, :cond_c

    move-object/from16 v14, p4

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v8, v8, v16

    :goto_9
    and-int/lit8 v1, p8, 0x20

    const/high16 v16, 0x30000

    if-eqz v1, :cond_f

    or-int v8, v8, v16

    goto :goto_b

    :cond_f
    and-int v1, v7, v16

    if-nez v1, :cond_11

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v1, 0x10000

    :goto_a
    or-int/2addr v8, v1

    :cond_11
    :goto_b
    const v1, 0x12493

    and-int/2addr v1, v8

    const v9, 0x12492

    if-ne v1, v9, :cond_13

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v4

    move-object v8, v6

    move-object v2, v11

    move-object v4, v13

    move-object v5, v14

    goto/16 :goto_16

    :cond_13
    :goto_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, v7, 0x1

    const/16 v17, 0x0

    const/4 v9, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_d

    :cond_14
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_15

    and-int/lit16 v8, v8, -0x1c01

    :cond_15
    move-object v3, v4

    move v6, v8

    :cond_16
    move-object v0, v11

    move v1, v12

    move-object v4, v13

    move-object v5, v14

    goto/16 :goto_12

    :cond_17
    :goto_d
    if-eqz v10, :cond_18

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v11, v1

    :cond_18
    if-eqz v2, :cond_19

    move v12, v5

    :cond_19
    and-int/lit8 v1, p8, 0x8

    if-eqz v1, :cond_1e

    const v1, -0x5a939695

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    sget-object v10, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/material3/ColorScheme;

    iget-object v13, v10, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    const v5, 0x3ec28f5c    # 0.38f

    if-nez v13, :cond_1a

    new-instance v13, Landroidx/compose/material3/IconButtonColors;

    sget-wide v23, Landroidx/compose/ui/graphics/Color;->Transparent:J

    invoke-static {v5, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v25

    move-object/from16 v18, v13

    move-wide/from16 v19, v23

    move-wide/from16 v21, v1

    invoke-direct/range {v18 .. v26}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    iput-object v13, v10, Landroidx/compose/material3/ColorScheme;->defaultIconButtonColorsCached:Landroidx/compose/material3/IconButtonColors;

    :cond_1a
    iget-wide v5, v13, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    invoke-static {v5, v6, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v3, v4

    goto :goto_10

    :cond_1b
    const v10, 0x3ec28f5c    # 0.38f

    invoke-static {v10, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v18

    const-wide/16 v20, 0x10

    cmp-long v10, v1, v20

    if-eqz v10, :cond_1c

    move-wide/from16 v30, v1

    goto :goto_e

    :cond_1c
    move-wide/from16 v30, v5

    :goto_e
    cmp-long v1, v18, v20

    if-eqz v1, :cond_1d

    move-wide/from16 v34, v18

    goto :goto_f

    :cond_1d
    iget-wide v1, v13, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    move-wide/from16 v34, v1

    :goto_f
    new-instance v1, Landroidx/compose/material3/IconButtonColors;

    iget-wide v5, v13, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    move-object/from16 v18, v4

    iget-wide v3, v13, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    move-object/from16 v27, v1

    move-wide/from16 v28, v5

    move-wide/from16 v32, v3

    invoke-direct/range {v27 .. v35}, Landroidx/compose/material3/IconButtonColors;-><init>(JJJJ)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v13, v1

    :goto_10
    and-int/lit16 v8, v8, -0x1c01

    goto :goto_11

    :cond_1e
    move-object v3, v4

    :goto_11
    move v6, v8

    if-eqz v0, :cond_16

    move-object v0, v11

    move v1, v12

    move-object v4, v13

    move-object/from16 v5, v17

    :goto_12
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v8, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v8, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    invoke-interface {v0, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget v10, Landroidx/compose/material3/tokens/IconButtonTokens;->StateLayerSize:F

    invoke-static {v8, v10}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v11, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v11, v3}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v11

    invoke-static {v8, v11}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v1, :cond_1f

    iget-wide v11, v4, Landroidx/compose/material3/IconButtonColors;->containerColor:J

    goto :goto_13

    :cond_1f
    iget-wide v11, v4, Landroidx/compose/material3/IconButtonColors;->disabledContainerColor:J

    :goto_13
    sget-object v13, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v8, v11, v12, v13}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v10, v8

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    const/16 v13, 0x36

    const/4 v14, 0x4

    move v2, v9

    move v9, v10

    move-wide v10, v11

    move-object v12, v3

    invoke-static/range {v8 .. v14}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v12

    new-instance v14, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v14, v2}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    const/16 v8, 0x8

    move-object/from16 v10, v16

    move-object v11, v5

    move v13, v1

    move-object/from16 v15, p0

    move/from16 v16, v8

    invoke-static/range {v10 .. v16}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v9, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v9, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v3, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v12, v3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_25

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_20

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_20
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_14
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v2, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v10, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v10, :cond_21

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_22

    :cond_21
    invoke-static {v9, v3, v9, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_22
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v1, :cond_23

    iget-wide v8, v4, Landroidx/compose/material3/IconButtonColors;->contentColor:J

    goto :goto_15

    :cond_23
    iget-wide v8, v4, Landroidx/compose/material3/IconButtonColors;->disabledContentColor:J

    :goto_15
    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v10, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v10, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x70

    const/16 v8, 0x8

    or-int/2addr v6, v8

    move-object/from16 v8, p5

    invoke-static {v2, v8, v3, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v2, v0

    move v12, v1

    :goto_16
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_24

    new-instance v10, Landroidx/compose/material3/IconButtonKt$IconButton$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move v3, v12

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt$IconButton$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void

    :cond_25
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17
.end method
