.class public abstract Landroidx/compose/foundation/pager/LazyLayoutPagerKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final Pager-uYRUAWA(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move/from16 v11, p6

    move-object/from16 v10, p9

    move-object/from16 v9, p10

    move-object/from16 v8, p11

    move-object/from16 v7, p12

    move-object/from16 v6, p13

    move-object/from16 v5, p14

    move-object/from16 v4, p15

    move/from16 v3, p17

    move/from16 v2, p18

    move/from16 v4, p19

    const/high16 v17, 0x10000

    const/16 v24, 0x10

    move-object/from16 v5, p16

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x2016e66e

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/16 v25, 0x1

    and-int/lit8 v6, v4, 0x1

    const/16 v26, 0x2

    const/4 v7, 0x4

    if-eqz v6, :cond_0

    or-int/lit8 v6, v3, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_2

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move/from16 v6, v26

    :goto_0
    or-int/2addr v6, v3

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    and-int/lit8 v27, v4, 0x2

    if-eqz v27, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v27, v3, 0x30

    if-nez v27, :cond_5

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v27, 0x20

    goto :goto_2

    :cond_4
    move/from16 v27, v24

    :goto_2
    or-int v6, v6, v27

    :cond_5
    :goto_3
    and-int/lit8 v27, v4, 0x4

    if-eqz v27, :cond_6

    or-int/lit16 v6, v6, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v7, v3, 0x180

    if-nez v7, :cond_8

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v6, v7

    :cond_8
    :goto_5
    and-int/lit8 v7, v4, 0x8

    if-eqz v7, :cond_9

    or-int/lit16 v6, v6, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v3, 0xc00

    if-nez v7, :cond_b

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x800

    goto :goto_6

    :cond_a
    const/16 v7, 0x400

    :goto_6
    or-int/2addr v6, v7

    :cond_b
    :goto_7
    and-int/lit8 v7, v4, 0x10

    if-eqz v7, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    :goto_8
    const/16 v7, 0x20

    goto :goto_a

    :cond_d
    and-int/lit16 v7, v3, 0x6000

    if-nez v7, :cond_c

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 v7, 0x4000

    goto :goto_9

    :cond_e
    const/16 v7, 0x2000

    :goto_9
    or-int/2addr v6, v7

    goto :goto_8

    :goto_a
    and-int/lit8 v27, v4, 0x20

    const/high16 v28, 0x30000

    if-eqz v27, :cond_f

    or-int v6, v6, v28

    goto :goto_c

    :cond_f
    and-int v27, v3, v28

    if-nez v27, :cond_11

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    const/high16 v27, 0x20000

    goto :goto_b

    :cond_10
    move/from16 v27, v17

    :goto_b
    or-int v6, v6, v27

    :cond_11
    :goto_c
    and-int/lit8 v27, v4, 0x40

    const/high16 v29, 0x180000

    if-eqz v27, :cond_13

    or-int v6, v6, v29

    :cond_12
    :goto_d
    const/16 v7, 0x80

    goto :goto_f

    :cond_13
    and-int v27, v3, v29

    if-nez v27, :cond_12

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v27

    if-eqz v27, :cond_14

    const/high16 v27, 0x100000

    goto :goto_e

    :cond_14
    const/high16 v27, 0x80000

    :goto_e
    or-int v6, v6, v27

    goto :goto_d

    :goto_f
    and-int/lit16 v11, v4, 0x80

    const/high16 v27, 0xc00000

    if-eqz v11, :cond_16

    or-int v6, v6, v27

    :cond_15
    :goto_10
    const/16 v7, 0x100

    goto :goto_12

    :cond_16
    and-int v30, v3, v27

    move/from16 v7, p7

    if-nez v30, :cond_15

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v31

    if-eqz v31, :cond_17

    const/high16 v31, 0x800000

    goto :goto_11

    :cond_17
    const/high16 v31, 0x400000

    :goto_11
    or-int v6, v6, v31

    goto :goto_10

    :goto_12
    and-int/lit16 v12, v4, 0x100

    const/high16 v7, 0x6000000

    if-eqz v12, :cond_18

    or-int/2addr v6, v7

    move/from16 v7, p8

    goto :goto_14

    :cond_18
    and-int v31, v3, v7

    move/from16 v7, p8

    if-nez v31, :cond_1a

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v32

    if-eqz v32, :cond_19

    const/high16 v32, 0x4000000

    goto :goto_13

    :cond_19
    const/high16 v32, 0x2000000

    :goto_13
    or-int v6, v6, v32

    :cond_1a
    :goto_14
    and-int/lit16 v7, v4, 0x200

    const/high16 v32, 0x30000000

    if-eqz v7, :cond_1c

    or-int v6, v6, v32

    :cond_1b
    :goto_15
    move v7, v6

    const/16 v6, 0x400

    goto :goto_17

    :cond_1c
    and-int v7, v3, v32

    if-nez v7, :cond_1b

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/high16 v7, 0x20000000

    goto :goto_16

    :cond_1d
    const/high16 v7, 0x10000000

    :goto_16
    or-int/2addr v6, v7

    goto :goto_15

    :goto_17
    and-int/lit16 v3, v4, 0x400

    if-eqz v3, :cond_1e

    or-int/lit8 v3, v2, 0x6

    :goto_18
    const/16 v6, 0x800

    goto :goto_19

    :cond_1e
    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_20

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v26, 0x4

    :cond_1f
    or-int v3, v2, v26

    goto :goto_18

    :cond_20
    move v3, v2

    goto :goto_18

    :goto_19
    and-int/lit16 v9, v4, 0x800

    if-eqz v9, :cond_21

    or-int/lit8 v3, v3, 0x30

    goto :goto_1a

    :cond_21
    and-int/lit8 v6, v2, 0x30

    if-nez v6, :cond_23

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/16 v24, 0x20

    :cond_22
    or-int v3, v3, v24

    :cond_23
    :goto_1a
    and-int/lit16 v6, v4, 0x1000

    if-eqz v6, :cond_25

    or-int/lit16 v3, v3, 0x180

    move-object/from16 v9, p12

    :cond_24
    :goto_1b
    const/16 v6, 0x2000

    goto :goto_1d

    :cond_25
    and-int/lit16 v6, v2, 0x180

    move-object/from16 v9, p12

    if-nez v6, :cond_24

    const/4 v6, 0x4

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_26

    const/16 v30, 0x100

    goto :goto_1c

    :cond_26
    const/16 v30, 0x80

    :goto_1c
    or-int v3, v3, v30

    goto :goto_1b

    :goto_1d
    and-int/lit16 v1, v4, 0x2000

    if-eqz v1, :cond_28

    or-int/lit16 v3, v3, 0xc00

    :cond_27
    move-object/from16 v1, p13

    :goto_1e
    const/16 v6, 0x4000

    goto :goto_20

    :cond_28
    and-int/lit16 v1, v2, 0xc00

    if-nez v1, :cond_27

    move-object/from16 v1, p13

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_29

    const/16 v22, 0x800

    goto :goto_1f

    :cond_29
    const/16 v22, 0x400

    :goto_1f
    or-int v3, v3, v22

    goto :goto_1e

    :goto_20
    and-int/lit16 v10, v4, 0x4000

    if-eqz v10, :cond_2b

    or-int/lit16 v3, v3, 0x6000

    :cond_2a
    move-object/from16 v6, p14

    const/high16 v10, 0x800000

    goto :goto_22

    :cond_2b
    and-int/lit16 v6, v2, 0x6000

    if-nez v6, :cond_2a

    move-object/from16 v6, p14

    const/high16 v10, 0x800000

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2c

    const/16 v20, 0x4000

    goto :goto_21

    :cond_2c
    const/16 v20, 0x2000

    :goto_21
    or-int v3, v3, v20

    :goto_22
    const v16, 0x8000

    and-int v16, v4, v16

    if-eqz v16, :cond_2d

    or-int v3, v3, v28

    move-object/from16 v4, p15

    goto :goto_23

    :cond_2d
    and-int v16, v2, v28

    move-object/from16 v4, p15

    if-nez v16, :cond_2f

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2e

    const/high16 v17, 0x20000

    :cond_2e
    or-int v3, v3, v17

    :cond_2f
    :goto_23
    const v16, 0x12492493

    and-int v10, v7, v16

    const v2, 0x12492492

    if-ne v10, v2, :cond_31

    const v2, 0x12493

    and-int/2addr v2, v3

    const v10, 0x12492

    if-ne v2, v10, :cond_31

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_24

    :cond_30
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v1, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v14, v0

    move-object v15, v13

    move-object v13, v5

    move-object/from16 v5, p10

    goto/16 :goto_45

    :cond_31
    :goto_24
    const/4 v10, 0x0

    if-eqz v11, :cond_32

    move v11, v10

    goto :goto_25

    :cond_32
    move/from16 v11, p7

    :goto_25
    if-eqz v12, :cond_33

    int-to-float v2, v10

    move v12, v2

    goto :goto_26

    :cond_33
    move/from16 v12, p8

    :goto_26
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-ltz v11, :cond_78

    and-int/lit8 v2, v7, 0x70

    const/16 v10, 0x20

    move/from16 p7, v11

    if-ne v2, v10, :cond_34

    move/from16 v10, v25

    goto :goto_27

    :cond_34
    const/4 v10, 0x0

    :goto_27
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_35

    if-ne v11, v6, :cond_36

    :cond_35
    new-instance v11, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$pagerItemProvider$1$1;

    invoke-direct {v11, v0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$pagerItemProvider$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_36
    check-cast v11, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v20, v7, 0x3

    and-int/lit8 v22, v20, 0xe

    shr-int/lit8 v10, v3, 0xc

    and-int/lit8 v24, v10, 0x70

    or-int v24, v22, v24

    move/from16 p8, v10

    shl-int/lit8 v10, v3, 0x3

    and-int/lit16 v10, v10, 0x380

    or-int v10, v24, v10

    move/from16 v24, v12

    invoke-static {v4, v5}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-static {v8, v5}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    and-int/lit8 v26, v10, 0xe

    xor-int/lit8 v8, v26, 0x6

    const/4 v1, 0x4

    if-le v8, v1, :cond_37

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_38

    :cond_37
    and-int/lit8 v8, v10, 0x6

    if-ne v8, v1, :cond_39

    :cond_38
    move/from16 v1, v25

    goto :goto_28

    :cond_39
    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_3a

    if-ne v8, v6, :cond_3b

    :cond_3a
    sget-object v1, Landroidx/compose/runtime/ReferentialEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/ReferentialEqualityPolicy;

    new-instance v8, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$intervalContentState$1;

    invoke-direct {v8, v12, v4, v11}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$intervalContentState$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v8}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v4

    new-instance v8, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$itemProviderState$1;

    invoke-direct {v8, v4, v0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$itemProviderState$1;-><init>(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/foundation/pager/PagerState;)V

    invoke-static {v1, v8}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v34

    new-instance v8, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1;

    const-string v37, "getValue()Ljava/lang/Object;"

    const/16 v38, 0x0

    const-class v35, Landroidx/compose/runtime/State;

    const-string/jumbo v36, "value"

    move-object/from16 v33, v8

    invoke-direct/range {v33 .. v38}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3b
    move-object v1, v8

    check-cast v1, Lkotlin/reflect/KProperty0;

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v6, :cond_3c

    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v4, v5}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v4

    invoke-static {v4, v5}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v4

    :cond_3c
    check-cast v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v12, v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/16 v4, 0x20

    if-ne v2, v4, :cond_3d

    move/from16 v4, v25

    goto :goto_29

    :cond_3d
    const/4 v4, 0x0

    :goto_29
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_3e

    if-ne v8, v6, :cond_3f

    :cond_3e
    new-instance v8, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$measurePolicy$1$1;

    invoke-direct {v8, v0}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$measurePolicy$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3f
    move-object v10, v8

    check-cast v10, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v11, v7, 0x1c00

    const v4, 0xfff0

    and-int/2addr v4, v7

    shr-int/lit8 v8, v7, 0x6

    const/high16 v26, 0x70000

    and-int v30, v8, v26

    or-int v4, v4, v30

    const/high16 v30, 0x380000

    and-int v33, v8, v30

    or-int v4, v4, v33

    const/high16 v33, 0x1c00000

    and-int v8, v8, v33

    or-int/2addr v4, v8

    shl-int/lit8 v3, v3, 0x12

    const/high16 v8, 0xe000000

    and-int/2addr v8, v3

    or-int/2addr v4, v8

    const/high16 v8, 0x70000000

    and-int/2addr v3, v8

    or-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x70

    xor-int/lit8 v4, v4, 0x30

    const/16 v8, 0x20

    if-le v4, v8, :cond_40

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    :cond_40
    and-int/lit8 v4, v3, 0x30

    if-ne v4, v8, :cond_42

    :cond_41
    move/from16 v4, v25

    goto :goto_2a

    :cond_42
    const/4 v4, 0x0

    :goto_2a
    and-int/lit16 v8, v3, 0x380

    xor-int/lit16 v8, v8, 0x180

    move/from16 v33, v2

    const/16 v2, 0x100

    if-le v8, v2, :cond_43

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    :cond_43
    and-int/lit16 v8, v3, 0x180

    if-ne v8, v2, :cond_45

    :cond_44
    move/from16 v2, v25

    goto :goto_2b

    :cond_45
    const/4 v2, 0x0

    :goto_2b
    or-int/2addr v2, v4

    and-int/lit16 v4, v3, 0x1c00

    xor-int/lit16 v4, v4, 0xc00

    const/16 v8, 0x800

    if-le v4, v8, :cond_46

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v4

    if-nez v4, :cond_47

    :cond_46
    and-int/lit16 v4, v3, 0xc00

    if-ne v4, v8, :cond_48

    :cond_47
    move/from16 v4, v25

    goto :goto_2c

    :cond_48
    const/4 v4, 0x0

    :goto_2c
    or-int/2addr v2, v4

    const v4, 0xe000

    and-int/2addr v4, v3

    xor-int/lit16 v4, v4, 0x6000

    const/16 v8, 0x4000

    if-le v4, v8, :cond_49

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    :cond_49
    and-int/lit16 v4, v3, 0x6000

    if-ne v4, v8, :cond_4b

    :cond_4a
    move/from16 v4, v25

    goto :goto_2d

    :cond_4b
    const/4 v4, 0x0

    :goto_2d
    or-int/2addr v2, v4

    const/high16 v4, 0xe000000

    and-int/2addr v4, v3

    const/high16 v8, 0x6000000

    xor-int/2addr v4, v8

    const/high16 v8, 0x4000000

    if-le v4, v8, :cond_4c

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    :cond_4c
    const/high16 v4, 0x6000000

    and-int/2addr v4, v3

    if-ne v4, v8, :cond_4e

    :cond_4d
    move/from16 v4, v25

    goto :goto_2e

    :cond_4e
    const/4 v4, 0x0

    :goto_2e
    or-int/2addr v2, v4

    const/high16 v4, 0x70000000

    and-int/2addr v4, v3

    xor-int v4, v4, v32

    const/high16 v8, 0x20000000

    if-le v4, v8, :cond_4f

    move-object/from16 v4, p13

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_50

    goto :goto_2f

    :cond_4f
    move-object/from16 v4, p13

    :goto_2f
    and-int v4, v3, v32

    if-ne v4, v8, :cond_51

    :cond_50
    move/from16 v4, v25

    goto :goto_30

    :cond_51
    const/4 v4, 0x0

    :goto_30
    or-int/2addr v2, v4

    and-int v4, v3, v30

    xor-int v4, v4, v29

    const/high16 v8, 0x100000

    if-le v4, v8, :cond_52

    move/from16 v4, v24

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v18

    if-nez v18, :cond_53

    :cond_52
    and-int v4, v3, v29

    if-ne v4, v8, :cond_54

    :cond_53
    move/from16 v4, v25

    goto :goto_31

    :cond_54
    const/4 v4, 0x0

    :goto_31
    or-int/2addr v2, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v3

    xor-int v4, v4, v27

    const/high16 v8, 0x800000

    if-le v4, v8, :cond_55

    move-object/from16 v4, p9

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_56

    goto :goto_32

    :cond_55
    move-object/from16 v4, p9

    :goto_32
    and-int v4, v3, v27

    if-ne v4, v8, :cond_57

    :cond_56
    move/from16 v4, v25

    goto :goto_33

    :cond_57
    const/4 v4, 0x0

    :goto_33
    or-int/2addr v2, v4

    and-int/lit8 v4, p8, 0xe

    xor-int/lit8 v4, v4, 0x6

    const/4 v8, 0x4

    if-le v4, v8, :cond_58

    move-object v4, v6

    move-object/from16 v6, p14

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_59

    goto :goto_34

    :cond_58
    move-object v4, v6

    move-object/from16 v6, p14

    :goto_34
    and-int/lit8 v6, p8, 0x6

    if-ne v6, v8, :cond_5a

    :cond_59
    move/from16 v6, v25

    goto :goto_35

    :cond_5a
    const/4 v6, 0x0

    :goto_35
    or-int/2addr v2, v6

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    and-int v6, v3, v26

    xor-int v6, v6, v28

    const/high16 v8, 0x20000

    if-le v6, v8, :cond_5b

    move/from16 v6, p7

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v17

    if-nez v17, :cond_5c

    goto :goto_36

    :cond_5b
    move/from16 v6, p7

    :goto_36
    and-int v3, v3, v28

    if-ne v3, v8, :cond_5d

    :cond_5c
    move/from16 v3, v25

    goto :goto_37

    :cond_5d
    const/4 v3, 0x0

    :goto_37
    or-int/2addr v2, v3

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_5f

    if-ne v3, v4, :cond_5e

    goto :goto_38

    :cond_5e
    move-object/from16 p8, v1

    move-object/from16 v40, v4

    move/from16 p7, v6

    move/from16 v21, v7

    move/from16 v19, v11

    move-object/from16 v23, v12

    move-object v1, v13

    move/from16 v18, v24

    move/from16 v39, v33

    const/16 v16, 0x0

    move-object v13, v5

    goto :goto_39

    :cond_5f
    :goto_38
    new-instance v3, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;

    move-object/from16 v17, v12

    check-cast v17, Lkotlinx/coroutines/internal/ContextScope;

    move/from16 v39, v33

    move-object v2, v3

    move-object v0, v3

    move-object/from16 v3, p1

    move-object/from16 v40, v4

    move/from16 v18, v24

    move-object/from16 v4, p4

    move-object/from16 v41, v5

    move-object/from16 v5, p2

    move/from16 v19, v6

    move/from16 v6, p3

    move/from16 v21, v7

    move v9, v8

    move/from16 v7, v18

    move-object/from16 v8, p9

    move-object v9, v1

    const/16 v16, 0x0

    move/from16 p7, v19

    move/from16 v19, v11

    move-object/from16 v11, p13

    move-object/from16 p8, v1

    move-object/from16 v23, v12

    move-object/from16 v1, p5

    move-object/from16 v12, p12

    move-object v1, v13

    move/from16 v13, p7

    move-object/from16 v14, p14

    move-object/from16 v15, v17

    invoke-direct/range {v2 .. v15}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/pager/PageSize;Lkotlin/reflect/KProperty0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlinx/coroutines/internal/ContextScope;)V

    move-object/from16 v13, v41

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_39
    move-object v0, v3

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v1, v8, :cond_60

    move/from16 v10, v25

    goto :goto_3a

    :cond_60
    move/from16 v10, v16

    :goto_3a
    xor-int/lit8 v2, v22, 0x6

    const/4 v9, 0x4

    move-object/from16 v14, p1

    if-le v2, v9, :cond_61

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    :cond_61
    and-int/lit8 v2, v20, 0x6

    if-ne v2, v9, :cond_63

    :cond_62
    move/from16 v2, v25

    goto :goto_3b

    :cond_63
    move/from16 v2, v16

    :goto_3b
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v11, v40

    if-nez v2, :cond_64

    if-ne v3, v11, :cond_65

    :cond_64
    new-instance v3, Landroidx/compose/foundation/pager/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;

    invoke-direct {v3, v14, v10}, Landroidx/compose/foundation/pager/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Z)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_65
    move-object v4, v3

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move/from16 v2, v39

    const/16 v10, 0x20

    if-ne v2, v10, :cond_66

    move/from16 v3, v25

    goto :goto_3c

    :cond_66
    move/from16 v3, v16

    :goto_3c
    and-int v5, v21, v26

    const/high16 v6, 0x20000

    if-ne v5, v6, :cond_67

    move/from16 v5, v25

    goto :goto_3d

    :cond_67
    move/from16 v5, v16

    :goto_3d
    or-int/2addr v3, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_69

    if-ne v5, v11, :cond_68

    goto :goto_3e

    :cond_68
    move-object v15, v1

    move-object/from16 v1, p5

    goto :goto_3f

    :cond_69
    :goto_3e
    new-instance v5, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    move-object v15, v1

    move-object/from16 v1, p5

    invoke-direct {v5, v1, v14}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/pager/PagerState;)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_3f
    move-object v12, v5

    check-cast v12, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    sget-object v3, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-ne v2, v10, :cond_6a

    move/from16 v2, v25

    goto :goto_40

    :cond_6a
    move/from16 v2, v16

    :goto_40
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_6b

    if-ne v5, v11, :cond_6c

    :cond_6b
    new-instance v5, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    invoke-direct {v5, v14, v3}, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6c
    move-object/from16 v17, v5

    check-cast v17, Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;

    iget-object v2, v14, Landroidx/compose/foundation/pager/PagerState;->remeasurementModifier:Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    move-object/from16 v7, p0

    invoke-interface {v7, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v14, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v3, p8

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-ne v15, v8, :cond_6d

    move/from16 v3, v25

    goto :goto_41

    :cond_6d
    move/from16 v3, v16

    :goto_41
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz p6, :cond_6e

    new-instance v4, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;

    move-object/from16 v5, v23

    check-cast v5, Lkotlinx/coroutines/internal/ContextScope;

    invoke-direct {v4, v3, v14, v5}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;-><init>(ZLandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/internal/ContextScope;)V

    const/4 v3, 0x0

    invoke-static {v8, v3, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_42

    :cond_6e
    invoke-interface {v2, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :goto_42
    shr-int/lit8 v3, v21, 0x12

    and-int/lit8 v3, v3, 0x70

    or-int v3, v22, v3

    and-int/lit8 v4, v3, 0xe

    xor-int/lit8 v4, v4, 0x6

    if-le v4, v9, :cond_6f

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    :cond_6f
    and-int/lit8 v4, v3, 0x6

    if-ne v4, v9, :cond_71

    :cond_70
    move/from16 v4, v25

    goto :goto_43

    :cond_71
    move/from16 v4, v16

    :goto_43
    and-int/lit8 v5, v3, 0x70

    xor-int/lit8 v5, v5, 0x30

    move/from16 v9, p7

    if-le v5, v10, :cond_72

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    if-nez v5, :cond_74

    :cond_72
    and-int/lit8 v3, v3, 0x30

    if-ne v3, v10, :cond_73

    goto :goto_44

    :cond_73
    move/from16 v25, v16

    :cond_74
    :goto_44
    or-int v3, v4, v25

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_75

    if-ne v4, v11, :cond_76

    :cond_75
    new-instance v4, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;

    invoke-direct {v4, v14, v9}, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_76
    move-object v3, v4

    check-cast v3, Landroidx/compose/foundation/pager/PagerBeyondBoundsState;

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    const/16 v4, 0x200

    or-int v4, v4, v19

    shl-int/lit8 v5, v21, 0x3

    and-int v5, v5, v26

    or-int/2addr v4, v5

    and-int v5, v21, v30

    or-int v10, v4, v5

    iget-object v4, v14, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object v11, v8

    move/from16 v8, p6

    move/from16 v42, v9

    move-object v9, v13

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierLocalKt;->lazyLayoutBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/16 v16, 0x0

    iget-object v8, v14, Landroidx/compose/foundation/pager/PagerState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p3

    move-object v7, v12

    move-object/from16 v9, v17

    move-object v10, v13

    move-object v12, v11

    move/from16 v11, v16

    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/ScrollingContainerKt;->scrollingContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v3, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;

    const/4 v4, 0x0

    invoke-direct {v3, v14, v4}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$dragDirectionDetector$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v12, v14, v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v5, p10

    invoke-static {v2, v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v12, 0x0

    iget-object v8, v14, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v11, 0x0

    move-object/from16 v6, p8

    move-object v9, v0

    move-object v10, v13

    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    move/from16 v9, v18

    move/from16 v8, v42

    :goto_45
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_77

    new-instance v12, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v15, v12

    move-object/from16 v12, p11

    move-object v14, v13

    move-object/from16 v13, p12

    move-object/from16 v43, v14

    move-object/from16 v14, p13

    move-object/from16 v44, v15

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZIFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlin/jvm/functions/Function4;III)V

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_77
    return-void

    :cond_78
    move/from16 v42, v11

    const-string v0, "beyondViewportPageCount should be greater than or equal to 0, you selected "

    move/from16 v10, v42

    invoke-static {v10, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
