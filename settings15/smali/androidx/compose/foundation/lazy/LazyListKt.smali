.class public abstract Landroidx/compose/foundation/lazy/LazyListKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    move-object/from16 v12, p12

    move/from16 v11, p14

    move/from16 v10, p15

    move/from16 v9, p16

    const/16 v7, 0x80

    const/16 v3, 0x100

    const/16 v17, 0x10

    const/16 v4, 0x20

    move-object/from16 v2, p13

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x25001c13

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/16 v21, 0x1

    and-int/lit8 v6, v9, 0x1

    const/16 v22, 0x2

    const/4 v5, 0x4

    if-eqz v6, :cond_0

    or-int/lit8 v6, v11, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v11, 0x6

    if-nez v6, :cond_2

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move/from16 v6, v22

    :goto_0
    or-int/2addr v6, v11

    goto :goto_1

    :cond_2
    move v6, v11

    :goto_1
    and-int/lit8 v24, v9, 0x2

    if-eqz v24, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v24, v11, 0x30

    if-nez v24, :cond_5

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    move/from16 v24, v4

    goto :goto_2

    :cond_4
    move/from16 v24, v17

    :goto_2
    or-int v6, v6, v24

    :cond_5
    :goto_3
    and-int/lit8 v24, v9, 0x4

    if-eqz v24, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_8

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    goto :goto_4

    :cond_7
    move v5, v7

    :goto_4
    or-int/2addr v6, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, v9, 0x8

    if-eqz v5, :cond_9

    or-int/lit16 v6, v6, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_b

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x800

    goto :goto_6

    :cond_a
    const/16 v5, 0x400

    :goto_6
    or-int/2addr v6, v5

    :cond_b
    :goto_7
    and-int/lit8 v5, v9, 0x10

    if-eqz v5, :cond_c

    or-int/lit16 v6, v6, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v5, v11, 0x6000

    if-nez v5, :cond_e

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x4000

    goto :goto_8

    :cond_d
    const/16 v5, 0x2000

    :goto_8
    or-int/2addr v6, v5

    :cond_e
    :goto_9
    and-int/lit8 v5, v9, 0x20

    const/high16 v25, 0x30000

    if-eqz v5, :cond_10

    or-int v6, v6, v25

    :cond_f
    move-object/from16 v5, p5

    goto :goto_b

    :cond_10
    and-int v5, v11, v25

    if-nez v5, :cond_f

    move-object/from16 v5, p5

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    const/high16 v25, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v25, 0x10000

    :goto_a
    or-int v6, v6, v25

    :goto_b
    and-int/lit8 v25, v9, 0x40

    const/high16 v27, 0x180000

    if-eqz v25, :cond_12

    or-int v6, v6, v27

    move/from16 v8, p6

    goto :goto_d

    :cond_12
    and-int v25, v11, v27

    move/from16 v8, p6

    if-nez v25, :cond_14

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_13

    const/high16 v28, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v28, 0x80000

    :goto_c
    or-int v6, v6, v28

    :cond_14
    :goto_d
    and-int/lit16 v4, v9, 0x80

    const/high16 v30, 0xc00000

    if-eqz v4, :cond_15

    or-int v6, v6, v30

    move/from16 v7, p7

    goto :goto_f

    :cond_15
    and-int v31, v11, v30

    move/from16 v7, p7

    if-nez v31, :cond_17

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v32

    if-eqz v32, :cond_16

    const/high16 v32, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v32, 0x400000

    :goto_e
    or-int v6, v6, v32

    :cond_17
    :goto_f
    and-int/lit16 v5, v9, 0x100

    const/high16 v32, 0x6000000

    if-eqz v5, :cond_19

    or-int v6, v6, v32

    :cond_18
    :goto_10
    const/16 v8, 0x200

    goto :goto_12

    :cond_19
    and-int v33, v11, v32

    move-object/from16 v3, p8

    if-nez v33, :cond_18

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1a

    const/high16 v34, 0x4000000

    goto :goto_11

    :cond_1a
    const/high16 v34, 0x2000000

    :goto_11
    or-int v6, v6, v34

    goto :goto_10

    :goto_12
    and-int/lit16 v3, v9, 0x200

    const/high16 v24, 0x30000000

    if-eqz v3, :cond_1c

    or-int v6, v6, v24

    move-object/from16 v8, p9

    :cond_1b
    :goto_13
    const/16 v7, 0x400

    goto :goto_15

    :cond_1c
    and-int v34, v11, v24

    move-object/from16 v8, p9

    if-nez v34, :cond_1b

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1d

    const/high16 v35, 0x20000000

    goto :goto_14

    :cond_1d
    const/high16 v35, 0x10000000

    :goto_14
    or-int v6, v6, v35

    goto :goto_13

    :goto_15
    and-int/2addr v7, v9

    if-eqz v7, :cond_1e

    or-int/lit8 v22, v10, 0x6

    :goto_16
    const/16 v8, 0x800

    goto :goto_17

    :cond_1e
    and-int/lit8 v23, v10, 0x6

    move-object/from16 v8, p10

    if-nez v23, :cond_20

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    const/16 v22, 0x4

    :cond_1f
    or-int v22, v10, v22

    goto :goto_16

    :cond_20
    move/from16 v22, v10

    goto :goto_16

    :goto_17
    and-int/lit16 v11, v9, 0x800

    if-eqz v11, :cond_21

    or-int/lit8 v22, v22, 0x30

    :goto_18
    move/from16 v8, v22

    goto :goto_19

    :cond_21
    and-int/lit8 v8, v10, 0x30

    if-nez v8, :cond_23

    move-object/from16 v8, p11

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    const/16 v17, 0x20

    :cond_22
    or-int v22, v22, v17

    goto :goto_18

    :cond_23
    move-object/from16 v8, p11

    goto :goto_18

    :goto_19
    and-int/lit16 v1, v9, 0x1000

    if-eqz v1, :cond_24

    or-int/lit16 v8, v8, 0x180

    goto :goto_1b

    :cond_24
    and-int/lit16 v1, v10, 0x180

    if-nez v1, :cond_26

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v29, 0x100

    goto :goto_1a

    :cond_25
    const/16 v29, 0x80

    :goto_1a
    or-int v8, v8, v29

    :cond_26
    :goto_1b
    const v1, 0x12492493

    and-int/2addr v1, v6

    const v9, 0x12492492

    if-ne v1, v9, :cond_28

    and-int/lit16 v1, v8, 0x93

    const/16 v9, 0x92

    if-ne v1, v9, :cond_28

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_1c

    :cond_27
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object v0, v2

    goto/16 :goto_33

    :cond_28
    :goto_1c
    if-eqz v4, :cond_29

    const/4 v9, 0x0

    goto :goto_1d

    :cond_29
    move/from16 v9, p7

    :goto_1d
    const/4 v4, 0x0

    if-eqz v5, :cond_2a

    move-object v5, v4

    goto :goto_1e

    :cond_2a
    move-object/from16 v5, p8

    :goto_1e
    if-eqz v3, :cond_2b

    move-object v3, v4

    goto :goto_1f

    :cond_2b
    move-object/from16 v3, p9

    :goto_1f
    if-eqz v7, :cond_2c

    move-object v7, v4

    goto :goto_20

    :cond_2c
    move-object/from16 v7, p10

    :goto_20
    if-eqz v11, :cond_2d

    move-object v11, v4

    goto :goto_21

    :cond_2d
    move-object/from16 v11, p11

    :goto_21
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v4, v6, 0x3

    and-int/lit8 v17, v4, 0xe

    shr-int/lit8 v4, v8, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int v4, v17, v4

    invoke-static {v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    and-int/lit8 v23, v4, 0xe

    move/from16 p7, v9

    xor-int/lit8 v9, v23, 0x6

    const/4 v10, 0x4

    if-le v9, v10, :cond_2e

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    :cond_2e
    and-int/lit8 v4, v4, 0x6

    if-ne v4, v10, :cond_30

    :cond_2f
    move/from16 v4, v21

    goto :goto_22

    :cond_30
    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_31

    if-ne v9, v10, :cond_32

    :cond_31
    new-instance v4, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const v9, 0x7fffffff

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    move-result-object v12

    iput-object v12, v4, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidthState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    move-result-object v9

    iput-object v9, v4, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeightState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    sget-object v9, Landroidx/compose/runtime/ReferentialEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/ReferentialEqualityPolicy;

    new-instance v12, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$intervalContentState$1;

    invoke-direct {v12, v1}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$intervalContentState$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-static {v9, v12}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v1

    new-instance v12, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;

    invoke-direct {v12, v1, v0, v4}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;-><init>(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;)V

    invoke-static {v9, v12}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v36

    new-instance v9, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$1;

    const-string v39, "getValue()Ljava/lang/Object;"

    const/16 v40, 0x0

    const-class v37, Landroidx/compose/runtime/State;

    const-string/jumbo v38, "value"

    move-object/from16 v35, v9

    invoke-direct/range {v35 .. v40}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_32
    move-object v1, v9

    check-cast v1, Lkotlin/reflect/KProperty0;

    shr-int/lit8 v4, v6, 0x9

    and-int/lit8 v4, v4, 0x70

    or-int v4, v17, v4

    and-int/lit8 v9, v4, 0xe

    xor-int/lit8 v9, v9, 0x6

    const/4 v12, 0x4

    if-le v9, v12, :cond_33

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    :cond_33
    and-int/lit8 v9, v4, 0x6

    if-ne v9, v12, :cond_35

    :cond_34
    move/from16 v9, v21

    goto :goto_23

    :cond_35
    const/4 v9, 0x0

    :goto_23
    and-int/lit8 v23, v4, 0x70

    xor-int/lit8 v12, v23, 0x30

    move-object/from16 p8, v1

    const/16 v1, 0x20

    if-le v12, v1, :cond_36

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    if-nez v12, :cond_37

    :cond_36
    and-int/lit8 v4, v4, 0x30

    if-ne v4, v1, :cond_38

    :cond_37
    move/from16 v1, v21

    goto :goto_24

    :cond_38
    const/4 v1, 0x0

    :goto_24
    or-int/2addr v1, v9

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_39

    if-ne v4, v10, :cond_3a

    :cond_39
    new-instance v4, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    invoke-direct {v4, v0, v13}, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Z)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3a
    move-object v1, v4

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_3b

    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v4, v2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v4

    :cond_3b
    check-cast v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v4, v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/graphics/GraphicsContext;

    sget-object v9, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalProvidableScrollCaptureInProgress:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    move-object/from16 p9, v1

    and-int/lit16 v1, v6, 0x1c00

    const v23, 0xfff0

    and-int v23, v6, v23

    shr-int/lit8 v29, v6, 0x6

    const/high16 v35, 0x70000

    and-int v35, v29, v35

    or-int v23, v23, v35

    const/high16 v35, 0x380000

    and-int v29, v29, v35

    or-int v23, v23, v29

    shl-int/lit8 v8, v8, 0x15

    const/high16 v19, 0x1c00000

    and-int v29, v8, v19

    or-int v23, v23, v29

    const/high16 v29, 0xe000000

    and-int v8, v8, v29

    or-int v8, v23, v8

    const/high16 v23, 0x70000000

    and-int v23, v6, v23

    or-int v8, v8, v23

    and-int/lit8 v23, v8, 0x70

    move/from16 v29, v6

    xor-int/lit8 v6, v23, 0x30

    move/from16 v23, v1

    const/16 v1, 0x20

    if-le v6, v1, :cond_3c

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    :cond_3c
    and-int/lit8 v6, v8, 0x30

    if-ne v6, v1, :cond_3e

    :cond_3d
    move/from16 v6, v21

    goto :goto_25

    :cond_3e
    const/4 v6, 0x0

    :goto_25
    and-int/lit16 v1, v8, 0x380

    xor-int/lit16 v1, v1, 0x180

    const/16 v0, 0x100

    if-le v1, v0, :cond_3f

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    :cond_3f
    and-int/lit16 v1, v8, 0x180

    if-ne v1, v0, :cond_41

    :cond_40
    move/from16 v0, v21

    goto :goto_26

    :cond_41
    const/4 v0, 0x0

    :goto_26
    or-int/2addr v0, v6

    and-int/lit16 v1, v8, 0x1c00

    xor-int/lit16 v1, v1, 0xc00

    const/16 v6, 0x800

    if-le v1, v6, :cond_42

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-nez v1, :cond_43

    :cond_42
    and-int/lit16 v1, v8, 0xc00

    if-ne v1, v6, :cond_44

    :cond_43
    move/from16 v1, v21

    goto :goto_27

    :cond_44
    const/4 v1, 0x0

    :goto_27
    or-int/2addr v0, v1

    const v1, 0xe000

    and-int/2addr v1, v8

    xor-int/lit16 v1, v1, 0x6000

    const/16 v6, 0x4000

    if-le v1, v6, :cond_45

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-nez v1, :cond_46

    :cond_45
    and-int/lit16 v1, v8, 0x6000

    if-ne v1, v6, :cond_47

    :cond_46
    move/from16 v1, v21

    goto :goto_28

    :cond_47
    const/4 v1, 0x0

    :goto_28
    or-int/2addr v0, v1

    and-int v1, v8, v35

    xor-int v1, v1, v27

    const/high16 v6, 0x100000

    if-le v1, v6, :cond_48

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    :cond_48
    and-int v1, v8, v27

    if-ne v1, v6, :cond_4a

    :cond_49
    move/from16 v1, v21

    goto :goto_29

    :cond_4a
    const/4 v1, 0x0

    :goto_29
    or-int/2addr v0, v1

    const/high16 v1, 0x1c00000

    and-int/2addr v1, v8

    xor-int v1, v1, v30

    const/high16 v6, 0x800000

    if-le v1, v6, :cond_4b

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    :cond_4b
    and-int v1, v8, v30

    if-ne v1, v6, :cond_4d

    :cond_4c
    move/from16 v1, v21

    goto :goto_2a

    :cond_4d
    const/4 v1, 0x0

    :goto_2a
    or-int/2addr v0, v1

    const/high16 v1, 0xe000000

    and-int/2addr v1, v8

    xor-int v1, v1, v32

    const/high16 v6, 0x4000000

    if-le v1, v6, :cond_4e

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    :cond_4e
    and-int v1, v8, v32

    if-ne v1, v6, :cond_50

    :cond_4f
    move/from16 v1, v21

    goto :goto_2b

    :cond_50
    const/4 v1, 0x0

    :goto_2b
    or-int/2addr v0, v1

    const/high16 v1, 0x70000000

    and-int/2addr v1, v8

    xor-int v1, v1, v24

    const/high16 v6, 0x20000000

    if-le v1, v6, :cond_51

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    :cond_51
    and-int v1, v8, v24

    if-ne v1, v6, :cond_53

    :cond_52
    move/from16 v1, v21

    goto :goto_2c

    :cond_53
    const/4 v1, 0x0

    :goto_2c
    or-int/2addr v0, v1

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_55

    if-ne v1, v10, :cond_54

    goto :goto_2d

    :cond_54
    move-object v0, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v42, v10

    move-object/from16 v25, v11

    move/from16 v19, v29

    const/16 v24, 0x200

    goto :goto_2e

    :cond_55
    :goto_2d
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/internal/ContextScope;

    move-object v8, v2

    move-object v2, v1

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    const/16 v6, 0x20

    move/from16 v4, p4

    move-object/from16 v18, v5

    move-object/from16 v5, p2

    move/from16 v19, v29

    move/from16 v6, p3

    move-object/from16 v20, v7

    move-object/from16 v7, p8

    move-object/from16 v41, v8

    const/16 v24, 0x200

    move-object/from16 v8, v16

    move/from16 v25, v9

    move-object v9, v11

    move-object/from16 v42, v10

    move/from16 v10, v25

    move-object/from16 v25, v11

    move/from16 v11, p7

    move-object/from16 v26, v12

    move-object v12, v0

    move-object/from16 v13, v26

    move-object/from16 v14, v18

    move-object/from16 v15, v20

    invoke-direct/range {v2 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZILkotlinx/coroutines/internal/ContextScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_2e
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function2;

    if-eqz p4, :cond_56

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2f
    move-object/from16 v15, p1

    goto :goto_30

    :cond_56
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2f

    :goto_30
    iget-object v2, v15, Landroidx/compose/foundation/lazy/LazyListState;->remeasurementModifier:Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

    move-object/from16 v14, p0

    invoke-interface {v14, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v15, Landroidx/compose/foundation/lazy/LazyListState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object v5, v1

    move/from16 v6, p6

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object v2

    shr-int/lit8 v3, v19, 0x12

    and-int/lit8 v3, v3, 0x70

    or-int v3, v17, v3

    and-int/lit8 v4, v3, 0xe

    xor-int/lit8 v4, v4, 0x6

    const/4 v5, 0x4

    if-le v4, v5, :cond_57

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    :cond_57
    and-int/lit8 v4, v3, 0x6

    if-ne v4, v5, :cond_59

    :cond_58
    move/from16 v4, v21

    goto :goto_31

    :cond_59
    const/4 v4, 0x0

    :goto_31
    and-int/lit8 v5, v3, 0x70

    xor-int/lit8 v5, v5, 0x30

    const/16 v6, 0x20

    move/from16 v13, p7

    if-le v5, v6, :cond_5a

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    if-nez v5, :cond_5c

    :cond_5a
    and-int/lit8 v3, v3, 0x30

    if-ne v3, v6, :cond_5b

    goto :goto_32

    :cond_5b
    const/16 v21, 0x0

    :cond_5c
    :goto_32
    or-int v3, v4, v21

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_5d

    move-object/from16 v3, v42

    if-ne v4, v3, :cond_5e

    :cond_5d
    new-instance v4, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    invoke-direct {v4, v15, v13}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5e
    move-object v3, v4

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsState;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    or-int v4, v24, v23

    and-int v5, v19, v35

    or-int v10, v4, v5

    iget-object v4, v15, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move/from16 v5, p3

    move-object v7, v1

    move/from16 v8, p6

    move-object v9, v0

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v15, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v11, 0x40

    const/4 v9, 0x0

    iget-object v8, v15, Landroidx/compose/foundation/lazy/LazyListState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-object/from16 v3, p1

    move-object v4, v1

    move/from16 v5, p6

    move/from16 v6, p3

    move-object/from16 v7, p5

    move-object v10, v0

    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/ScrollingContainerKt;->scrollingContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const/4 v1, 0x0

    iget-object v11, v15, Landroidx/compose/foundation/lazy/LazyListState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v2, 0x0

    move-object/from16 v9, p8

    move v3, v13

    move-object v13, v0

    move v14, v2

    move v15, v1

    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move v8, v3

    move-object/from16 v10, v16

    move-object/from16 v9, v18

    move-object/from16 v11, v20

    move-object/from16 v12, v25

    :goto_33
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_5f

    new-instance v14, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v13, p12

    move-object/from16 v43, v14

    move/from16 v14, p14

    move-object/from16 v44, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v1, v43

    move-object/from16 v0, v44

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5f
    return-void
.end method
