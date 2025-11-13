.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 42

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p5

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v10, p10

    move/from16 v9, p12

    move/from16 v8, p14

    const/16 v7, 0x10

    const/16 v3, 0x200

    move-object/from16 v4, p11

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x26b96c2e

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/16 v20, 0x1

    and-int/lit8 v0, v8, 0x1

    const/4 v1, 0x2

    const/4 v6, 0x4

    if-eqz v0, :cond_0

    or-int/lit8 v23, v9, 0x6

    move-object/from16 v5, p0

    move/from16 v24, v23

    goto :goto_1

    :cond_0
    and-int/lit8 v23, v9, 0x6

    move-object/from16 v5, p0

    if-nez v23, :cond_2

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    move/from16 v24, v6

    goto :goto_0

    :cond_1
    move/from16 v24, v1

    :goto_0
    or-int v24, v9, v24

    goto :goto_1

    :cond_2
    move/from16 v24, v9

    :goto_1
    and-int/lit8 v25, v8, 0x2

    if-eqz v25, :cond_4

    or-int/lit8 v24, v24, 0x30

    :cond_3
    :goto_2
    move/from16 v1, v24

    goto :goto_4

    :cond_4
    and-int/lit8 v25, v9, 0x30

    if-nez v25, :cond_3

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    const/16 v25, 0x20

    goto :goto_3

    :cond_5
    move/from16 v25, v7

    :goto_3
    or-int v24, v24, v25

    goto :goto_2

    :goto_4
    and-int/lit8 v24, v8, 0x4

    if-eqz v24, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_7

    :cond_6
    and-int/lit16 v6, v9, 0x180

    if-nez v6, :cond_9

    and-int/lit16 v6, v9, 0x200

    if-nez v6, :cond_7

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_5

    :cond_7
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    :goto_5
    if-eqz v6, :cond_8

    const/16 v6, 0x100

    goto :goto_6

    :cond_8
    const/16 v6, 0x80

    :goto_6
    or-int/2addr v1, v6

    :cond_9
    :goto_7
    and-int/lit8 v6, v8, 0x8

    if-eqz v6, :cond_b

    or-int/lit16 v1, v1, 0xc00

    :cond_a
    move-object/from16 v3, p3

    goto :goto_9

    :cond_b
    and-int/lit16 v3, v9, 0xc00

    if-nez v3, :cond_a

    move-object/from16 v3, p3

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    const/16 v27, 0x800

    goto :goto_8

    :cond_c
    const/16 v27, 0x400

    :goto_8
    or-int v1, v1, v27

    :goto_9
    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    or-int/lit16 v1, v1, 0x6000

    :cond_d
    move/from16 v2, p4

    :goto_a
    const/16 v27, 0x20

    goto :goto_c

    :cond_e
    and-int/lit16 v2, v9, 0x6000

    if-nez v2, :cond_d

    move/from16 v2, p4

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_f

    const/16 v28, 0x4000

    goto :goto_b

    :cond_f
    const/16 v28, 0x2000

    :goto_b
    or-int v1, v1, v28

    goto :goto_a

    :goto_c
    and-int/lit8 v28, v8, 0x20

    const/high16 v29, 0x30000

    if-eqz v28, :cond_10

    or-int v1, v1, v29

    goto :goto_e

    :cond_10
    and-int v28, v9, v29

    if-nez v28, :cond_12

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v28

    if-eqz v28, :cond_11

    const/high16 v28, 0x20000

    goto :goto_d

    :cond_11
    const/high16 v28, 0x10000

    :goto_d
    or-int v1, v1, v28

    :cond_12
    :goto_e
    const/high16 v28, 0x180000

    and-int v30, v9, v28

    if-nez v30, :cond_14

    and-int/lit8 v30, v8, 0x40

    move-object/from16 v2, p6

    if-nez v30, :cond_13

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    const/high16 v31, 0x100000

    goto :goto_f

    :cond_13
    const/high16 v31, 0x80000

    :goto_f
    or-int v1, v1, v31

    :goto_10
    const/16 v2, 0x80

    goto :goto_11

    :cond_14
    move-object/from16 v2, p6

    goto :goto_10

    :goto_11
    and-int/2addr v2, v8

    const/high16 v23, 0xc00000

    if-eqz v2, :cond_15

    or-int v1, v1, v23

    :goto_12
    const/16 v2, 0x100

    goto :goto_14

    :cond_15
    and-int v2, v9, v23

    if-nez v2, :cond_17

    move/from16 v2, p7

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v31

    if-eqz v31, :cond_16

    const/high16 v31, 0x800000

    goto :goto_13

    :cond_16
    const/high16 v31, 0x400000

    :goto_13
    or-int v1, v1, v31

    goto :goto_12

    :cond_17
    move/from16 v2, p7

    goto :goto_12

    :goto_14
    and-int/lit16 v3, v8, 0x100

    const/high16 v2, 0x6000000

    if-eqz v3, :cond_19

    :goto_15
    or-int/2addr v1, v2

    :cond_18
    const/16 v3, 0x200

    goto :goto_16

    :cond_19
    and-int/2addr v2, v9

    if-nez v2, :cond_18

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/high16 v2, 0x4000000

    goto :goto_15

    :cond_1a
    const/high16 v2, 0x2000000

    goto :goto_15

    :goto_16
    and-int/lit16 v2, v8, 0x200

    if-eqz v2, :cond_1c

    const/high16 v2, 0x30000000

    :goto_17
    or-int/2addr v1, v2

    :cond_1b
    const/16 v2, 0x400

    goto :goto_18

    :cond_1c
    const/high16 v2, 0x30000000

    and-int/2addr v2, v9

    if-nez v2, :cond_1b

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/high16 v2, 0x20000000

    goto :goto_17

    :cond_1d
    const/high16 v2, 0x10000000

    goto :goto_17

    :goto_18
    and-int/2addr v2, v8

    if-eqz v2, :cond_1e

    or-int/lit8 v2, p13, 0x6

    goto :goto_1a

    :cond_1e
    and-int/lit8 v2, p13, 0x6

    if-nez v2, :cond_20

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x4

    goto :goto_19

    :cond_1f
    const/4 v2, 0x2

    :goto_19
    or-int v2, p13, v2

    goto :goto_1a

    :cond_20
    move/from16 v2, p13

    :goto_1a
    const v18, 0x12492493

    and-int v3, v1, v18

    const v5, 0x12492492

    if-ne v3, v5, :cond_22

    and-int/lit8 v3, v2, 0x3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_22

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_1b

    :cond_21
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v1, p0

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v12, v4

    move-object/from16 v4, p3

    goto/16 :goto_31

    :cond_22
    :goto_1b
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v3, v9, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_25

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_1c

    :cond_23
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v8, 0x40

    if-eqz v0, :cond_24

    const v0, -0x380001

    and-int/2addr v1, v0

    :cond_24
    move-object/from16 v7, p0

    move-object/from16 v6, p3

    move/from16 v3, p4

    move-object/from16 v37, p6

    goto :goto_21

    :cond_25
    :goto_1c
    if-eqz v0, :cond_26

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1d

    :cond_26
    move-object/from16 v0, p0

    :goto_1d
    if-eqz v6, :cond_27

    int-to-float v3, v5

    sget-object v6, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v3

    goto :goto_1e

    :cond_27
    move-object/from16 v3, p3

    :goto_1e
    if-eqz v7, :cond_28

    move v6, v5

    goto :goto_1f

    :cond_28
    move/from16 v6, p4

    :goto_1f
    and-int/lit8 v7, v8, 0x40

    if-eqz v7, :cond_29

    sget-object v7, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    move-result-object v7

    const v18, -0x380001

    and-int v1, v1, v18

    move-object/from16 v37, v7

    :goto_20
    move-object v7, v0

    move/from16 v41, v6

    move-object v6, v3

    move/from16 v3, v41

    goto :goto_21

    :cond_29
    move-object/from16 v37, p6

    goto :goto_20

    :goto_21
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v18, v0, 0xe

    shl-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x70

    or-int v2, v18, v2

    invoke-static {v10, v4}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    and-int/lit8 v19, v2, 0xe

    move-object/from16 p0, v7

    xor-int/lit8 v7, v19, 0x6

    const/4 v8, 0x4

    if-le v7, v8, :cond_2a

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    :cond_2a
    and-int/lit8 v2, v2, 0x6

    if-ne v2, v8, :cond_2c

    :cond_2b
    move/from16 v2, v20

    goto :goto_22

    :cond_2c
    const/4 v2, 0x0

    :goto_22
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-nez v2, :cond_2d

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v2, :cond_2e

    :cond_2d
    sget-object v2, Landroidx/compose/runtime/ReferentialEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/ReferentialEqualityPolicy;

    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$intervalContentState$1;

    invoke-direct {v7, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$intervalContentState$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {v2, v7}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v5

    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$itemProviderState$1;

    invoke-direct {v7, v5, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$itemProviderState$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    invoke-static {v2, v7}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v2

    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$1;

    invoke-direct {v7, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderKt$rememberLazyGridItemProviderLambda$1$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2e
    move-object/from16 v38, v7

    check-cast v38, Lkotlin/reflect/KProperty0;

    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v5, v2, 0x70

    or-int v5, v18, v5

    and-int/lit8 v7, v5, 0xe

    xor-int/lit8 v7, v7, 0x6

    const/4 v9, 0x4

    if-le v7, v9, :cond_2f

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    :cond_2f
    and-int/lit8 v7, v5, 0x6

    if-ne v7, v9, :cond_31

    :cond_30
    move/from16 v7, v20

    goto :goto_23

    :cond_31
    const/4 v7, 0x0

    :goto_23
    and-int/lit8 v19, v5, 0x70

    xor-int/lit8 v9, v19, 0x30

    const/16 v10, 0x20

    if-le v9, v10, :cond_32

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v9

    if-nez v9, :cond_33

    :cond_32
    and-int/lit8 v5, v5, 0x30

    if-ne v5, v10, :cond_34

    :cond_33
    move/from16 v5, v20

    goto :goto_24

    :cond_34
    const/4 v5, 0x0

    :goto_24
    or-int/2addr v5, v7

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_35

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v5, :cond_36

    :cond_35
    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    invoke-direct {v7, v11}, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_36
    move-object/from16 v33, v7

    check-cast v33, Landroidx/compose/foundation/lazy/grid/LazySemanticsKt$rememberLazyGridSemanticState$1$1;

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v10, :cond_37

    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v5, v4}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v5

    :cond_37
    check-cast v5, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v9, v5, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalGraphicsContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/graphics/GraphicsContext;

    const v5, 0x7fff0

    and-int/2addr v1, v5

    const/high16 v19, 0x380000

    and-int v2, v2, v19

    or-int/2addr v1, v2

    const/high16 v2, 0x1c00000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x70

    xor-int/lit8 v2, v2, 0x30

    const/16 v5, 0x20

    if-le v2, v5, :cond_38

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    :cond_38
    and-int/lit8 v2, v1, 0x30

    if-ne v2, v5, :cond_3a

    :cond_39
    move/from16 v2, v20

    goto :goto_25

    :cond_3a
    const/4 v2, 0x0

    :goto_25
    and-int/lit16 v5, v1, 0x380

    xor-int/lit16 v5, v5, 0x180

    const/16 v7, 0x100

    if-le v5, v7, :cond_3b

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    :cond_3b
    and-int/lit16 v5, v1, 0x180

    if-ne v5, v7, :cond_3d

    :cond_3c
    move/from16 v5, v20

    goto :goto_26

    :cond_3d
    const/4 v5, 0x0

    :goto_26
    or-int/2addr v2, v5

    and-int/lit16 v5, v1, 0x1c00

    xor-int/lit16 v5, v5, 0xc00

    const/16 v7, 0x800

    if-le v5, v7, :cond_3e

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    :cond_3e
    and-int/lit16 v5, v1, 0xc00

    if-ne v5, v7, :cond_40

    :cond_3f
    move/from16 v5, v20

    goto :goto_27

    :cond_40
    const/4 v5, 0x0

    :goto_27
    or-int/2addr v2, v5

    const v5, 0xe000

    and-int/2addr v5, v1

    xor-int/lit16 v5, v5, 0x6000

    const/16 v7, 0x4000

    if-le v5, v7, :cond_41

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-nez v5, :cond_42

    :cond_41
    and-int/lit16 v5, v1, 0x6000

    if-ne v5, v7, :cond_43

    :cond_42
    move/from16 v5, v20

    goto :goto_28

    :cond_43
    const/4 v5, 0x0

    :goto_28
    or-int/2addr v2, v5

    const/high16 v5, 0x70000

    and-int/2addr v5, v1

    xor-int v5, v5, v29

    const/high16 v7, 0x20000

    if-le v5, v7, :cond_44

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-nez v5, :cond_45

    :cond_44
    and-int v5, v1, v29

    if-ne v5, v7, :cond_46

    :cond_45
    move/from16 v5, v20

    goto :goto_29

    :cond_46
    const/4 v5, 0x0

    :goto_29
    or-int/2addr v2, v5

    and-int v5, v1, v19

    xor-int v5, v5, v28

    const/high16 v7, 0x100000

    if-le v5, v7, :cond_47

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    :cond_47
    and-int v5, v1, v28

    if-ne v5, v7, :cond_49

    :cond_48
    move/from16 v5, v20

    goto :goto_2a

    :cond_49
    const/4 v5, 0x0

    :goto_2a
    or-int/2addr v2, v5

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v1

    xor-int v5, v5, v23

    const/high16 v7, 0x800000

    if-le v5, v7, :cond_4a

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    :cond_4a
    and-int v1, v1, v23

    if-ne v1, v7, :cond_4c

    :cond_4b
    move/from16 v1, v20

    goto :goto_2b

    :cond_4c
    const/4 v1, 0x0

    :goto_2b
    or-int/2addr v1, v2

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_4e

    if-ne v2, v10, :cond_4d

    goto :goto_2c

    :cond_4d
    move-object/from16 v15, p0

    move/from16 p0, v0

    move/from16 v16, v3

    move-object v12, v4

    move-object/from16 v27, v6

    move-object/from16 v39, v10

    const/16 v17, 0x200

    const/16 v21, 0x0

    goto :goto_2d

    :cond_4e
    :goto_2c
    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;

    move v5, v0

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v16, v3

    const/16 v17, 0x200

    move-object v3, v6

    move-object v12, v4

    move/from16 v4, v16

    move v14, v5

    const/16 v21, 0x0

    move-object/from16 v5, v38

    move-object/from16 v27, v6

    const/4 v15, 0x4

    move-object/from16 v6, p2

    move-object/from16 v15, p0

    move/from16 p0, v14

    move-object v14, v7

    move-object/from16 v7, p8

    move-object/from16 v22, v8

    move-object/from16 v8, p9

    move-object/from16 v39, v10

    move-object/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v2, v14

    :goto_2d
    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    if-eqz v13, :cond_4f

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2e
    move-object v2, v0

    goto :goto_2f

    :cond_4f
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2e

    :goto_2f
    iget-object v0, v11, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurementModifier:Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;

    invoke-interface {v15, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, v11, Landroidx/compose/foundation/lazy/grid/LazyGridState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v31

    move-object/from16 v32, v38

    move-object/from16 v34, v2

    move/from16 v35, p7

    move/from16 v36, v16

    invoke-static/range {v31 .. v36}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    xor-int/lit8 v1, v18, 0x6

    const/4 v3, 0x4

    if-le v1, v3, :cond_50

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    :cond_50
    and-int/lit8 v1, p0, 0x6

    if-ne v1, v3, :cond_51

    goto :goto_30

    :cond_51
    move/from16 v20, v21

    :cond_52
    :goto_30
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v20, :cond_53

    move-object/from16 v3, v39

    if-ne v1, v3, :cond_54

    :cond_53
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    invoke-direct {v1, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_54
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridBeyondBoundsState;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroidx/compose/ui/unit/LayoutDirection;

    move/from16 v3, p0

    and-int/lit16 v4, v3, 0x1c00

    or-int v4, v17, v4

    and-int v3, v3, v19

    or-int v26, v4, v3

    iget-object v3, v11, Landroidx/compose/foundation/lazy/grid/LazyGridState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move/from16 v21, v16

    move-object/from16 v23, v2

    move/from16 v24, p7

    move-object/from16 v25, v12

    invoke-static/range {v18 .. v26}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, v11, Landroidx/compose/foundation/lazy/grid/LazyGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->modifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v6, v11, Landroidx/compose/foundation/lazy/grid/LazyGridState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-object/from16 v1, p1

    move/from16 v3, p7

    move/from16 v4, v16

    move-object/from16 v5, v37

    move-object v7, v12

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/ScrollingContainerKt;->scrollingContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/Modifier;

    move-result-object v19

    const/16 v24, 0x0

    iget-object v0, v11, Landroidx/compose/foundation/lazy/grid/LazyGridState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/16 v23, 0x0

    move-object/from16 v18, v38

    move-object/from16 v20, v0

    move-object/from16 v21, v8

    move-object/from16 v22, v12

    invoke-static/range {v18 .. v24}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v15

    move/from16 v5, v16

    move-object/from16 v4, v27

    move-object/from16 v7, v37

    :goto_31
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_55

    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v40, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v40

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_55
    return-void
.end method
