.class public abstract Lcom/android/settingslib/spaprivileged/template/app/AppListKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppList(Lcom/android/settingslib/spaprivileged/template/app/AppListInput;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x1f315329

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppList$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppList$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/AppListInput;)V

    const/16 v1, 0x8

    invoke-static {p0, v0, p1, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt;->AppListImpl(Lcom/android/settingslib/spaprivileged/template/app/AppListInput;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppList$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppList$2;-><init>(Lcom/android/settingslib/spaprivileged/template/app/AppListInput;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final AppListImpl(Lcom/android/settingslib/spaprivileged/template/app/AppListInput;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x201b026d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;->config:Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;

    iget-object v0, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;->userIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const v0, -0x75fad27a

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shr-int/lit8 v1, p3, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v3, v4, p2, v0}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v0

    iget v3, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p2, v2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v6, p2, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_0

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_0
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-static {v3, p2, v3, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->spinnerOptionsFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    const/16 v2, 0x38

    invoke-static {v0, v7, p2, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iget-object v3, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->optionFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/16 v4, 0x40

    invoke-static {v0, v3, p2, v4}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt;->SpinnerOptions(Landroidx/compose/runtime/State;Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/compose/runtime/Composer;I)V

    iget-object v0, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->appListDataFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-static {v0, v7, p2, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iget v4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;->bottomPadding:F

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;->noItemMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;->listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListInput;->header:Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt;->AppListWidget--jt2gSs(Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;FLjava/lang/String;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListImpl$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListImpl$2;-><init>(Lcom/android/settingslib/spaprivileged/template/app/AppListInput;Lkotlin/jvm/functions/Function2;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v7
.end method

.method public static final AppListWidget--jt2gSs(Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;FLjava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v0, p5

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0xbbf5e0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v6, 0xe

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v6

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    and-int/lit8 v7, v6, 0x70

    move-object/from16 v15, p1

    if-nez v7, :cond_3

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    :cond_3
    and-int/lit16 v7, v6, 0x380

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v2, v7

    :cond_5
    and-int/lit16 v7, v6, 0x1c00

    if-nez v7, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v2, v7

    :cond_7
    const v7, 0xe000

    and-int/2addr v7, v6

    if-nez v7, :cond_9

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x4000

    goto :goto_5

    :cond_8
    const/16 v7, 0x2000

    :goto_5
    or-int/2addr v2, v7

    :cond_9
    const v7, 0xb6db

    and-int/2addr v7, v2

    const/16 v8, 0x2492

    if-ne v7, v8, :cond_b

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_b
    :goto_6
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v7, 0x265248b4

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v7, 0x2e6b208a

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v8, :cond_c

    sget-object v7, Lcom/android/settingslib/spa/framework/compose/TimeMeasurer$Companion$EmptyTimeMeasurer;->INSTANCE:Lcom/android/settingslib/spa/framework/compose/TimeMeasurer$Companion$EmptyTimeMeasurer;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v7, Lcom/android/settingslib/spa/framework/compose/TimeMeasurer$Companion$EmptyTimeMeasurer;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/spaprivileged/model/app/AppListData;

    if-nez v9, :cond_d

    goto/16 :goto_8

    :cond_d
    iget-object v10, v9, Lcom/android/settingslib/spaprivileged/model/app/AppListData;->appEntries:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x54a3b214

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    shr-int/lit8 v2, v2, 0x6

    and-int/lit8 v2, v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x8cb15fd

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v5, :cond_e

    const v2, 0x7f141a2b

    invoke-static {v0, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_e
    move-object v2, v5

    :goto_7
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v0, v8}, Lcom/android/settingslib/spa/widget/ui/TextKt;->PlaceholderTitle(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_f

    new-instance v8, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;FLjava/lang/String;I)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void

    :cond_10
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-static {v0}, Lcom/android/settingslib/spa/framework/compose/KeyboardsKt;->rememberLazyListStateAndHideKeyboardWhenStartScroll(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v8

    const/4 v2, 0x7

    const/4 v11, 0x0

    invoke-static {v11, v11, v4, v2}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v2

    new-instance v14, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;

    iget v9, v9, Lcom/android/settingslib/spaprivileged/model/app/AppListData;->option:I

    invoke-direct {v14, v10, v3, v9, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$1$2;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;ILcom/android/settingslib/spaprivileged/model/app/AppListModel;)V

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x6

    const/16 v18, 0xf8

    move-object v9, v2

    move-object v2, v14

    move/from16 v14, v16

    move-object v15, v2

    move-object/from16 v16, v0

    invoke-static/range {v7 .. v18}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v8, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$AppListWidget$2;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;FLjava/lang/String;I)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method

.method public static final SpinnerOptions(Landroidx/compose/runtime/State;Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x2ff3143e

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$SpinnerOptions$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$SpinnerOptions$1;-><init>(Ljava/util/List;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-static {p1, p2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$SpinnerOptions$2;

    invoke-direct {v3, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$SpinnerOptions$2;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    invoke-static {v0, v2, v3, p2, v1}, Lcom/android/settingslib/spa/widget/ui/SpinnerKt;->Spinner(Ljava/util/List;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$SpinnerOptions$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spaprivileged/template/app/AppListKt$SpinnerOptions$3;-><init>(Landroidx/compose/runtime/State;Lkotlinx/coroutines/flow/MutableStateFlow;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method
