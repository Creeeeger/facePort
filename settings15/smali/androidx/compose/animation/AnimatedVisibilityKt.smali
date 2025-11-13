.class public abstract Landroidx/compose/animation/AnimatedVisibilityKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    const/16 v0, 0x80

    const/16 v10, 0x10

    const/16 v11, 0x20

    const/4 v12, 0x2

    move-object/from16 v15, p7

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v13, -0x352a56be    # -7001249.0f

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v14, 0x1

    and-int/lit8 v13, v9, 0x1

    const/4 v14, 0x4

    if-eqz v13, :cond_0

    or-int/lit8 v13, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v13, v8, 0x6

    if-nez v13, :cond_2

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move v13, v14

    goto :goto_0

    :cond_1
    move v13, v12

    :goto_0
    or-int/2addr v13, v8

    goto :goto_1

    :cond_2
    move v13, v8

    :goto_1
    and-int/2addr v12, v9

    if-eqz v12, :cond_3

    or-int/lit8 v13, v13, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v12, v8, 0x30

    if-nez v12, :cond_5

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v12, v11

    goto :goto_2

    :cond_4
    move v12, v10

    :goto_2
    or-int/2addr v13, v12

    :cond_5
    :goto_3
    and-int/lit8 v12, v9, 0x4

    if-eqz v12, :cond_6

    or-int/lit16 v13, v13, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v12, v8, 0x180

    if-nez v12, :cond_8

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0x100

    goto :goto_4

    :cond_7
    move v12, v0

    :goto_4
    or-int/2addr v13, v12

    :cond_8
    :goto_5
    and-int/lit8 v12, v9, 0x8

    if-eqz v12, :cond_9

    or-int/lit16 v13, v13, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v12, v8, 0xc00

    if-nez v12, :cond_b

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v13, v12

    :cond_b
    :goto_7
    and-int/2addr v10, v9

    if-eqz v10, :cond_c

    or-int/lit16 v13, v13, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v10, v8, 0x6000

    if-nez v10, :cond_e

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v13, v10

    :cond_e
    :goto_9
    and-int/lit8 v10, v9, 0x20

    const/high16 v11, 0x30000

    if-eqz v10, :cond_f

    or-int/2addr v13, v11

    goto :goto_b

    :cond_f
    and-int v10, v8, v11

    if-nez v10, :cond_11

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/high16 v10, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v10, 0x10000

    :goto_a
    or-int/2addr v13, v10

    :cond_11
    :goto_b
    and-int/lit8 v10, v9, 0x40

    const/4 v11, 0x0

    const/high16 v12, 0x180000

    if-eqz v10, :cond_12

    or-int/2addr v13, v12

    goto :goto_e

    :cond_12
    and-int v10, v8, v12

    if-nez v10, :cond_15

    const/high16 v10, 0x200000

    and-int/2addr v10, v8

    if-nez v10, :cond_13

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_c

    :cond_13
    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    :goto_c
    if-eqz v10, :cond_14

    const/high16 v10, 0x100000

    goto :goto_d

    :cond_14
    const/high16 v10, 0x80000

    :goto_d
    or-int/2addr v13, v10

    :cond_15
    :goto_e
    and-int/2addr v0, v9

    const/high16 v10, 0xc00000

    if-eqz v0, :cond_17

    or-int/2addr v13, v10

    :cond_16
    :goto_f
    move v0, v13

    goto :goto_11

    :cond_17
    and-int v0, v8, v10

    if-nez v0, :cond_16

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/high16 v0, 0x800000

    goto :goto_10

    :cond_18
    const/high16 v0, 0x400000

    :goto_10
    or-int/2addr v13, v0

    goto :goto_f

    :goto_11
    const v10, 0x492493

    and-int/2addr v10, v0

    const v12, 0x492492

    if-ne v10, v12, :cond_1b

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_19

    goto :goto_12

    :cond_19
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :cond_1a
    move-object v9, v15

    goto/16 :goto_2b

    :cond_1b
    :goto_12
    sget-object v10, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v10, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v12, v1, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    if-nez v10, :cond_1c

    invoke-virtual {v12}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getHasInitialValueAnimations()Z

    move-result v10

    if-eqz v10, :cond_1a

    :cond_1c
    and-int/lit8 v10, v0, 0xe

    or-int/lit8 v13, v10, 0x30

    and-int/lit8 v11, v13, 0xe

    xor-int/lit8 v8, v11, 0x6

    const/4 v9, 0x0

    if-le v8, v14, :cond_1d

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    :cond_1d
    and-int/lit8 v8, v13, 0x6

    if-ne v8, v14, :cond_1f

    :cond_1e
    const/4 v8, 0x1

    goto :goto_13

    :cond_1f
    move v8, v9

    :goto_13
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v8, :cond_20

    if-ne v13, v14, :cond_21

    :cond_20
    invoke-virtual {v12}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v12}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v13

    :cond_22
    const v8, -0x1bd001fd

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v1, v2, v13, v15}, Landroidx/compose/animation/AnimatedVisibilityKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/EnterExitState;

    move-result-object v12

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v13, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v1, v2, v13, v15}, Landroidx/compose/animation/AnimatedVisibilityKt;->targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/EnterExitState;

    move-result-object v8

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    or-int/lit16 v11, v11, 0xc00

    invoke-static {v1, v12, v8, v15, v11}, Landroidx/compose/animation/core/TransitionKt;->createChildTransitionInternal(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterExitState;Landroidx/compose/animation/EnterExitState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v8

    invoke-static {v6, v15}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    iget-object v12, v8, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v12}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v8, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v12, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    or-int v12, v12, v17

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v12, :cond_23

    if-ne v1, v14, :cond_24

    :cond_23
    new-instance v1, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1;

    const/4 v12, 0x0

    invoke-direct {v1, v8, v11, v12}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_24
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v9, v1}, Landroidx/compose/runtime/SnapshotStateKt;->produceState(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iget-object v9, v8, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v9}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    if-ne v11, v12, :cond_25

    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v12, :cond_25

    const/4 v11, 0x1

    goto :goto_14

    :cond_25
    const/4 v11, 0x0

    :goto_14
    if-eqz v11, :cond_26

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_26
    const/4 v1, 0x4

    if-ne v10, v1, :cond_27

    const/4 v1, 0x1

    goto :goto_15

    :cond_27
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_28

    if-ne v10, v14, :cond_29

    :cond_28
    new-instance v10, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    invoke-direct {v10}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;-><init>()V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_29
    check-cast v10, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    if-nez v11, :cond_2a

    if-ne v12, v14, :cond_2b

    :cond_2a
    invoke-static {v4, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    check-cast v12, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v9}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    if-ne v11, v6, :cond_2d

    invoke-virtual {v9}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_2d

    invoke-virtual {v8}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v12, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_16

    :cond_2c
    sget-object v6, Landroidx/compose/animation/EnterTransition;->None:Landroidx/compose/animation/EnterTransitionImpl;

    invoke-interface {v12, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_16

    :cond_2d
    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_2e

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/EnterTransition;

    invoke-virtual {v6, v4}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v6

    invoke-interface {v12, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2e
    :goto_16
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/EnterTransition;

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_2f

    if-ne v12, v14, :cond_30

    :cond_2f
    invoke-static {v5, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v12, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v9}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-ne v2, v11, :cond_32

    invoke-virtual {v9}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_32

    invoke-virtual {v8}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v12, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_17

    :cond_31
    sget-object v2, Landroidx/compose/animation/ExitTransition;->None:Landroidx/compose/animation/ExitTransitionImpl;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_17

    :cond_32
    invoke-virtual {v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v7, :cond_33

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/ExitTransition;

    invoke-virtual {v2, v5}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v2

    invoke-interface {v12, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_33
    :goto_17
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/ExitTransition;

    move-object v7, v6

    check-cast v7, Landroidx/compose/animation/EnterTransitionImpl;

    iget-object v7, v7, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v9, v7, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    if-nez v9, :cond_35

    move-object v9, v2

    check-cast v9, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v9, v9, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v9, v9, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    if-eqz v9, :cond_34

    goto :goto_18

    :cond_34
    const/4 v9, 0x0

    goto :goto_19

    :cond_35
    :goto_18
    const/4 v9, 0x1

    :goto_19
    iget-object v11, v7, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    if-nez v11, :cond_37

    move-object v12, v2

    check-cast v12, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v12, v12, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v12, v12, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    if-eqz v12, :cond_36

    goto :goto_1a

    :cond_36
    const/4 v12, 0x0

    goto :goto_1b

    :cond_37
    :goto_1a
    const/4 v12, 0x1

    :goto_1b
    const v13, -0x9d65f51

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v9, :cond_39

    sget-object v9, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v14, :cond_38

    const-string v13, "Built-in slide"

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_38
    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/String;

    const/16 v17, 0x180

    const/16 v18, 0x0

    move-object v13, v8

    move-object v4, v14

    move-object v14, v9

    move-object v9, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v9

    invoke-static/range {v13 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v13

    move-object/from16 v26, v13

    const/4 v13, 0x0

    goto :goto_1c

    :cond_39
    move-object v4, v14

    move-object v9, v15

    const/4 v13, 0x0

    const/16 v26, 0x0

    :goto_1c
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v13, -0x9d64a16

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v12, :cond_3b

    sget-object v14, Landroidx/compose/animation/core/VectorConvertersKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_3a

    const-string v13, "Built-in shrink/expand"

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3a
    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    const/16 v17, 0x180

    const/16 v18, 0x0

    move-object v13, v8

    move-object/from16 v16, v9

    invoke-static/range {v13 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v13

    move-object/from16 v27, v13

    const/4 v13, 0x0

    goto :goto_1d

    :cond_3b
    const/4 v13, 0x0

    const/16 v27, 0x0

    :goto_1d
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v13, -0x9d634e5

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v12, :cond_3d

    sget-object v14, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_3c

    const-string v13, "Built-in InterruptionHandlingOffset"

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3c
    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    const/16 v17, 0x180

    const/16 v18, 0x0

    move-object v13, v8

    move-object/from16 v16, v9

    invoke-static/range {v13 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v13

    move-object/from16 v28, v13

    const/4 v13, 0x0

    goto :goto_1e

    :cond_3d
    const/4 v13, 0x0

    const/16 v28, 0x0

    :goto_1e
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v11, :cond_3e

    iget-boolean v11, v11, Landroidx/compose/animation/ChangeSize;->clip:Z

    if-nez v11, :cond_3e

    goto :goto_1f

    :cond_3e
    move-object v11, v2

    check-cast v11, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v11, v11, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v11, v11, Landroidx/compose/animation/TransitionData;->changeSize:Landroidx/compose/animation/ChangeSize;

    if-eqz v11, :cond_3f

    iget-boolean v11, v11, Landroidx/compose/animation/ChangeSize;->clip:Z

    if-nez v11, :cond_3f

    goto :goto_1f

    :cond_3f
    if-nez v12, :cond_40

    :goto_1f
    const/4 v11, 0x1

    goto :goto_20

    :cond_40
    const/4 v11, 0x0

    :goto_20
    iget-object v12, v7, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    if-nez v12, :cond_42

    move-object v12, v2

    check-cast v12, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v12, v12, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v12, v12, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    if-eqz v12, :cond_41

    goto :goto_21

    :cond_41
    const/4 v14, 0x0

    goto :goto_22

    :cond_42
    :goto_21
    const/4 v14, 0x1

    :goto_22
    iget-object v7, v7, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-nez v7, :cond_44

    move-object v7, v2

    check-cast v7, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object v7, v7, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v7, v7, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v7, :cond_43

    goto :goto_23

    :cond_43
    const/4 v7, 0x0

    goto :goto_24

    :cond_44
    :goto_23
    const/4 v7, 0x1

    :goto_24
    const v12, -0x5c232908

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v14, :cond_46

    sget-object v14, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_45

    const-string v12, "Built-in alpha"

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_45
    move-object v15, v12

    check-cast v15, Ljava/lang/String;

    const/16 v17, 0x180

    const/16 v18, 0x0

    move-object v13, v8

    move-object/from16 v16, v9

    invoke-static/range {v13 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v12

    :goto_25
    const/4 v13, 0x0

    goto :goto_26

    :cond_46
    const/4 v12, 0x0

    goto :goto_25

    :goto_26
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v13, -0x5c231068

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v7, :cond_48

    sget-object v14, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_47

    const-string v13, "Built-in scale"

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_47
    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    const/16 v17, 0x180

    const/16 v18, 0x0

    move-object v13, v8

    move-object/from16 v16, v9

    invoke-static/range {v13 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v13

    move-object v15, v13

    const/4 v13, 0x0

    goto :goto_27

    :cond_48
    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_27
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v13, -0x5c22f678

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v7, :cond_49

    sget-object v14, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const-string v7, "TransformOriginInterruptionHandling"

    const/16 v17, 0x180

    const/16 v18, 0x0

    move-object v13, v8

    move-object v5, v15

    move-object v15, v7

    move-object/from16 v16, v9

    invoke-static/range {v13 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v7

    :goto_28
    const/4 v13, 0x0

    goto :goto_29

    :cond_49
    move-object v5, v15

    const/4 v7, 0x0

    goto :goto_28

    :goto_29
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_4a

    if-ne v14, v4, :cond_4b

    :cond_4a
    new-instance v14, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    move-object/from16 v19, v14

    move-object/from16 v20, v12

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v25, v7

    invoke-direct/range {v19 .. v25}, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4b
    move-object v5, v14

    check-cast v5, Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;

    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_4c

    if-ne v13, v4, :cond_4d

    :cond_4c
    new-instance v13, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;

    invoke-direct {v13, v1, v11}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2$1;-><init>(Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4d
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v13}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    new-instance v12, Landroidx/compose/animation/EnterExitTransitionElement;

    move-object/from16 v19, v12

    move-object/from16 v20, v8

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v23, v26

    move-object/from16 v24, v6

    move-object/from16 v25, v2

    move-object/from16 v26, v1

    move-object/from16 v27, v5

    invoke-direct/range {v19 .. v27}, Landroidx/compose/animation/EnterExitTransitionElement;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/EnterExitTransitionKt$$ExternalSyntheticLambda0;)V

    invoke-interface {v11, v12}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x5e4762d0

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v1, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v3, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4e

    new-instance v2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    invoke-direct {v2, v10}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4e
    check-cast v2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    iget v4, v9, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v9, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v7, v9, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_53

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_4f

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2a

    :cond_4f
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2a
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v5, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_50

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    :cond_50
    invoke-static {v4, v9, v4, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_51
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shr-int/lit8 v0, v0, 0x12

    and-int/lit8 v0, v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v7, p6

    invoke-interface {v7, v10, v9, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2b
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_52

    new-instance v11, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$4;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    iput-object v11, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_52
    return-void

    :cond_53
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move/from16 v7, p7

    const/4 v0, 0x3

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/4 v4, 0x4

    move-object/from16 v5, p6

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x7c7f8c4e

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v8, p8, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v7, 0x6

    move/from16 v15, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v7, 0x6

    move/from16 v15, p0

    if-nez v8, :cond_2

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    or-int/2addr v8, v7

    goto :goto_1

    :cond_2
    move v8, v7

    :goto_1
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v8, v8, 0x30

    :cond_3
    move-object/from16 v9, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v7, 0x30

    if-nez v9, :cond_3

    move-object/from16 v9, p1

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v2

    goto :goto_2

    :cond_5
    move v10, v1

    :goto_2
    or-int/2addr v8, v10

    :goto_3
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v8, v8, 0x180

    :cond_6
    move-object/from16 v10, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v7, 0x180

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v8, v11

    :goto_5
    and-int/lit8 v11, p8, 0x8

    if-eqz v11, :cond_a

    or-int/lit16 v8, v8, 0xc00

    :cond_9
    move-object/from16 v12, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v7, 0xc00

    if-nez v12, :cond_9

    move-object/from16 v12, p3

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v8, v13

    :goto_7
    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move-object/from16 v13, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v13, v7, 0x6000

    if-nez v13, :cond_c

    move-object/from16 v13, p4

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x4000

    goto :goto_8

    :cond_e
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v8, v14

    :goto_9
    and-int/lit8 v2, p8, 0x20

    const/high16 v14, 0x30000

    if-eqz v2, :cond_10

    or-int/2addr v8, v14

    :cond_f
    move-object/from16 v2, p5

    goto :goto_b

    :cond_10
    and-int v2, v7, v14

    if-nez v2, :cond_f

    move-object/from16 v2, p5

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v8, v14

    :goto_b
    const v14, 0x12493

    and-int/2addr v14, v8

    const v6, 0x12492

    if-ne v14, v6, :cond_13

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v9

    move-object v3, v10

    move-object v4, v12

    goto/16 :goto_11

    :cond_13
    :goto_c
    if-eqz v3, :cond_14

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_d

    :cond_14
    move-object v3, v9

    :goto_d
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/BiasAlignment;

    const/high16 v9, 0x43c80000    # 400.0f

    const/4 v14, 0x0

    if-eqz v4, :cond_15

    invoke-static {v14, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v4

    sget-object v10, Landroidx/compose/animation/core/VisibilityThresholdsKt;->visibilityThresholdMap:Ljava/util/Map;

    move/from16 v16, v1

    const/4 v10, 0x1

    invoke-static {v10, v10}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    new-instance v14, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v14, v0, v1}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-static {v9, v14, v10}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt$expandIn$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$expandIn$1;

    new-instance v14, Landroidx/compose/animation/EnterTransitionImpl;

    new-instance v9, Landroidx/compose/animation/TransitionData;

    new-instance v2, Landroidx/compose/animation/ChangeSize;

    invoke-direct {v2, v6, v1, v0, v10}, Landroidx/compose/animation/ChangeSize;-><init>(Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;Z)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x3b

    move-object/from16 v17, v9

    move-object/from16 v20, v2

    invoke-direct/range {v17 .. v24}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {v14, v9}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    invoke-virtual {v4, v14}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransitionImpl;

    move-result-object v0

    goto :goto_e

    :cond_15
    move/from16 v16, v1

    move-object v0, v10

    :goto_e
    if-eqz v11, :cond_16

    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v1, Landroidx/compose/animation/core/VisibilityThresholdsKt;->visibilityThresholdMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1, v1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v9

    new-instance v2, Landroidx/compose/ui/unit/IntSize;

    invoke-direct {v2, v9, v10}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    const/high16 v4, 0x43c80000    # 400.0f

    invoke-static {v4, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v2

    sget-object v4, Landroidx/compose/animation/EnterExitTransitionKt$shrinkOut$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$shrinkOut$1;

    new-instance v9, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance v10, Landroidx/compose/animation/TransitionData;

    new-instance v11, Landroidx/compose/animation/ChangeSize;

    invoke-direct {v11, v6, v4, v2, v1}, Landroidx/compose/animation/ChangeSize;-><init>(Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;Z)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x3b

    move-object/from16 v17, v10

    move-object/from16 v20, v11

    invoke-direct/range {v17 .. v24}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;I)V

    invoke-direct {v9, v10}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransitionImpl;

    move-result-object v1

    goto :goto_f

    :cond_16
    move-object v1, v12

    :goto_f
    if-eqz v16, :cond_17

    const-string v2, "AnimatedVisibility"

    goto :goto_10

    :cond_17
    move-object v2, v13

    :goto_10
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    and-int/lit8 v6, v8, 0xe

    shr-int/lit8 v9, v8, 0x9

    and-int/lit8 v9, v9, 0x70

    or-int/2addr v6, v9

    const/4 v9, 0x0

    invoke-static {v4, v2, v5, v6, v9}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v4

    sget-object v9, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$1;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$1;

    const/4 v6, 0x3

    shl-int/lit8 v6, v8, 0x3

    and-int/lit16 v10, v6, 0x380

    or-int/lit8 v10, v10, 0x30

    and-int/lit16 v11, v6, 0x1c00

    or-int/2addr v10, v11

    const v11, 0xe000

    and-int/2addr v6, v11

    or-int/2addr v6, v10

    const/high16 v10, 0x70000

    and-int/2addr v8, v10

    or-int/2addr v6, v8

    move-object v8, v4

    move-object v10, v3

    move-object v11, v0

    move-object v12, v1

    move-object/from16 v13, p5

    move-object v14, v5

    move v15, v6

    invoke-static/range {v8 .. v15}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v1

    move-object v13, v2

    move-object v2, v3

    move-object v3, v0

    :goto_11
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_18

    new-instance v10, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;

    move-object v0, v10

    move/from16 v1, p0

    move-object v5, v13

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final AnimatedVisibilityImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p7

    move-object/from16 v14, p6

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x19a0f3eb

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v13, 0x6

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    and-int/lit8 v2, v13, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_3

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_3
    and-int/lit16 v2, v13, 0x180

    if-nez v2, :cond_5

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v0, v2

    :cond_5
    and-int/lit16 v2, v13, 0xc00

    move-object/from16 v15, p3

    if-nez v2, :cond_7

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_4

    :cond_6
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v0, v2

    :cond_7
    and-int/lit16 v2, v13, 0x6000

    move-object/from16 v9, p4

    if-nez v2, :cond_9

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_5

    :cond_8
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v0, v2

    :cond_9
    const/high16 v2, 0x30000

    and-int v4, v13, v2

    move-object/from16 v8, p5

    if-nez v4, :cond_b

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x10000

    :goto_6
    or-int/2addr v0, v4

    :cond_b
    const v4, 0x12493

    and-int/2addr v4, v0

    const v5, 0x12492

    if-ne v4, v5, :cond_d

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_9

    :cond_d
    :goto_7
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v4, v0, 0x70

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v3, :cond_e

    move v3, v6

    goto :goto_8

    :cond_e
    move v3, v5

    :goto_8
    and-int/lit8 v7, v0, 0xe

    if-ne v7, v1, :cond_f

    move v5, v6

    :cond_f
    or-int v1, v3, v5

    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_10

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_11

    :cond_10
    new-instance v3, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;

    invoke-direct {v3, v11, v10}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Transition;)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-static {v12, v3}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$2;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$2;

    or-int v1, v7, v2

    or-int/2addr v1, v4

    and-int/lit16 v2, v0, 0x1c00

    or-int/2addr v1, v2

    const v2, 0xe000

    and-int/2addr v2, v0

    or-int/2addr v1, v2

    const/high16 v2, 0x1c00000

    shl-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v2

    or-int v16, v1, v0

    const/16 v17, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object v7, v14

    move/from16 v8, v16

    move/from16 v9, v17

    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_9
    invoke-virtual {v14}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_12

    new-instance v9, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibilityImpl$3;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;I)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final targetEnterExit(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/EnterExitState;
    .locals 6

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const/4 v0, 0x0

    const v1, -0x35c429c8

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, p0, v0}, Landroidx/compose/runtime/ComposerImpl;->start-BaiHCIY(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    sget-object v1, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    sget-object v3, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    sget-object v4, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    :goto_0
    move-object v1, v4

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_1
    move-object v1, v3

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v5, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method
