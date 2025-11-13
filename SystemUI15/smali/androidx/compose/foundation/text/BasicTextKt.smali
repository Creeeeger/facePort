.class public abstract Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final BasicText-RWo7tUw(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 44

    move-object/from16 v14, p0

    move/from16 v15, p11

    move/from16 v13, p12

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x2

    move-object/from16 v12, p10

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x3f70023c

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v11, 0x1

    and-int/lit8 v5, v13, 0x1

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    or-int/lit8 v5, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v15, 0x6

    if-nez v5, :cond_2

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    or-int/2addr v5, v15

    goto :goto_1

    :cond_2
    move v5, v15

    :goto_1
    and-int/2addr v4, v13

    if-eqz v4, :cond_4

    or-int/lit8 v5, v5, 0x30

    :cond_3
    move-object/from16 v7, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v15, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p1

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_2

    :cond_5
    move v8, v2

    :goto_2
    or-int/2addr v5, v8

    :goto_3
    and-int/lit8 v8, v13, 0x4

    if-eqz v8, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v15, 0x180

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v5, v10

    :goto_5
    and-int/lit8 v10, v13, 0x8

    if-eqz v10, :cond_a

    or-int/lit16 v5, v5, 0xc00

    :cond_9
    move-object/from16 v6, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v6, v15, 0xc00

    if-nez v6, :cond_9

    move-object/from16 v6, p3

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v5, v5, v16

    :goto_7
    and-int/2addr v2, v13

    if-eqz v2, :cond_d

    or-int/lit16 v5, v5, 0x6000

    :cond_c
    move/from16 v11, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v11, v15, 0x6000

    if-nez v11, :cond_c

    move/from16 v11, p4

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x4000

    goto :goto_8

    :cond_e
    const/16 v17, 0x2000

    :goto_8
    or-int v5, v5, v17

    :goto_9
    and-int/2addr v3, v13

    const/high16 v17, 0x30000

    if-eqz v3, :cond_f

    or-int v5, v5, v17

    move/from16 v1, p5

    goto :goto_b

    :cond_f
    and-int v17, v15, v17

    move/from16 v1, p5

    if-nez v17, :cond_11

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v5, v5, v18

    :cond_11
    :goto_b
    and-int/lit8 v18, v13, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_13

    or-int v5, v5, v19

    :cond_12
    :goto_c
    const/16 v0, 0x80

    goto :goto_e

    :cond_13
    and-int v19, v15, v19

    move/from16 v0, p6

    if-nez v19, :cond_12

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v20

    if-eqz v20, :cond_14

    const/high16 v20, 0x100000

    goto :goto_d

    :cond_14
    const/high16 v20, 0x80000

    :goto_d
    or-int v5, v5, v20

    goto :goto_c

    :goto_e
    and-int/2addr v0, v13

    const/high16 v19, 0xc00000

    if-eqz v0, :cond_16

    :goto_f
    or-int v5, v5, v19

    :cond_15
    const/16 v1, 0x100

    goto :goto_10

    :cond_16
    and-int v19, v15, v19

    move/from16 v1, p7

    if-nez v19, :cond_15

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_17

    const/high16 v19, 0x800000

    goto :goto_f

    :cond_17
    const/high16 v19, 0x400000

    goto :goto_f

    :goto_10
    and-int/2addr v1, v13

    const/high16 v17, 0x6000000

    if-eqz v1, :cond_18

    or-int v5, v5, v17

    move-object/from16 v6, p8

    goto :goto_12

    :cond_18
    and-int v17, v15, v17

    move-object/from16 v6, p8

    if-nez v17, :cond_1a

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v17, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v17, 0x2000000

    :goto_11
    or-int v5, v5, v17

    :cond_1a
    :goto_12
    and-int/lit16 v6, v13, 0x200

    const/high16 v17, 0x30000000

    if-eqz v6, :cond_1b

    or-int v5, v5, v17

    move-object/from16 v7, p9

    goto :goto_14

    :cond_1b
    and-int v17, v15, v17

    move-object/from16 v7, p9

    if-nez v17, :cond_1d

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/high16 v17, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v17, 0x10000000

    :goto_13
    or-int v5, v5, v17

    :cond_1d
    :goto_14
    const v17, 0x12492493

    and-int v7, v5, v17

    const v9, 0x12492492

    if-ne v7, v9, :cond_1f

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_15

    :cond_1e
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v34, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move v5, v11

    move-object v2, v12

    goto/16 :goto_28

    :cond_1f
    :goto_15
    if-eqz v4, :cond_20

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v34, v4

    goto :goto_16

    :cond_20
    move-object/from16 v34, p1

    :goto_16
    if-eqz v8, :cond_21

    sget-object v4, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v35, v4

    goto :goto_17

    :cond_21
    move-object/from16 v35, p2

    :goto_17
    const/16 v17, 0x0

    if-eqz v10, :cond_22

    move-object/from16 v36, v17

    goto :goto_18

    :cond_22
    move-object/from16 v36, p3

    :goto_18
    if-eqz v2, :cond_23

    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/TextOverflow;->Clip:I

    move/from16 v37, v2

    goto :goto_19

    :cond_23
    move/from16 v37, v11

    :goto_19
    if-eqz v3, :cond_24

    const/16 v38, 0x1

    goto :goto_1a

    :cond_24
    move/from16 v38, p5

    :goto_1a
    if-eqz v18, :cond_25

    const v2, 0x7fffffff

    move v11, v2

    goto :goto_1b

    :cond_25
    move/from16 v11, p6

    :goto_1b
    if-eqz v0, :cond_26

    const/4 v10, 0x1

    goto :goto_1c

    :cond_26
    move/from16 v10, p7

    :goto_1c
    if-eqz v1, :cond_27

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object/from16 v39, v0

    goto :goto_1d

    :cond_27
    move-object/from16 v39, p8

    :goto_1d
    if-eqz v6, :cond_28

    move-object/from16 v40, v17

    goto :goto_1e

    :cond_28
    move-object/from16 v40, p9

    :goto_1e
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v10, v11}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const v0, -0x13904d80

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    iget-object v0, v14, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, v14, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v9

    :goto_1f
    if-ge v3, v2, :cond_2a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_29

    const-string v6, "androidx.compose.foundation.text.inlineContent"

    iget-object v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    iget v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-static {v9, v0, v6, v4}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_20

    :cond_29
    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2a
    const/16 v16, 0x1

    move v0, v9

    :goto_20
    move/from16 v19, v0

    goto :goto_21

    :cond_2b
    const/16 v16, 0x1

    move/from16 v19, v9

    :goto_21
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v0

    const/16 v30, 0x0

    if-nez v19, :cond_30

    if-nez v0, :cond_30

    const v0, -0x5e6e6a35

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v28, 0x1ffff

    move-object/from16 v19, v34

    invoke-static/range {v19 .. v28}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZII)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move/from16 v4, v37

    move/from16 v5, v38

    move v6, v11

    move v7, v10

    move-object/from16 v9, v19

    move/from16 v41, v10

    move-object/from16 v10, v20

    move/from16 v42, v11

    move-object/from16 v11, v30

    move-object/from16 v43, v12

    move-object/from16 v12, v40

    move-object/from16 v13, v18

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-cFh6CEA(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 v2, v43

    iget v3, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v6, v2, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_2f

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_2c

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_22

    :cond_2c
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_22
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v1, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_2e

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_24

    :cond_2d
    :goto_23
    const/4 v0, 0x1

    goto :goto_25

    :cond_2e
    :goto_24
    invoke-static {v3, v2, v3, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    goto :goto_23

    :goto_25
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_27

    :cond_2f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17

    :cond_30
    move v1, v9

    move/from16 v41, v10

    move/from16 v42, v11

    move-object v2, v12

    move/from16 v0, v16

    const v3, -0x5e60a490

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v3, v5, 0xe

    const/4 v4, 0x4

    if-ne v3, v4, :cond_31

    move v11, v0

    goto :goto_26

    :cond_31
    move v11, v1

    :goto_26
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v11, :cond_32

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v4, :cond_33

    :cond_32
    sget-object v0, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v14, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_33
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroidx/compose/ui/text/AnnotatedString;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_34

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v3, :cond_35

    :cond_34
    new-instance v6, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;

    invoke-direct {v6, v0}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_35
    move-object/from16 v29, v6

    check-cast v29, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v5, 0x3

    and-int/lit16 v0, v0, 0x38e

    shr-int/lit8 v3, v5, 0xc

    const v4, 0xe000

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    shl-int/lit8 v3, v5, 0x9

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    shl-int/lit8 v3, v5, 0x6

    const/high16 v4, 0x380000

    and-int/2addr v4, v3

    or-int/2addr v0, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v3

    or-int/2addr v0, v4

    const/high16 v4, 0xe000000

    and-int/2addr v4, v3

    or-int/2addr v0, v4

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v31, v0, v3

    shr-int/lit8 v0, v5, 0x15

    and-int/lit16 v0, v0, 0x380

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v16, v34

    move-object/from16 v18, v36

    move-object/from16 v20, v39

    move-object/from16 v21, v35

    move/from16 v22, v37

    move/from16 v23, v38

    move/from16 v24, v42

    move/from16 v25, v41

    move-object/from16 v27, v30

    move-object/from16 v28, v40

    move-object/from16 v30, v2

    invoke-static/range {v16 .. v33}, Landroidx/compose/foundation/text/BasicTextKt;->LayoutWithLinksAndInlineContent-vOo2fZY(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_27
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    move/from16 v5, v37

    move/from16 v6, v38

    move-object/from16 v9, v39

    move-object/from16 v10, v40

    move/from16 v8, v41

    move/from16 v7, v42

    :goto_28
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_36

    new-instance v12, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move/from16 v11, p11

    move-object v14, v12

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_36
    return-void
.end method

.method public static final BasicText-VhcvRP8(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    move/from16 v10, p10

    move/from16 v11, p11

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v6, p9

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x46bd8e2e

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v11, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v10, 0x6

    move v9, v8

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v10, 0x6

    if-nez v8, :cond_2

    move-object/from16 v8, p0

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_0
    or-int/2addr v9, v10

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    move v9, v10

    :goto_1
    and-int/2addr v4, v11

    if-eqz v4, :cond_4

    or-int/lit8 v9, v9, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v10, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v3

    goto :goto_2

    :cond_5
    move v13, v2

    :goto_2
    or-int/2addr v9, v13

    :goto_3
    and-int/2addr v5, v11

    if-eqz v5, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move-object/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v10, 0x180

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v9, v14

    :goto_5
    and-int/lit8 v14, v11, 0x8

    if-eqz v14, :cond_a

    or-int/lit16 v9, v9, 0xc00

    :cond_9
    move-object/from16 v15, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v15, v10, 0xc00

    if-nez v15, :cond_9

    move-object/from16 v15, p3

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v9, v9, v16

    :goto_7
    and-int/2addr v2, v11

    if-eqz v2, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move/from16 v7, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v7, v10, 0x6000

    if-nez v7, :cond_c

    move/from16 v7, p4

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v9, v9, v16

    :goto_9
    and-int/2addr v3, v11

    const/high16 v16, 0x30000

    if-eqz v3, :cond_f

    or-int v9, v9, v16

    move/from16 v1, p5

    goto :goto_b

    :cond_f
    and-int v16, v10, v16

    move/from16 v1, p5

    if-nez v16, :cond_11

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v9, v9, v17

    :cond_11
    :goto_b
    and-int/lit8 v17, v11, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_13

    or-int v9, v9, v18

    :cond_12
    :goto_c
    const/16 v0, 0x80

    goto :goto_e

    :cond_13
    and-int v18, v10, v18

    move/from16 v0, p6

    if-nez v18, :cond_12

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_14

    const/high16 v19, 0x100000

    goto :goto_d

    :cond_14
    const/high16 v19, 0x80000

    :goto_d
    or-int v9, v9, v19

    goto :goto_c

    :goto_e
    and-int/2addr v0, v11

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_16

    :goto_f
    or-int v9, v9, v18

    :cond_15
    const/16 v1, 0x100

    goto :goto_10

    :cond_16
    and-int v18, v10, v18

    move/from16 v1, p7

    if-nez v18, :cond_15

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x800000

    goto :goto_f

    :cond_17
    const/high16 v18, 0x400000

    goto :goto_f

    :goto_10
    and-int/2addr v1, v11

    const/high16 v16, 0x6000000

    if-eqz v1, :cond_18

    or-int v9, v9, v16

    move-object/from16 v7, p8

    goto :goto_12

    :cond_18
    and-int v16, v10, v16

    move-object/from16 v7, p8

    if-nez v16, :cond_1a

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    const/high16 v16, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v16, 0x2000000

    :goto_11
    or-int v9, v9, v16

    :cond_1a
    :goto_12
    const v16, 0x2492493

    and-int v9, v9, v16

    const v7, 0x2492492

    if-ne v9, v7, :cond_1c

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_13

    :cond_1b
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v23, p6

    move/from16 v9, p7

    move-object v2, v12

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v12, p8

    goto/16 :goto_21

    :cond_1c
    :goto_13
    if-eqz v4, :cond_1d

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_14

    :cond_1d
    move-object v4, v12

    :goto_14
    if-eqz v5, :cond_1e

    sget-object v5, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/TextStyle;->Default:Landroidx/compose/ui/text/TextStyle;

    goto :goto_15

    :cond_1e
    move-object v5, v13

    :goto_15
    if-eqz v14, :cond_1f

    const/4 v9, 0x0

    goto :goto_16

    :cond_1f
    move-object v9, v15

    :goto_16
    if-eqz v2, :cond_20

    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/text/style/TextOverflow;->Clip:I

    goto :goto_17

    :cond_20
    move/from16 v2, p4

    :goto_17
    if-eqz v3, :cond_21

    const/4 v3, 0x1

    goto :goto_18

    :cond_21
    move/from16 v3, p5

    :goto_18
    if-eqz v17, :cond_22

    const v12, 0x7fffffff

    move v15, v12

    goto :goto_19

    :cond_22
    move/from16 v15, p6

    :goto_19
    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_1a

    :cond_23
    move/from16 v0, p7

    :goto_1a
    if-eqz v1, :cond_24

    const/4 v1, 0x0

    goto :goto_1b

    :cond_24
    move-object/from16 v1, p8

    :goto_1b
    sget-object v12, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0, v15}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->validateMinMaxLines(II)V

    sget-object v12, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->LocalSelectionRegistrar:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const v12, -0x13926120

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v9, :cond_25

    const v12, -0x5eaf9054

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v27, 0x1ffff

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v27}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZII)Landroidx/compose/ui/Modifier;

    move-result-object v18

    new-instance v19, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object/from16 p1, v19

    move-object/from16 p2, p0

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 p5, v16

    move-object/from16 p6, v17

    invoke-direct/range {p1 .. p6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v26, v12

    check-cast v26, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    move-object/from16 v20, v5

    move-object/from16 v21, v9

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v15

    move/from16 v25, v0

    move-object/from16 v30, v1

    invoke-static/range {v18 .. v31}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-cFh6CEA(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v22, v4

    move/from16 v23, v15

    goto :goto_1c

    :cond_25
    const v12, -0x5ea4eadf

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v27, 0x1ffff

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v27}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZII)Landroidx/compose/ui/Modifier;

    move-result-object v13

    new-instance v12, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    sget-object v14, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalFontFamilyResolver:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    const/16 v21, 0x0

    move-object v14, v12

    move-object v7, v13

    move-object/from16 v13, p0

    move-object/from16 v22, v4

    move-object v4, v14

    move-object v14, v5

    move/from16 v23, v15

    move-object/from16 v15, v16

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v23

    move/from16 v19, v0

    move-object/from16 v20, v1

    invoke-direct/range {v12 .. v21}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;IZIILandroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v7, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1c
    sget-object v4, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->INSTANCE:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    iget v7, v6, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v6, v12}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v15, v6, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_2a

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v15, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v15, :cond_26

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1d

    :cond_26
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1d
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v4, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v13, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v12, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_28

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_27

    goto :goto_1f

    :cond_27
    :goto_1e
    const/4 v4, 0x1

    goto :goto_20

    :cond_28
    :goto_1f
    invoke-static {v7, v6, v7, v4}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    goto :goto_1e

    :goto_20
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v12, v1

    move v7, v3

    move-object v3, v5

    move-object v4, v9

    move v9, v0

    move v5, v2

    move-object/from16 v2, v22

    :goto_21
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_29

    new-instance v14, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move v6, v7

    move/from16 v7, v23

    move v8, v9

    move-object v9, v12

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_29
    return-void

    :cond_2a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final LayoutWithLinksAndInlineContent-vOo2fZY(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 37

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v15, p15

    move/from16 v14, p16

    move/from16 v13, p17

    const/16 v6, 0x80

    const/16 v7, 0x100

    const/16 v8, 0x10

    const/16 v9, 0x20

    move-object/from16 v10, p14

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v11, 0x2673e498

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v11, 0x1

    and-int/lit8 v12, v13, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    if-eqz v12, :cond_0

    or-int/lit8 v12, v15, 0x6

    move/from16 v18, v12

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v12, v15, 0x6

    if-nez v12, :cond_2

    move-object/from16 v12, p0

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    move/from16 v18, v16

    goto :goto_0

    :cond_1
    move/from16 v18, v17

    :goto_0
    or-int v18, v15, v18

    goto :goto_1

    :cond_2
    move-object/from16 v12, p0

    move/from16 v18, v15

    :goto_1
    and-int/lit8 v19, v13, 0x2

    if-eqz v19, :cond_4

    or-int/lit8 v18, v18, 0x30

    :cond_3
    :goto_2
    move/from16 v11, v18

    goto :goto_4

    :cond_4
    and-int/lit8 v19, v15, 0x30

    if-nez v19, :cond_3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move/from16 v19, v9

    goto :goto_3

    :cond_5
    move/from16 v19, v8

    :goto_3
    or-int v18, v18, v19

    goto :goto_2

    :goto_4
    and-int/lit8 v18, v13, 0x4

    if-eqz v18, :cond_6

    or-int/lit16 v11, v11, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v15, 0x180

    if-nez v0, :cond_8

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v7

    goto :goto_5

    :cond_7
    move v0, v6

    :goto_5
    or-int/2addr v11, v0

    :cond_8
    :goto_6
    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_9

    or-int/lit16 v11, v11, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v0, v15, 0xc00

    if-nez v0, :cond_b

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x800

    goto :goto_7

    :cond_a
    const/16 v0, 0x400

    :goto_7
    or-int/2addr v11, v0

    :cond_b
    :goto_8
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v11, v11, 0x6000

    :cond_c
    move-object/from16 v8, p4

    goto :goto_a

    :cond_d
    and-int/lit16 v8, v15, 0x6000

    if-nez v8, :cond_c

    move-object/from16 v8, p4

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/16 v20, 0x4000

    goto :goto_9

    :cond_e
    const/16 v20, 0x2000

    :goto_9
    or-int v11, v11, v20

    :goto_a
    and-int/lit8 v20, v13, 0x20

    const/high16 v21, 0x30000

    if-eqz v20, :cond_f

    or-int v11, v11, v21

    move-object/from16 v9, p5

    goto :goto_c

    :cond_f
    and-int v20, v15, v21

    move-object/from16 v9, p5

    if-nez v20, :cond_11

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const/high16 v21, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v21, 0x10000

    :goto_b
    or-int v11, v11, v21

    :cond_11
    :goto_c
    and-int/lit8 v21, v13, 0x40

    const/high16 v22, 0x180000

    if-eqz v21, :cond_12

    or-int v11, v11, v22

    move/from16 v5, p6

    goto :goto_e

    :cond_12
    and-int v21, v15, v22

    move/from16 v5, p6

    if-nez v21, :cond_14

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v22

    if-eqz v22, :cond_13

    const/high16 v22, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v22, 0x80000

    :goto_d
    or-int v11, v11, v22

    :cond_14
    :goto_e
    and-int/lit16 v1, v13, 0x80

    const/high16 v23, 0xc00000

    if-eqz v1, :cond_16

    or-int v11, v11, v23

    :cond_15
    move/from16 v1, p7

    goto :goto_10

    :cond_16
    and-int v1, v15, v23

    if-nez v1, :cond_15

    move/from16 v1, p7

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_17

    const/high16 v23, 0x800000

    goto :goto_f

    :cond_17
    const/high16 v23, 0x400000

    :goto_f
    or-int v11, v11, v23

    :goto_10
    and-int/lit16 v6, v13, 0x100

    const/high16 v24, 0x6000000

    if-eqz v6, :cond_19

    or-int v11, v11, v24

    :cond_18
    move/from16 v6, p8

    goto :goto_12

    :cond_19
    and-int v6, v15, v24

    if-nez v6, :cond_18

    move/from16 v6, p8

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v24

    if-eqz v24, :cond_1a

    const/high16 v24, 0x4000000

    goto :goto_11

    :cond_1a
    const/high16 v24, 0x2000000

    :goto_11
    or-int v11, v11, v24

    :goto_12
    and-int/lit16 v7, v13, 0x200

    const/high16 v24, 0x30000000

    if-eqz v7, :cond_1c

    or-int v11, v11, v24

    :cond_1b
    move/from16 v7, p9

    :goto_13
    const/16 v1, 0x400

    goto :goto_15

    :cond_1c
    and-int v7, v15, v24

    if-nez v7, :cond_1b

    move/from16 v7, p9

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v24

    if-eqz v24, :cond_1d

    const/high16 v24, 0x20000000

    goto :goto_14

    :cond_1d
    const/high16 v24, 0x10000000

    :goto_14
    or-int v11, v11, v24

    goto :goto_13

    :goto_15
    and-int/lit16 v5, v13, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v5, v14, 0x6

    move/from16 v16, v5

    :goto_16
    const/16 v1, 0x800

    goto :goto_18

    :cond_1e
    and-int/lit8 v5, v14, 0x6

    if-nez v5, :cond_20

    move-object/from16 v5, p10

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    goto :goto_17

    :cond_1f
    move/from16 v16, v17

    :goto_17
    or-int v16, v14, v16

    goto :goto_16

    :cond_20
    move-object/from16 v5, p10

    move/from16 v16, v14

    goto :goto_16

    :goto_18
    and-int/lit16 v5, v13, 0x800

    if-eqz v5, :cond_22

    or-int/lit8 v16, v16, 0x30

    :cond_21
    move-object/from16 v5, p11

    :goto_19
    move/from16 v1, v16

    goto :goto_1b

    :cond_22
    and-int/lit8 v5, v14, 0x30

    if-nez v5, :cond_21

    move-object/from16 v5, p11

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    const/16 v19, 0x20

    goto :goto_1a

    :cond_23
    const/16 v19, 0x10

    :goto_1a
    or-int v16, v16, v19

    goto :goto_19

    :goto_1b
    and-int/lit16 v5, v13, 0x1000

    if-eqz v5, :cond_24

    or-int/lit16 v1, v1, 0x180

    :goto_1c
    const/16 v5, 0x2000

    goto :goto_1e

    :cond_24
    and-int/lit16 v5, v14, 0x180

    if-nez v5, :cond_26

    move-object/from16 v5, p12

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_25

    const/16 v23, 0x100

    goto :goto_1d

    :cond_25
    const/16 v23, 0x80

    :goto_1d
    or-int v1, v1, v23

    goto :goto_1c

    :cond_26
    move-object/from16 v5, p12

    goto :goto_1c

    :goto_1e
    and-int/2addr v5, v13

    if-eqz v5, :cond_28

    or-int/lit16 v1, v1, 0xc00

    :cond_27
    move-object/from16 v5, p13

    goto :goto_20

    :cond_28
    and-int/lit16 v5, v14, 0xc00

    if-nez v5, :cond_27

    move-object/from16 v5, p13

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_29

    const/16 v21, 0x800

    goto :goto_1f

    :cond_29
    const/16 v21, 0x400

    :goto_1f
    or-int v1, v1, v21

    :goto_20
    const v16, 0x12492493

    and-int v5, v11, v16

    const v6, 0x12492492

    if-ne v5, v6, :cond_2b

    and-int/lit16 v1, v1, 0x493

    const/16 v5, 0x492

    if-ne v1, v5, :cond_2b

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_21

    :cond_2a
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v5, v8

    goto/16 :goto_37

    :cond_2b
    :goto_21
    if-eqz v0, :cond_2c

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_22

    :cond_2c
    move-object v0, v8

    :goto_22
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v1, -0x11b4fb40

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v1

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const/4 v8, 0x0

    if-eqz v1, :cond_30

    and-int/lit8 v1, v11, 0x70

    const/16 v5, 0x20

    if-ne v1, v5, :cond_2d

    const/4 v1, 0x1

    goto :goto_23

    :cond_2d
    move v1, v8

    :goto_23
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_2e

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v1, :cond_2f

    :cond_2e
    new-instance v5, Landroidx/compose/foundation/text/TextLinkScope;

    invoke-direct {v5, v2}, Landroidx/compose/foundation/text/TextLinkScope;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2f
    move-object v1, v5

    check-cast v1, Landroidx/compose/foundation/text/TextLinkScope;

    goto :goto_24

    :cond_30
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static/range {p1 .. p1}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNodeKt;->hasLinks(Landroidx/compose/ui/text/AnnotatedString;)Z

    move-result v5

    if-eqz v5, :cond_34

    const v5, -0x24e653f3

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v5, v11, 0x70

    const/16 v8, 0x20

    if-ne v5, v8, :cond_31

    const/4 v5, 0x1

    goto :goto_25

    :cond_31
    const/4 v5, 0x0

    :goto_25
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_32

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v5, :cond_33

    :cond_32
    new-instance v8, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$styledText$1$1;

    invoke-direct {v8, v1, v2}, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$styledText$1$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_33
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_27

    :cond_34
    const v5, -0x24e4ad55

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v5, v11, 0x70

    const/16 v8, 0x20

    if-ne v5, v8, :cond_35

    const/4 v5, 0x1

    goto :goto_26

    :cond_35
    const/4 v5, 0x0

    :goto_26
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_36

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v5, :cond_37

    :cond_36
    new-instance v8, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$styledText$2$1;

    invoke-direct {v8, v2}, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$styledText$2$1;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_37
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_27
    if-eqz v4, :cond_3f

    if-eqz v0, :cond_38

    sget-object v5, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_39

    :cond_38
    move-object/from16 v17, v0

    goto/16 :goto_2c

    :cond_39
    iget-object v5, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v7, v2, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    if-eqz v7, :cond_3b

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_28
    if-ge v13, v12, :cond_3c

    move/from16 v17, v12

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v7

    move-object v7, v12

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v14, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    instance-of v14, v14, Ljava/lang/String;

    if-eqz v14, :cond_3a

    const-string v14, "androidx.compose.foundation.text.inlineContent"

    iget-object v15, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a

    iget v14, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    const/4 v15, 0x0

    invoke-static {v15, v5, v14, v7}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    const/4 v7, 0x1

    add-int/2addr v13, v7

    move/from16 v15, p15

    move/from16 v14, p16

    move/from16 v12, v17

    move-object/from16 v7, v18

    goto :goto_28

    :cond_3b
    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_3c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_29
    if-ge v13, v12, :cond_3e

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v15, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/text/InlineTextContent;

    move-object/from16 v17, v0

    if-eqz v15, :cond_3d

    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    move-object/from16 v18, v9

    iget-object v9, v15, Landroidx/compose/foundation/text/InlineTextContent;->placeholder:Landroidx/compose/ui/text/Placeholder;

    move/from16 v19, v12

    iget v12, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v14, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    invoke-direct {v0, v9, v12, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v9, v15, Landroidx/compose/foundation/text/InlineTextContent;->children:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v9, v12, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2a
    const/4 v0, 0x1

    goto :goto_2b

    :cond_3d
    move-object/from16 v18, v9

    move/from16 v19, v12

    goto :goto_2a

    :goto_2b
    add-int/2addr v13, v0

    move-object/from16 v0, v17

    move-object/from16 v9, v18

    move/from16 v12, v19

    goto :goto_29

    :cond_3e
    move-object/from16 v17, v0

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2d

    :goto_2c
    sget-object v0, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->EmptyInlineContent:Lkotlin/Pair;

    goto :goto_2d

    :cond_3f
    move-object/from16 v17, v0

    new-instance v0, Lkotlin/Pair;

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2d
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v30, v5

    check-cast v30, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const v5, -0x11b4a948

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v4, :cond_41

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v7, :cond_40

    sget-object v5, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    const/4 v7, 0x0

    invoke-static {v7, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_40
    check-cast v5, Landroidx/compose/runtime/MutableState;

    :goto_2e
    const/4 v7, 0x0

    goto :goto_2f

    :cond_41
    const/4 v5, 0x0

    goto :goto_2e

    :goto_2f
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v7, -0x11b49479

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v4, :cond_44

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_42

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v7, :cond_43

    :cond_42
    new-instance v9, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$onPlaceholderLayout$1$1;

    invoke-direct {v9, v5}, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$onPlaceholderLayout$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_43
    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v31, v9

    const/4 v7, 0x0

    goto :goto_30

    :cond_44
    const/4 v7, 0x0

    const/16 v31, 0x0

    :goto_30
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v27, 0x1ffff

    move-object/from16 v18, p0

    invoke-static/range {v18 .. v27}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZII)Landroidx/compose/ui/Modifier;

    move-result-object v21

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v22, v7

    check-cast v22, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    and-int/lit16 v8, v11, 0x380

    const/16 v9, 0x100

    if-ne v8, v9, :cond_45

    const/4 v8, 0x1

    goto :goto_31

    :cond_45
    const/4 v8, 0x0

    :goto_31
    or-int/2addr v7, v8

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_46

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v7, :cond_47

    :cond_46
    new-instance v8, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$2$1;

    invoke-direct {v8, v1, v3}, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$2$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_47
    move-object/from16 v24, v8

    check-cast v24, Lkotlin/jvm/functions/Function1;

    move-object/from16 v23, p5

    move/from16 v25, p6

    move/from16 v26, p7

    move/from16 v27, p8

    move/from16 v28, p9

    move-object/from16 v29, p10

    move-object/from16 v32, p11

    move-object/from16 v33, p12

    move-object/from16 v34, p13

    invoke-static/range {v21 .. v34}, Landroidx/compose/foundation/text/BasicTextKt;->textModifier-cFh6CEA(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    if-nez v4, :cond_4a

    const v5, -0x24cc35a3

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_48

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v5, :cond_49

    :cond_48
    new-instance v8, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$3$1;

    invoke-direct {v8, v1}, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$3$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_49
    check-cast v8, Lkotlin/jvm/functions/Function0;

    new-instance v5, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    invoke-direct {v5, v8}, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_32

    :cond_4a
    const v8, -0x24c9c1c4

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_4b

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v8, :cond_4c

    :cond_4b
    new-instance v9, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$4$1;

    invoke-direct {v9, v1}, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$4$1;-><init>(Landroidx/compose/foundation/text/TextLinkScope;)V

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4c
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_4d

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v6, :cond_4e

    :cond_4d
    new-instance v12, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$5$1;

    invoke-direct {v12, v5}, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$5$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4e
    check-cast v12, Lkotlin/jvm/functions/Function0;

    new-instance v5, Landroidx/compose/foundation/text/TextMeasurePolicy;

    invoke-direct {v5, v9, v12}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_32
    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v6, v10, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v10, v7}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v12, v10, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_55

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_4f

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_33

    :cond_4f
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_33
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v5, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v8, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v8, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_50

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_51

    :cond_50
    invoke-static {v6, v10, v6, v5}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_51
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v5, 0x200a875c

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v5, 0x0

    if-nez v1, :cond_52

    goto :goto_34

    :cond_52
    invoke-virtual {v1, v5, v10}, Landroidx/compose/foundation/text/TextLinkScope;->LinksComposables(ILandroidx/compose/runtime/Composer;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_34
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, 0x200a8dde

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v0, :cond_53

    :goto_35
    const/4 v0, 0x0

    goto :goto_36

    :cond_53
    shr-int/lit8 v1, v11, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v2, v0, v10, v1}, Landroidx/compose/foundation/text/AnnotatedStringResolveInlineContentKt;->InlineChildren(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_35

    :goto_36
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v5, v17

    :goto_37
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_54

    new-instance v14, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v35, v14

    move-object/from16 v14, p13

    move-object/from16 v36, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/foundation/text/BasicTextKt$LayoutWithLinksAndInlineContent$6;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v1, v35

    move-object/from16 v0, v36

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_54
    return-void

    :cond_55
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final access$measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/List;
    .locals 8

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;

    invoke-direct {p1}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureScope;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    iget-object v4, v4, Landroidx/compose/foundation/text/TextRangeLayoutModifier;->measurePolicy:Landroidx/compose/foundation/text/TextRangeScopeMeasurePolicy;

    check-cast v4, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;

    iget-object v5, v4, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/foundation/text/TextLinkScope;

    iget-object v5, v5, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/TextLayoutResult;

    if-nez v5, :cond_0

    sget-object v4, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;->INSTANCE:Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;

    new-instance v5, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    invoke-direct {v5, v1, v1, v4}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;-><init>(IILkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_0
    iget v6, v4, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$1:I

    iget v4, v4, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v5, v6, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/AndroidPath;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/ui/unit/IntRectKt;->roundToIntRect(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result v6

    new-instance v7, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$1;

    invoke-direct {v7, v4}, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$1;-><init>(Landroidx/compose/ui/unit/IntRect;)V

    new-instance v4, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;

    invoke-direct {v4, v5, v6, v7}, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;-><init>(IILkotlin/jvm/functions/Function0;)V

    move-object v5, v4

    :goto_1
    sget-object v4, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v5, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->width:I

    iget v6, v5, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->height:I

    invoke-static {v4, v4, v6, v6}, Landroidx/compose/ui/unit/Constraints$Companion;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    iget-object v5, v5, Landroidx/compose/foundation/text/TextRangeLayoutMeasureResult;->place:Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, v3, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method public static final textModifier-cFh6CEA(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p11

    if-nez v15, :cond_0

    new-instance v15, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v14, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;

    const/16 v16, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Landroidx/compose/foundation/text/modifiers/SelectableTextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v15, Landroidx/compose/foundation/text/modifiers/SelectionController;->modifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method
