.class public abstract Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SelectorListItem(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/CharSequence;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    const/16 v1, 0x10

    move-object/from16 v3, p6

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v4, -0x2566f05

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p8, 0x1

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_0

    :cond_0
    move-object/from16 v5, p0

    :goto_0
    and-int/lit8 v7, p8, 0x10

    const/4 v15, 0x0

    if-eqz v7, :cond_1

    move-object v14, v15

    goto :goto_1

    :cond_1
    move-object/from16 v14, p4

    :goto_1
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/16 v7, 0x1a

    int-to-float v7, v7

    sget-object v8, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v7}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v7

    invoke-static {v5, v7}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v7, v13}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/16 v8, 0x48

    int-to-float v8, v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v10, v9}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->cardBackground(Landroidx/compose/runtime/Composer;)J

    move-result-wide v8

    sget-object v10, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v8, -0x2072c61f

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/high16 v8, 0x70000

    and-int v8, p7, v8

    const/high16 v9, 0x30000

    xor-int/2addr v8, v9

    const/4 v12, 0x0

    const/high16 v10, 0x20000

    if-le v8, v10, :cond_2

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    and-int v8, p7, v9

    if-ne v8, v10, :cond_4

    :cond_3
    move v8, v4

    goto :goto_2

    :cond_4
    move v8, v12

    :goto_2
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_5

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v8, :cond_6

    :cond_5
    new-instance v9, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$1$1;

    invoke-direct {v9, v6}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$1$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v8, 0x7

    invoke-static {v7, v12, v15, v9, v8}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v11, 0x30

    invoke-static {v9, v8, v3, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v8

    iget v9, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v3, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v11, v3, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_12

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_7

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v8, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v13, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v13, :cond_8

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    invoke-static {v9, v3, v9, v10}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_9
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v7, 0x12

    int-to-float v7, v7

    invoke-static {v9, v7}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    const/4 v6, 0x3

    invoke-static {v15, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v16

    invoke-static {v15, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v6

    new-instance v15, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$2$1;

    invoke-direct {v15, v2}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$2$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    const v2, 0x4eb17b37    # 1.4888211E9f

    invoke-static {v2, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/4 v15, 0x0

    const/16 v18, 0x0

    const v19, 0x186c06

    const/16 v20, 0x12

    move/from16 v21, v7

    move-object v7, v13

    move-object/from16 v22, v8

    move v8, v1

    move-object v1, v9

    move-object v9, v15

    move-object v15, v10

    move-object/from16 v10, v16

    move/from16 v24, v11

    const/16 v23, 0x30

    move-object v11, v6

    move-object v6, v12

    move-object/from16 v12, v18

    move-object/from16 v25, v13

    move-object v13, v2

    move-object v2, v14

    move-object v14, v3

    move-object/from16 v26, v15

    const/16 v17, 0x0

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-static/range {v7 .. v16}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/16 v7, 0x10

    int-to-float v7, v7

    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    move-object/from16 v15, v25

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v15, v1, v8, v7}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v10, 0x6

    invoke-static {v7, v9, v3, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    iget v9, v3, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v3, v8}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v24, :cond_11

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_b

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    invoke-static {v3, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, v22

    invoke-static {v3, v10, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v3, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_c

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    move-object/from16 v0, v26

    invoke-static {v9, v3, v9, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_d
    invoke-static {v3, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-static {v1}, Landroidx/compose/foundation/BasicMarqueeKt;->basicMarquee-1Mj1MLw$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->MediaCardContentTitle(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v11

    const/4 v0, 0x6

    shr-int/lit8 v0, p7, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v13, v0, 0x30

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v14, 0xc

    move-object/from16 v7, p2

    move-object v12, v3

    invoke-static/range {v7 .. v14}, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt;->TextExt-JKOsDoc(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    const v0, 0x43c8bbc9

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez p3, :cond_e

    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->MediaCardContentArtist(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/16 v13, 0x8

    const/16 v14, 0xe

    move-object/from16 v7, p3

    move-object v12, v3

    invoke-static/range {v7 .. v14}, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt;->TextExt-JKOsDoc(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    goto :goto_6

    :goto_7
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    if-eqz v6, :cond_f

    iget-boolean v6, v6, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->enabled:Z

    if-ne v6, v4, :cond_f

    const/4 v8, 0x1

    goto :goto_8

    :cond_f
    move v8, v0

    :goto_8
    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$2$3;

    invoke-direct {v0, v2}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$2$3;-><init>(Lkotlin/Pair;)V

    const v4, 0x5531076e

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v0, 0x180006

    const/16 v16, 0x1e

    move-object v7, v15

    move-object v14, v3

    move v15, v0

    invoke-static/range {v7 .. v16}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move/from16 v0, v21

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_10

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;

    move-object v0, v10

    move-object v1, v5

    move-object v15, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v15

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorListItem$3;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/CharSequence;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void

    :cond_11
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17

    :cond_12
    move-object/from16 v17, v15

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17
.end method

.method public static final SelectorScreen(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 12

    move-object v2, p0

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/16 v3, 0xe

    move-object/from16 v4, p4

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x363dbbf1

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, p6, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, p5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, p5, 0xe

    if-nez v5, :cond_2

    invoke-virtual {v4, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    or-int v5, p5, v5

    goto :goto_1

    :cond_2
    move/from16 v5, p5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v5, v5, 0x10

    :cond_3
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_4

    or-int/lit16 v5, v5, 0x80

    :cond_4
    and-int/lit8 v6, p6, 0x8

    if-eqz v6, :cond_5

    or-int/lit16 v5, v5, 0x400

    :cond_5
    and-int/lit8 v7, p6, 0xe

    if-ne v7, v3, :cond_7

    and-int/lit16 v3, v5, 0x16db

    const/16 v5, 0x492

    if-ne v3, v5, :cond_7

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, p1

    move-object v0, p2

    move-object v5, p3

    goto/16 :goto_11

    :cond_7
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v9, p1

    move-object v1, p2

    :cond_9
    move-object v0, p3

    goto/16 :goto_10

    :cond_a
    :goto_3
    const-string v3, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    const v5, 0x58ab7502

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v9

    if-eqz v9, :cond_f

    instance-of v0, v9, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_b

    move-object v0, v9

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_4
    move-object v10, v0

    goto :goto_5

    :cond_b
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_4

    :goto_5
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    sget v11, Lkotlin/Result;->$r8$clinit:I

    new-instance v11, Lkotlin/Result$Failure;

    invoke-direct {v11, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v11

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    instance-of v11, v0, Lkotlin/Result$Failure;

    if-eqz v11, :cond_d

    move-object v0, v7

    :cond_d
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_e

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_e
    const-class v11, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    invoke-static {v9, v11, v0, v10}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;

    move-object v9, v0

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v9, p1

    :goto_7
    if-eqz v1, :cond_16

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_15

    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_11

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_8
    move-object v10, v0

    goto :goto_9

    :cond_11
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_8

    :goto_9
    :try_start_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    sget v11, Lkotlin/Result;->$r8$clinit:I

    new-instance v11, Lkotlin/Result$Failure;

    invoke-direct {v11, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v11

    :goto_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    instance-of v11, v0, Lkotlin/Result$Failure;

    if-eqz v11, :cond_13

    move-object v0, v7

    :cond_13
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_14

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_14
    const-class v11, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    invoke-static {v1, v11, v0, v10}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    move-object v1, v0

    goto :goto_b

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move-object v1, p2

    :goto_b
    if-eqz v6, :cond_9

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v5

    if-eqz v5, :cond_1b

    instance-of v0, v5, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_17

    move-object v0, v5

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_c
    move-object v3, v0

    goto :goto_d

    :cond_17
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_c

    :goto_d
    :try_start_2
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    sget v6, Lkotlin/Result;->$r8$clinit:I

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_e
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_18
    instance-of v6, v0, Lkotlin/Result$Failure;

    if-eqz v6, :cond_19

    goto :goto_f

    :cond_19
    move-object v7, v0

    :goto_f
    check-cast v7, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v7, :cond_1a

    invoke-static {v5}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v7

    :cond_1a
    const-class v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {v5, v0, v7, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    goto :goto_10

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_10
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->White:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1;

    invoke-direct {v5, v0, v9, v1, p0}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lkotlin/jvm/functions/Function1;)V

    const v6, -0x2bb028b1

    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/16 v6, 0x38

    invoke-static {v3, v5, v4, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object v5, v0

    move-object v0, v1

    move-object v3, v9

    :goto_11
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1c

    new-instance v9, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$2;

    move-object v1, v9

    move-object v2, p0

    move-object v4, v0

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorScreen$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaSessionViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final access$DeviceListItem(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x5a6048aa

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v6, v4, 0x6

    move v7, v6

    move-object v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v4, 0xe

    if-nez v6, :cond_2

    move-object v6, p0

    invoke-virtual {v14, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    or-int/2addr v7, v4

    goto :goto_1

    :cond_2
    move-object v6, p0

    move v7, v4

    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v7, v7, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v4, 0x70

    if-nez v0, :cond_5

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v7, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_6

    or-int/lit16 v7, v7, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v0, v4, 0x380

    if-nez v0, :cond_8

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x100

    goto :goto_4

    :cond_7
    const/16 v0, 0x80

    :goto_4
    or-int/2addr v7, v0

    :cond_8
    :goto_5
    and-int/lit16 v0, v7, 0x2db

    const/16 v1, 0x92

    if-ne v0, v1, :cond_a

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v6

    goto :goto_9

    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_7

    :cond_b
    move-object v0, v6

    :goto_7
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getAppIcon()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v5, Lcom/android/systemui/media/mediaoutput/icons/Icons$Feature;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Feature;

    sget-object v5, Lcom/android/systemui/media/mediaoutput/icons/feature/IcTvKt;->IcTv$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v1

    :cond_c
    move-object v6, v1

    instance-of v1, v2, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    if-eqz v1, :cond_d

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/entity/MediaDeviceInfo;->roomDetails:Ljava/lang/String;

    if-nez v1, :cond_f

    :cond_e
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    :cond_f
    const v5, 0x77634752

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v1, :cond_10

    const v1, 0x7f130cf7

    invoke-static {v1, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    :cond_10
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$DeviceListItem$1;

    invoke-direct {v10, v3, v2}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$DeviceListItem$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;)V

    and-int/lit8 v5, v7, 0xe

    or-int/lit16 v12, v5, 0x1040

    const/16 v13, 0x10

    const/4 v9, 0x0

    move-object v5, v0

    move-object v7, v1

    move-object v11, v14

    invoke-static/range {v5 .. v13}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt;->SelectorListItem(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/CharSequence;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v0

    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_11

    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$DeviceListItem$2;

    move-object v0, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$DeviceListItem$2;-><init>(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;Lkotlin/jvm/functions/Function1;II)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method

.method public static final access$SelectorHeader(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v15, p2

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x26e853f8

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v15, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, v15

    goto :goto_1

    :cond_1
    move v1, v15

    :goto_1
    and-int/lit8 v3, v1, 0xb

    if-ne v3, v2, :cond_3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v13

    goto/16 :goto_4

    :cond_3
    :goto_2
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v4, 0x23

    int-to-float v4, v4

    sget-object v5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v4, 0x12

    int-to-float v4, v4

    invoke-static {v3, v4, v5, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v5, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v13, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v8, v13, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-eqz v8, :cond_8

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_4

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v6, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_5

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-static {v5, v13, v5, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const v2, -0x74ce5997

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v2, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->getSecSemiBold()Landroidx/compose/ui/text/TextStyle;

    move-result-object v16

    invoke-static {v13}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->mediaPrimaryColor(Landroidx/compose/runtime/Composer;)J

    move-result-wide v17

    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5, v2, v3}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide v19

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const v30, 0xfffffc

    invoke-static/range {v16 .. v30}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit8 v22, v1, 0xe

    const/16 v23, 0x0

    const v24, 0xfffe

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 p1, v13

    move-wide/from16 v13, v16

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v0, 0x1

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorHeader$2;

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SelectorHeader$2;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final access$SessionListItem(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 10

    const/4 v0, 0x1

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x4ba2c62e    # 2.1335132E7f

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->empty:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    invoke-static {v1, v2, p3}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->mediaInfo:Landroidx/lifecycle/MutableLiveData;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$appIcon$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$appIcon$2;

    invoke-static {v2, v3}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, p3}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$title$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$title$2;

    invoke-static {v2, v5}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6, p3}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$2;

    invoke-static {v2, v6}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$3;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$action$3;

    invoke-static {v6, v7}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v6

    invoke-static {v6, v4, p3}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$isNoMediaPlaying$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$isNoMediaPlaying$2;

    invoke-static {v2, v7}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v7, p3}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    if-eqz v2, :cond_2

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$2$1;

    invoke-direct {v4, p1, v2}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;Lcom/android/systemui/media/mediaoutput/entity/MediaAction;)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v6, v4

    :goto_1
    const v2, 0x8366b9

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v2, p4, 0x380

    xor-int/lit16 v2, v2, 0x180

    const/4 v4, 0x0

    const/16 v8, 0x100

    if-le v2, v8, :cond_3

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    and-int/lit16 v2, p4, 0x180

    if-ne v2, v8, :cond_4

    goto :goto_2

    :cond_4
    move v0, v4

    :cond_5
    :goto_2
    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_6

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_7

    :cond_6
    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$3$1;

    invoke-direct {v2, p2, v1}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$3$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object v0, v2

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    and-int/lit8 v1, p4, 0xe

    const v2, 0x9040

    or-int v8, v1, v2

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, v3

    move-object v3, v7

    move-object v4, v5

    move-object v5, v6

    move-object v6, v0

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt;->SelectorListItem(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/CharSequence;Lkotlin/Pair;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_8

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/SelectorScreenKt$SessionListItem$4;-><init>(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method
