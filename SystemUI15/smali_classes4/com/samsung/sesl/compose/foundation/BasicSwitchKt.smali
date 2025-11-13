.class public abstract Lcom/samsung/sesl/compose/foundation/BasicSwitchKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final SeslBasicSwitch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 38

    move/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p8

    const/16 v0, 0x10

    const/16 v10, 0x20

    const/4 v1, 0x2

    const/4 v9, 0x6

    move-object/from16 v8, p7

    check-cast v8, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0xf17a275

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v2, p9, 0x1

    const/4 v6, 0x4

    if-eqz v2, :cond_0

    or-int/lit8 v2, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0xe

    if-nez v2, :cond_2

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/2addr v2, v15

    goto :goto_1

    :cond_2
    move v2, v15

    :goto_1
    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_3

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v1, v15, 0x70

    if-nez v1, :cond_5

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v10

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    or-int/2addr v2, v1

    :cond_5
    :goto_3
    and-int/lit8 v1, p9, 0x4

    if-eqz v1, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object/from16 v3, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v3, v15, 0x380

    if-nez v3, :cond_6

    move-object/from16 v3, p2

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x100

    goto :goto_4

    :cond_8
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v2, v4

    :goto_5
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v2, v2, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v15, 0x1c00

    if-nez v4, :cond_b

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x800

    goto :goto_6

    :cond_a
    const/16 v4, 0x400

    :goto_6
    or-int/2addr v2, v4

    :cond_b
    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_c

    or-int/lit16 v2, v2, 0x6000

    goto :goto_9

    :cond_c
    const v0, 0xe000

    and-int/2addr v0, v15

    if-nez v0, :cond_e

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x4000

    goto :goto_8

    :cond_d
    const/16 v0, 0x2000

    :goto_8
    or-int/2addr v2, v0

    :cond_e
    :goto_9
    and-int/lit8 v0, p9, 0x20

    const/high16 v16, 0x70000

    if-eqz v0, :cond_10

    const/high16 v4, 0x30000

    or-int/2addr v2, v4

    :cond_f
    move/from16 v4, p5

    goto :goto_b

    :cond_10
    and-int v4, v15, v16

    if-nez v4, :cond_f

    move/from16 v4, p5

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v17, 0x10000

    :goto_a
    or-int v2, v2, v17

    :goto_b
    and-int/lit8 v17, p9, 0x40

    if-eqz v17, :cond_13

    const/high16 v18, 0x180000

    or-int v2, v2, v18

    move-object/from16 v5, p6

    :cond_12
    :goto_c
    move/from16 v18, v2

    goto :goto_e

    :cond_13
    const/high16 v18, 0x380000

    and-int v18, v15, v18

    move-object/from16 v5, p6

    if-nez v18, :cond_12

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/high16 v18, 0x100000

    goto :goto_d

    :cond_14
    const/high16 v18, 0x80000

    :goto_d
    or-int v2, v2, v18

    goto :goto_c

    :goto_e
    const v2, 0x2db6db

    and-int v2, v18, v2

    const v6, 0x92492

    if-ne v2, v6, :cond_16

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v21, v5

    move-object v6, v8

    move v7, v11

    move-object v9, v13

    move v8, v4

    goto/16 :goto_1e

    :cond_16
    :goto_f
    if-eqz v1, :cond_17

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v1

    goto :goto_10

    :cond_17
    move-object v6, v3

    :goto_10
    if-eqz v0, :cond_18

    move v4, v7

    :cond_18
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const/4 v3, 0x0

    if-eqz v17, :cond_1a

    const v1, -0x3e7dc19f

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_19

    invoke-static {v8}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v1

    :cond_19
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v5, v1

    :cond_1a
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalHapticFeedback:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    const v1, 0x2e20b340

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v1, -0x1d58f75c

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_1b

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v8}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v1

    :cond_1b
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v1, v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, -0x3e7dab18

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    const/16 v20, 0x0

    if-ne v0, v2, :cond_1d

    if-eqz v11, :cond_1c

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_1c
    move/from16 v0, v20

    :goto_11
    const v9, 0x3c23d70a    # 0.01f

    invoke-static {v0, v9}, Landroidx/compose/animation/core/AnimatableKt;->Animatable(FF)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    sget-object v9, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v9}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/animation/core/Animatable;

    iget-object v9, v9, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    const v10, -0x3e7d9784

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_1e

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v10, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v27, v10

    check-cast v27, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v7, -0x3e7d90e5

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_1f

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1f
    check-cast v7, Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v10, -0x3e7d89a2

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_20

    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_20
    check-cast v10, Landroidx/compose/runtime/MutableFloatState;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v3, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$animateFraction$2;

    invoke-direct {v3, v1, v9, v0}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$animateFraction$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V

    invoke-static {v3, v8}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v28

    if-eqz v12, :cond_21

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v0, v4, v5}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_12

    :cond_21
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_12
    invoke-interface {v6, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v12, :cond_22

    sget-object v20, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v3, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/semantics/Role;->Switch:I

    invoke-static {v3}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    move-result-object v24

    sget-object v25, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$2;->INSTANCE:Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$2;

    const/16 v26, 0x8

    const/16 v22, 0x0

    move-object/from16 v21, v5

    move/from16 v23, v4

    invoke-static/range {v20 .. v26}, Landroidx/compose/foundation/ClickableKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    goto :goto_13

    :cond_22
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_13
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v3, -0x3e7bd8de

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v20, v1

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_23

    if-ne v1, v2, :cond_24

    :cond_23
    new-instance v1, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1;

    invoke-direct {v1, v7, v9}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$3$1;-><init>(Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/State;)V

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_24
    check-cast v1, Landroidx/compose/ui/layout/MeasurePolicy;

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, -0x4ee9b9da

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget v3, v8, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move-object/from16 p6, v2

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    move-object/from16 v21, v5

    iget-object v5, v8, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_37

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_25

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_14

    :cond_25
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_14
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    move-object/from16 v23, v6

    iget-boolean v6, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_26

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    :cond_26
    invoke-static {v3, v8, v3, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_27
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v3, v8, v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v11, 0x7ab4aae9

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v0, Lcom/samsung/sesl/compose/foundation/SwitchComponents;->TRACK:Lcom/samsung/sesl/compose/foundation/SwitchComponents;

    invoke-static {v3, v0}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v11, 0x3

    move-object/from16 v25, v10

    const/4 v10, 0x0

    invoke-static {v0, v10, v6, v11}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v10, 0x2bb5b5d7

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v26, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v10, v8, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    move-result-object v10

    const v6, -0x4ee9b9da

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget v6, v8, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    if-eqz v5, :cond_36

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v30, v5

    iget-boolean v5, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_28

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_15

    :cond_28
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_15
    invoke-static {v8, v10, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v5, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_29

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    :cond_29
    invoke-static {v6, v8, v6, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_2a
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v5, v8, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v9}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    shr-int/lit8 v5, v18, 0x9

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v0, v8, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Lcom/samsung/sesl/compose/foundation/SwitchComponents;->THUMB:Lcom/samsung/sesl/compose/foundation/SwitchComponents;

    invoke-static {v3, v0}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v11, 0x3

    invoke-static {v0, v6, v5, v11}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const v0, -0x7616e7a1

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-eqz v12, :cond_30

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v10, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$2;

    const/16 v29, 0x0

    move-object v14, v0

    move-object v0, v10

    move-object/from16 v31, v1

    move v1, v4

    move-object/from16 v32, p6

    move-object/from16 v33, v2

    move-object v2, v9

    move-object v5, v3

    move-object v3, v7

    move v7, v4

    move-object/from16 v4, v25

    move-object/from16 v34, v5

    move/from16 v25, v30

    move-object/from16 v5, p1

    move-object/from16 v35, v6

    move-object/from16 v19, v23

    move-object/from16 v6, v20

    move/from16 p2, v7

    move-object/from16 v7, v28

    move-object/from16 v36, v8

    move-object/from16 v8, v27

    move-object/from16 v37, v9

    move-object/from16 p5, v13

    const/4 v13, 0x6

    move/from16 v9, p0

    move-object v13, v10

    move-object/from16 p6, v15

    const/16 v15, 0x20

    move-object/from16 v10, v29

    invoke-direct/range {v0 .. v10}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$2;-><init>(ZLandroidx/compose/runtime/State;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;ZLkotlin/coroutines/Continuation;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v14, v13}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, -0x761622e8

    move-object/from16 v6, v36

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int v3, v18, v16

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_2b

    const/4 v7, 0x1

    goto :goto_16

    :cond_2b
    const/4 v7, 0x0

    :goto_16
    and-int/lit8 v3, v18, 0x70

    if-ne v3, v15, :cond_2c

    const/4 v3, 0x1

    goto :goto_17

    :cond_2c
    const/4 v3, 0x0

    :goto_17
    or-int/2addr v3, v7

    and-int/lit8 v4, v18, 0xe

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2d

    const/4 v7, 0x1

    goto :goto_18

    :cond_2d
    const/4 v7, 0x0

    :goto_18
    or-int/2addr v3, v7

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2f

    move-object/from16 v3, v32

    if-ne v4, v3, :cond_2e

    goto :goto_19

    :cond_2e
    move/from16 v7, p0

    move/from16 v8, p2

    const/4 v3, 0x0

    goto :goto_1a

    :cond_2f
    :goto_19
    new-instance v4, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;

    const/4 v3, 0x0

    move/from16 v7, p0

    move/from16 v8, p2

    invoke-direct {v4, v8, v12, v7, v3}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$4$3$1;-><init>(ZLkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_1a
    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_1b

    :cond_30
    move/from16 v7, p0

    move-object/from16 v31, v1

    move-object/from16 v33, v2

    move-object v0, v3

    move-object v6, v8

    move-object/from16 v37, v9

    move-object/from16 p5, v13

    move-object/from16 p6, v15

    move-object/from16 v19, v23

    move/from16 v25, v30

    const/4 v3, 0x0

    move v8, v4

    :goto_1b
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v11, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    const v2, 0x2bb5b5d7

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const/4 v2, 0x6

    invoke-static {v1, v6, v2}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    move-result-object v1

    const v2, -0x4ee9b9da

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    iget v2, v6, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    if-eqz v25, :cond_35

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v3, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_31

    move-object/from16 v3, p6

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    :goto_1c
    move-object/from16 v3, p5

    goto :goto_1d

    :cond_31
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    goto :goto_1c

    :goto_1d
    invoke-static {v6, v1, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, v31

    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_32

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    :cond_32
    move-object/from16 v1, v33

    invoke-static {v2, v6, v2, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_33
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    move-object/from16 v0, v37

    iget-object v0, v0, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x6

    shr-int/lit8 v1, v18, 0x6

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v9, p3

    invoke-interface {v9, v0, v6, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    new-instance v11, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$5;

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, v17

    move/from16 v2, p0

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct/range {v0 .. v5}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$5;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v10, v11}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, v19

    :goto_1e
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_34

    new-instance v11, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$6;

    move-object v0, v11

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v8

    move-object/from16 v7, v21

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/samsung/sesl/compose/foundation/BasicSwitchKt$SeslBasicSwitch$6;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_34
    return-void

    :cond_35
    move-object v0, v3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0

    :cond_36
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0

    :cond_37
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v0
.end method
