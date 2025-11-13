.class public abstract Landroidx/navigation/compose/NavHostKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p10

    move/from16 v11, p11

    const/16 v3, 0x10

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/16 v7, 0x80

    move-object/from16 v8, p9

    check-cast v8, Landroidx/compose/runtime/ComposerImpl;

    const v9, -0x751a66d8

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v9, 0x1

    and-int/lit8 v12, v11, 0x1

    if-eqz v12, :cond_0

    or-int/lit8 v12, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v12, v10, 0x6

    if-nez v12, :cond_2

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v6

    goto :goto_0

    :cond_1
    move v12, v5

    :goto_0
    or-int/2addr v12, v10

    goto :goto_1

    :cond_2
    move v12, v10

    :goto_1
    and-int/2addr v5, v11

    if-eqz v5, :cond_3

    or-int/lit8 v12, v12, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_5

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    or-int/2addr v12, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, v11, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v12, v12, 0x180

    :cond_6
    move-object/from16 v6, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v10, 0x180

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x100

    goto :goto_4

    :cond_8
    move v13, v7

    :goto_4
    or-int/2addr v12, v13

    :goto_5
    and-int/lit8 v13, v11, 0x8

    if-eqz v13, :cond_a

    or-int/lit16 v12, v12, 0xc00

    :cond_9
    move-object/from16 v14, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v14, v10, 0xc00

    if-nez v14, :cond_9

    move-object/from16 v14, p3

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/16 v15, 0x800

    goto :goto_6

    :cond_b
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v12, v15

    :goto_7
    and-int/2addr v3, v11

    if-eqz v3, :cond_d

    or-int/lit16 v12, v12, 0x6000

    :cond_c
    move-object/from16 v15, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v15, v10, 0x6000

    if-nez v15, :cond_c

    move-object/from16 v15, p4

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v12, v12, v16

    :goto_9
    and-int/2addr v4, v11

    const/high16 v17, 0x30000

    if-eqz v4, :cond_f

    or-int v12, v12, v17

    move-object/from16 v9, p5

    goto :goto_b

    :cond_f
    and-int v17, v10, v17

    move-object/from16 v9, p5

    if-nez v17, :cond_11

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v12, v12, v18

    :cond_11
    :goto_b
    const/high16 v18, 0x180000

    and-int v19, v10, v18

    if-nez v19, :cond_13

    and-int/lit8 v19, v11, 0x40

    move-object/from16 v0, p6

    if-nez v19, :cond_12

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    const/high16 v21, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v21, 0x80000

    :goto_c
    or-int v12, v12, v21

    goto :goto_d

    :cond_13
    move-object/from16 v0, p6

    :goto_d
    const/high16 v21, 0xc00000

    and-int v22, v10, v21

    if-nez v22, :cond_16

    and-int/lit16 v0, v11, 0x80

    if-nez v0, :cond_14

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_14
    move-object/from16 v0, p7

    :cond_15
    const/high16 v23, 0x400000

    :goto_e
    or-int v12, v12, v23

    :goto_f
    const/16 v7, 0x100

    goto :goto_10

    :cond_16
    move-object/from16 v0, p7

    goto :goto_f

    :goto_10
    and-int/2addr v7, v11

    const/high16 v23, 0x6000000

    if-eqz v7, :cond_17

    or-int v12, v12, v23

    move-object/from16 v0, p8

    goto :goto_12

    :cond_17
    and-int v23, v10, v23

    move-object/from16 v0, p8

    if-nez v23, :cond_19

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    const/high16 v24, 0x4000000

    goto :goto_11

    :cond_18
    const/high16 v24, 0x2000000

    :goto_11
    or-int v12, v12, v24

    :cond_19
    :goto_12
    const v24, 0x2492493

    and-int v0, v12, v24

    const v6, 0x2492492

    if-ne v0, v6, :cond_1b

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_13

    :cond_1a
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object/from16 v21, p7

    move-object v6, v9

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v9, p8

    goto/16 :goto_2c

    :cond_1b
    :goto_13
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v0, 0x1

    and-int/lit8 v6, v10, 0x1

    const v24, -0x380001

    const/4 v0, 0x0

    if-eqz v6, :cond_1f

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v3, v11, 0x40

    if-eqz v3, :cond_1d

    and-int v12, v12, v24

    :cond_1d
    const/16 v3, 0x80

    and-int/2addr v3, v11

    if-eqz v3, :cond_1e

    const v3, -0x1c00001

    and-int/2addr v12, v3

    :cond_1e
    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object v6, v9

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v9, p7

    move-object/from16 v15, p8

    goto :goto_1b

    :cond_1f
    :goto_14
    if-eqz v5, :cond_20

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_15

    :cond_20
    move-object/from16 v5, p2

    :goto_15
    if-eqz v13, :cond_21

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    goto :goto_16

    :cond_21
    move-object v6, v14

    :goto_16
    if-eqz v3, :cond_22

    sget-object v3, Landroidx/navigation/compose/NavHostKt$NavHost$23;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$23;

    move-object v15, v3

    :cond_22
    if-eqz v4, :cond_23

    sget-object v3, Landroidx/navigation/compose/NavHostKt$NavHost$24;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$24;

    move-object v9, v3

    :cond_23
    and-int/lit8 v3, v11, 0x40

    if-eqz v3, :cond_24

    and-int v12, v12, v24

    move-object v3, v15

    :goto_17
    const/16 v4, 0x80

    goto :goto_18

    :cond_24
    move-object/from16 v3, p6

    goto :goto_17

    :goto_18
    and-int/2addr v4, v11

    if-eqz v4, :cond_25

    const v4, -0x1c00001

    and-int/2addr v4, v12

    move v12, v4

    move-object v4, v9

    goto :goto_19

    :cond_25
    move-object/from16 v4, p7

    :goto_19
    if-eqz v7, :cond_26

    move-object v7, v3

    move-object v3, v5

    move-object v5, v15

    move-object v15, v0

    :goto_1a
    move-object/from16 v28, v9

    move-object v9, v4

    move-object v4, v6

    move-object/from16 v6, v28

    goto :goto_1b

    :cond_26
    move-object v7, v3

    move-object v3, v5

    move-object v5, v15

    move-object/from16 v15, p8

    goto :goto_1a

    :goto_1b
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v13, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->LocalLifecycleOwner:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v8}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->getCurrent(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v14

    if-eqz v14, :cond_53

    invoke-interface {v14}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    const-string v14, "graph"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    const-string v14, "composable"

    iget-object v0, v1, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v0, v14}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    instance-of v14, v0, Landroidx/navigation/compose/ComposeNavigator;

    if-eqz v14, :cond_27

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator;

    goto :goto_1c

    :cond_27
    const/4 v0, 0x0

    :goto_1c
    if-nez v0, :cond_29

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_28

    new-instance v13, Landroidx/navigation/compose/NavHostKt$NavHost$composeNavigator$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v8, v9

    move-object v9, v15

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$composeNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_28
    return-void

    :cond_29
    invoke-virtual {v0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v14

    iget-object v14, v14, Landroidx/navigation/NavigatorState;->backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 v2, 0x0

    invoke-static {v14, v8, v2}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v10, :cond_2a

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2a
    check-cast v2, Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_2b

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v25, v4

    sget-object v4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v11, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_1d

    :cond_2b
    move-object/from16 v25, v4

    :goto_1d
    check-cast v11, Landroidx/compose/runtime/MutableState;

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v26, v3

    const/4 v3, 0x1

    if-le v4, v3, :cond_2c

    move v4, v3

    goto :goto_1e

    :cond_2c
    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    or-int v16, v16, v20

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v16, :cond_2d

    if-ne v3, v10, :cond_2e

    :cond_2d
    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    const/16 v16, 0x0

    move-object/from16 p2, v3

    move-object/from16 p3, v0

    move-object/from16 p4, v2

    move-object/from16 p5, v14

    move-object/from16 p6, v11

    move-object/from16 p7, v16

    invoke-direct/range {p2 .. p7}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2e
    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object/from16 p2, v14

    const/4 v14, 0x0

    invoke-static {v4, v3, v8, v14, v14}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2f

    if-ne v4, v10, :cond_30

    :cond_2f
    new-instance v4, Landroidx/navigation/compose/NavHostKt$NavHost$26$1;

    invoke-direct {v4, v1, v13}, Landroidx/navigation/compose/NavHostKt$NavHost$26$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v4, v8}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-static {v8}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    move-result-object v3

    iget-object v4, v1, Landroidx/navigation/NavController;->visibleEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const/4 v13, 0x0

    invoke-static {v4, v8, v13}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_31

    new-instance v13, Landroidx/navigation/compose/NavHostKt$NavHost$visibleEntries$2$1;

    invoke-direct {v13, v4}, Landroidx/navigation/compose/NavHostKt$NavHost$visibleEntries$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_31
    move-object v4, v13

    check-cast v4, Landroidx/compose/runtime/State;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v10, :cond_32

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_32
    check-cast v14, Ljava/util/Map;

    const v1, 0x26f15439

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v13, :cond_4e

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v16, 0x380000

    and-int v16, v12, v16

    move-object/from16 v27, v3

    xor-int v3, v16, v18

    move-object/from16 v16, v14

    const/high16 v14, 0x100000

    if-le v3, v14, :cond_33

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    :cond_33
    and-int v3, v12, v18

    if-ne v3, v14, :cond_35

    :cond_34
    const/4 v3, 0x1

    goto :goto_1f

    :cond_35
    const/4 v3, 0x0

    :goto_1f
    or-int/2addr v1, v3

    const v3, 0xe000

    and-int/2addr v3, v12

    const/16 v14, 0x4000

    if-ne v3, v14, :cond_36

    const/4 v3, 0x1

    goto :goto_20

    :cond_36
    const/4 v3, 0x0

    :goto_20
    or-int/2addr v1, v3

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_37

    if-ne v3, v10, :cond_38

    :cond_37
    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$finalEnter$1$1;

    invoke-direct {v3, v0, v7, v5, v11}, Landroidx/navigation/compose/NavHostKt$NavHost$finalEnter$1$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_38
    move-object v1, v3

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v14, 0x1c00000

    and-int/2addr v14, v12

    xor-int v14, v14, v21

    move-object/from16 p9, v7

    const/high16 v7, 0x800000

    if-le v14, v7, :cond_39

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3a

    :cond_39
    and-int v14, v12, v21

    if-ne v14, v7, :cond_3b

    :cond_3a
    const/4 v7, 0x1

    goto :goto_21

    :cond_3b
    const/4 v7, 0x0

    :goto_21
    or-int/2addr v3, v7

    const/high16 v7, 0x70000

    and-int/2addr v7, v12

    const/high16 v14, 0x20000

    if-ne v7, v14, :cond_3c

    const/4 v7, 0x1

    goto :goto_22

    :cond_3c
    const/4 v7, 0x0

    :goto_22
    or-int/2addr v3, v7

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_3d

    if-ne v7, v10, :cond_3e

    :cond_3d
    new-instance v7, Landroidx/navigation/compose/NavHostKt$NavHost$finalExit$1$1;

    invoke-direct {v7, v0, v9, v6, v11}, Landroidx/navigation/compose/NavHostKt$NavHost$finalExit$1$1;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3e
    move-object v3, v7

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/high16 v7, 0xe000000

    and-int/2addr v7, v12

    const/high16 v14, 0x4000000

    if-ne v7, v14, :cond_3f

    const/16 v20, 0x1

    goto :goto_23

    :cond_3f
    const/16 v20, 0x0

    :goto_23
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v20, :cond_40

    if-ne v7, v10, :cond_41

    :cond_40
    new-instance v7, Landroidx/navigation/compose/NavHostKt$NavHost$finalSizeTransform$1$1;

    invoke-direct {v7, v15}, Landroidx/navigation/compose/NavHostKt$NavHost$finalSizeTransform$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_41
    check-cast v7, Lkotlin/jvm/functions/Function1;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v18, v15

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v17, :cond_42

    if-ne v15, v10, :cond_43

    :cond_42
    new-instance v15, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;

    invoke-direct {v15, v4, v0}, Landroidx/navigation/compose/NavHostKt$NavHost$27$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;)V

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_43
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v15, v8}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v10, :cond_44

    new-instance v14, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-direct {v14, v13}, Landroidx/compose/animation/core/SeekableTransitionState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_44
    check-cast v14, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_47

    const v13, -0x48a4a8e8

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object v13, v2

    check-cast v13, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v15, p2

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    or-int v17, v17, v19

    move-object/from16 v21, v9

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v17, :cond_46

    if-ne v9, v10, :cond_45

    goto :goto_24

    :cond_45
    move-object/from16 v22, v6

    goto :goto_25

    :cond_46
    :goto_24
    new-instance v9, Landroidx/navigation/compose/NavHostKt$NavHost$28$1;

    move-object/from16 v22, v6

    const/4 v6, 0x0

    invoke-direct {v9, v14, v15, v2, v6}, Landroidx/navigation/compose/NavHostKt$NavHost$28$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_25
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v13, v9}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v2, 0x0

    goto :goto_28

    :cond_47
    move-object/from16 v22, v6

    move-object/from16 v21, v9

    const v2, -0x48a158c4

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_49

    if-ne v6, v10, :cond_48

    goto :goto_26

    :cond_48
    const/4 v2, 0x0

    goto :goto_27

    :cond_49
    :goto_26
    new-instance v6, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    const/4 v2, 0x0

    invoke-direct {v6, v14, v13, v2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_27
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v13, v6}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_28
    const-string v6, "entry"

    const/16 v9, 0x38

    invoke-static {v14, v6, v8, v9}, Landroidx/compose/animation/core/TransitionKt;->rememberTransition(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v6

    move-object/from16 v14, v16

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v9, v13

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v9, :cond_4a

    if-ne v13, v10, :cond_4b

    :cond_4a
    new-instance v13, Landroidx/navigation/compose/NavHostKt$NavHost$30$1;

    move-object/from16 p2, v13

    move-object/from16 p3, v14

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v3

    move-object/from16 p7, v7

    move-object/from16 p8, v4

    invoke-direct/range {p2 .. p8}, Landroidx/navigation/compose/NavHostKt$NavHost$30$1;-><init>(Ljava/util/Map;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4b
    move-object v1, v13

    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget-object v16, Landroidx/navigation/compose/NavHostKt$NavHost$31;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$31;

    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$32;

    move-object/from16 v7, v27

    invoke-direct {v3, v7, v11, v4}, Landroidx/navigation/compose/NavHostKt$NavHost$32;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    const v7, 0x30ebd9dc

    invoke-static {v7, v3, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    shr-int/lit8 v3, v12, 0x3

    and-int/lit8 v3, v3, 0x70

    const v7, 0x36000

    or-int/2addr v3, v7

    and-int/lit16 v7, v12, 0x1c00

    or-int v19, v3, v7

    const/16 v20, 0x0

    move-object v12, v6

    move-object/from16 v13, v26

    move-object v3, v14

    move-object v14, v1

    move-object/from16 v9, v18

    move-object/from16 v15, v25

    move-object/from16 v18, v8

    invoke-static/range {v12 .. v20}, Landroidx/compose/animation/AnimatedContentKt;->AnimatedContent(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    iget-object v1, v6, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v1}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    iget-object v7, v6, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_4c

    if-ne v12, v10, :cond_4d

    :cond_4c
    new-instance v12, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;

    const/4 v10, 0x0

    move-object/from16 p2, v12

    move-object/from16 p3, v6

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move-object/from16 p7, v10

    invoke-direct/range {p2 .. p7}, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;-><init>(Landroidx/compose/animation/core/Transition;Ljava/util/Map;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4d
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v7, v12, v8}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    :goto_29
    const/4 v0, 0x0

    goto :goto_2a

    :cond_4e
    move-object/from16 v22, v6

    move-object/from16 p9, v7

    move-object/from16 v21, v9

    move-object v9, v15

    const/4 v2, 0x0

    goto :goto_29

    :goto_2a
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const-string v0, "dialog"

    move-object/from16 v1, p0

    iget-object v3, v1, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v3, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    instance-of v3, v0, Landroidx/navigation/compose/DialogNavigator;

    if-eqz v3, :cond_4f

    check-cast v0, Landroidx/navigation/compose/DialogNavigator;

    goto :goto_2b

    :cond_4f
    move-object v0, v2

    :goto_2b
    if-nez v0, :cond_51

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_50

    new-instance v13, Landroidx/navigation/compose/NavHostKt$NavHost$dialogNavigator$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    move-object/from16 v4, v25

    move-object/from16 v6, v22

    move-object/from16 v7, p9

    move-object/from16 v8, v21

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$dialogNavigator$1;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_50
    return-void

    :cond_51
    const/4 v2, 0x0

    invoke-static {v0, v8, v2}, Landroidx/navigation/compose/DialogHostKt;->DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v7, p9

    move-object/from16 v6, v22

    move-object/from16 v4, v25

    move-object/from16 v3, v26

    :goto_2c
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_52

    new-instance v13, Landroidx/navigation/compose/NavHostKt$NavHost$34;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, v21

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$NavHost$34;-><init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_52
    return-void

    :cond_53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavHost requires a ViewModelStoreOwner to be provided via LocalViewModelStoreOwner"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p10

    move/from16 v15, p12

    move/from16 v11, p14

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/16 v3, 0x80

    move-object/from16 v10, p11

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const v5, 0x6daffdb6

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v5, 0x1

    and-int/lit8 v6, v11, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-eqz v6, :cond_0

    or-int/lit8 v6, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v15, 0x6

    if-nez v6, :cond_2

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    or-int/2addr v6, v15

    goto :goto_1

    :cond_2
    move v6, v15

    :goto_1
    and-int/lit8 v9, v11, 0x2

    if-eqz v9, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v15, 0x30

    if-nez v9, :cond_5

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v2

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    or-int/2addr v6, v9

    :cond_5
    :goto_3
    and-int/lit8 v9, v11, 0x4

    if-eqz v9, :cond_7

    or-int/lit16 v6, v6, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v15, 0x180

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    move/from16 v16, v3

    :goto_4
    or-int v6, v6, v16

    :goto_5
    and-int/lit8 v16, v11, 0x8

    if-eqz v16, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v5, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v5, v15, 0xc00

    if-nez v5, :cond_9

    move-object/from16 v5, p3

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x800

    goto :goto_6

    :cond_b
    const/16 v18, 0x400

    :goto_6
    or-int v6, v6, v18

    :goto_7
    and-int/2addr v1, v11

    if-eqz v1, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move-object/from16 v7, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v7, v15, 0x6000

    if-nez v7, :cond_c

    move-object/from16 v7, p4

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/16 v20, 0x4000

    goto :goto_8

    :cond_e
    const/16 v20, 0x2000

    :goto_8
    or-int v6, v6, v20

    :goto_9
    and-int/lit8 v20, v11, 0x20

    const/high16 v21, 0x30000

    if-eqz v20, :cond_f

    or-int v6, v6, v21

    move-object/from16 v2, p5

    goto :goto_b

    :cond_f
    and-int v21, v15, v21

    move-object/from16 v2, p5

    if-nez v21, :cond_11

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    const/high16 v22, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v22, 0x10000

    :goto_a
    or-int v6, v6, v22

    :cond_11
    :goto_b
    and-int/lit8 v22, v11, 0x40

    const/high16 v23, 0x180000

    if-eqz v22, :cond_12

    or-int v6, v6, v23

    move-object/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v23, v15, v23

    move-object/from16 v0, p6

    if-nez v23, :cond_14

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    const/high16 v24, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v24, 0x80000

    :goto_c
    or-int v6, v6, v24

    :cond_14
    :goto_d
    const/high16 v24, 0xc00000

    and-int v24, v15, v24

    if-nez v24, :cond_17

    and-int/lit16 v4, v11, 0x80

    if-nez v4, :cond_15

    move-object/from16 v4, p7

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    const/high16 v25, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v4, p7

    :cond_16
    const/high16 v25, 0x400000

    :goto_e
    or-int v6, v6, v25

    goto :goto_f

    :cond_17
    move-object/from16 v4, p7

    :goto_f
    const/high16 v25, 0x6000000

    and-int v25, v15, v25

    if-nez v25, :cond_1a

    const/16 v3, 0x100

    and-int/lit16 v0, v11, 0x100

    if-nez v0, :cond_18

    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/high16 v3, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v0, p8

    :cond_19
    const/high16 v3, 0x2000000

    :goto_10
    or-int/2addr v6, v3

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p8

    :goto_11
    and-int/lit16 v3, v11, 0x200

    const/high16 v26, 0x30000000

    if-eqz v3, :cond_1c

    :goto_12
    or-int v6, v6, v26

    :cond_1b
    const/16 v0, 0x400

    goto :goto_13

    :cond_1c
    and-int v26, v15, v26

    move-object/from16 v0, p9

    if-nez v26, :cond_1b

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    const/high16 v26, 0x20000000

    goto :goto_12

    :cond_1d
    const/high16 v26, 0x10000000

    goto :goto_12

    :goto_13
    and-int/2addr v0, v11

    if-eqz v0, :cond_1e

    or-int/lit8 v0, p13, 0x6

    goto :goto_15

    :cond_1e
    and-int/lit8 v0, p13, 0x6

    if-nez v0, :cond_20

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x4

    goto :goto_14

    :cond_1f
    const/4 v0, 0x2

    :goto_14
    or-int v0, p13, v0

    goto :goto_15

    :cond_20
    move/from16 v0, p13

    :goto_15
    const v23, 0x12492493

    and-int v2, v6, v23

    const v4, 0x12492492

    if-ne v2, v4, :cond_22

    and-int/lit8 v2, v0, 0x3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_22

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_16

    :cond_21
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move-object v4, v5

    move-object v5, v7

    move-object v3, v8

    move-object/from16 v26, v10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    goto/16 :goto_24

    :cond_22
    :goto_16
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v2, 0x1

    and-int/lit8 v4, v15, 0x1

    const v17, -0xe000001

    const v18, -0x1c00001

    if-eqz v4, :cond_26

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_17

    :cond_23
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v1, 0x80

    and-int/2addr v1, v11

    if-eqz v1, :cond_24

    and-int v6, v6, v18

    :cond_24
    const/16 v1, 0x100

    and-int/2addr v1, v11

    if-eqz v1, :cond_25

    and-int v6, v6, v17

    :cond_25
    move-object/from16 v20, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    move-object/from16 v18, v5

    move-object v9, v7

    move-object/from16 v17, v8

    goto/16 :goto_20

    :cond_26
    :goto_17
    if-eqz v9, :cond_27

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_18

    :cond_27
    move-object v4, v8

    :goto_18
    if-eqz v16, :cond_28

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    :cond_28
    if-eqz v1, :cond_29

    const/4 v7, 0x0

    :cond_29
    if-eqz v20, :cond_2a

    sget-object v1, Landroidx/navigation/compose/NavHostKt$NavHost$7;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$7;

    goto :goto_19

    :cond_2a
    move-object/from16 v1, p5

    :goto_19
    if-eqz v22, :cond_2b

    sget-object v9, Landroidx/navigation/compose/NavHostKt$NavHost$8;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$8;

    :goto_1a
    const/16 v2, 0x80

    goto :goto_1b

    :cond_2b
    move-object/from16 v9, p6

    goto :goto_1a

    :goto_1b
    and-int/2addr v2, v11

    if-eqz v2, :cond_2c

    and-int v6, v6, v18

    move-object v2, v1

    :goto_1c
    const/16 v8, 0x100

    goto :goto_1d

    :cond_2c
    move-object/from16 v2, p7

    goto :goto_1c

    :goto_1d
    and-int/2addr v8, v11

    if-eqz v8, :cond_2d

    and-int v6, v6, v17

    move v8, v6

    move-object v6, v9

    goto :goto_1e

    :cond_2d
    move v8, v6

    move-object/from16 v6, p8

    :goto_1e
    if-eqz v3, :cond_2e

    move-object/from16 v20, v1

    move-object/from16 v23, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v24, v6

    move v6, v8

    move-object/from16 v22, v9

    const/16 v25, 0x0

    :goto_1f
    move-object v9, v7

    goto :goto_20

    :cond_2e
    move-object/from16 v25, p9

    move-object/from16 v20, v1

    move-object/from16 v23, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v24, v6

    move v6, v8

    move-object/from16 v22, v9

    goto :goto_1f

    :goto_20
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0xe000

    and-int v2, v6, v1

    const/4 v3, 0x0

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_2f

    const/4 v2, 0x1

    goto :goto_21

    :cond_2f
    move v2, v3

    :goto_21
    and-int/lit8 v4, v6, 0x70

    const/16 v5, 0x20

    if-ne v4, v5, :cond_30

    const/4 v4, 0x1

    goto :goto_22

    :cond_30
    move v4, v3

    :goto_22
    or-int/2addr v2, v4

    and-int/lit8 v0, v0, 0xe

    const/4 v4, 0x4

    if-ne v0, v4, :cond_31

    const/4 v5, 0x1

    goto :goto_23

    :cond_31
    move v5, v3

    :goto_23
    or-int v0, v2, v5

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_32

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v0, :cond_33

    :cond_32
    iget-object v0, v12, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v2, Landroidx/navigation/NavGraphBuilder;

    invoke-direct {v2, v0, v13, v9}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_33
    check-cast v2, Landroidx/navigation/NavGraph;

    and-int/lit16 v0, v6, 0x1f8e

    shr-int/lit8 v3, v6, 0x3

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/high16 v1, 0x1c00000

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    const/high16 v1, 0xe000000

    and-int/2addr v1, v3

    or-int v16, v0, v1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v20

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v26, v10

    move/from16 v10, v16

    move/from16 v11, v19

    invoke-static/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    :goto_24
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_34

    new-instance v2, Landroidx/navigation/compose/NavHostKt$NavHost$10;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, p1

    move-object v13, v11

    move-object/from16 v11, p10

    move-object v14, v12

    move/from16 v12, p12

    move-object v15, v13

    move/from16 v13, p13

    move-object/from16 v27, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/navigation/compose/NavHostKt$NavHost$10;-><init>(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v27

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_34
    return-void
.end method
