.class public abstract Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final TextExt-JKOsDoc(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x36de5f28

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v2, 0x2

    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_0

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v15, v3

    goto :goto_0

    :cond_0
    move-object/from16 v15, p1

    :goto_0
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_1

    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/text/style/TextOverflow;->Ellipsis:I

    move/from16 v28, v3

    goto :goto_1

    :cond_1
    move/from16 v28, p2

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    const/16 v29, 0x1

    goto :goto_2

    :cond_2
    move/from16 v29, p3

    :goto_2
    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_3

    sget-object v3, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    const v4, -0xe001

    and-int v4, p6, v4

    move-object/from16 v30, v3

    goto :goto_3

    :cond_3
    move-object/from16 v30, p4

    move/from16 v4, p6

    :goto_3
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    instance-of v3, v1, Lcom/android/systemui/media/mediaoutput/ext/ImageString;

    const/4 v13, 0x0

    const/4 v5, 0x6

    const/high16 v6, 0x380000

    if-eqz v3, :cond_a

    const v3, -0x35eae8d7

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/media/mediaoutput/ext/ImageString;

    iget v3, v11, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->resId:I

    invoke-static {v3, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v11, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->selection:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v13, v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v2, :cond_4

    move-object v12, v3

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    if-nez v12, :cond_5

    move v3, v13

    move-object/from16 v33, v15

    goto/16 :goto_6

    :cond_5
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    shr-int/lit8 v3, v4, 0x3

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v9, 0x30

    invoke-static {v7, v2, v0, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v7, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v0, v15}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v8, v0, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    if-eqz v8, :cond_9

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_6

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_5
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v9, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v8, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_7

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    invoke-static {v7, v0, v7, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_8
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    and-int/lit8 v3, v3, 0x70

    and-int/lit16 v7, v4, 0x1c00

    or-int/2addr v3, v7

    shl-int/2addr v4, v5

    and-int/2addr v4, v6

    or-int v27, v3, v4

    move/from16 v25, v27

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    move-object v14, v11

    move-object/from16 v31, v12

    move-wide/from16 v11, v16

    const/16 v16, 0x0

    move-object/from16 v13, v16

    move-object/from16 v32, v14

    move-object/from16 v14, v16

    const-wide/16 v16, 0x0

    move-object/from16 v33, v15

    move-wide/from16 v15, v16

    const/16 v18, 0x0

    const/16 v20, 0x0

    const v26, 0xd7fe

    move/from16 v17, v28

    move/from16 v19, v29

    move-object/from16 v22, v30

    move-object/from16 v23, v0

    invoke-static/range {v2 .. v26}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v2, v32

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/ext/ImageString;->image:Landroidx/compose/ui/graphics/vector/ImageVector;

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v4, 0x12

    int-to-float v4, v4

    sget-object v5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/16 v4, 0x1b0

    const-string v5, ""

    invoke-static {v2, v5, v3, v0, v4}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v8, v31

    const/4 v15, 0x1

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v15, v16

    const/16 v18, 0x0

    const/16 v24, 0x0

    const v26, 0xd7fe

    move/from16 v17, v28

    move/from16 v19, v29

    move-object/from16 v22, v30

    move-object/from16 v23, v0

    move/from16 v25, v27

    invoke-static/range {v2 .. v26}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_8

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_a
    move v3, v13

    move-object/from16 v33, v15

    const/4 v2, 0x1

    instance-of v7, v1, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    if-eqz v7, :cond_b

    move v14, v2

    goto :goto_7

    :cond_b
    instance-of v14, v1, Lcom/android/systemui/media/mediaoutput/ext/MultiSequenceString;

    :goto_7
    if-eqz v14, :cond_c

    const v2, -0x35eae673

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v1, v0}, Lcom/android/systemui/media/mediaoutput/compose/ext/CharSequenceExtKt;->text(Ljava/lang/CharSequence;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v24, v4, 0x70

    shr-int/lit8 v7, v4, 0x3

    and-int/lit8 v7, v7, 0x70

    and-int/lit16 v8, v4, 0x1c00

    or-int/2addr v7, v8

    shl-int/2addr v4, v5

    and-int/2addr v4, v6

    or-int v25, v7, v4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v18, 0x0

    const v26, 0xd7fc

    move-object/from16 v3, v33

    move/from16 v17, v28

    move/from16 v19, v29

    move-object/from16 v22, v30

    move-object/from16 v23, v0

    invoke-static/range {v2 .. v26}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_8

    :cond_c
    instance-of v2, v1, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v2, :cond_d

    const v2, -0x35eae5d5

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString;

    and-int/lit8 v25, v4, 0x70

    shr-int/lit8 v5, v4, 0x3

    and-int/lit8 v5, v5, 0x70

    and-int/lit16 v6, v4, 0x1c00

    or-int/2addr v5, v6

    shl-int/lit8 v4, v4, 0x9

    const/high16 v6, 0x1c00000

    and-int/2addr v4, v6

    or-int v26, v5, v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const v27, 0x1d7fc

    move-object/from16 v3, v33

    move/from16 v17, v28

    move/from16 v19, v29

    move-object/from16 v23, v30

    move-object/from16 v24, v0

    invoke-static/range {v2 .. v27}, Landroidx/compose/material3/TextKt;->Text-IbK3jfQ(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_8

    :cond_d
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_e

    const v2, -0x35eae547

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    and-int/lit8 v24, v4, 0x70

    shr-int/lit8 v7, v4, 0x3

    and-int/lit8 v7, v7, 0x70

    and-int/lit16 v8, v4, 0x1c00

    or-int/2addr v7, v8

    shl-int/2addr v4, v5

    and-int/2addr v4, v6

    or-int v25, v7, v4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v18, 0x0

    const v26, 0xd7fc

    move-object/from16 v3, v33

    move/from16 v17, v28

    move/from16 v19, v29

    move-object/from16 v22, v30

    move-object/from16 v23, v0

    invoke-static/range {v2 .. v26}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_8

    :cond_e
    move v2, v3

    const v3, -0x35eae4d8    # -2442954.0f

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_f

    new-instance v9, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    move/from16 v3, v28

    move/from16 v4, v29

    move-object/from16 v5, v30

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt$TextExt$3;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method
