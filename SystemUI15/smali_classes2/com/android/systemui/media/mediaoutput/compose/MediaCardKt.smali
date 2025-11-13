.class public abstract Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final ControlArea(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x1

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x6a032de2

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v0, 0xe

    const/4 v4, 0x2

    if-nez v3, :cond_2

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_0

    move-object/from16 v3, p0

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    :cond_1
    move v5, v4

    :goto_0
    or-int/2addr v5, v0

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v5, v0

    :goto_1
    and-int/lit8 v5, v5, 0xb

    if-ne v5, v4, :cond_4

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_7

    :cond_4
    :goto_2
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v4, v1, 0x1

    :cond_6
    :goto_3
    move-object v14, v3

    goto :goto_5

    :cond_7
    :goto_4
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_6

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    goto :goto_3

    :goto_5
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v3, v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    invoke-interface {v14}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-interface {v14}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    move-result-object v4

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/16 v7, 0x8

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-interface {v14}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$$inlined$map$1;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$$inlined$map$2;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Z)V

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/16 v7, 0x38

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v14}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$$inlined$map$3;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v16

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v4, 0xf

    int-to-float v4, v4

    sget-object v5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v7

    new-instance v11, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1;

    invoke-direct {v11, v2, v14, v13}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1;-><init>(Landroidx/compose/runtime/State;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x6000

    const/16 v18, 0xef

    move-object v12, v15

    move-object/from16 v19, v13

    move/from16 v13, v17

    move-object/from16 v17, v14

    move/from16 v14, v18

    invoke-static/range {v3 .. v14}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalSnackbarHostState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroidx/compose/material3/SnackbarHostState;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/content/Context;

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;

    const/4 v10, 0x0

    move-object v4, v11

    move-object v5, v2

    move-object/from16 v6, v19

    move-object/from16 v9, v17

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$2;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lkotlin/coroutines/Continuation;)V

    invoke-static {v15, v3, v11}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, v17

    :goto_7
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$3;

    invoke-direct {v4, v3, v0, v1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$3;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;II)V

    iput-object v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final MediaCard(ILandroidx/compose/runtime/Composer;)V
    .locals 4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0xf8bcc96

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->White:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaCard$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaCard$1;-><init>(Lcom/android/systemui/media/mediaoutput/compose/common/Feature;)V

    const v0, -0x54715956

    invoke-static {v0, p1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v1, v0, p1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaCard$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaCard$2;-><init>(I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public static final MediaDeviceControlArea(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V
    .locals 49

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x1

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x63124c0    # 3.3317E-35f

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v0, 0xe

    const/4 v13, 0x2

    if-nez v3, :cond_2

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_0

    move-object/from16 v3, p0

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    :cond_1
    move v4, v13

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v0

    :goto_1
    and-int/lit8 v4, v4, 0xb

    if-ne v4, v13, :cond_4

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v12, v3

    goto/16 :goto_a

    :cond_4
    :goto_2
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v4, v1, 0x1

    :cond_6
    :goto_3
    move-object v15, v3

    goto :goto_5

    :cond_7
    :goto_4
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_6

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    goto :goto_3

    :goto_5
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    move-result-object v4

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/16 v7, 0x8

    move-object v6, v14

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v3, 0x30

    int-to-float v9, v3

    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v5, 0xc

    int-to-float v5, v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v7, 0x36

    invoke-static {v4, v8, v14, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget v5, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v14, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, v14, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    const/16 v16, 0x0

    if-eqz v7, :cond_11

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_8

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v12, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_9

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v18, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_7

    :cond_9
    move-object/from16 v18, v4

    :goto_7
    invoke-static {v5, v14, v5, v6}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_a
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v3, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    const v3, 0x35268553

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_b

    const v3, 0xffffff

    invoke-static {v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v3

    move-object/from16 v19, v5

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    move-object/from16 v19, v5

    :goto_8
    move-object/from16 v28, v3

    check-cast v28, Landroidx/compose/runtime/MutableState;

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$1$1;

    invoke-direct {v3, v15, v11}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;)V

    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v20

    sget-object v4, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v5, v21

    check-cast v5, Landroidx/compose/ui/graphics/Color;

    move-object/from16 v21, v6

    iget-wide v5, v5, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v23, 0x0

    const/16 v25, 0xe

    move-object/from16 v29, v18

    move-object/from16 v18, v3

    move-wide v3, v5

    move-object/from16 v31, v19

    move-object/from16 v30, v21

    move-wide/from16 v5, v23

    move/from16 v19, v7

    move-object v7, v14

    move-object/from16 v33, v8

    move/from16 v8, v25

    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/IconButtonDefaults;->iconButtonColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/IconButtonColors;

    move-result-object v6

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v21, 0x30030

    const/16 v22, 0x14

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    move/from16 v34, v9

    move-object v9, v14

    move-object/from16 v35, v10

    move/from16 v10, v21

    move-object v0, v11

    move/from16 v11, v22

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const/16 v3, 0xb2

    int-to-float v3, v3

    move-object/from16 v11, v35

    invoke-static {v11, v3}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->value:J

    const/16 v6, 0x64

    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape(I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v4, 0x4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    move-object/from16 v5, v33

    const/16 v6, 0x36

    invoke-static {v4, v5, v14, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget v5, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v14, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v19, :cond_10

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_c

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_c
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_9
    invoke-static {v14, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, v29

    invoke-static {v14, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_d

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    move-object/from16 v2, v30

    invoke-static {v5, v14, v5, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_e
    invoke-static {v14, v3, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$1$2$1;

    invoke-direct {v3, v15, v0}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$1$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;)V

    move/from16 v2, v34

    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v8, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;->lambda-4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const v10, 0x30030

    const/16 v12, 0x1c

    move-object v9, v14

    move-object v13, v11

    move v11, v12

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const v3, 0x7f13146f

    invoke-static {v3, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/style/TextAlign;->Center:I

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v6, v31

    const/4 v7, 0x1

    invoke-virtual {v6, v13, v5, v7}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v18

    sget-object v5, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v23, Landroidx/compose/ui/text/style/TextOverflow;->Ellipsis:I

    const v5, -0x1d7cc3eb

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v5, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->getSecRegular()Landroidx/compose/ui/text/TextStyle;

    move-result-object v32

    const-wide v5, 0xffeaeaebL

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v5

    const v7, 0x3f666666    # 0.9f

    invoke-static {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v33

    sget-object v5, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    const/high16 v7, 0x41500000    # 13.0f

    invoke-static {v7, v5, v6}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide v35

    const/16 v45, 0x0

    const v46, 0xfffffc

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    invoke-static/range {v32 .. v46}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v24

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v4}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v4

    move-object v12, v15

    move-object v15, v4

    const/16 v22, 0x0

    const/16 v25, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    move-object v4, v12

    move-object/from16 v47, v13

    move-wide/from16 v12, v16

    const/16 v16, 0x0

    move-object/from16 p0, v14

    move-object/from16 v14, v16

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v26, 0xc30

    const v27, 0xd5fc

    move-object/from16 v48, v4

    move-object/from16 v4, v18

    move/from16 v18, v23

    move-object/from16 v23, v24

    move-object/from16 v24, p0

    invoke-static/range {v3 .. v27}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$1$2$2;

    move-object/from16 v12, v48

    invoke-direct {v3, v12, v0}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$1$2$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;)V

    move-object/from16 v13, v47

    invoke-static {v13, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v8, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;->lambda-5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const v10, 0x30030

    const/16 v11, 0x1c

    move-object/from16 v9, p0

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const/4 v3, 0x1

    move-object/from16 v14, p0

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v9, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$1$3;

    invoke-direct {v9, v12, v0}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$1$3;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;)V

    invoke-static {v13, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, v2, Landroidx/compose/ui/graphics/Color;->value:J

    const/16 v8, 0xe

    const-wide/16 v5, 0x0

    move-object v7, v14

    invoke-static/range {v3 .. v8}, Landroidx/compose/material3/IconButtonDefaults;->iconButtonColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/IconButtonColors;

    move-result-object v6

    sget-object v8, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;->lambda-6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v10, 0x30030

    const/16 v11, 0x14

    move-object v3, v9

    move-object v4, v0

    move-object v9, v14

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_a
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$2;

    move/from16 v3, p2

    invoke-direct {v2, v12, v3, v1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaDeviceControlArea$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;II)V

    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void

    :cond_10
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16

    :cond_11
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v16
.end method

.method public static final ProgressArea(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V
    .locals 49

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x1

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x447db476

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v0, 0xe

    const/4 v14, 0x2

    if-nez v3, :cond_2

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_0

    move-object/from16 v3, p0

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    :cond_1
    move v4, v14

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v0

    :goto_1
    and-int/lit8 v4, v4, 0xb

    if-ne v4, v14, :cond_4

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v15

    goto/16 :goto_14

    :cond_4
    :goto_2
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v4, v1, 0x1

    :cond_6
    :goto_3
    move-object v11, v3

    goto :goto_5

    :cond_7
    :goto_4
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_6

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    goto :goto_3

    :goto_5
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v11}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-interface {v11}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    move-result-object v4

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/16 v7, 0x8

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v11}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$1;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v7, 0x38

    move-object v3, v4

    move-object v4, v10

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-interface {v11}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$2;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    move-object v3, v4

    move-object v4, v10

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v21

    invoke-interface {v11}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$3;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v16

    invoke-interface {v11}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$4;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-interface {v11}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$5;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v17, 0x2

    const/4 v6, 0x0

    const/16 v18, 0x38

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    move v2, v7

    move/from16 v7, v18

    move-object/from16 p0, v8

    move/from16 v8, v17

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    const v4, 0x27da1056

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v5, :cond_8

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    move-object v8, v4

    check-cast v8, Landroidx/compose/runtime/MutableFloatState;

    const/4 v7, 0x0

    const v4, 0x27da109a

    invoke-static {v15, v7, v4}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_9

    sget-object v4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v10, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    move-object v10, v4

    check-cast v10, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v13, 0x20

    int-to-float v13, v13

    sget-object v17, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v4, v13}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v13, 0x1d

    int-to-float v13, v13

    invoke-static {v4, v13, v2, v14}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v13, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    iget v7, v15, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v15, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v5, v15, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    const/16 v25, 0x0

    if-eqz v5, :cond_17

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v20, v5

    iget-boolean v5, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_a

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v13, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v14, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    move-object/from16 v26, v5

    iget-boolean v5, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_b

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v27, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_7

    :cond_b
    move-object/from16 v27, v13

    :goto_7
    invoke-static {v7, v15, v7, v14}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_c
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v4, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v3, v8

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v3

    :goto_8
    move/from16 v28, v3

    goto :goto_9

    :cond_d
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_8

    :goto_9
    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;

    invoke-direct {v3, v11, v10, v9, v8}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableFloatState;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v7, -0x4

    int-to-float v7, v7

    move-object/from16 v29, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v5, v7, v3}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v30

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    new-instance v32, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;

    move-object/from16 v4, v32

    move-object/from16 v3, v26

    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v26, v20

    move-object v5, v11

    move-object v7, v6

    move-object v6, v9

    move-object v0, v7

    const/4 v9, 0x0

    move-object v7, v8

    move-object v1, v8

    move-object/from16 v8, p0

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    sget-object v4, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/monet/ColorScheme;

    if-eqz v5, :cond_e

    iget-object v5, v5, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v5

    int-to-long v5, v5

    goto :goto_a

    :cond_e
    const-wide v5, 0xffffffffL

    :goto_a
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v5

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/monet/ColorScheme;

    if-eqz v7, :cond_f

    iget-object v7, v7, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v7

    int-to-long v8, v7

    goto :goto_b

    :cond_f
    const-wide/32 v8, 0x19000000

    :goto_b
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v7

    const v9, 0x3f3ae148    # 0.73f

    invoke-static {v9, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v7

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/monet/ColorScheme;

    if-eqz v9, :cond_10

    iget-object v9, v9, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Lcom/android/systemui/monet/TonalPalette;->getS200()I

    move-result v9

    move-object/from16 v16, v13

    int-to-long v12, v9

    goto :goto_c

    :cond_10
    move-object/from16 v16, v13

    const-wide/32 v12, 0x19000000

    :goto_c
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v12

    const v9, 0x3f48f5c3    # 0.785f

    invoke-static {v9, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v12

    const v9, 0x66ffffff

    invoke-static {v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v34

    invoke-static {v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v36

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v38, v10

    sget-wide v9, Landroidx/compose/ui/graphics/Color;->White:J

    move-object/from16 v39, v3

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v40

    invoke-static {v3, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v42

    invoke-static {v3, v9, v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v17

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0x220

    move-object/from16 v9, v39

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v12

    move-object v12, v9

    move-object/from16 v13, v38

    move-wide/from16 v9, v34

    move-object/from16 v34, v1

    move-object/from16 v33, v11

    move-object/from16 v44, v12

    const/high16 v1, 0x3f800000    # 1.0f

    move-wide/from16 v11, v36

    move-object/from16 v45, v13

    move-object/from16 v47, v14

    move-object/from16 v48, v16

    move-object/from16 v46, v27

    move-wide/from16 v13, v40

    move-object/from16 p1, v15

    move-wide/from16 v15, v42

    move-object/from16 v19, p1

    invoke-static/range {v3 .. v20}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->colors-q0g_0yA(JJJJJJJJLandroidx/compose/runtime/Composer;I)Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    move-result-object v8

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    move-object/from16 v15, p1

    invoke-static {v3, v15, v4}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->animationOptions(ZLandroidx/compose/runtime/Composer;I)Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    move-result-object v12

    const/4 v14, 0x0

    const/16 v16, 0x180

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xdc0

    move/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move/from16 v6, v31

    move-object/from16 v7, v32

    invoke-static/range {v3 .. v18}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt;->AudioVisSeekbar(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;ZLandroidx/compose/runtime/Composer;III)V

    const v3, 0x27da173b

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v22

    if-lez v3, :cond_15

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x4

    int-to-float v1, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v4, 0x6

    invoke-static {v1, v3, v15, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    iget v3, v15, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v26, :cond_14

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_11

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    :goto_d
    move-object/from16 v2, v44

    goto :goto_e

    :cond_11
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    goto :goto_d

    :goto_e
    invoke-static {v15, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, v46

    invoke-static {v15, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_12

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    move-object/from16 v1, v47

    goto :goto_10

    :cond_13
    :goto_f
    move-object/from16 v1, v48

    goto :goto_11

    :goto_10
    invoke-static {v3, v15, v3, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    goto :goto_f

    :goto_11
    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-interface/range {v33 .. v33}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$lambda$52$lambda$51$$inlined$map$1;

    move-object/from16 v2, p0

    move-object/from16 v4, v34

    move-object/from16 v3, v45

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$lambda$52$lambda$51$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/State;)V

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$lambda$52$lambda$51$$inlined$map$2;

    invoke-direct {v3, v1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$lambda$52$lambda$51$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v4, "00:00"

    const/4 v5, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x2

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->MediaCardProgressTime(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v23

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object v1, v15

    move-object v15, v0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const v27, 0xfffe

    move-object/from16 v24, v1

    invoke-static/range {v3 .. v27}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/systemui/media/mediaoutput/entity/MediaInfoExt;->timeText(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->MediaCardProgressTime(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v23

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const v27, 0xfffe

    move-object/from16 v24, v1

    invoke-static/range {v3 .. v27}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_12
    const/4 v2, 0x0

    goto :goto_13

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v25

    :cond_15
    move-object v1, v15

    const/4 v0, 0x1

    goto :goto_12

    :goto_13
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v3, v33

    :goto_14
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$2;

    move/from16 v2, p2

    move/from16 v4, p3

    invoke-direct {v1, v3, v2, v4}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void

    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v25
.end method

.method public static final ThumbnailSection(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V
    .locals 11

    const/4 v0, 0x2

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x42b2ac76

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v10, 0x1

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v2, p3, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, p3, 0xe

    if-nez v2, :cond_2

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    or-int/2addr v2, p3

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    and-int/lit8 v3, p3, 0x70

    if-nez v3, :cond_4

    and-int/lit8 v3, p4, 0x2

    if-nez v3, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x20

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_4
    and-int/lit8 v2, v2, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_9
    and-int/2addr v0, p4

    if-eqz v0, :cond_a

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    :cond_a
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ThumbnailSection$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ThumbnailSection$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x38

    const/4 v6, 0x2

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget v3, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p2, p0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, p2, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    const/4 v8, 0x0

    if-eqz v7, :cond_10

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_b

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_c

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    invoke-static {v3, p2, v3, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_d
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/ImageBitmap;

    if-eqz v1, :cond_e

    move v1, v10

    goto :goto_7

    :cond_e
    move v1, v2

    :goto_7
    const/4 v2, 0x3

    invoke-static {v8, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v3

    invoke-static {v8, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v4

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ThumbnailSection$1$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ThumbnailSection$1$1;-><init>(Landroidx/compose/runtime/State;)V

    const v0, -0x3721c814

    invoke-static {v0, p2, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const v8, 0x30d80

    const/16 v9, 0x12

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_f

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ThumbnailSection$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ThumbnailSection$2;-><init>(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void

    :cond_10
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v8
.end method

.method public static final TitleArea(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x1

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x5b8d1d07

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v0, 0xe

    const/4 v14, 0x2

    if-nez v3, :cond_2

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_0

    move-object/from16 v3, p0

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    :cond_1
    move v4, v14

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    move v4, v0

    :goto_1
    and-int/lit8 v4, v4, 0xb

    if-ne v4, v14, :cond_4

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v15, v3

    goto/16 :goto_12

    :cond_4
    :goto_2
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v4, v1, 0x1

    :cond_6
    :goto_3
    move-object v15, v3

    goto :goto_5

    :cond_7
    :goto_4
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_6

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    goto :goto_3

    :goto_5
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    move-result-object v4

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/16 v7, 0x8

    move-object v6, v13

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$1;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/16 v7, 0x38

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v13

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$2;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v13

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$3;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const-string v5, ""

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v13

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v16

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$4;

    invoke-direct {v4, v3, v9}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/State;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v13

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v17

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$5;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v13

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-interface {v15}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$6;

    invoke-direct {v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v13

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v5, 0x28

    int-to-float v5, v5

    sget-object v6, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v14}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v18

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$1;

    invoke-direct {v4, v15, v9}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x1c

    move-object/from16 v23, v4

    invoke-static/range {v18 .. v24}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v9, 0x30

    invoke-static {v6, v5, v13, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    iget v6, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v13, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, v13, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_15

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v2, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v2, :cond_8

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v9, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    move-object/from16 v20, v5

    iget-boolean v5, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_9

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move/from16 v21, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_7

    :cond_9
    move/from16 v21, v7

    :goto_7
    invoke-static {v6, v13, v6, v9}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_a
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/16 v4, 0x18

    int-to-float v4, v4

    invoke-static {v8, v4}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v13, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/painter/Painter;

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v4, 0x1

    :goto_9
    const/4 v5, 0x3

    const/4 v11, 0x0

    invoke-static {v11, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v23

    invoke-static {v11, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v24

    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$2$1;

    invoke-direct {v5, v10, v3, v12}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    const v3, -0x346c6db5    # -1.9342486E7f

    invoke-static {v3, v13, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v11, 0x0

    const v25, 0x186c06

    const/16 v26, 0x12

    move-object v3, v6

    move-object/from16 v27, v20

    move-object/from16 v28, v6

    move-object/from16 v6, v23

    move-object/from16 v29, v7

    move/from16 v20, v21

    move-object/from16 v7, v24

    move-object/from16 v30, v8

    move-object v8, v11

    move-object v11, v9

    move-object v9, v10

    move-object v10, v13

    move-object/from16 v31, v11

    move/from16 v11, v25

    move-object/from16 v21, v12

    move/from16 v12, v26

    invoke-static/range {v3 .. v12}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/16 v3, 0xc

    int-to-float v11, v3

    move-object/from16 v12, v30

    invoke-static {v12, v11}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v13, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    move-object/from16 v4, v28

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-virtual {v4, v12, v3, v5}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v10, 0x0

    invoke-static {v4, v5, v13, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget v5, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v13, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v20, :cond_14

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_d

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_a
    invoke-static {v13, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v2, v27

    invoke-static {v13, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_e

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    move-object/from16 v2, v31

    goto :goto_c

    :cond_f
    :goto_b
    move-object/from16 v2, v29

    goto :goto_d

    :goto_c
    invoke-static {v5, v13, v5, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    goto :goto_b

    :goto_d
    invoke-static {v13, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/4 v2, 0x2

    int-to-float v2, v2

    invoke-static {v12, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v13, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroidx/compose/foundation/BasicMarqueeKt;->basicMarquee-1Mj1MLw$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v13}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->MediaCardContentTitle(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x38

    const/16 v2, 0xc

    move-object v8, v13

    move v14, v10

    move v10, v2

    invoke-static/range {v3 .. v10}, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt;->TextExt-JKOsDoc(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_10

    move-object v3, v2

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    :goto_e
    const v2, -0x4c3929da

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v3, :cond_11

    goto :goto_f

    :cond_11
    invoke-static {v12}, Landroidx/compose/foundation/BasicMarqueeKt;->basicMarquee-1Mj1MLw$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v13}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->MediaCardContentArtist(Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x30

    const/16 v10, 0xc

    move-object v8, v13

    invoke-static/range {v3 .. v10}, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt;->TextExt-JKOsDoc(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    :goto_f
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    const v2, -0x4c3928b5

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v12, v11}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v13, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_10
    const/4 v2, 0x1

    goto :goto_11

    :cond_12
    const v2, -0x4c39286f

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v2, 0x1e

    int-to-float v2, v2

    invoke-static {v12, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v13, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_10

    :goto_11
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_12
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_13

    new-instance v3, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$3;

    invoke-direct {v3, v15, v0, v1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$TitleArea$3;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_15
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0
.end method

.method public static final access$AudioPathSection(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x2298b20a

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v4, p4, 0x6

    move v5, v4

    move-object/from16 v4, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v4, p4, 0xe

    if-nez v4, :cond_2

    move-object/from16 v4, p0

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    or-int v5, p4, v5

    goto :goto_1

    :cond_2
    move-object/from16 v4, p0

    move/from16 v5, p4

    :goto_1
    and-int/lit8 v6, p4, 0x70

    if-nez v6, :cond_5

    and-int/lit8 v6, p5, 0x2

    if-nez v6, :cond_3

    move-object/from16 v6, p1

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v6, p1

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v5, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p1

    :goto_3
    and-int/lit8 v7, p5, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v5, v5, 0x80

    :cond_6
    if-ne v7, v0, :cond_8

    and-int/lit16 v0, v5, 0x2db

    const/16 v5, 0x92

    if-ne v0, v5, :cond_8

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v4

    move-object v3, v6

    move-object/from16 v4, p2

    goto/16 :goto_f

    :cond_8
    :goto_4
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v0, p4, 0x1

    const/4 v14, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :cond_a
    move-object/from16 v12, p2

    :goto_5
    move-object v0, v4

    move-object v1, v6

    goto/16 :goto_a

    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v4, v0

    :cond_c
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalAudioPathInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    move-object v6, v0

    :cond_d
    if-eqz v7, :cond_a

    const v0, 0x58ab7502

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->INSTANCE:Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_12

    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_e

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_7
    move-object v3, v0

    goto :goto_8

    :cond_e
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_7

    :goto_8
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalViewModelProviderFactory:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    sget v5, Lkotlin/Result;->$r8$clinit:I

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_9
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    instance-of v5, v0, Lkotlin/Result$Failure;

    if-eqz v5, :cond_10

    move-object v0, v14

    :cond_10
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v0, :cond_11

    invoke-static {v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->createDaggerViewModelFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    :cond_11
    const-class v5, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-static {v1, v5, v0, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelKt;->get(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/Class;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    move-object v12, v0

    goto :goto_5

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_a
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    const v4, 0x2d717275

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v5, :cond_13

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v4, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    move-object v11, v4

    check-cast v11, Landroidx/compose/runtime/MutableState;

    const v4, 0x2d7172e9

    invoke-static {v15, v13, v4}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_14

    sget-object v4, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v4, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;->getAudioDevices()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    const v7, 0x2d717352

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_15

    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$audioDevices$2$1;

    invoke-direct {v7, v11, v4}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$audioDevices$2$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v6, v7}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v5

    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v5, v6, v15}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_17

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_16
    move v2, v13

    goto :goto_c

    :cond_17
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    instance-of v8, v7, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;

    if-nez v8, :cond_1a

    instance-of v8, v7, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    if-eqz v8, :cond_19

    check-cast v7, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    goto :goto_b

    :cond_19
    move-object v7, v14

    :goto_b
    if-eqz v7, :cond_18

    iget-boolean v7, v7, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->isInAppCasting:Z

    if-ne v7, v2, :cond_18

    :cond_1a
    :goto_c
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v15}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->cardBackground(Landroidx/compose/runtime/Composer;)J

    move-result-wide v7

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    const/16 v7, 0x14

    if-ne v3, v7, :cond_1b

    const/16 v3, 0x1e

    int-to-float v3, v3

    :goto_d
    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_e

    :cond_1b
    int-to-float v3, v13

    goto :goto_d

    :goto_e
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v8, v8, v8, v3, v7}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v7

    const v3, 0x2d7176fa

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_1c

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v3, :cond_1d

    :cond_1c
    new-instance v8, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;

    invoke-direct {v8, v5, v11, v2, v4}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$1$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;ZLandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    move-object v2, v8

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v16, 0x0

    const/16 v17, 0xfa

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v3, v6

    move-object v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v20, v11

    move-object v11, v2

    move-object v2, v12

    move-object v12, v15

    move/from16 v13, v16

    move-object/from16 p0, v1

    move-object v1, v14

    move/from16 v14, v17

    invoke-static/range {v3 .. v14}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    iget-object v3, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->isGroupSpeakerDefaultExpanded:Lcom/android/systemui/media/mediaoutput/common/DataStoreLabsExt$special$$inlined$map$3;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x2

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    const v5, 0x2d717a3b

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_1e

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v5, :cond_1f

    :cond_1e
    new-instance v6, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$2$1;

    move-object/from16 v5, v20

    invoke-direct {v6, v3, v5, v1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1f
    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v15, v4, v6}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v2, v0

    :goto_f
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$3;

    move-object v1, v7

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$AudioPathSection$3;-><init>(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;II)V

    iput-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public static final access$DeviceListItem(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;ZZLcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Landroidx/compose/runtime/Composer;II)V
    .locals 58

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move/from16 v12, p7

    const/16 v6, 0x30

    const/16 v7, 0x10

    const/4 v0, 0x4

    const/16 v8, 0xe

    const/4 v9, 0x6

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/16 v15, 0x20

    const/4 v5, 0x1

    move-object/from16 v4, p6

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x3167c7a

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, v12, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v12, 0xe

    if-nez v1, :cond_2

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v13

    :goto_0
    or-int/2addr v1, v12

    goto :goto_1

    :cond_2
    move v1, v12

    :goto_1
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_4

    or-int/2addr v1, v6

    :cond_3
    move-object/from16 v3, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v12, 0x70

    if-nez v3, :cond_3

    move-object/from16 v3, p1

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 v16, v15

    goto :goto_2

    :cond_5
    move/from16 v16, v7

    :goto_2
    or-int v1, v1, v16

    :goto_3
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v0, v12, 0x380

    if-nez v0, :cond_8

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x100

    goto :goto_4

    :cond_7
    const/16 v0, 0x80

    :goto_4
    or-int/2addr v1, v0

    :cond_8
    :goto_5
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_a

    or-int/lit16 v1, v1, 0xc00

    :cond_9
    move/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v12, 0x1c00

    if-nez v8, :cond_9

    move/from16 v8, p3

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v1, v1, v16

    :goto_7
    and-int/lit8 v16, p8, 0x10

    if-eqz v16, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v6, p4

    goto :goto_9

    :cond_c
    const v17, 0xe000

    and-int v17, v12, v17

    move/from16 v6, p4

    if-nez v17, :cond_e

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v1, v1, v17

    :cond_e
    :goto_9
    const/high16 v17, 0x70000

    and-int v17, v12, v17

    if-nez v17, :cond_10

    and-int/lit8 v17, p8, 0x20

    move-object/from16 v9, p5

    if-nez v17, :cond_f

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v17, 0x10000

    :goto_a
    or-int v1, v1, v17

    goto :goto_b

    :cond_10
    move-object/from16 v9, p5

    :goto_b
    const v17, 0x5b6db

    and-int v7, v1, v17

    const v13, 0x12492

    if-ne v7, v13, :cond_12

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v3

    move-object v13, v4

    move v5, v6

    move v4, v8

    move-object v6, v9

    move-object v12, v11

    move-object v11, v10

    goto/16 :goto_31

    :cond_12
    :goto_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v7, v12, 0x1

    const v13, -0x70001

    if-eqz v7, :cond_15

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_14

    and-int/2addr v1, v13

    :cond_14
    move-object v13, v3

    :goto_d
    move/from16 v27, v6

    move/from16 v26, v8

    move v6, v1

    goto :goto_10

    :cond_15
    :goto_e
    if-eqz v2, :cond_16

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_f

    :cond_16
    move-object v2, v3

    :goto_f
    if-eqz v0, :cond_17

    move v8, v14

    :cond_17
    if-eqz v16, :cond_18

    move v6, v14

    :cond_18
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalAudioPathInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    and-int/2addr v1, v13

    move-object v9, v0

    :cond_19
    move-object v13, v2

    goto :goto_d

    :goto_10
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalFeature:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    const v0, 0x77638c46

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v8, :cond_1a

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getVolume()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1a
    move-object v3, v0

    check-cast v3, Landroidx/compose/runtime/MutableFloatState;

    const v0, 0x77638ca1

    invoke-static {v4, v14, v0}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v28, v0

    check-cast v28, Landroidx/compose/runtime/MutableState;

    const v0, 0x77638ce6

    invoke-static {v4, v14, v0}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1c
    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getVolume()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getForce()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$1;

    const/4 v15, 0x0

    invoke-direct {v5, v10, v3, v15}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$1;-><init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, v5, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    const/16 v0, 0x38

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v5, 0x0

    const/4 v1, 0x2

    invoke-static {v13, v0, v5, v1}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x77638dd4

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->Companion:Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v7, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    const/16 v15, 0x14

    if-ne v1, v15, :cond_1d

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v19, Landroidx/compose/ui/graphics/Color;->Transparent:J

    move v1, v14

    :goto_11
    move-wide/from16 v14, v19

    goto :goto_14

    :cond_1d
    sget-object v1, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v1

    const v5, 0x735db726

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v1, :cond_1e

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Black:J

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1, v14, v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v14

    :goto_12
    move-wide/from16 v19, v14

    const/4 v1, 0x0

    goto :goto_13

    :cond_1e
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v14, Landroidx/compose/ui/graphics/Color;->Transparent:J

    goto :goto_12

    :goto_13
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_11

    :goto_14
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v5, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0, v14, v15, v5}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v29

    if-eqz v26, :cond_1f

    const/16 v0, 0x10

    int-to-float v5, v0

    move/from16 v30, v5

    goto :goto_15

    :cond_1f
    int-to-float v0, v1

    move/from16 v30, v0

    :goto_15
    const/16 v31, 0x0

    const/16 v34, 0xe

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getTransferable()Z

    move-result v15

    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 p5, v2

    move/from16 v2, v27

    move-object v12, v3

    move-object v3, v9

    move-object/from16 v29, v13

    move-object v13, v4

    move-object/from16 v4, p5

    move-object v11, v5

    move-object/from16 v5, v28

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$2;-><init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;ZLcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v14, v15, v0, v11, v1}, Landroidx/compose/foundation/ClickableKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v3, 0x30

    invoke-static {v1, v0, v13, v3}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    iget v1, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v13, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v5, v13, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v11, v5, Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_4a

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v14, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v14, :cond_20

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_20
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_16
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v0, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v15, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v15, :cond_21

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p3, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    goto :goto_17

    :cond_21
    move-object/from16 p3, v8

    :goto_17
    invoke-static {v1, v13, v1, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_22
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 v15, 0x10

    int-to-float v15, v15

    move/from16 v31, v6

    iget v6, v7, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    move-object/from16 v32, v5

    const/16 v5, 0x14

    if-ne v6, v5, :cond_23

    const/4 v6, 0x1

    goto :goto_18

    :cond_23
    const/4 v6, 0x0

    :goto_18
    if-eqz v6, :cond_24

    :goto_19
    int-to-float v6, v5

    goto :goto_1a

    :cond_24
    const/4 v5, 0x0

    goto :goto_19

    :goto_1a
    add-float/2addr v6, v15

    invoke-static {v8, v6}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v13, v5}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/16 v5, 0x24

    int-to-float v5, v5

    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move/from16 v33, v15

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v34, v9

    move-object/from16 v41, v12

    const/4 v9, 0x0

    invoke-static {v15, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    iget v9, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move-object/from16 v42, v15

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v13, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz v11, :cond_49

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v43, v11

    iget-boolean v11, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_25

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    :cond_25
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1b
    invoke-static {v13, v12, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v11, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v11, :cond_26

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_27

    :cond_26
    invoke-static {v9, v13, v9, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_27
    invoke-static {v13, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getIcon()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    iget v7, v7, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->from:I

    const/16 v11, 0x14

    if-ne v7, v11, :cond_28

    instance-of v7, v9, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;

    if-eqz v7, :cond_28

    goto :goto_1c

    :cond_28
    const/4 v9, 0x0

    :goto_1c
    const v7, 0xf0fb5e

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v9, :cond_29

    const/4 v7, 0x0

    :goto_1d
    const/4 v9, 0x0

    goto :goto_1e

    :cond_29
    sget-object v7, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalDensityScale:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_1d

    :goto_1e
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v7, :cond_2a

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_1f

    :cond_2a
    move v7, v9

    :goto_1f
    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getIcon()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v16

    const/16 v37, 0x0

    const/16 v40, 0x3

    const/16 v36, 0x0

    move-object/from16 v35, v8

    move/from16 v38, v5

    move/from16 v39, v5

    invoke-static/range {v35 .. v40}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v7}, Landroidx/compose/ui/draw/ScaleKt;->scale(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v18

    instance-of v5, v10, Lcom/android/systemui/media/mediaoutput/entity/DisconnectedDevice;

    const/4 v7, 0x1

    const/4 v11, 0x0

    invoke-static {v11, v5, v13, v7}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->primaryColor(ZZLandroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    const-string v17, ""

    const/16 v22, 0x38

    const/16 v23, 0x0

    move-object/from16 v21, v13

    invoke-static/range {v16 .. v23}, Lcom/android/systemui/media/mediaoutput/compose/widget/IconExtKt;->IconExt-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getBadge()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v7

    const v11, -0x72be833c

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v7, :cond_2b

    :goto_20
    const/4 v6, 0x0

    goto :goto_21

    :cond_2b
    const/16 v11, 0x12

    int-to-float v11, v11

    invoke-static {v8, v11}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const/4 v12, 0x1

    int-to-float v15, v12

    invoke-static {v11, v15, v15}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v6, v11, v12}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const-string v11, ""

    const/16 v12, 0x30

    invoke-static {v7, v11, v6, v13, v12}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    goto :goto_20

    :goto_21
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v6, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->thumbSize:F

    const/4 v7, 0x2

    int-to-float v11, v7

    div-float/2addr v6, v11

    const/16 v7, 0xe

    int-to-float v7, v7

    sub-float v11, v7, v6

    invoke-static {v8, v11}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v13, v11}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v8, v11, v7, v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-virtual {v2, v7, v9, v12}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v12, 0x0

    invoke-static {v7, v9, v13, v12}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v15

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v12, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v13, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v43, :cond_48

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_2c

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_22

    :cond_2c
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_22
    invoke-static {v13, v15, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v10, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v10, :cond_2d

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    :cond_2d
    invoke-static {v12, v13, v12, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2e
    invoke-static {v13, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v8, v6, v10, v11}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v7, v9, v13, v11}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    iget v9, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v13, v10}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz v43, :cond_47

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_2f

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_23

    :cond_2f
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_23
    invoke-static {v13, v7, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v11, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v7, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v7, :cond_30

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31

    :cond_30
    invoke-static {v9, v13, v9, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_31
    invoke-static {v13, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getName()Ljava/lang/CharSequence;

    move-result-object v16

    sget-object v7, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v7

    const v9, 0x45110064

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    if-eqz v7, :cond_32

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->getSecBold()Landroidx/compose/ui/text/TextStyle;

    move-result-object v9

    :goto_24
    move-object/from16 v43, v9

    const/4 v9, 0x0

    goto :goto_25

    :cond_32
    invoke-static {}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->getSecRegular()Landroidx/compose/ui/text/TextStyle;

    move-result-object v9

    goto :goto_24

    :goto_25
    invoke-static {v7, v5, v13, v9}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->primaryColor(ZZLandroidx/compose/runtime/Composer;I)J

    move-result-wide v44

    sget-object v5, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    const/high16 v5, 0x41880000    # 17.0f

    invoke-static {v5, v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide v46

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const v57, 0xfffffc

    invoke-static/range {v43 .. v57}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v22, 0x8

    const/16 v23, 0xe

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v21, v13

    invoke-static/range {v16 .. v23}, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt;->TextExt-JKOsDoc(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getDescription()Ljava/lang/CharSequence;

    move-result-object v16

    const v5, 0xf10053

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v10, 0x3

    if-nez v16, :cond_33

    :goto_26
    const/4 v5, 0x0

    goto :goto_27

    :cond_33
    const v5, -0x3990246e

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v5, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/compose/theme/TypeKt;->getSecRegular()Landroidx/compose/ui/text/TextStyle;

    move-result-object v43

    const/4 v5, 0x0

    invoke-static {v5, v5, v13, v10}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->primaryColor(ZZLandroidx/compose/runtime/Composer;I)J

    move-result-wide v44

    sget-object v5, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v11, Landroidx/compose/ui/unit/TextUnitType;->Sp:J

    const/high16 v5, 0x41500000    # 13.0f

    invoke-static {v5, v11, v12}, Landroidx/compose/ui/unit/TextUnitKt;->pack(FJ)J

    move-result-wide v46

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const v57, 0xfffffc

    invoke-static/range {v43 .. v57}, Landroidx/compose/ui/text/TextStyle;->copy-p1EtxEg$default(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v20

    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v22, 0xc08

    const/16 v23, 0x6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object/from16 v21, v13

    invoke-static/range {v16 .. v23}, Lcom/android/systemui/media/mediaoutput/compose/widget/TextExtKt;->TextExt-JKOsDoc(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;IILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    goto :goto_26

    :goto_27
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v5

    move-object/from16 v11, p0

    if-eqz v5, :cond_35

    instance-of v5, v11, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;

    if-eqz v5, :cond_34

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_35

    :cond_34
    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getVolumeMax()I

    move-result v5

    if-lez v5, :cond_35

    const/16 v17, 0x1

    goto :goto_28

    :cond_35
    const/16 v17, 0x0

    :goto_28
    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;

    move-object/from16 v9, v34

    move-object/from16 v7, v41

    invoke-direct {v5, v7, v11, v9}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2;-><init>(Landroidx/compose/runtime/MutableFloatState;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;)V

    const v7, 0x42fb738

    invoke-static {v7, v13, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    const v24, 0x180006

    const/16 v25, 0x1e

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v23, v13

    invoke-static/range {v16 .. v25}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sub-float v15, v33, v6

    invoke-static {v8, v15}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v13, v5}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/16 v5, 0x20

    int-to-float v5, v5

    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object/from16 v7, v42

    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    iget v12, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v13, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    move-object/from16 v2, v32

    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    if-eqz v2, :cond_46

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v2, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v2, :cond_36

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_29

    :cond_36
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_29
    invoke-static {v13, v7, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_37

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    :cond_37
    invoke-static {v12, v13, v12, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_38
    invoke-static {v13, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getSelectable()Z

    move-result v0

    if-eqz v0, :cond_39

    const v0, 0xf1070b

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDeviceExt;->isActive(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)Z

    move-result v16

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$1;

    invoke-direct {v0, v9, v11}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v18

    const/16 v22, 0x180

    const/16 v23, 0x18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v0

    move-object/from16 v21, v13

    invoke-static/range {v16 .. v23}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt;->MoCheckbox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2a
    move-object/from16 v12, p2

    move-object/from16 v0, p3

    const/4 v2, 0x1

    goto/16 :goto_2f

    :cond_39
    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getCancelable()Z

    move-result v0

    if-eqz v0, :cond_3a

    const v0, 0xf1084d

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$2;

    invoke-direct {v0, v9, v11}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v17

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v21, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;->lambda-7:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v23, 0x30030

    const/16 v24, 0x1c

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v22, v13

    invoke-static/range {v16 .. v24}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2a

    :cond_3a
    instance-of v0, v11, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;

    if-eqz v0, :cond_3e

    const v0, 0xf109f8

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v0, 0xf10a22

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move/from16 v1, v31

    and-int/lit16 v0, v1, 0x380

    const/16 v1, 0x100

    if-ne v0, v1, :cond_3b

    const/4 v0, 0x1

    goto :goto_2b

    :cond_3b
    const/4 v0, 0x0

    :goto_2b
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3d

    move-object/from16 v0, p3

    if-ne v1, v0, :cond_3c

    goto :goto_2c

    :cond_3c
    move-object/from16 v12, p2

    const/4 v2, 0x1

    goto :goto_2d

    :cond_3d
    move-object/from16 v0, p3

    :goto_2c
    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$3$1;

    move-object/from16 v12, p2

    const/4 v2, 0x1

    invoke-direct {v1, v12}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_2d
    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v17

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$4;

    invoke-direct {v1, v12}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$4;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v3, 0x733b6127

    invoke-static {v3, v13, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    const v23, 0x30030

    const/16 v24, 0x1c

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v22, v13

    invoke-static/range {v16 .. v24}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2f

    :cond_3e
    move-object/from16 v12, p2

    move-object/from16 v0, p3

    const/4 v2, 0x1

    invoke-interface/range {p0 .. p0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getState()Lcom/android/systemui/media/mediaoutput/entity/State;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTING:Lcom/android/systemui/media/mediaoutput/entity/State;

    if-ne v1, v3, :cond_3f

    move v5, v2

    goto :goto_2e

    :cond_3f
    const/4 v5, 0x0

    :goto_2e
    if-eqz v5, :cond_40

    const v1, 0xf10c75

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v21, Lcom/samsung/sesl/compose/component/SeslProgressIndicatorDefaults;->CircularProgressSmall:F

    const/16 v23, 0x0

    const/16 v24, 0x7

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v22, v13

    invoke-static/range {v16 .. v24}, Lcom/samsung/sesl/compose/component/ProgressIndicatorKt;->SeslIndeterminateCircularProgressIndicator-h1eT-Ww(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/runtime/Composer;II)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2f

    :cond_40
    const/4 v1, 0x0

    const v3, 0xf10ce9

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2f
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v1, 0x14

    int-to-float v1, v1

    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v8, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_42

    const v1, 0x7763a395

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v1, 0x7763a3b7

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_41

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$4$1;

    move-object/from16 v0, p5

    invoke-direct {v1, v0}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$4$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_41
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-static {v1, v2, v13, v4, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt;->showInAppCastingPopup(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v17, v9

    goto/16 :goto_30

    :cond_42
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_44

    const v1, 0x7763a40f

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_43

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v13}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, v13}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v1

    :cond_43
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v14, v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalSnackbarHostState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/material3/SnackbarHostState;

    const v0, 0x7f1312be

    invoke-static {v0, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1312bd

    invoke-static {v0, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1312bf

    invoke-static {v0, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f130352

    invoke-static {v0, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;

    const/16 v16, 0x0

    move-object v0, v15

    move-object v6, v9

    move-object/from16 v7, p0

    move-object/from16 v8, v28

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$5;-><init>(Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    invoke-static {v14, v0, v0, v15, v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_30

    :cond_44
    move-object/from16 v17, v9

    const/4 v0, 0x0

    const v1, 0x7763a6f5

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_30
    move-object/from16 v6, v17

    move/from16 v4, v26

    move/from16 v5, v27

    move-object/from16 v2, v29

    :goto_31
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_45

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$6;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$6;-><init>(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/MutableState;ZZLcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_45
    return-void

    :cond_46
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_47
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0

    :cond_48
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0

    :cond_49
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0

    :cond_4a
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0
.end method

.method public static final access$MediaControlSection(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move/from16 v0, p3

    move/from16 v1, p4

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v14, p2

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x267de89f

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v6, v0, 0x6

    move v7, v6

    move-object/from16 v6, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v0, 0xe

    if-nez v6, :cond_2

    move-object/from16 v6, p0

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    or-int/2addr v7, v0

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    move v7, v0

    :goto_1
    and-int/lit8 v8, v0, 0x70

    if-nez v8, :cond_5

    and-int/lit8 v8, v1, 0x2

    if-nez v8, :cond_3

    move-object/from16 v8, p1

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    move-object/from16 v8, p1

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v7, v9

    goto :goto_3

    :cond_5
    move-object/from16 v8, p1

    :goto_3
    and-int/lit8 v7, v7, 0x5b

    const/16 v13, 0x12

    if-ne v7, v13, :cond_7

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, v8

    goto/16 :goto_13

    :cond_7
    :goto_4
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_9

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v6

    :goto_5
    move-object v12, v8

    goto :goto_8

    :cond_9
    :goto_6
    if-eqz v5, :cond_a

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_7

    :cond_a
    move-object v5, v6

    :goto_7
    and-int/2addr v3, v1

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    move-object v12, v3

    move-object v3, v5

    goto :goto_8

    :cond_b
    move-object v3, v5

    goto :goto_5

    :goto_8
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v12}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    invoke-interface {v12}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x2

    move-object v8, v14

    invoke-static/range {v5 .. v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    invoke-interface {v12}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaControlSection$$inlined$map$1;

    invoke-direct {v6, v5}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaControlSection$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/16 v9, 0x38

    const/16 v16, 0x2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v14

    move-object v13, v10

    move/from16 v10, v16

    invoke-static/range {v5 .. v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v16

    invoke-interface {v12}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaControlSection$$inlined$map$2;

    invoke-direct {v6, v5}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaControlSection$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v14

    invoke-static/range {v5 .. v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/16 v7, 0xa

    if-eqz v5, :cond_d

    check-cast v5, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-static {v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_d

    goto :goto_a

    :cond_d
    const/4 v8, 0x0

    :goto_a
    const v5, -0x2c7da6e2

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v8, :cond_e

    invoke-static {v14}, Lcom/android/systemui/media/mediaoutput/compose/theme/ColorKt;->cardMediaControlDefaultBackground(Landroidx/compose/runtime/Composer;)Ljava/util/List;

    move-result-object v8

    :cond_e
    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v5, Lcom/android/systemui/media/mediaoutput/compose/ext/BrushExtKt$radialGradientShader$1;

    invoke-direct {v5, v8}, Lcom/android/systemui/media/mediaoutput/compose/ext/BrushExtKt$radialGradientShader$1;-><init>(Ljava/util/List;)V

    invoke-static {v6, v5}, Landroidx/compose/foundation/BackgroundKt;->background$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/ShaderBrush;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v8, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v14, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, v14, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_24

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v2, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v2, :cond_f

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_f
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_b
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v15, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_10

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    invoke-static {v8, v14, v8, v15}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_11
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {v9, v5}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v19, v3

    const/16 v3, 0x36

    invoke-static {v8, v10, v14, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget v8, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v14, v5}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v7, :cond_23

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v0, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_12

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_12
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_c
    invoke-static {v14, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v10, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_13

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    invoke-static {v8, v14, v8, v15}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_14
    invoke-static {v14, v5, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, -0x733af056

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v14, v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt;->TitleArea(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V

    const/4 v4, 0x6

    int-to-float v4, v4

    sget-object v5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v9, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v14, v4}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const v4, -0x733af001

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v14}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt;->isProgressVisible(Landroidx/compose/runtime/Composer;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v0, v14, v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt;->ProgressArea(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V

    :cond_15
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v14, v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt;->ControlArea(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v4, v12

    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_12

    :cond_16
    const v0, -0x733aef6e

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v14}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0xa

    int-to-float v0, v0

    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    goto :goto_e

    :cond_17
    const/4 v0, 0x0

    int-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    move v0, v3

    :goto_e
    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v5, 0x0

    invoke-static {v0, v3, v14, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v0

    iget v3, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v14, v9}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    if-eqz v7, :cond_22

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_18

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_f

    :cond_18
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_f
    invoke-static {v14, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_19

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    invoke-static {v3, v14, v3, v15}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1a
    invoke-static {v14, v8, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    invoke-virtual {v0, v9, v3, v5}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v8, 0x0

    invoke-static {v3, v5, v14, v8}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget v5, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v7, :cond_21

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_1b

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_1b
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_10
    invoke-static {v14, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_1c

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    invoke-static {v5, v14, v5, v15}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_1d
    invoke-static {v14, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x4

    int-to-float v0, v0

    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v14, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v14, v3, v4}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt;->TitleArea(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v4, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaControlSection$3$1$1$2;

    invoke-direct {v4, v12, v13}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaControlSection$3$1$1$2;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;)V

    const/16 v5, 0x30

    int-to-float v5, v5

    invoke-static {v9, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v5, Landroidx/compose/material3/IconButtonDefaults;->INSTANCE:Landroidx/compose/material3/IconButtonDefaults;

    const v6, 0xffffff

    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v6

    const v8, 0x3e4ccccd    # 0.2f

    invoke-static {v8, v6, v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v15, 0x0

    const/16 v10, 0xe

    move-wide v5, v6

    move-wide v7, v15

    move-object v15, v9

    move-object v9, v14

    invoke-static/range {v5 .. v10}, Landroidx/compose/material3/IconButtonDefaults;->iconButtonColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/IconButtonColors;

    move-result-object v8

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/media/mediaoutput/compose/ComposableSingletons$MediaCardKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v13, 0x30030

    const/16 v16, 0x14

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v4

    move-object v6, v11

    move-object v11, v14

    move-object v4, v12

    move v12, v13

    const/16 v2, 0x12

    move/from16 v13, v16

    invoke-static/range {v5 .. v13}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    const/16 v5, 0x10

    int-to-float v5, v5

    invoke-static {v15, v5}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v14, v5}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v14}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v5

    if-eqz v5, :cond_1e

    int-to-float v2, v3

    goto :goto_11

    :cond_1e
    int-to-float v2, v2

    :goto_11
    invoke-static {v15, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v14, v2}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v14, v3, v5}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt;->MediaDeviceControlArea(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v14}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConfigurationExtKt;->isLandscape(Landroidx/compose/runtime/Composer;)Z

    move-result v2

    if-eqz v2, :cond_1f

    int-to-float v0, v3

    :cond_1f
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_d

    :goto_12
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v6, v19

    :goto_13
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v2, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaControlSection$4;

    move/from16 v3, p3

    invoke-direct {v2, v6, v4, v3, v1}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$MediaControlSection$4;-><init>(Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;II)V

    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void

    :cond_21
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_22
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0

    :cond_23
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0

    :cond_24
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0
.end method

.method public static final isProgressVisible(Landroidx/compose/runtime/Composer;)Z
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x5896643b

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x2246e764

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v0

    const/16 v1, 0x19b

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return v0
.end method

.method public static final showInAppCastingPopup(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    const/4 v0, 0x2

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v1, 0x34a220f8

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v1, p3, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_2

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    or-int/2addr v1, p3

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 v2, p3, 0x70

    if-nez v2, :cond_4

    and-int/lit8 v2, p4, 0x2

    if-nez v2, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    goto :goto_2

    :cond_3
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_4
    and-int/lit8 v1, v1, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/2addr v0, p4

    goto :goto_5

    :cond_8
    :goto_4
    and-int/2addr v0, p4

    if-eqz v0, :cond_9

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaInteraction:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    :cond_9
    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getMediaInfo()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->getEmpty()Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    move-result-object v2

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/16 v5, 0x8

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalSnackbarHostState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/material3/SnackbarHostState;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v4, :cond_a

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v0

    :cond_a
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v7, v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$1;-><init>(Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/State;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v7, v1, v1, v8, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_6
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_b

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$showInAppCastingPopup$2;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
