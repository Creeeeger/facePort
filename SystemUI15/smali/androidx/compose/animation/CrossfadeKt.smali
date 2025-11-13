.class public abstract Landroidx/compose/animation/CrossfadeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p6

    const/4 v0, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x6

    const/4 v7, 0x1

    move-object/from16 v8, p5

    check-cast v8, Landroidx/compose/runtime/ComposerImpl;

    const v9, 0x2878cc2f

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/high16 v9, -0x80000000

    and-int v9, p7, v9

    const/4 v10, 0x4

    if-eqz v9, :cond_0

    or-int/lit8 v9, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v6, 0x6

    if-nez v9, :cond_2

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    move v9, v3

    :goto_0
    or-int/2addr v9, v6

    goto :goto_1

    :cond_2
    move v9, v6

    :goto_1
    and-int/lit8 v11, p7, 0x1

    if-eqz v11, :cond_4

    or-int/lit8 v9, v9, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v6, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x20

    goto :goto_2

    :cond_5
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v9, v13

    :goto_3
    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move-object/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v6, 0x180

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    const/16 v14, 0x80

    :goto_4
    or-int/2addr v9, v14

    :goto_5
    and-int/lit8 v14, p7, 0x4

    if-eqz v14, :cond_a

    or-int/lit16 v9, v9, 0xc00

    :cond_9
    move-object/from16 v15, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v15, v6, 0xc00

    if-nez v15, :cond_9

    move-object/from16 v15, p3

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v9, v9, v16

    :goto_7
    and-int/lit8 v16, p7, 0x8

    if-eqz v16, :cond_c

    or-int/lit16 v9, v9, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v4, v6, 0x6000

    if-nez v4, :cond_e

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x4000

    goto :goto_8

    :cond_d
    const/16 v4, 0x2000

    :goto_8
    or-int/2addr v9, v4

    :cond_e
    :goto_9
    and-int/lit16 v4, v9, 0x2493

    const/16 v2, 0x2492

    if-ne v4, v2, :cond_10

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v6, v5

    :goto_a
    move-object v2, v12

    move-object v3, v13

    move-object v4, v15

    goto/16 :goto_19

    :cond_10
    :goto_b
    if-eqz v11, :cond_11

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v2

    :cond_11
    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    invoke-static {v4, v4, v2, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    move-object v13, v3

    :cond_12
    if-eqz v14, :cond_13

    sget-object v3, Landroidx/compose/animation/CrossfadeKt$Crossfade$3;->INSTANCE:Landroidx/compose/animation/CrossfadeKt$Crossfade$3;

    move-object v15, v3

    :cond_13
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v11, :cond_14

    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    iget-object v14, v1, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v14}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v11, :cond_15

    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v14, Landroidx/collection/MutableScatterMap;

    const v2, 0x4bfa32ca    # 3.2794004E7f

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->transitionState:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v2}, Landroidx/compose/animation/core/TransitionState;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v2

    if-ne v2, v7, :cond_16

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_16
    and-int/lit8 v2, v9, 0xe

    const/4 v9, 0x4

    if-ne v2, v9, :cond_17

    move v2, v7

    goto :goto_c

    :cond_17
    move v2, v4

    :goto_c
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_18

    if-ne v9, v11, :cond_19

    :cond_18
    new-instance v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;

    invoke-direct {v9, v1}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_19
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v14}, Landroidx/collection/MutableScatterMap;->clear()V

    :cond_1a
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, 0x4bfa6448    # 3.2819344E7f

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v9

    goto :goto_d

    :cond_1b
    move v9, v4

    :goto_d
    const v10, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v9, v10

    const/16 v10, 0x10

    shl-int/lit8 v10, v9, 0x10

    xor-int/2addr v9, v10

    and-int/lit8 v10, v9, 0x7f

    iget v11, v14, Landroidx/collection/ScatterMap;->_capacity:I

    const/16 v17, 0x7

    ushr-int/lit8 v9, v9, 0x7

    and-int/2addr v9, v11

    move/from16 v18, v4

    :goto_e
    iget-object v4, v14, Landroidx/collection/ScatterMap;->metadata:[J

    shr-int/lit8 v19, v9, 0x3

    and-int/lit8 v20, v9, 0x7

    shl-int/lit8 v7, v20, 0x3

    aget-wide v21, v4, v19

    ushr-long v21, v21, v7

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-wide v19, v4, v19

    rsub-int/lit8 v4, v7, 0x40

    shl-long v19, v19, v4

    int-to-long v6, v7

    neg-long v6, v6

    const/16 v4, 0x3f

    shr-long/2addr v6, v4

    and-long v6, v19, v6

    or-long v6, v21, v6

    int-to-long v4, v10

    const-wide v19, 0x101010101010101L

    mul-long v4, v4, v19

    xor-long/2addr v4, v6

    sub-long v19, v4, v19

    not-long v4, v4

    and-long v4, v19, v4

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, v4, v19

    :goto_f
    const-wide/16 v21, 0x0

    cmp-long v23, v4, v21

    move/from16 p2, v10

    if-eqz v23, :cond_1d

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v21

    shr-int/lit8 v21, v21, 0x3

    add-int v21, v9, v21

    and-int v21, v21, v11

    iget-object v10, v14, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v10, v10, v21

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    goto :goto_10

    :cond_1c
    const-wide/16 v21, 0x1

    sub-long v21, v4, v21

    and-long v4, v4, v21

    move/from16 v10, p2

    goto :goto_f

    :cond_1d
    not-long v4, v6

    const/4 v10, 0x6

    shl-long/2addr v4, v10

    and-long/2addr v4, v6

    and-long v4, v4, v19

    cmp-long v4, v4, v21

    if-eqz v4, :cond_2a

    const/16 v21, -0x1

    :goto_10
    if-ltz v21, :cond_1e

    const/4 v2, 0x1

    goto :goto_11

    :cond_1e
    const/4 v2, 0x0

    :goto_11
    if-nez v2, :cond_22

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_12
    move-object v5, v2

    check-cast v5, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v15, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v15, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v2, -0x1

    goto :goto_13

    :cond_1f
    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_12

    :cond_20
    const/4 v2, -0x1

    const/4 v4, -0x1

    :goto_13
    if-ne v4, v2, :cond_21

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_21
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_14
    invoke-virtual {v14}, Landroidx/collection/MutableScatterMap;->clear()V

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_22

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;

    move-object/from16 v6, p4

    invoke-direct {v5, v1, v13, v4, v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const v7, -0x55057628

    invoke-static {v7, v8, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_15

    :cond_22
    move-object/from16 v6, p4

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, 0x2bb5b5d7

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v8, v0}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    move-result-object v2

    const v0, -0x4ee9b9da

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v0, v8, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    iget-object v9, v8, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_29

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_23

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_16

    :cond_23
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_16
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, v8, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_24

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    :cond_24
    invoke-static {v0, v8, v0, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_25
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v0, v8, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const v0, -0xb2cc140

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_27

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const v5, -0x407c1425

    invoke-interface {v15, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Landroidx/compose/runtime/ComposerImpl;->startMovableGroup(ILjava/lang/Object;)V

    invoke-virtual {v14, v4}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    if-nez v4, :cond_26

    goto :goto_18

    :cond_26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_17

    :cond_27
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    goto/16 :goto_a

    :goto_19
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_28

    new-instance v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$7;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_28
    return-void

    :cond_29
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v7, 0x0

    throw v7

    :cond_2a
    move-object/from16 v6, p4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    add-int/lit8 v18, v18, 0x8

    add-int v9, v9, v18

    and-int/2addr v9, v11

    move/from16 v10, p2

    move v7, v4

    move-object v5, v6

    move/from16 v6, p6

    goto/16 :goto_e
.end method

.method public static final Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-object/from16 v4, p5

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0x1284b420

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v5, p7, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v6, 0x6

    goto :goto_2

    :cond_0
    and-int/lit8 v5, v6, 0x6

    if-nez v5, :cond_3

    and-int/lit8 v5, v6, 0x8

    if-nez v5, :cond_1

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    or-int/2addr v5, v6

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_5

    or-int/lit8 v5, v5, 0x30

    :cond_4
    move-object/from16 v7, p1

    goto :goto_4

    :cond_5
    and-int/lit8 v7, v6, 0x30

    if-nez v7, :cond_4

    move-object/from16 v7, p1

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x20

    goto :goto_3

    :cond_6
    move v8, v0

    :goto_3
    or-int/2addr v5, v8

    :goto_4
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_8

    or-int/lit16 v5, v5, 0x180

    :cond_7
    move-object/from16 v8, p2

    goto :goto_6

    :cond_8
    and-int/lit16 v8, v6, 0x180

    if-nez v8, :cond_7

    move-object/from16 v8, p2

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x100

    goto :goto_5

    :cond_9
    const/16 v9, 0x80

    :goto_5
    or-int/2addr v5, v9

    :goto_6
    and-int/lit8 v9, p7, 0x8

    if-eqz v9, :cond_b

    or-int/lit16 v5, v5, 0xc00

    :cond_a
    move-object/from16 v10, p3

    goto :goto_8

    :cond_b
    and-int/lit16 v10, v6, 0xc00

    if-nez v10, :cond_a

    move-object/from16 v10, p3

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/16 v11, 0x800

    goto :goto_7

    :cond_c
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v5, v11

    :goto_8
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v5, v5, 0x6000

    move-object/from16 v15, p4

    goto :goto_a

    :cond_d
    and-int/lit16 v0, v6, 0x6000

    move-object/from16 v15, p4

    if-nez v0, :cond_f

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x4000

    goto :goto_9

    :cond_e
    const/16 v0, 0x2000

    :goto_9
    or-int/2addr v5, v0

    :cond_f
    :goto_a
    and-int/lit16 v0, v5, 0x2493

    const/16 v11, 0x2492

    if-ne v0, v11, :cond_11

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v7

    move-object v3, v8

    goto :goto_f

    :cond_11
    :goto_b
    if-eqz v2, :cond_12

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_c

    :cond_12
    move-object v0, v7

    :goto_c
    if-eqz v3, :cond_13

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v7, v7, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    goto :goto_d

    :cond_13
    move-object v2, v8

    :goto_d
    if-eqz v9, :cond_14

    const-string v3, "Crossfade"

    goto :goto_e

    :cond_14
    move-object v3, v10

    :goto_e
    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v7, v5, 0xe

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v7, v8

    invoke-static {v1, v3, v4, v7}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v7

    const v8, 0xe3f0

    and-int v13, v5, v8

    const/4 v14, 0x4

    const/4 v10, 0x0

    move-object v8, v0

    move-object v9, v2

    move-object/from16 v11, p4

    move-object v12, v4

    invoke-static/range {v7 .. v14}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v10, v3

    move-object v3, v2

    move-object v2, v0

    :goto_f
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_15

    new-instance v9, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v4, v10

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method
