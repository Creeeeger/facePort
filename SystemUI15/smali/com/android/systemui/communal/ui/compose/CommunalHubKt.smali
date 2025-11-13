.class public abstract Lcom/android/systemui/communal/ui/compose/CommunalHubKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final AccessibilityContainer(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const/4 v0, 0x3

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x136d1b0a

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isFocusable()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v4, 0x38

    invoke-static {v2, v3, p2, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v6, 0x2

    invoke-static {v3, v2, v6}, Landroidx/compose/foundation/FocusableKt;->focusable$default(Landroidx/compose/ui/Modifier;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;

    invoke-direct {v3, v1, p0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$1$1;-><init>(Landroid/content/Context;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    invoke-static {v2, v5, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v4, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    :cond_0
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget v2, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {p2, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v6, p2, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_1

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v3, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-static {v2, p2, v2, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_3
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v0, p3, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$AccessibilityContainer$3;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final CommunalHub(Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 44

    move-object/from16 v15, p1

    const/16 v0, 0x8

    move-object/from16 v14, p7

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v1, -0x4d886b0d

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v13, 0x1

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v12, p0

    :goto_0
    and-int/lit8 v1, p9, 0x4

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    move-object/from16 v16, v11

    goto :goto_1

    :cond_1
    move-object/from16 v16, p2

    :goto_1
    and-int/lit8 v1, p9, 0x8

    if-eqz v1, :cond_2

    move-object/from16 v17, v11

    goto :goto_2

    :cond_2
    move-object/from16 v17, p3

    :goto_2
    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_3

    move-object v10, v11

    goto :goto_3

    :cond_3
    move-object/from16 v10, p4

    :goto_3
    and-int/lit8 v1, p9, 0x20

    if-eqz v1, :cond_4

    move-object/from16 v18, v11

    goto :goto_4

    :cond_4
    move-object/from16 v18, p5

    :goto_4
    and-int/lit8 v1, p9, 0x40

    if-eqz v1, :cond_5

    move-object/from16 v19, v11

    goto :goto_5

    :cond_5
    move-object/from16 v19, p6

    :goto_5
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->getCommunalContent()Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object v1

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/16 v9, 0x38

    invoke-static {v1, v2, v14, v9}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->getCurrentPopup()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1, v11, v14, v9}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v21

    const v1, 0x3c9ed718

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_6

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v11, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v22, v1

    check-cast v22, Landroidx/compose/runtime/MutableState;

    const/4 v8, 0x0

    const v1, 0x3c9ed75b

    invoke-static {v14, v8, v1}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_7

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v11, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v23, v1

    check-cast v23, Landroidx/compose/runtime/MutableState;

    const v1, 0x3c9ed7ac

    invoke-static {v14, v8, v1}, Lcom/android/compose/animation/ExpandableKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;ZI)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_8

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v11, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v24, v1

    check-cast v24, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v14}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const v3, -0x5cfd2e3e

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v3, 0x56465949

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_9

    if-ne v4, v2, :cond_a

    :cond_9
    new-instance v4, Lcom/android/systemui/communal/ui/compose/ContentListState;

    new-instance v3, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$1;

    invoke-direct {v3, v15, v10}, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/widgets/WidgetConfigurator;)V

    new-instance v5, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$2;

    invoke-direct {v5, v15}, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$2;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$3;

    invoke-direct {v6, v15}, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$3;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/android/systemui/communal/ui/compose/ContentListState;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    move-object v6, v4

    check-cast v6, Lcom/android/systemui/communal/ui/compose/ContentListState;

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->getReorderingWidgets()Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    invoke-static {v1, v14}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iget-object v3, v15, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->_selectedKey:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v3, v14}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    const v3, 0x3c9ed91e

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_b

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$removeButtonEnabled$2$1;

    invoke-direct {v2, v5, v1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$removeButtonEnabled$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v25, v3

    check-cast v25, Landroidx/compose/runtime/State;

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEmptyState()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v4, v14, v9}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isCommunalContentVisible()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v2

    xor-int/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2, v14, v0}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v1

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    const v3, 0xb49e481

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v3, 0x2

    if-eqz v1, :cond_d

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/unit/Density;

    sget-object v28, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/window/layout/WindowMetricsCalculator$Companion;->getOrCreate()Landroidx/window/layout/WindowMetricsCalculator;

    move-result-object v28

    move-object/from16 v11, v28

    check-cast v11, Landroidx/window/layout/WindowMetricsCalculatorCompat;

    invoke-virtual {v11, v1}, Landroidx/window/layout/WindowMetricsCalculatorCompat;->computeCurrentWindowMetrics(Landroid/content/Context;)Landroidx/window/layout/WindowMetrics;

    move-result-object v1

    iget-object v1, v1, Landroidx/window/layout/WindowMetrics;->_bounds:Landroidx/window/core/Bounds;

    invoke-virtual {v1}, Landroidx/window/core/Bounds;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-interface {v9, v1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v1

    sget-object v11, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v11, Lcom/android/systemui/communal/ui/compose/Dimensions;->ToolbarPaddingTop:F

    const-wide v28, 0xffffffffL

    move-object/from16 v30, v14

    iget-wide v13, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    and-long v13, v13, v28

    long-to-int v2, v13

    invoke-interface {v9, v2}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v2

    add-float/2addr v2, v11

    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sub-float/2addr v1, v2

    sget v9, Lcom/android/systemui/communal/ui/compose/Dimensions;->GridHeight:F

    sub-float/2addr v1, v9

    sget v9, Lcom/android/systemui/communal/ui/compose/Dimensions;->GridTopSpacing:F

    add-float/2addr v1, v9

    int-to-float v9, v3

    div-float/2addr v1, v9

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    sget v9, Lcom/android/systemui/communal/ui/compose/Dimensions;->Spacing:F

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v9

    invoke-static {v1, v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(Ljava/lang/Comparable;Landroidx/compose/ui/unit/Dp;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Dp;

    iget v1, v1, Landroidx/compose/ui/unit/Dp;->value:F

    sget v9, Lcom/android/systemui/communal/ui/compose/Dimensions;->ToolbarPaddingHorizontal:F

    add-float/2addr v2, v1

    invoke-static {v9, v2, v9, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v1

    move-object/from16 v14, v30

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    move-object v9, v1

    goto :goto_8

    :cond_d
    :goto_7
    sget-object v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->ItemSpacing:F

    sget v2, Lcom/android/systemui/communal/ui/compose/Dimensions;->GridTopSpacing:F

    const/4 v9, 0x0

    invoke-static {v1, v2, v1, v9, v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v1

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_6

    :goto_8
    const v1, 0x719f981d

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    new-instance v2, Lcom/android/systemui/communal/ui/compose/ContentPaddingInPx;

    sget-object v11, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v9, v11}, Landroidx/compose/foundation/layout/PaddingValuesImpl;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v11

    invoke-interface {v1, v11}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v11

    iget v13, v9, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-interface {v1, v13}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    invoke-direct {v2, v11, v1}, Lcom/android/systemui/communal/ui/compose/ContentPaddingInPx;-><init>(FF)V

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget v1, v2, Lcom/android/systemui/communal/ui/compose/ContentPaddingInPx;->start:F

    iget v2, v2, Lcom/android/systemui/communal/ui/compose/ContentPaddingInPx;->top:F

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v28

    const v1, 0x3c9edb1e

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v7, v14, v0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->ScrollOnUpdatedLiveContentEffect(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V

    :cond_e
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$1;

    invoke-static {v12, v8, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v1, "communal_hub"

    invoke-static {v0, v1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v13, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v13}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static/range {v28 .. v29}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    filled-new-array {v7, v0, v6}, [Ljava/lang/Object;

    move-result-object v34

    new-instance v35, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;

    const/16 v30, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-wide/from16 v2, v28

    move-object/from16 v38, v4

    move-object v4, v7

    move-object/from16 p2, v5

    move-object v5, v6

    move-object/from16 v39, v6

    move-object/from16 v6, v30

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlin/coroutines/Continuation;)V

    sget-object v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->EmptyPointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/16 v36, 0x3

    const/16 v37, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v37}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v11, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v30, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static/range {v28 .. v29}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/LayoutCoordinates;

    filled-new-array {v7, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v34

    new-instance v35, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;

    const/16 v31, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v28

    move-object v5, v7

    move-object/from16 v6, v20

    move-object/from16 v40, v7

    move-object/from16 v7, v31

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/MutableState;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/16 v36, 0x3

    const/16 v37, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v37}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$2;

    invoke-direct {v1, v15}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/input/key/KeyInputModifierKt;->onPreviewKeyEvent(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$3;

    invoke-direct {v1, v15}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$3$3;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt;->motionEventSpy(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v11, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    goto :goto_9

    :cond_f
    move-object/from16 v40, v7

    :goto_9
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget v1, v14, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v14, v11}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v5, v14, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_18

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_10

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_10
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_a
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v2, v14, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_11

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    invoke-static {v1, v14, v1, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_12
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    new-instance v6, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v9

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v5, p2

    move-object v9, v6

    move-wide/from16 v6, v28

    move-object/from16 v8, v40

    move-object/from16 v41, v9

    move-object/from16 v9, v39

    move-object/from16 v26, v10

    move-object/from16 v42, v11

    move-object/from16 v11, v16

    move-object/from16 v28, v12

    move-object/from16 v12, v20

    move-object/from16 v20, v13

    move-object/from16 v13, v24

    move-object/from16 v43, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v22

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    const v0, 0x105324ac

    move-object/from16 v1, v41

    move-object/from16 v10, v43

    invoke-static {v0, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object/from16 v11, p1

    const/16 v12, 0x38

    invoke-static {v11, v0, v10, v12}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->AccessibilityContainer(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v0, -0x9b086a8

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v18, :cond_14

    if-eqz v19, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v9, 0x1

    goto :goto_b

    :cond_13
    const/4 v9, 0x0

    :goto_b
    sget-object v0, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    const/16 v1, 0xfa

    const/4 v2, 0x2

    const/4 v13, 0x0

    invoke-static {v1, v13, v0, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v1

    sget-object v3, Lcom/android/compose/animation/Easings;->INSTANCE:Lcom/android/compose/animation/Easings;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/compose/animation/Easings;->Emphasized:Lcom/android/compose/animation/Easings$fromInterpolator$1;

    const/16 v4, 0x3e8

    invoke-static {v4, v13, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/animation/EnterExitTransitionKt;->slideInVertically$default(Landroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v14

    const/16 v1, 0xa7

    invoke-static {v1, v13, v0, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v0

    invoke-static {v4, v13, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOutVertically$default(Landroidx/compose/animation/core/TweenSpec;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v15

    new-instance v8, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    move-object/from16 v5, v39

    move-object/from16 v6, p1

    move-object/from16 v7, v23

    move-object v12, v8

    move-object/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lcom/android/systemui/communal/ui/compose/ContentListState;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v0, -0x5f1a4626

    invoke-static {v0, v10, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x30000

    const/16 v0, 0x12

    move v1, v9

    move-object v3, v14

    move-object v4, v15

    move-object v7, v10

    move v9, v0

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_14
    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, -0x9b0803d

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/communal/ui/viewmodel/PopupType;

    sget-object v1, Lcom/android/systemui/communal/ui/viewmodel/PopupType$CtaTile;->INSTANCE:Lcom/android/systemui/communal/ui/viewmodel/PopupType$CtaTile;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$3;

    invoke-direct {v0, v11}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v10, v13}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->PopupOnDismissCtaTile(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_15
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/communal/ui/viewmodel/PopupType;

    sget-object v1, Lcom/android/systemui/communal/ui/viewmodel/PopupType$CustomizeWidgetButton;->INSTANCE:Lcom/android/systemui/communal/ui/viewmodel/PopupType$CustomizeWidgetButton;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4;

    move-object/from16 v3, p2

    invoke-direct {v2, v11, v3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$4;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/State;)V

    const v3, -0x624119ab

    invoke-static {v3, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const v8, 0x30030

    const/16 v9, 0x1c

    move-object/from16 v2, v20

    move-object v7, v10

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const v1, -0x9b07e1c

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    instance-of v1, v11, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    if-eqz v1, :cond_16

    if-eqz v17, :cond_16

    move-object v1, v11

    check-cast v1, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    iget-object v2, v1, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isEnableWidgetDialogShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v4, v38

    const/16 v3, 0x38

    invoke-static {v2, v4, v10, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;->isEnableWorkProfileDialogShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v1, v4, v10, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x7f130527

    invoke-static {v2, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f130335

    invoke-static {v2, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$5;

    invoke-direct {v5, v11}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$5;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$6;

    invoke-direct {v6, v11}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$6;-><init>(Ljava/lang/Object;)V

    const/16 v8, 0x40

    move-object/from16 v2, v17

    move-object v7, v10

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt;->EnableWidgetDialog(ZLcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x7f131592

    invoke-static {v2, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f131593

    invoke-static {v2, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$7;

    invoke-direct {v5, v11}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$7;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$8;

    invoke-direct {v6, v11}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$8;-><init>(Ljava/lang/Object;)V

    const/16 v8, 0x40

    move-object/from16 v2, v17

    move-object v7, v10

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/communal/ui/compose/EnableWidgetDialogKt;->EnableWidgetDialog(ZLcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_16
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->GridHeight:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v2, v42

    invoke-virtual {v2, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->Spacing:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$9;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$4$9;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v10, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_17

    new-instance v12, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$5;

    move-object v0, v12

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v26

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHub$5;-><init>(Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v12, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void

    :cond_18
    const/4 v3, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v3
.end method

.method public static final CtaTileInViewModeContent(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x75c22e46

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/compose/theme/AndroidColorScheme;

    sget-object v0, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    iget-wide v1, v7, Lcom/android/compose/theme/AndroidColorScheme;->primary:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, v7, Lcom/android/compose/theme/AndroidColorScheme;->onPrimary:J

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-wide v0, v1

    move-wide v2, v3

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v2

    const/16 v0, 0x44

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v1, 0x22

    int-to-float v1, v1

    invoke-static {v0, v1, v0, v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-a9UjIt4(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CtaTileInViewModeContent$1;

    invoke-direct {v0, v7, p0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CtaTileInViewModeContent$1;-><init>(Lcom/android/compose/theme/AndroidColorScheme;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    const v3, -0x7f89b4d4

    invoke-static {v3, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    shr-int/lit8 v0, p3, 0x3

    and-int/lit8 v0, v0, 0xe

    const/high16 v3, 0x30000

    or-int v7, v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v8, 0x18

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CtaTileInViewModeContent$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CtaTileInViewModeContent$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/ui/Modifier;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public static final DisabledWidgetPlaceholder(Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x39373fe9

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_2
    const v1, 0x1080093

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_3
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    iget-wide v3, v3, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    const v5, 0x1050008

    invoke-static {v5, v10}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/Composer;)F

    move-result v5

    invoke-static {v5}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v5

    invoke-static {v11, v3, v4, v5}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v3

    const/4 v9, 0x1

    xor-int/lit8 v16, v3, 0x1

    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$DisabledWidgetPlaceholder$1;

    move-object/from16 v8, p1

    invoke-direct {v3, v8}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$DisabledWidgetPlaceholder$1;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x18

    move-object/from16 v18, v3

    invoke-static/range {v13 .. v19}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v6, 0x36

    invoke-static {v4, v5, v10, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget v5, v10, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v10, v3}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v13, v10, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    if-eqz v13, :cond_8

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_4

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v6, v10, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_5

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-static {v5, v10, v5, v4}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/android/compose/ui/graphics/painter/DrawablePainterKt;->rememberDrawablePainter(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    const v1, 0x7f130787

    invoke-static {v1, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v4, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/android/systemui/communal/ui/compose/Dimensions;->IconSize:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    sget-object v5, Lcom/android/systemui/communal/ui/compose/Colors;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Colors;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/communal/ui/compose/Colors;->DisabledColorFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/graphics/ColorMatrix;

    iget-object v5, v5, Landroidx/compose/ui/graphics/ColorMatrix;->values:[F

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v5, v2}, Landroidx/compose/ui/graphics/ColorMatrixColorFilter;-><init>([FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v13, 0x188

    const/16 v14, 0x38

    move-object v2, v3

    move-object v3, v7

    move-object v7, v10

    move v8, v13

    move v13, v9

    move v9, v14

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v7, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$DisabledWidgetPlaceholder$3;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v11

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$DisabledWidgetPlaceholder$3;-><init>(Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/ui/Modifier;II)V

    iput-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v2
.end method

.method public static final HighlightedItem(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x751e92b5

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 v2, p2, 0x6

    :goto_0
    move v7, v2

    goto :goto_2

    :cond_0
    and-int/lit8 v2, p2, 0xe

    if-nez v2, :cond_2

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v2, p2

    goto :goto_0

    :cond_2
    move v7, p2

    :goto_2
    and-int/lit8 v2, v7, 0xb

    if-ne v2, v1, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_5
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Transparent:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    const/16 v6, 0xe

    move-wide v0, v1

    move-wide v2, v3

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v2

    sget-object v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardOutlineWidth:F

    sget-object v1, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/theme/AndroidColorScheme;

    iget-wide v3, v1, Lcom/android/compose/theme/AndroidColorScheme;->tertiaryFixed:J

    invoke-static {v0, v3, v4}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v4

    const/16 v0, 0x10

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sget-object v0, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->lambda-6:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/high16 v0, 0x30000

    and-int/lit8 v3, v7, 0xe

    or-int v7, v3, v0

    const/16 v8, 0x8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$HighlightedItem$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$HighlightedItem$1;-><init>(Landroidx/compose/ui/Modifier;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final PendingWidgetPlaceholder(Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$PendingWidget;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 10

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x795fdd8

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$PendingWidget;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const v1, 0x1080093

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    sget-object v2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v2

    iget-wide v2, v2, Landroidx/compose/material3/ColorScheme;->surfaceVariant:J

    const v4, 0x1050008

    invoke-static {v4, p2}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/Composer;)F

    move-result v4

    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v5, 0x36

    invoke-static {v3, v4, p2, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget v4, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {p2, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, p2, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_2

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v5, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-static {v4, p2, v4, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_4
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/compose/ui/graphics/painter/DrawablePainterKt;->rememberDrawablePainter(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    const v1, 0x7f130788

    invoke-static {v1, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v3, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/android/systemui/communal/ui/compose/Dimensions;->IconSize:F

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v8, 0x188

    const/16 v9, 0x78

    move-object v7, p2

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$PendingWidgetPlaceholder$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$PendingWidgetPlaceholder$2;-><init>(Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$PendingWidget;Landroidx/compose/ui/Modifier;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final PopupOnDismissCtaTile(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x528d00f1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v2, v0, 0xb

    if-ne v2, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v2

    sget-object v4, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->lambda-5:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit16 v7, v0, 0x6036

    const/16 v8, 0x8

    const/4 v4, 0x0

    move-object v0, v1

    move-wide v1, v2

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup-K5zGePQ(Landroidx/compose/ui/Alignment;JLkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$PopupOnDismissCtaTile$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$PopupOnDismissCtaTile$1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final ScrollOnUpdatedLiveContentEffect(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x1cd1e402

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_0

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v0

    :cond_0
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v6, v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v0, -0x5669bbe9

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$1;-><init>(Ljava/util/List;Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p0, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$2;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridState;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public static final SmartspaceContent(Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 8

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x4e8c8b06

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$1;-><init>(Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;)V

    sget-object v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$2;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$2;

    shr-int/lit8 v1, p4, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int/lit16 v6, v1, 0x180

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x18

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v6, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$SmartspaceContent$3;-><init>(Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;Landroidx/compose/ui/Modifier;II)V

    iput-object v6, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public static final ToolbarButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v1, 0x4

    move-object/from16 v3, p4

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const v6, -0x30a5c28d

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v15, 0x1

    and-int/lit8 v6, p6, 0x1

    if-eqz v6, :cond_0

    or-int/lit8 v7, v5, 0x6

    move v8, v7

    move/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v5, 0xe

    if-nez v7, :cond_2

    move/from16 v7, p0

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v0

    :goto_0
    or-int/2addr v8, v5

    goto :goto_1

    :cond_2
    move/from16 v7, p0

    move v8, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v8, v8, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v5, 0x70

    if-nez v0, :cond_5

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v8, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v1, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v1, v5, 0x380

    if-nez v1, :cond_6

    move-object/from16 v1, p2

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v8, v9

    :goto_5
    and-int/lit8 v9, p6, 0x8

    if-eqz v9, :cond_9

    or-int/lit16 v8, v8, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v5, 0x1c00

    if-nez v9, :cond_b

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x800

    goto :goto_6

    :cond_a
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v8, v9

    :cond_b
    :goto_7
    and-int/lit16 v9, v8, 0x16db

    const/16 v10, 0x492

    if-ne v9, v10, :cond_d

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v6, v1

    move v1, v7

    goto/16 :goto_b

    :cond_d
    :goto_8
    if-eqz v6, :cond_e

    move/from16 v16, v15

    goto :goto_9

    :cond_e
    move/from16 v16, v7

    :goto_9
    if-eqz v0, :cond_f

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_a

    :cond_f
    move-object v0, v1

    :goto_a
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/theme/AndroidColorScheme;

    const/4 v14, 0x0

    const/4 v13, 0x3

    invoke-static {v14, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v9

    invoke-static {v14, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v10

    new-instance v6, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$1;

    invoke-direct {v6, v2, v4}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;)V

    const v7, 0xa3f719b

    invoke-static {v7, v3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    and-int/lit8 v6, v8, 0xe

    const v17, 0x30d80

    or-int v6, v6, v17

    shr-int/lit8 v7, v8, 0x3

    and-int/lit8 v18, v7, 0x70

    or-int v19, v6, v18

    const/16 v20, 0x10

    const/4 v12, 0x0

    move/from16 v6, v16

    move-object v7, v0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v3

    move/from16 v13, v19

    move/from16 v14, v20

    invoke-static/range {v6 .. v14}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    xor-int/lit8 v6, v16, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v9

    invoke-static {v7, v8}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v10

    new-instance v7, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;

    invoke-direct {v7, v2, v1, v4}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$2;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/compose/theme/AndroidColorScheme;Lkotlin/jvm/functions/Function3;)V

    const v1, 0x625c384

    invoke-static {v1, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    or-int v13, v18, v17

    const/16 v14, 0x10

    const/4 v1, 0x0

    move-object v7, v0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v1

    move-object v12, v3

    invoke-static/range {v6 .. v14}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v0

    move/from16 v1, v16

    :goto_b
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_10

    new-instance v8, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$3;

    move-object v0, v8

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ToolbarButton$3;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public static final TutorialContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x189398e0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 v2, p2, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, p2, 0xe

    if-nez v2, :cond_2

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/2addr v2, p2

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    and-int/lit8 v3, v2, 0xb

    if-ne v3, v1, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_5
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->lambda-10:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/high16 v0, 0x30000

    and-int/lit8 v1, v2, 0xe

    or-int v7, v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v8, 0x1e

    move-object v0, p0

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$TutorialContent$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$TutorialContent$1;-><init>(Landroidx/compose/ui/Modifier;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final Umo(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 8

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x44db2b6d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Umo$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Umo$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    sget-object v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Umo$2;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Umo$2;

    and-int/lit8 v1, p3, 0x70

    or-int/lit16 v6, v1, 0x180

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x18

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Umo$3;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Umo$3;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/ui/Modifier;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public static final WidgetConfigureButton(ZLcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Landroidx/compose/runtime/Composer;II)V
    .locals 9

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x781b395a

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/theme/AndroidColorScheme;

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_1

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, p4}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    invoke-static {v1, p4}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v1

    :cond_1
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v1, v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v4

    invoke-static {v2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v3

    const/16 v2, 0x10

    int-to-float v2, v2

    sget-object v5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p2, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;

    invoke-direct {v5, v0, v1, p3, p1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$1;-><init>(Lcom/android/compose/theme/AndroidColorScheme;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;)V

    const v0, -0x25e1f87e

    invoke-static {v0, p4, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    and-int/lit8 v0, p5, 0xe

    const v1, 0x30d80

    or-int v7, v0, v1

    const/16 v8, 0x10

    const/4 v6, 0x0

    move v0, p0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_2

    new-instance v7, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$2;

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetConfigureButton$2;-><init>(ZLcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/widgets/WidgetConfigurator;II)V

    iput-object v7, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public static final WidgetContent(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroid/util/SizeF;ZLcom/android/systemui/communal/widgets/WidgetConfigurator;Landroidx/compose/ui/Modifier;ILcom/android/systemui/communal/ui/compose/ContentListState;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v11, 0x1

    move-object/from16 v12, p8

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x76a89030

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p5

    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isFocusable()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v3, 0x38

    invoke-static {v1, v2, v12, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    const v1, -0x3c6ce36a

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v1, :cond_1

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_2

    :cond_1
    iget-object v1, v10, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, 0x7f130044

    invoke-static {v0, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f130043

    invoke-static {v0, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f130042

    invoke-static {v0, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v9, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->_selectedKey:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0, v12}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v5, p7

    if-eqz v0, :cond_5

    iget-object v4, v5, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move/from16 v16, v8

    :goto_1
    move-object/from16 v17, v4

    check-cast v17, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-interface/range {v17 .. v17}, Lcom/android/systemui/communal/domain/model/CommunalContentModel;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v16, v16, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/16 v16, -0x1

    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    goto :goto_3

    :cond_5
    move-object v4, v7

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, v10, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->inQuietMode:Z

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v11, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$1$1;

    invoke-direct {v11, v9, v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$1$1;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v8, v11}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v13, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_6
    move-object v11, v13

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;

    move-object/from16 p8, v0

    move/from16 v5, p6

    move-object/from16 v17, v7

    move-object/from16 v7, p7

    move-object/from16 v18, v13

    move-object/from16 p5, v15

    const/4 v13, 0x0

    move-object v15, v8

    move-object/from16 v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$2$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;Lcom/android/systemui/communal/ui/compose/ContentListState;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    invoke-static {v15, v13, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v11, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    goto :goto_5

    :cond_7
    move-object/from16 v17, v7

    move-object/from16 v18, v13

    move-object/from16 p5, v15

    const/4 v13, 0x0

    :goto_5
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v0, v13}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v1, v12, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v12, v11}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v5, v12, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_f

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_8

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v2, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_9

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    invoke-static {v1, v12, v1, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_a
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {v11, v0}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/communal/ui/compose/extensions/ModifierExtKt;->allowGestures(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$1;

    move-object/from16 v15, p2

    invoke-direct {v0, v10, v15, v9}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$1;-><init>(Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroid/util/SizeF;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    sget-object v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$2;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$2;

    const v3, 0x118d4a81

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_b

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v3, :cond_c

    :cond_b
    new-instance v4, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$3$1;

    invoke-direct {v4, v14}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$3$3$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v7, 0x8

    const/4 v3, 0x0

    const/16 v6, 0x180

    move-object v5, v12

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const v0, -0x3c6cd2e1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    instance-of v0, v9, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    if-eqz v0, :cond_d

    iget-object v0, v10, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_d

    if-eqz p4, :cond_d

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v8, v11, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    shr-int/lit8 v0, p9, 0x9

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x40

    shr-int/lit8 v1, p9, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int v5, v0, v1

    const/4 v6, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move-object v4, v12

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->WidgetConfigureButton(ZLcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroidx/compose/ui/Modifier;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Landroidx/compose/runtime/Composer;II)V

    :cond_d
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_e

    new-instance v12, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v18

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$WidgetContent$4;-><init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroid/util/SizeF;ZLcom/android/systemui/communal/widgets/WidgetConfigurator;Landroidx/compose/ui/Modifier;ILcom/android/systemui/communal/ui/compose/ContentListState;II)V

    iput-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void

    :cond_f
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17
.end method

.method public static final access$ButtonToEditWidgets(Landroidx/compose/animation/AnimatedVisibilityScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x6bc13745

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$1;-><init>(Landroidx/compose/animation/AnimatedVisibilityScope;Lkotlin/jvm/functions/Function0;)V

    const v4, -0x5bcbe4fe

    invoke-static {v4, p3, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    and-int/lit16 v3, p4, 0x380

    or-int/lit16 v7, v3, 0x6036

    const/16 v8, 0x8

    const/4 v4, 0x0

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup-K5zGePQ(Landroidx/compose/ui/Alignment;JLkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$2;-><init>(Landroidx/compose/animation/AnimatedVisibilityScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final access$CommunalContent(Lcom/android/systemui/communal/domain/model/CommunalContentModel;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroid/util/SizeF;ZLandroidx/compose/ui/Modifier;Lcom/android/systemui/communal/widgets/WidgetConfigurator;ILcom/android/systemui/communal/ui/compose/ContentListState;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move/from16 v14, p10

    move-object/from16 v0, p9

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x78175e8a

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, p11, 0x10

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v15, p4

    :goto_0
    and-int/lit8 v2, p11, 0x20

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v16, v2

    goto :goto_1

    :cond_1
    move-object/from16 v16, p5

    :goto_1
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    instance-of v2, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    const/4 v12, 0x0

    if-eqz v2, :cond_2

    const v2, -0x5d9e43ad

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    and-int/lit16 v2, v14, 0x1c00

    const v4, 0x1000248

    or-int/2addr v2, v4

    shr-int/lit8 v4, v14, 0x3

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    shl-int/lit8 v5, v14, 0x3

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v14

    or-int v11, v2, v4

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, v16

    move-object v7, v15

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object v10, v0

    move v13, v12

    move/from16 v12, v17

    invoke-static/range {v2 .. v12}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->WidgetContent(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;Landroid/util/SizeF;ZLcom/android/systemui/communal/widgets/WidgetConfigurator;Landroidx/compose/ui/Modifier;ILcom/android/systemui/communal/ui/compose/ContentListState;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    move-object/from16 v8, p1

    goto/16 :goto_3

    :cond_2
    move v13, v12

    instance-of v2, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetPlaceholder;

    if-eqz v2, :cond_3

    const v2, -0x5d9e4283

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v2, v14, 0xc

    and-int/lit8 v2, v2, 0xe

    invoke-static {v15, v0, v2, v13}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->HighlightedItem(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_3
    instance-of v2, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;

    if-eqz v2, :cond_4

    const v2, -0x5d9e421d

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;

    shr-int/lit8 v3, v14, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/lit8 v6, v3, 0x48

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->DisabledWidgetPlaceholder(Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$PendingWidget;

    if-eqz v2, :cond_5

    const v2, -0x5d9e419c

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$PendingWidget;

    shr-int/lit8 v3, v14, 0x9

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x8

    invoke-static {v2, v15, v0, v3, v13}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->PendingWidgetPlaceholder(Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$PendingWidget;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_5
    instance-of v2, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$CtaTileInViewMode;

    if-eqz v2, :cond_6

    const v2, -0x5d9e413d

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v2, v14, 0x9

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v8, p1

    move v9, v13

    invoke-static {v8, v15, v0, v2, v9}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->CtaTileInViewModeContent(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :cond_6
    move-object/from16 v8, p1

    move v9, v13

    instance-of v2, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;

    if-eqz v2, :cond_7

    const v2, -0x5d9e40e1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;

    shr-int/lit8 v2, v14, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v6, v2, 0x48

    const/4 v7, 0x0

    move-object/from16 v2, p8

    move-object v4, v15

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->SmartspaceContent(Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/communal/domain/model/CommunalContentModel$Smartspace;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :cond_7
    instance-of v2, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Tutorial;

    if-eqz v2, :cond_8

    const v2, -0x5d9e407e

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v2, v14, 0xc

    and-int/lit8 v2, v2, 0xe

    invoke-static {v15, v0, v2, v9}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->TutorialContent(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :cond_8
    instance-of v2, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$Umo;

    if-eqz v2, :cond_9

    const v2, -0x5d9e403d

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v2, v14, 0x9

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x8

    invoke-static {v8, v15, v0, v2, v9}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->Umo(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :cond_9
    const v2, -0x5d9e401f

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_a

    new-instance v13, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalContent$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalContent$1;-><init>(Lcom/android/systemui/communal/domain/model/CommunalContentModel;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroid/util/SizeF;ZLandroidx/compose/ui/Modifier;Lcom/android/systemui/communal/widgets/WidgetConfigurator;ILcom/android/systemui/communal/ui/compose/ContentListState;Landroid/widget/RemoteViews$InteractionHandler;II)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final access$CommunalHubLazyGrid-pnlYLlI(Landroidx/compose/foundation/layout/BoxScope;Ljava/util/List;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/State;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v12, p14

    move-object/from16 v11, p13

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x7fd4e1dc

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v10, p0

    invoke-interface {v10, v7, v8}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, -0x19ee45e9

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/high16 v1, 0xe000000

    and-int/2addr v1, v12

    const/high16 v2, 0x6000000

    xor-int/2addr v1, v2

    const/high16 v3, 0x4000000

    const/4 v6, 0x0

    if-le v1, v3, :cond_0

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    and-int v1, v12, v2

    if-ne v1, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v6

    :goto_0
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v1, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_4

    :cond_3
    new-instance v2, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$gridModifier$1$1;

    invoke-direct {v2, v15}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$gridModifier$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const v1, -0x19ee457a

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object/from16 v1, p2

    instance-of v9, v1, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    if-eqz v9, :cond_1b

    iget-object v9, v14, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput-object v9, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    shr-int/lit8 v9, v12, 0x12

    and-int/lit8 v9, v9, 0xe

    or-int/lit8 v9, v9, 0x40

    shr-int/lit8 v6, v12, 0x15

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v9, v6

    const v6, 0x23381a82

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v3, :cond_5

    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v6, v11}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v6

    invoke-static {v6, v11}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v6

    :cond_5
    check-cast v6, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v6, v6, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v1, 0xc1e996d

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v1, v9, 0xe

    xor-int/lit8 v1, v1, 0x6

    const/4 v10, 0x4

    if-le v1, v10, :cond_6

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    :cond_6
    and-int/lit8 v4, v9, 0x6

    if-ne v4, v10, :cond_8

    :cond_7
    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v4, v4, v16

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_a

    if-ne v10, v3, :cond_9

    goto :goto_2

    :cond_9
    move-object/from16 v4, p10

    goto :goto_3

    :cond_a
    :goto_2
    new-instance v10, Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    move-object/from16 v4, p10

    invoke-direct {v10, v13, v14, v6, v4}, Lcom/android/systemui/communal/ui/compose/GridDragDropState;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_3
    check-cast v10, Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v6, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;

    const/4 v15, 0x0

    invoke-direct {v6, v10, v13, v15}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$rememberGridDragDropState$1;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11, v10, v6}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iput-object v10, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v15

    move-object/from16 v22, v2

    new-instance v2, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-wide/from16 v18, p5

    move-object/from16 v20, p2

    invoke-direct/range {v16 .. v21}, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;JLcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6, v15, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    const v0, -0x1d53b3a4

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v11}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, v11}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v0

    :cond_b
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v6, v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v0, -0x33f12a1a    # -3.744348E7f

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/runtime/MutableFloatState;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    const/16 v2, 0x3c

    int-to-float v2, v2

    sget-object v17, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v17

    const v0, -0x33f128b6    # -3.7444904E7f

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v0, 0x4

    if-le v1, v0, :cond_d

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    and-int/lit8 v2, v9, 0x6

    if-ne v2, v0, :cond_f

    :cond_e
    const/4 v0, 0x1

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_11

    if-ne v2, v3, :cond_10

    goto :goto_5

    :cond_10
    move v14, v1

    move-object v12, v3

    move-object/from16 v21, v5

    move-object/from16 v17, v8

    move-object/from16 v20, v15

    move-object/from16 v19, v22

    const/4 v8, 0x0

    goto :goto_6

    :cond_11
    :goto_5
    new-instance v2, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;

    move-object v0, v2

    move v14, v1

    move-object/from16 v1, p7

    move-object/from16 v20, v15

    move-object/from16 v19, v22

    const/16 v18, 0x0

    move-object v15, v2

    move-object/from16 v2, p8

    move-object v12, v3

    move-object v3, v6

    move-object/from16 v4, v16

    move-object/from16 v21, v5

    move/from16 v5, v17

    move-object/from16 v17, v8

    move/from16 v8, v18

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;FLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v15

    :goto_6
    check-cast v2, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetState;

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v3, -0x33f126f3    # -3.7446708E7f

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v3, 0x4

    if-le v14, v3, :cond_12

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_12
    and-int/lit8 v4, v9, 0x6

    if-ne v4, v3, :cond_14

    :cond_13
    const/4 v6, 0x1

    goto :goto_7

    :cond_14
    move v6, v8

    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v6, :cond_15

    if-ne v3, v12, :cond_16

    :cond_15
    new-instance v3, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v13, v4}, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;-><init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v11, v1, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x7cc0979c

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v2, v11}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$1;

    new-instance v2, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {v7, v1, v2}, Landroidx/compose/foundation/draganddrop/DragAndDropTargetKt;->dragAndDropTarget(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$dragAndDropTarget$2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v10, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v1, v17

    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget v2, v11, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v5, v11, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_1a

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_17

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_17
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_8
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v3, v11, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_18

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_18
    invoke-static {v2, v11, v2, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_19
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_9

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0

    :cond_1b
    move-object/from16 v19, v2

    move-object/from16 v21, v5

    move v8, v6

    sget-object v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->GridHeight:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v20, v0

    :goto_9
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v8, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    sget-object v0, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->FULL:Lcom/android/systemui/communal/shared/model/CommunalContentSize;

    invoke-virtual {v0}, Lcom/android/systemui/communal/shared/model/CommunalContentSize;->getSpan()I

    move-result v0

    invoke-direct {v8, v0}, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;-><init>(I)V

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    sget-object v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->ItemSpacing:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v9

    invoke-static {v1}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v10

    new-instance v12, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;

    move-object v0, v12

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, p8

    move-object/from16 v5, p12

    move-object/from16 v6, p4

    move-object/from16 v7, p11

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/communal/ui/compose/ContentListState;Landroid/widget/RemoteViews$InteractionHandler;Landroidx/compose/runtime/State;Lcom/android/systemui/communal/widgets/WidgetConfigurator;)V

    move/from16 v14, p14

    shr-int/lit8 v0, v14, 0xc

    and-int/lit16 v0, v0, 0x380

    const/high16 v1, 0x1b0000

    or-int/2addr v0, v1

    and-int/lit16 v1, v14, 0x1c00

    or-int v15, v0, v1

    const/4 v4, 0x0

    const/16 v16, 0x190

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, p7

    move-object/from16 v3, p3

    move-object v5, v9

    move-object v6, v10

    move/from16 v8, v17

    move-object v9, v12

    move-object v10, v11

    move-object/from16 v17, v11

    move v11, v15

    move/from16 v12, v16

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->LazyHorizontalGrid(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_1c

    new-instance v14, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v23, v14

    move/from16 v14, p14

    move-object/from16 v24, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$CommunalHubLazyGrid$3;-><init>(Landroidx/compose/foundation/layout/BoxScope;Ljava/util/List;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/State;JLandroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/communal/widgets/WidgetConfigurator;Landroid/widget/RemoteViews$InteractionHandler;II)V

    move-object/from16 v1, v23

    move-object/from16 v0, v24

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final access$EmptyStateCta(Landroidx/compose/foundation/layout/PaddingValues;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x688ce012

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/compose/theme/AndroidColorScheme;

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->GridHeight:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v0, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Transparent:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    const/16 v6, 0xe

    move-wide v0, v1

    move-wide v2, v3

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/CardDefaults;->cardColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;

    move-result-object v2

    const/4 v0, 0x3

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    iget-wide v3, v7, Lcom/android/compose/theme/AndroidColorScheme;->secondary:J

    invoke-static {v0, v3, v4}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v4

    const/16 v0, 0x50

    int-to-float v0, v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$EmptyStateCta$1;

    invoke-direct {v0, v7, p1}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$EmptyStateCta$1;-><init>(Lcom/android/compose/theme/AndroidColorScheme;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;)V

    const v3, -0x25e7e920

    invoke-static {v3, p2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/4 v3, 0x0

    const/high16 v7, 0x30000

    const/16 v9, 0x8

    move-object v0, v8

    move-object v6, p2

    move v8, v9

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/CardKt;->Card(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$EmptyStateCta$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$EmptyStateCta$2;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final access$Toolbar(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p7

    move-object/from16 v15, p6

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x58ce94a7

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v13, 0xe

    if-nez v0, :cond_1

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    and-int/lit8 v1, v13, 0x70

    if-nez v1, :cond_3

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v13, 0x380

    const/16 v7, 0x100

    if-nez v1, :cond_5

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v7

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v13, 0x1c00

    if-nez v1, :cond_7

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    const v1, 0xe000

    and-int/2addr v1, v13

    move-object/from16 v8, p4

    if-nez v1, :cond_9

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x4000

    goto :goto_5

    :cond_8
    const/16 v1, 0x2000

    :goto_5
    or-int/2addr v0, v1

    :cond_9
    const/high16 v1, 0x70000

    and-int/2addr v1, v13

    move-object/from16 v6, p5

    if-nez v1, :cond_b

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v1, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v1, 0x10000

    :goto_6
    or-int/2addr v0, v1

    :cond_b
    move v5, v0

    const v0, 0x5b6db

    and-int/2addr v0, v5

    const v1, 0x12492

    if-ne v0, v1, :cond_d

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_b

    :cond_d
    :goto_7
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v9, :cond_e

    move v0, v4

    goto :goto_8

    :cond_e
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_8
    const/16 v16, 0xc00

    const/16 v17, 0x16

    const/4 v1, 0x0

    const-string v2, "RemoveButtonAlphaAnimation"

    const/4 v3, 0x0

    move v14, v4

    move-object v4, v15

    move v8, v5

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v5, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v18

    sget-object v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v20, Lcom/android/systemui/communal/ui/compose/Dimensions;->ToolbarPaddingTop:F

    sget v21, Lcom/android/systemui/communal/ui/compose/Dimensions;->ToolbarPaddingHorizontal:F

    const/16 v22, 0x0

    const/16 v23, 0x8

    move/from16 v19, v21

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, -0x70e60947    # -7.5909995E-30f

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v1, v8, 0x380

    const/4 v2, 0x0

    if-ne v1, v7, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    move v1, v2

    :goto_9
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_10

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_11

    :cond_10
    new-instance v3, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$1$1;

    invoke-direct {v3, v11}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v3}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget v2, v15, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, v15, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_16

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_12

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_a
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v3, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_13

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    invoke-static {v2, v15, v2, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_14
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const/4 v0, 0x1

    xor-int/lit8 v16, v9, 0x1

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v7, v5, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v0, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->INSTANCE:Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shr-int/lit8 v0, v8, 0x9

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v4, v0, 0xc00

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p4

    move/from16 v18, v4

    move-object v4, v15

    move-object v14, v5

    move/from16 v5, v18

    move-object v9, v6

    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->ToolbarButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v7, v14, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v3

    invoke-static {v2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v4

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;

    invoke-direct {v0, v9, v12, v10}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$2$1;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    const v2, 0x208217b7

    invoke-static {v2, v15, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const v0, 0x30d80

    and-int/lit8 v2, v8, 0xe

    or-int v9, v2, v0

    const/16 v17, 0x10

    const/4 v6, 0x0

    move/from16 v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v15

    move-object/from16 v24, v7

    move v7, v9

    move v9, v8

    move/from16 v8, v17

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/BiasAlignment;

    move-object/from16 v1, v24

    invoke-virtual {v1, v14, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/communal/ui/compose/ComposableSingletons$CommunalHubKt;->lambda-4:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shr-int/lit8 v0, v9, 0xc

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v5, v0, 0xc00

    const/4 v6, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p5

    move-object v4, v15

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->ToolbarButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_b
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_15

    new-instance v9, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;

    move-object v0, v9

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$Toolbar$3;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void

    :cond_16
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final access$filledButtonColors(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ButtonColors;
    .locals 7

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x3463c67a    # -2.0476684E7f

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/theme/AndroidColorScheme;

    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    iget-wide v2, v0, Lcom/android/compose/theme/AndroidColorScheme;->primary:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v0, Lcom/android/compose/theme/AndroidColorScheme;->onPrimary:J

    const/16 v6, 0xc

    move-wide v0, v2

    move-wide v2, v4

    move-object v4, p0

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method

.method public static final access$keyAtIndexIfEditable(ILjava/util/List;)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/domain/model/CommunalContentModel;

    invoke-interface {p0}, Lcom/android/systemui/communal/domain/model/CommunalContentModel;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final isPointerWithinEnabledRemoveButton-_UaWb3I(ZLandroidx/compose/ui/geometry/Offset;Landroidx/compose/ui/layout/LayoutCoordinates;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    iget-wide p1, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/geometry/Rect;->contains-k-4lQ0M(J)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
