.class public abstract Lcom/android/compose/PlatformSliderKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final PlatformSlider-Wu8B24Y(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/android/compose/PlatformSliderColors;FLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 35

    move/from16 v12, p12

    move/from16 v14, p14

    const/16 v0, 0x40

    const/16 v2, 0x8

    const/16 v3, 0x100

    const/16 v4, 0x20

    const/16 v5, 0x80

    const/16 v6, 0x10

    move-object/from16 v7, p11

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v8, 0xfb96518

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v8, 0x1

    and-int/lit8 v9, v14, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eqz v9, :cond_0

    or-int/lit8 v9, v12, 0x6

    move v13, v9

    move/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v12, 0xe

    if-nez v9, :cond_2

    move/from16 v9, p0

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_1

    move v13, v10

    goto :goto_0

    :cond_1
    move v13, v11

    :goto_0
    or-int/2addr v13, v12

    goto :goto_1

    :cond_2
    move/from16 v9, p0

    move v13, v12

    :goto_1
    and-int/lit8 v15, v14, 0x2

    if-eqz v15, :cond_4

    or-int/lit8 v13, v13, 0x30

    :cond_3
    move-object/from16 v15, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v15, v12, 0x70

    if-nez v15, :cond_3

    move-object/from16 v15, p1

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move/from16 v16, v4

    goto :goto_2

    :cond_5
    move/from16 v16, v6

    :goto_2
    or-int v13, v13, v16

    :goto_3
    and-int/lit8 v16, v14, 0x4

    if-eqz v16, :cond_7

    or-int/lit16 v13, v13, 0x180

    :cond_6
    move-object/from16 v10, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v12, 0x380

    if-nez v10, :cond_6

    move-object/from16 v10, p2

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move/from16 v17, v3

    goto :goto_4

    :cond_8
    move/from16 v17, v5

    :goto_4
    or-int v13, v13, v17

    :goto_5
    and-int/lit8 v17, v14, 0x8

    if-eqz v17, :cond_a

    or-int/lit16 v13, v13, 0xc00

    :cond_9
    move-object/from16 v2, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v2, v12, 0x1c00

    if-nez v2, :cond_9

    move-object/from16 v2, p3

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x800

    goto :goto_6

    :cond_b
    const/16 v18, 0x400

    :goto_6
    or-int v13, v13, v18

    :goto_7
    const v18, 0xe000

    and-int v19, v12, v18

    if-nez v19, :cond_d

    and-int/lit8 v19, v14, 0x10

    move-object/from16 v6, p4

    if-nez v19, :cond_c

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v20, 0x4000

    goto :goto_8

    :cond_c
    const/16 v20, 0x2000

    :goto_8
    or-int v13, v13, v20

    goto :goto_9

    :cond_d
    move-object/from16 v6, p4

    :goto_9
    and-int/2addr v4, v14

    if-eqz v4, :cond_e

    const/high16 v20, 0x30000

    or-int v13, v13, v20

    move/from16 v8, p5

    goto :goto_b

    :cond_e
    const/high16 v20, 0x70000

    and-int v20, v12, v20

    move/from16 v8, p5

    if-nez v20, :cond_10

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_f

    const/high16 v20, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v20, 0x10000

    :goto_a
    or-int v13, v13, v20

    :cond_10
    :goto_b
    and-int/lit8 v20, v14, 0x40

    const/high16 v22, 0x380000

    if-eqz v20, :cond_11

    const/high16 v23, 0x180000

    or-int v13, v13, v23

    move-object/from16 v0, p6

    goto :goto_d

    :cond_11
    and-int v23, v12, v22

    move-object/from16 v0, p6

    if-nez v23, :cond_13

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/high16 v24, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v24, 0x80000

    :goto_c
    or-int v13, v13, v24

    :cond_13
    :goto_d
    const/high16 v24, 0x1c00000

    and-int v24, v12, v24

    if-nez v24, :cond_16

    and-int/lit16 v11, v14, 0x80

    if-nez v11, :cond_14

    move-object/from16 v11, p7

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    const/high16 v25, 0x800000

    goto :goto_e

    :cond_14
    move-object/from16 v11, p7

    :cond_15
    const/high16 v25, 0x400000

    :goto_e
    or-int v13, v13, v25

    goto :goto_f

    :cond_16
    move-object/from16 v11, p7

    :goto_f
    and-int/2addr v3, v14

    if-eqz v3, :cond_17

    const/high16 v25, 0x6000000

    or-int v13, v13, v25

    move/from16 v5, p8

    goto :goto_11

    :cond_17
    const/high16 v25, 0xe000000

    and-int v25, v12, v25

    move/from16 v5, p8

    if-nez v25, :cond_19

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v26

    if-eqz v26, :cond_18

    const/high16 v26, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v26, 0x2000000

    :goto_10
    or-int v13, v13, v26

    :cond_19
    :goto_11
    and-int/lit16 v1, v14, 0x200

    if-eqz v1, :cond_1b

    const/high16 v27, 0x30000000

    :goto_12
    or-int v13, v13, v27

    :cond_1a
    const/16 v0, 0x400

    goto :goto_13

    :cond_1b
    const/high16 v27, 0x70000000

    and-int v27, v12, v27

    move-object/from16 v0, p9

    if-nez v27, :cond_1a

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1c

    const/high16 v27, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v27, 0x10000000

    goto :goto_12

    :goto_13
    and-int/2addr v0, v14

    if-eqz v0, :cond_1d

    or-int/lit8 v26, p13, 0x6

    move-object/from16 v2, p10

    goto :goto_15

    :cond_1d
    and-int/lit8 v26, p13, 0xe

    move-object/from16 v2, p10

    if-nez v26, :cond_1f

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e

    const/16 v26, 0x4

    goto :goto_14

    :cond_1e
    const/16 v26, 0x2

    :goto_14
    or-int v26, p13, v26

    goto :goto_15

    :cond_1f
    move/from16 v26, p13

    :goto_15
    const v27, 0x5b6db6db

    and-int v2, v13, v27

    const v5, 0x12492492

    if-ne v2, v5, :cond_21

    and-int/lit8 v2, v26, 0xb

    const/4 v5, 0x2

    if-ne v2, v5, :cond_21

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_16

    :cond_20
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v4, p3

    move-object/from16 v32, p6

    move/from16 v9, p8

    move-object v5, v6

    move v6, v8

    move-object v3, v10

    move-object v8, v11

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    goto/16 :goto_26

    :cond_21
    :goto_16
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v2, 0x1

    and-int/lit8 v5, v12, 0x1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    const v24, -0x1c00001

    const v26, -0xe001

    if-eqz v5, :cond_25

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_17

    :cond_22
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x10

    and-int/2addr v0, v14

    if-eqz v0, :cond_23

    and-int v13, v13, v26

    :cond_23
    const/16 v0, 0x80

    and-int/2addr v0, v14

    if-eqz v0, :cond_24

    and-int v13, v13, v24

    :cond_24
    move-object/from16 v0, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p6

    move/from16 v3, p8

    move-object/from16 v1, p9

    move v4, v8

    move-object v8, v11

    move-object/from16 v11, p10

    goto/16 :goto_23

    :cond_25
    :goto_17
    if-eqz v16, :cond_26

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_18

    :cond_26
    move-object v5, v10

    :goto_18
    if-eqz v17, :cond_27

    const/4 v10, 0x0

    :goto_19
    const/16 v16, 0x10

    goto :goto_1a

    :cond_27
    move-object/from16 v10, p3

    goto :goto_19

    :goto_1a
    and-int/lit8 v16, v14, 0x10

    if-eqz v16, :cond_28

    new-instance v6, Lkotlin/ranges/ClosedFloatRange;

    move-object/from16 p2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v8, v5}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    and-int v13, v13, v26

    goto :goto_1b

    :cond_28
    move-object/from16 p2, v5

    move-object/from16 v6, p4

    :goto_1b
    if-eqz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_1c

    :cond_29
    move/from16 v4, p5

    :goto_1c
    if-eqz v20, :cond_2b

    const v5, -0x5f87533a

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v8, :cond_2a

    invoke-static {v7}, Landroidx/compose/foundation/ClickableKt$clickable$2$$ExternalSyntheticOutline0;->m(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    move-result-object v5

    :cond_2a
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1d
    const/16 v8, 0x80

    goto :goto_1e

    :cond_2b
    move-object/from16 v5, p6

    goto :goto_1d

    :goto_1e
    and-int/2addr v8, v14

    if-eqz v8, :cond_2c

    sget-object v8, Lcom/android/compose/PlatformSliderDefaults;->INSTANCE:Lcom/android/compose/PlatformSliderDefaults;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/compose/PlatformSliderDefaults;->defaultPlatformSliderColors(Landroidx/compose/runtime/Composer;)Lcom/android/compose/PlatformSliderColors;

    move-result-object v8

    and-int v11, v13, v24

    move v13, v11

    goto :goto_1f

    :cond_2c
    move-object v8, v11

    :goto_1f
    if-eqz v3, :cond_2d

    sget-object v3, Lcom/android/compose/PlatformSliderDefaults;->INSTANCE:Lcom/android/compose/PlatformSliderDefaults;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/android/compose/PlatformSliderDefaults;->DefaultPlatformSliderDraggingCornerRadius:F

    goto :goto_20

    :cond_2d
    move/from16 v3, p8

    :goto_20
    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_21

    :cond_2e
    move-object/from16 v1, p9

    :goto_21
    if-eqz v0, :cond_2f

    move-object v0, v10

    const/4 v11, 0x0

    :goto_22
    move-object/from16 v10, p2

    goto :goto_23

    :cond_2f
    move-object/from16 v11, p10

    move-object v0, v10

    goto :goto_22

    :goto_23
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/16 v9, 0x40

    int-to-float v9, v9

    sget-object v16, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const v12, -0x5f875177

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v2, :cond_30

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v14, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v12, v14}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v12, Landroidx/compose/runtime/MutableState;

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v14, -0x5f87512e

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int v14, v13, v22

    const/high16 v15, 0x100000

    move-object/from16 v30, v6

    if-ne v14, v15, :cond_31

    const/4 v15, 0x1

    goto :goto_24

    :cond_31
    const/4 v15, 0x0

    :goto_24
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v15, :cond_32

    if-ne v6, v2, :cond_33

    :cond_32
    new-instance v6, Lcom/android/compose/PlatformSliderKt$PlatformSlider$2$1;

    const/4 v2, 0x0

    invoke-direct {v6, v5, v12, v2}, Lcom/android/compose/PlatformSliderKt$PlatformSlider$2$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_33
    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v9}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v15, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v15, v2}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v15

    iget v2, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    move-object/from16 v31, v10

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v7, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v32, v5

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    move-object/from16 v33, v0

    iget-object v0, v7, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-eqz v0, :cond_39

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v0, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_34

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_25

    :cond_34
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_25
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v15, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v10, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v5, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_35

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    :cond_35
    invoke-static {v2, v7, v2, v0}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_36
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v6, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {v2, v5}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    new-instance v6, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$1;

    invoke-direct {v6, v9}, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$1;-><init>(F)V

    const v10, -0x74d89126

    invoke-static {v10, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v23

    new-instance v6, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;

    move-object/from16 p2, v6

    move/from16 p3, v4

    move-object/from16 p4, v8

    move/from16 p5, v3

    move/from16 p6, v9

    move/from16 p7, v9

    move-object/from16 p8, v1

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    invoke-direct/range {p2 .. p10}, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;-><init>(ZLcom/android/compose/PlatformSliderColors;FFFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;)V

    const v9, 0x6cb2019b

    invoke-static {v9, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    and-int/lit8 v6, v13, 0xe

    const v9, 0x36000180

    or-int/2addr v6, v9

    and-int/lit8 v9, v13, 0x70

    or-int/2addr v6, v9

    shr-int/lit8 v9, v13, 0x6

    and-int/lit16 v9, v9, 0x1c00

    or-int/2addr v6, v9

    shl-int/lit8 v9, v13, 0x3

    and-int v9, v9, v18

    or-int/2addr v6, v9

    or-int v27, v6, v14

    shr-int/lit8 v6, v13, 0xc

    and-int/lit8 v28, v6, 0xe

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v29, 0xa0

    move/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v18, v4

    move-object/from16 v19, v33

    move-object/from16 v21, v32

    move-object/from16 v25, v30

    move-object/from16 v26, v7

    invoke-static/range {v15 .. v29}, Landroidx/compose/material3/SliderKt;->Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;III)V

    const v5, -0x5f874bf6

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v4, :cond_37

    const/16 v5, 0x8

    int-to-float v5, v5

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v5, 0x4

    int-to-float v5, v5

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v0, v2, v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-wide v5, v8, Lcom/android/compose/PlatformSliderColors;->indicatorColor:J

    sget-object v2, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v5, v6, v2}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    :cond_37
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v10, v1

    move v9, v3

    move v6, v4

    move-object/from16 v5, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v33

    :goto_26
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_38

    new-instance v14, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, v32

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v34, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;-><init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/android/compose/PlatformSliderColors;FLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v34

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_38
    return-void

    :cond_39
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final TrackBackground-YlGCr2M(Lcom/android/compose/DrawingState;ZLcom/android/compose/PlatformSliderColors;FFZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p5

    move/from16 v8, p8

    const/16 v0, 0x10

    const/16 v4, 0x20

    const/4 v5, 0x2

    move-object/from16 v7, p7

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    const v9, 0x2a0f8c41

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/16 v16, 0x1

    and-int/lit8 v9, p9, 0x1

    const/4 v15, 0x4

    if-eqz v9, :cond_0

    or-int/lit8 v9, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v8, 0xe

    if-nez v9, :cond_2

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v15

    goto :goto_0

    :cond_1
    move v9, v5

    :goto_0
    or-int/2addr v9, v8

    goto :goto_1

    :cond_2
    move v9, v8

    :goto_1
    and-int/lit8 v5, p9, 0x2

    if-eqz v5, :cond_3

    or-int/lit8 v9, v9, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v8, 0x70

    if-nez v5, :cond_5

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v0

    :goto_2
    or-int/2addr v9, v5

    :cond_5
    :goto_3
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_6

    or-int/lit16 v9, v9, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v8, 0x380

    if-nez v5, :cond_8

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x100

    goto :goto_4

    :cond_7
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v9, v5

    :cond_8
    :goto_5
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_a

    or-int/lit16 v9, v9, 0xc00

    :cond_9
    move/from16 v5, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v5, v8, 0x1c00

    if-nez v5, :cond_9

    move/from16 v5, p3

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_6

    :cond_b
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v9, v10

    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move/from16 v0, p4

    goto :goto_9

    :cond_d
    const v0, 0xe000

    and-int/2addr v0, v8

    if-nez v0, :cond_c

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v10, 0x4000

    goto :goto_8

    :cond_e
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v9, v10

    :goto_9
    and-int/lit8 v4, p9, 0x20

    if-eqz v4, :cond_f

    const/high16 v4, 0x30000

    :goto_a
    or-int/2addr v9, v4

    goto :goto_b

    :cond_f
    const/high16 v4, 0x70000

    and-int/2addr v4, v8

    if-nez v4, :cond_11

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_10

    const/high16 v4, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v4, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    and-int/lit8 v4, p9, 0x40

    if-eqz v4, :cond_13

    const/high16 v10, 0x180000

    or-int/2addr v9, v10

    :cond_12
    move-object/from16 v10, p6

    :goto_c
    move/from16 v17, v9

    goto :goto_e

    :cond_13
    const/high16 v10, 0x380000

    and-int/2addr v10, v8

    if-nez v10, :cond_12

    move-object/from16 v10, p6

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/high16 v11, 0x100000

    goto :goto_d

    :cond_14
    const/high16 v11, 0x80000

    :goto_d
    or-int/2addr v9, v11

    goto :goto_c

    :goto_e
    const v9, 0x2db6db

    and-int v9, v17, v9

    const v11, 0x92492

    if-ne v9, v11, :cond_16

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_16

    :cond_16
    :goto_f
    if-eqz v4, :cond_17

    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_10

    :cond_17
    move-object v4, v10

    :goto_10
    sget-object v9, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v6, :cond_18

    move v9, v5

    goto :goto_11

    :cond_18
    move v9, v0

    :goto_11
    const/4 v10, 0x0

    const-string v11, "PlatformSliderCornersAnimation"

    const/16 v13, 0x180

    const/16 v14, 0xa

    move-object v12, v7

    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/TweenSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v14

    if-eqz v2, :cond_19

    iget-wide v9, v3, Lcom/android/compose/PlatformSliderColors;->trackColor:J

    goto :goto_12

    :cond_19
    iget-wide v9, v3, Lcom/android/compose/PlatformSliderColors;->disabledTrackColor:J

    :goto_12
    const/4 v11, 0x0

    const-string v12, "PlatformSliderTrackColorAnimation"

    const/16 v18, 0x180

    const/16 v19, 0xa

    move-object v13, v7

    move-object/from16 v20, v14

    move/from16 v14, v18

    move v0, v15

    move/from16 v15, v19

    invoke-static/range {v9 .. v15}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v15

    if-eqz v2, :cond_1a

    iget-wide v9, v3, Lcom/android/compose/PlatformSliderColors;->indicatorColor:J

    goto :goto_13

    :cond_1a
    iget-wide v9, v3, Lcom/android/compose/PlatformSliderColors;->disabledIndicatorColor:J

    :goto_13
    const/4 v11, 0x0

    const-string v12, "PlatformSliderIndicatorColorAnimation"

    const/16 v14, 0x180

    const/16 v18, 0xa

    move-object v13, v7

    move-object/from16 v21, v15

    move/from16 v15, v18

    invoke-static/range {v9 .. v15}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-euL9pac(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v9

    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v4, v10}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const v11, -0xb598838

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v11, v17, 0xe

    const/4 v12, 0x0

    if-ne v11, v0, :cond_1b

    :goto_14
    move-object/from16 v0, v21

    goto :goto_15

    :cond_1b
    move/from16 v16, v12

    goto :goto_14

    :goto_15
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    or-int v11, v16, v11

    move-object/from16 v13, v20

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_1c

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v11, :cond_1d

    :cond_1c
    new-instance v14, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;

    invoke-direct {v14, v1, v0, v13, v9}, Lcom/android/compose/PlatformSliderKt$TrackBackground$1$1;-><init>(Lcom/android/compose/DrawingState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v10, v14, v7, v12}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v10, v4

    :goto_16
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1e

    new-instance v12, Lcom/android/compose/PlatformSliderKt$TrackBackground$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v10

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/compose/PlatformSliderKt$TrackBackground$2;-><init>(Lcom/android/compose/DrawingState;ZLcom/android/compose/PlatformSliderColors;FFZLandroidx/compose/ui/Modifier;II)V

    iput-object v12, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method

.method public static final access$Track-pKeW4W0(Landroidx/compose/material3/SliderState;ZLcom/android/compose/PlatformSliderColors;FFFZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 35

    move/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v9, p8

    move/from16 v8, p11

    move/from16 v7, p12

    const/16 v2, 0x20

    const/16 v6, 0x10

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    move-object/from16 v1, p10

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x2caa37e

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v8, 0x6

    move/from16 v18, v0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v8, 0xe

    if-nez v0, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    move/from16 v18, v3

    goto :goto_0

    :cond_1
    move/from16 v18, v5

    :goto_0
    or-int v18, v8, v18

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    move/from16 v18, v8

    :goto_1
    and-int/lit8 v19, v7, 0x2

    if-eqz v19, :cond_4

    or-int/lit8 v18, v18, 0x30

    :cond_3
    :goto_2
    move/from16 v4, v18

    goto :goto_4

    :cond_4
    and-int/lit8 v19, v8, 0x70

    if-nez v19, :cond_3

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_5

    move/from16 v19, v2

    goto :goto_3

    :cond_5
    move/from16 v19, v6

    :goto_3
    or-int v18, v18, v19

    goto :goto_2

    :goto_4
    and-int/2addr v3, v7

    if-eqz v3, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v3, v8, 0x380

    if-nez v3, :cond_8

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    goto :goto_5

    :cond_7
    const/16 v3, 0x80

    :goto_5
    or-int/2addr v4, v3

    :cond_8
    :goto_6
    and-int/lit8 v3, v7, 0x8

    if-eqz v3, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move/from16 v3, p3

    goto :goto_8

    :cond_a
    and-int/lit16 v3, v8, 0x1c00

    if-nez v3, :cond_9

    move/from16 v3, p3

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x800

    goto :goto_7

    :cond_b
    const/16 v18, 0x400

    :goto_7
    or-int v4, v4, v18

    :goto_8
    and-int/lit8 v18, v7, 0x10

    if-eqz v18, :cond_c

    or-int/lit16 v4, v4, 0x6000

    goto :goto_a

    :cond_c
    const v18, 0xe000

    and-int v18, v8, v18

    if-nez v18, :cond_e

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x4000

    goto :goto_9

    :cond_d
    const/16 v18, 0x2000

    :goto_9
    or-int v4, v4, v18

    :cond_e
    :goto_a
    and-int/2addr v2, v7

    const/high16 v18, 0x70000

    if-eqz v2, :cond_f

    const/high16 v2, 0x30000

    :goto_b
    or-int/2addr v4, v2

    goto :goto_c

    :cond_f
    and-int v2, v8, v18

    if-nez v2, :cond_11

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v2, 0x10000

    goto :goto_b

    :cond_11
    :goto_c
    and-int/lit8 v2, v7, 0x40

    const/high16 v20, 0x180000

    if-eqz v2, :cond_13

    or-int v4, v4, v20

    :cond_12
    :goto_d
    const/16 v2, 0x80

    goto :goto_f

    :cond_13
    const/high16 v2, 0x380000

    and-int/2addr v2, v8

    if-nez v2, :cond_12

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_14

    const/high16 v2, 0x100000

    goto :goto_e

    :cond_14
    const/high16 v2, 0x80000

    :goto_e
    or-int/2addr v4, v2

    goto :goto_d

    :goto_f
    and-int/2addr v2, v7

    if-eqz v2, :cond_16

    const/high16 v2, 0xc00000

    :goto_10
    or-int/2addr v4, v2

    :cond_15
    const/16 v2, 0x100

    goto :goto_11

    :cond_16
    const/high16 v2, 0x1c00000

    and-int/2addr v2, v8

    if-nez v2, :cond_15

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/high16 v2, 0x800000

    goto :goto_10

    :cond_17
    const/high16 v2, 0x400000

    goto :goto_10

    :goto_11
    and-int/2addr v2, v7

    if-eqz v2, :cond_18

    const/high16 v2, 0x6000000

    :goto_12
    or-int/2addr v4, v2

    goto :goto_13

    :cond_18
    const/high16 v2, 0xe000000

    and-int/2addr v2, v8

    if-nez v2, :cond_1a

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/high16 v2, 0x4000000

    goto :goto_12

    :cond_19
    const/high16 v2, 0x2000000

    goto :goto_12

    :cond_1a
    :goto_13
    and-int/lit16 v2, v7, 0x200

    if-eqz v2, :cond_1b

    const/high16 v16, 0x30000000

    or-int v4, v4, v16

    move-object/from16 v5, p9

    goto :goto_15

    :cond_1b
    const/high16 v16, 0x70000000

    and-int v16, v8, v16

    move-object/from16 v5, p9

    if-nez v16, :cond_1d

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/high16 v17, 0x20000000

    goto :goto_14

    :cond_1c
    const/high16 v17, 0x10000000

    :goto_14
    or-int v4, v4, v17

    :cond_1d
    :goto_15
    const v17, 0x5b6db6db

    and-int v6, v4, v17

    const v0, 0x12492492

    if-ne v6, v0, :cond_1f

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_16

    :cond_1e
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v28, v5

    move-object v10, v9

    move-object v6, v11

    move v9, v14

    goto/16 :goto_26

    :cond_1f
    :goto_16
    if-eqz v2, :cond_20

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v0

    goto :goto_17

    :cond_20
    move-object v6, v5

    :goto_17
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v2, :cond_21

    const/16 v17, 0x1

    goto :goto_18

    :cond_21
    const/16 v17, 0x0

    :goto_18
    const v0, 0x783e27f5

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v2, :cond_22

    new-instance v0, Lcom/android/compose/DrawingState;

    const/16 v32, 0x1ff

    const/16 v33, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v33}, Lcom/android/compose/DrawingState;-><init>(ZFFFFFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_22
    move-object v5, v0

    check-cast v5, Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 p10, v0

    move-object/from16 v0, v22

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v13}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v22

    const v0, 0x783e33fc

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_23

    new-instance v0, Lcom/android/compose/PlatformSliderKt$Track$2$1;

    invoke-direct {v0, v5}, Lcom/android/compose/PlatformSliderKt$Track$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v23, v0

    check-cast v23, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v7, Lcom/android/compose/TrackMeasurePolicy;

    move-object/from16 v34, p10

    move/from16 v24, v0

    move-object v0, v7

    move-object v9, v1

    move-object/from16 v1, p0

    move-object v13, v2

    move/from16 v2, p1

    move/from16 v3, v22

    move-object/from16 v25, v13

    move v13, v4

    move/from16 v4, v17

    move-object/from16 v24, v5

    const/4 v14, 0x2

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lcom/android/compose/TrackMeasurePolicy;-><init>(Landroidx/compose/material3/SliderState;ZIZLkotlin/jvm/functions/Function1;)V

    iget v0, v9, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v9, v6}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v3, v9, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v4, v3, Landroidx/compose/runtime/Applier;

    const/16 v23, 0x0

    if-eqz v4, :cond_3a

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v3, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v3, :cond_24

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_24
    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_19
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v7, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v14, v9, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v14, :cond_25

    invoke-virtual {v9}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 p10, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_1a

    :cond_25
    move-object/from16 p10, v3

    :goto_1a
    invoke-static {v0, v9, v0, v1}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_26
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v2, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v0, Lcom/android/compose/TrackComponent;->Background:Lcom/android/compose/TrackComponent;

    invoke-static {v3, v0}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/DrawingState;

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float v16, v12, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    and-int/lit8 v2, v13, 0x70

    or-int v2, v2, v20

    move-object/from16 v19, v1

    and-int/lit16 v1, v13, 0x380

    or-int/2addr v1, v2

    and-int/lit16 v2, v13, 0x1c00

    or-int/2addr v1, v2

    shr-int/lit8 v2, v13, 0x3

    and-int v2, v2, v18

    or-int v13, v1, v2

    const/16 v18, 0x0

    move-object/from16 v2, v19

    move/from16 v1, p1

    move-object v12, v2

    move-object/from16 v2, p2

    move-object/from16 v11, p10

    move-object v10, v3

    move/from16 v3, p3

    move/from16 v27, v4

    move/from16 v4, v16

    move-object/from16 p10, v14

    move-object v14, v5

    move/from16 v5, p6

    move-object/from16 v28, v6

    move-object/from16 v6, v17

    move-object/from16 v29, v12

    move-object v12, v7

    move-object v7, v9

    move v8, v13

    move-object v13, v9

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/android/compose/PlatformSliderKt;->TrackBackground-YlGCr2M(Lcom/android/compose/DrawingState;ZLcom/android/compose/PlatformSliderColors;FFZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    const v0, 0x5e7d589c

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/16 v0, 0x38

    if-eqz v15, :cond_2c

    sget-object v1, Lcom/android/compose/TrackComponent;->Icon:Lcom/android/compose/TrackComponent;

    invoke-static {v10, v1}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1, v2}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    iget v4, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v27, :cond_2b

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_27

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    :cond_27
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1b
    invoke-static {v13, v2, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v5, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_28

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    move-object/from16 v2, v29

    goto :goto_1c

    :cond_29
    move-object/from16 v4, p10

    move-object/from16 v2, v29

    goto :goto_1d

    :goto_1c
    invoke-static {v4, v13, v4, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    move-object/from16 v4, p10

    :goto_1d
    invoke-static {v13, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v1, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-object v5, v10

    if-eqz p1, :cond_2a

    move-object/from16 v6, p2

    move-object v7, v11

    iget-wide v8, v6, Lcom/android/compose/PlatformSliderColors;->iconColor:J

    goto :goto_1e

    :cond_2a
    move-object/from16 v6, p2

    move-object v7, v11

    iget-wide v8, v6, Lcom/android/compose/PlatformSliderColors;->disabledIconColor:J

    :goto_1e
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    new-instance v8, Lcom/android/compose/PlatformSliderKt$Track$3$1$1;

    move/from16 v9, p6

    invoke-direct {v8, v15, v9}, Lcom/android/compose/PlatformSliderKt$Track$3$1$1;-><init>(Lkotlin/jvm/functions/Function3;Z)V

    const v10, -0x72997596

    invoke-static {v10, v13, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    invoke-static {v1, v8, v13, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1f

    :cond_2b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v23

    :cond_2c
    move-object/from16 v6, p2

    move/from16 v9, p6

    move-object/from16 v4, p10

    move-object v5, v10

    move-object v7, v11

    move-object/from16 v2, v29

    const/4 v3, 0x0

    :goto_1f
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, 0x783e2c06

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 v10, p8

    move-object v1, v13

    if-eqz v10, :cond_38

    const v8, 0x5e7d5b46

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz p1, :cond_2e

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/compose/DrawingState;

    iget v11, v8, Lcom/android/compose/DrawingState;->labelWidth:F

    iget v13, v8, Lcom/android/compose/DrawingState;->indicatorRight:F

    iget v0, v8, Lcom/android/compose/DrawingState;->indicatorLeft:F

    sub-float/2addr v13, v0

    iget v0, v8, Lcom/android/compose/DrawingState;->iconWidth:F

    sub-float/2addr v13, v0

    cmpg-float v0, v11, v13

    if-gez v0, :cond_2d

    const v0, 0x5e7d5bdc

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/DrawingState;

    iget v0, v0, Lcom/android/compose/DrawingState;->iconWidth:F

    move-object/from16 v8, v34

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Density;

    const/16 v11, 0x10

    int-to-float v13, v11

    invoke-interface {v8, v13}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v8

    invoke-static {v0, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v0

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_20
    move/from16 v16, v0

    goto :goto_21

    :cond_2d
    move-object/from16 v8, v34

    const/16 v11, 0x10

    const v0, 0x5e7d5cb4

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/DrawingState;

    iget v0, v0, Lcom/android/compose/DrawingState;->indicatorRight:F

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/compose/DrawingState;

    iget v13, v13, Lcom/android/compose/DrawingState;->indicatorLeft:F

    sub-float/2addr v0, v13

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Density;

    int-to-float v13, v11

    invoke-interface {v8, v13}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v8

    add-float/2addr v8, v0

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v16, v8

    goto :goto_21

    :cond_2e
    const/16 v11, 0x10

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/DrawingState;

    iget v0, v0, Lcom/android/compose/DrawingState;->iconWidth:F

    goto :goto_20

    :goto_21
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v21, 0xc00

    const/16 v22, 0x16

    const/16 v17, 0x0

    const-string v18, "LabelIconSpacingAnimation"

    const/16 v19, 0x0

    move-object/from16 v20, v1

    invoke-static/range {v16 .. v22}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/DurationBasedAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    sget-object v8, Lcom/android/compose/TrackComponent;->Label:Lcom/android/compose/TrackComponent;

    invoke-static {v5, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const v8, 0x5e7d5f0c

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v8, :cond_2f

    move-object/from16 v8, v25

    if-ne v13, v8, :cond_30

    :cond_2f
    new-instance v13, Lcom/android/compose/PlatformSliderKt$Track$3$2$1;

    invoke-direct {v13, v0}, Lcom/android/compose/PlatformSliderKt$Track$3$2$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_30
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v5, v13}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    int-to-float v0, v11

    const/16 v17, 0x0

    const/16 v21, 0xb

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v19, v0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    iget v8, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v27, :cond_37

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_31

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_22

    :cond_31
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_22
    invoke-static {v1, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1, v11, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v5, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_32

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_32
    invoke-static {v8, v1, v8, v2}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_33
    invoke-static {v1, v0, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/DrawingState;

    iget v4, v2, Lcom/android/compose/DrawingState;->labelWidth:F

    iget v5, v2, Lcom/android/compose/DrawingState;->indicatorRight:F

    iget v7, v2, Lcom/android/compose/DrawingState;->indicatorLeft:F

    sub-float/2addr v5, v7

    iget v2, v2, Lcom/android/compose/DrawingState;->iconWidth:F

    sub-float/2addr v5, v2

    cmpg-float v2, v4, v5

    if-gez v2, :cond_34

    const/4 v4, 0x1

    goto :goto_23

    :cond_34
    move v4, v3

    :goto_23
    if-eqz p1, :cond_36

    if-eqz v4, :cond_35

    iget-wide v4, v6, Lcom/android/compose/PlatformSliderColors;->labelColorOnIndicator:J

    goto :goto_24

    :cond_35
    iget-wide v4, v6, Lcom/android/compose/PlatformSliderColors;->labelColorOnTrack:J

    goto :goto_24

    :cond_36
    iget-wide v4, v6, Lcom/android/compose/PlatformSliderColors;->disabledLabelColor:J

    :goto_24
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v2, Lcom/android/compose/PlatformSliderKt$Track$3$3$1;

    invoke-direct {v2, v10, v9}, Lcom/android/compose/PlatformSliderKt$Track$3$3$1;-><init>(Lkotlin/jvm/functions/Function3;Z)V

    const v4, -0x3836556d

    invoke-static {v4, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v4, 0x38

    invoke-static {v0, v2, v1, v4}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_25

    :cond_37
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v23

    :cond_38
    const/4 v0, 0x1

    :goto_25
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_26
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_39

    new-instance v14, Lcom/android/compose/PlatformSliderKt$Track$4;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, v28

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/compose/PlatformSliderKt$Track$4;-><init>(Landroidx/compose/material3/SliderState;ZLcom/android/compose/PlatformSliderColors;FFFZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_39
    return-void

    :cond_3a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v23
.end method

.method public static final access$getCoercedNormalizedValue(Landroidx/compose/material3/SliderState;)F
    .locals 4

    iget-object v0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v0, Lkotlin/ranges/ClosedFloatRange;

    iget v0, v0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    iget-object v1, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v1, Lkotlin/ranges/ClosedFloatRange;

    iget v2, v1, Lkotlin/ranges/ClosedFloatRange;->_start:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/SliderState;->getValue()F

    move-result p0

    iget v2, v1, Lkotlin/ranges/ClosedFloatRange;->_start:F

    iget v3, v1, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    invoke-static {p0, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    iget v1, v1, Lkotlin/ranges/ClosedFloatRange;->_start:F

    sub-float/2addr p0, v1

    div-float v2, p0, v0

    :goto_0
    return v2
.end method
