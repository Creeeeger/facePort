.class public abstract Landroidx/compose/material3/ButtonKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    const/16 v0, 0x80

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    move-object/from16 v5, p10

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x26c01063

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v7, v12, 0x1

    const/4 v8, 0x4

    if-eqz v7, :cond_0

    or-int/lit8 v7, v11, 0x6

    move v9, v7

    move-object/from16 v7, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v11, 0x6

    if-nez v7, :cond_2

    move-object/from16 v7, p0

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    or-int/2addr v9, v11

    goto :goto_1

    :cond_2
    move-object/from16 v7, p0

    move v9, v11

    :goto_1
    and-int/2addr v2, v12

    if-eqz v2, :cond_4

    or-int/lit8 v9, v9, 0x30

    :cond_3
    move-object/from16 v13, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v13, v11, 0x30

    if-nez v13, :cond_3

    move-object/from16 v13, p1

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move v14, v4

    goto :goto_2

    :cond_5
    move v14, v3

    :goto_2
    or-int/2addr v9, v14

    :goto_3
    and-int/lit8 v14, v12, 0x4

    if-eqz v14, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move/from16 v15, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v15, v11, 0x180

    if-nez v15, :cond_6

    move/from16 v15, p2

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x100

    goto :goto_4

    :cond_8
    move/from16 v16, v0

    :goto_4
    or-int v9, v9, v16

    :goto_5
    and-int/lit16 v8, v11, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, v12, 0x8

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v8, p3

    :cond_a
    const/16 v16, 0x400

    :goto_6
    or-int v9, v9, v16

    goto :goto_7

    :cond_b
    move-object/from16 v8, p3

    :goto_7
    and-int/lit16 v6, v11, 0x6000

    if-nez v6, :cond_e

    and-int/lit8 v6, v12, 0x10

    if-nez v6, :cond_c

    move-object/from16 v6, p4

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v6, p4

    :cond_d
    const/16 v17, 0x2000

    :goto_8
    or-int v9, v9, v17

    goto :goto_9

    :cond_e
    move-object/from16 v6, p4

    :goto_9
    const/high16 v17, 0x30000

    and-int v17, v11, v17

    if-nez v17, :cond_10

    and-int/lit8 v17, v12, 0x20

    move-object/from16 v4, p5

    if-nez v17, :cond_f

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v18, 0x10000

    :goto_a
    or-int v9, v9, v18

    goto :goto_b

    :cond_10
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v18, v12, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_11

    or-int v9, v9, v19

    move-object/from16 v3, p6

    goto :goto_d

    :cond_11
    and-int v19, v11, v19

    move-object/from16 v3, p6

    if-nez v19, :cond_13

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v20, 0x80000

    :goto_c
    or-int v9, v9, v20

    :cond_13
    :goto_d
    and-int/2addr v0, v12

    const/high16 v20, 0xc00000

    if-eqz v0, :cond_15

    or-int v9, v9, v20

    :cond_14
    :goto_e
    const/16 v1, 0x100

    goto :goto_10

    :cond_15
    and-int v20, v11, v20

    move-object/from16 v1, p7

    if-nez v20, :cond_14

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v21, 0x400000

    :goto_f
    or-int v9, v9, v21

    goto :goto_e

    :goto_10
    and-int/lit16 v3, v12, 0x100

    const/high16 v1, 0x6000000

    if-eqz v3, :cond_18

    or-int/2addr v9, v1

    :cond_17
    move-object/from16 v1, p8

    goto :goto_12

    :cond_18
    and-int/2addr v1, v11

    if-nez v1, :cond_17

    move-object/from16 v1, p8

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/high16 v21, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v21, 0x2000000

    :goto_11
    or-int v9, v9, v21

    :goto_12
    and-int/lit16 v1, v12, 0x200

    const/high16 v21, 0x30000000

    if-eqz v1, :cond_1a

    or-int v9, v9, v21

    goto :goto_14

    :cond_1a
    and-int v1, v11, v21

    if-nez v1, :cond_1c

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/high16 v1, 0x20000000

    goto :goto_13

    :cond_1b
    const/high16 v1, 0x10000000

    :goto_13
    or-int/2addr v9, v1

    :cond_1c
    :goto_14
    const v1, 0x12492493

    and-int/2addr v1, v9

    const v4, 0x12492492

    if-ne v1, v4, :cond_1e

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v7, p5

    move-object/from16 v27, p6

    move-object/from16 v9, p8

    move-object v4, v8

    move-object v2, v13

    move v3, v15

    move-object/from16 v8, p7

    goto/16 :goto_2a

    :cond_1e
    :goto_15
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v1, 0x1

    and-int/lit8 v4, v11, 0x1

    const v21, -0x70001

    const v22, -0xe001

    if-eqz v4, :cond_23

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_20

    and-int/lit16 v9, v9, -0x1c01

    :cond_20
    const/16 v0, 0x10

    and-int/2addr v0, v12

    if-eqz v0, :cond_21

    and-int v9, v9, v22

    :cond_21
    const/16 v0, 0x20

    and-int/2addr v0, v12

    if-eqz v0, :cond_22

    and-int v9, v9, v21

    :cond_22
    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v25, p8

    move-object v0, v13

    move v2, v15

    move v13, v9

    move-object/from16 v9, p7

    goto/16 :goto_1b

    :cond_23
    :goto_16
    if-eqz v2, :cond_24

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v13, v2

    :cond_24
    if-eqz v14, :cond_25

    const/4 v15, 0x1

    :cond_25
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_26

    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v2, v5}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int/lit16 v9, v9, -0x1c01

    move-object v8, v2

    :cond_26
    const/16 v2, 0x10

    and-int/2addr v2, v12

    if-eqz v2, :cond_27

    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/ColorScheme;

    invoke-static {v2}, Landroidx/compose/material3/ButtonDefaults;->getDefaultButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    move-result-object v2

    and-int v9, v9, v22

    move-object v6, v2

    :cond_27
    const/16 v2, 0x20

    and-int/2addr v2, v12

    if-eqz v2, :cond_28

    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget v23, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerElevation:F

    sget v24, Landroidx/compose/material3/tokens/FilledButtonTokens;->PressedContainerElevation:F

    sget v25, Landroidx/compose/material3/tokens/FilledButtonTokens;->FocusContainerElevation:F

    sget v26, Landroidx/compose/material3/tokens/FilledButtonTokens;->HoverContainerElevation:F

    sget v27, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerElevation:F

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Landroidx/compose/material3/ButtonElevation;

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v27}, Landroidx/compose/material3/ButtonElevation;-><init>(FFFFF)V

    and-int v4, v9, v21

    move v9, v4

    goto :goto_17

    :cond_28
    move-object/from16 v2, p5

    :goto_17
    if-eqz v18, :cond_29

    const/4 v4, 0x0

    goto :goto_18

    :cond_29
    move-object/from16 v4, p6

    :goto_18
    if-eqz v0, :cond_2a

    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    goto :goto_19

    :cond_2a
    move-object/from16 v0, p7

    :goto_19
    if-eqz v3, :cond_2b

    move-object v3, v2

    move v2, v15

    const/16 v25, 0x0

    :goto_1a
    move/from16 v29, v9

    move-object v9, v0

    move-object v0, v13

    move/from16 v13, v29

    goto :goto_1b

    :cond_2b
    move-object/from16 v25, p8

    move-object v3, v2

    move v2, v15

    goto :goto_1a

    :goto_1b
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v14, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v14, -0xe4140cf

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v25, :cond_2d

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v14, :cond_2c

    new-instance v15, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v15}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2c
    check-cast v15, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_1c

    :cond_2d
    move-object/from16 v15, v25

    :goto_1c
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v2, :cond_2e

    move/from16 p8, v2

    iget-wide v1, v6, Landroidx/compose/material3/ButtonColors;->containerColor:J

    goto :goto_1d

    :cond_2e
    move/from16 p8, v2

    iget-wide v1, v6, Landroidx/compose/material3/ButtonColors;->disabledContainerColor:J

    :goto_1d
    if-eqz p8, :cond_2f

    iget-wide v11, v6, Landroidx/compose/material3/ButtonColors;->contentColor:J

    :goto_1e
    move-object/from16 v26, v6

    goto :goto_1f

    :cond_2f
    iget-wide v11, v6, Landroidx/compose/material3/ButtonColors;->disabledContentColor:J

    goto :goto_1e

    :goto_1f
    const v6, -0xe412720

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v3, :cond_30

    move-wide/from16 v21, v1

    move-object/from16 v27, v4

    move-object/from16 v28, v8

    move-object/from16 v19, v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v8, p8

    move-object/from16 p8, v9

    goto/16 :goto_27

    :cond_30
    shr-int/lit8 v6, v13, 0x6

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v13, v13, 0x9

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v6, v13

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v14, :cond_31

    new-instance v13, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_31
    check-cast v13, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v19, :cond_33

    if-ne v7, v14, :cond_32

    goto :goto_20

    :cond_32
    move-object/from16 v27, v4

    goto :goto_21

    :cond_33
    :goto_20
    new-instance v7, Landroidx/compose/material3/ButtonElevation$animateElevation$1$1;

    move-object/from16 v27, v4

    const/4 v4, 0x0

    invoke-direct {v7, v15, v13, v4}, Landroidx/compose/material3/ButtonElevation$animateElevation$1$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_21
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v15, v7}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    if-nez p8, :cond_34

    iget v7, v3, Landroidx/compose/material3/ButtonElevation;->disabledElevation:F

    goto :goto_22

    :cond_34
    instance-of v7, v4, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v7, :cond_35

    iget v7, v3, Landroidx/compose/material3/ButtonElevation;->pressedElevation:F

    goto :goto_22

    :cond_35
    instance-of v7, v4, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v7, :cond_36

    iget v7, v3, Landroidx/compose/material3/ButtonElevation;->hoveredElevation:F

    goto :goto_22

    :cond_36
    instance-of v7, v4, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v7, :cond_37

    iget v7, v3, Landroidx/compose/material3/ButtonElevation;->focusedElevation:F

    goto :goto_22

    :cond_37
    iget v7, v3, Landroidx/compose/material3/ButtonElevation;->defaultElevation:F

    :goto_22
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v14, :cond_38

    new-instance v13, Landroidx/compose/animation/core/Animatable;

    move-object/from16 v19, v15

    new-instance v15, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v15, v7}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    move-wide/from16 v21, v1

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/16 v2, 0xc

    move-object/from16 v28, v8

    const/4 v8, 0x0

    invoke-direct {v13, v15, v1, v8, v2}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_23

    :cond_38
    move-wide/from16 v21, v1

    move-object/from16 v28, v8

    move-object/from16 v19, v15

    :goto_23
    check-cast v13, Landroidx/compose/animation/core/Animatable;

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v1, v7}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v8

    or-int/2addr v2, v8

    and-int/lit8 v8, v6, 0xe

    xor-int/lit8 v8, v8, 0x6

    const/4 v15, 0x4

    if-le v8, v15, :cond_39

    move/from16 v8, p8

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v17

    move-object/from16 p8, v9

    if-nez v17, :cond_3a

    goto :goto_24

    :cond_39
    move/from16 v8, p8

    move-object/from16 p8, v9

    :goto_24
    and-int/lit8 v9, v6, 0x6

    if-ne v9, v15, :cond_3b

    :cond_3a
    const/4 v9, 0x1

    goto :goto_25

    :cond_3b
    const/4 v9, 0x0

    :goto_25
    or-int/2addr v2, v9

    and-int/lit16 v9, v6, 0x380

    xor-int/lit16 v9, v9, 0x180

    const/16 v15, 0x100

    if-le v9, v15, :cond_3c

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    :cond_3c
    and-int/lit16 v6, v6, 0x180

    if-ne v6, v15, :cond_3e

    :cond_3d
    const/4 v6, 0x1

    goto :goto_26

    :cond_3e
    const/4 v6, 0x0

    :goto_26
    or-int/2addr v2, v6

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_3f

    if-ne v6, v14, :cond_40

    :cond_3f
    new-instance v6, Landroidx/compose/material3/ButtonElevation$animateElevation$2$1;

    const/4 v2, 0x0

    move-object/from16 p1, v6

    move-object/from16 p2, v13

    move/from16 p3, v7

    move/from16 p4, v8

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v2

    invoke-direct/range {p1 .. p7}, Landroidx/compose/material3/ButtonElevation$animateElevation$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FZLandroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_40
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v13, Landroidx/compose/animation/core/Animatable;->internalState:Landroidx/compose/animation/core/AnimationState;

    const/4 v2, 0x0

    :goto_27
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v1, :cond_41

    iget-object v1, v1, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/Dp;

    iget v1, v1, Landroidx/compose/ui/unit/Dp;->value:F

    :goto_28
    move/from16 v23, v1

    goto :goto_29

    :cond_41
    int-to-float v1, v2

    goto :goto_28

    :goto_29
    sget-object v1, Landroidx/compose/material3/ButtonKt$Button$1;->INSTANCE:Landroidx/compose/material3/ButtonKt$Button$1;

    invoke-static {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    new-instance v1, Landroidx/compose/material3/ButtonKt$Button$2;

    move-object/from16 v4, p8

    invoke-direct {v1, v11, v12, v4, v10}, Landroidx/compose/material3/ButtonKt$Button$2;-><init>(JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;)V

    const v6, 0x3902db2e

    invoke-static {v6, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    int-to-float v1, v2

    sget-object v2, Landroidx/compose/material3/SurfaceKt;->LocalAbsoluteTonalElevation:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/Dp;

    iget v6, v6, Landroidx/compose/ui/unit/Dp;->value:F

    add-float/2addr v1, v6

    sget-object v6, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v11, v12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    new-instance v7, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v7, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    filled-new-array {v6, v2}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    new-instance v6, Landroidx/compose/material3/SurfaceKt$Surface$2;

    move-object v13, v6

    move-object/from16 v7, v19

    move-object/from16 v15, v28

    move-wide/from16 v16, v21

    move/from16 v18, v1

    move-object/from16 v19, v27

    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v22, p0

    invoke-direct/range {v13 .. v24}, Landroidx/compose/material3/SurfaceKt$Surface$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function0;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v1, 0x4c46b75c    # 5.209227E7f

    invoke-static {v1, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v6, 0x38

    invoke-static {v2, v1, v5, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object v2, v0

    move-object v7, v3

    move v3, v8

    move-object/from16 v9, v25

    move-object/from16 v6, v26

    move-object v8, v4

    move-object/from16 v4, v28

    :goto_2a
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_42

    new-instance v14, Landroidx/compose/material3/ButtonKt$Button$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v27

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt$Button$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_42
    return-void
.end method

.method public static final FilledTonalButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 26

    move/from16 v11, p11

    move/from16 v12, p12

    const/16 v0, 0x80

    const/16 v1, 0x100

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x10

    const/16 v5, 0x20

    move-object/from16 v6, p10

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x6665721d

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v12, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v11, 0x6

    move v9, v8

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v11, 0x6

    if-nez v8, :cond_2

    move-object/from16 v8, p0

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v3

    goto :goto_0

    :cond_1
    move v9, v2

    :goto_0
    or-int/2addr v9, v11

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    move v9, v11

    :goto_1
    and-int/2addr v2, v12

    if-eqz v2, :cond_4

    or-int/lit8 v9, v9, 0x30

    :cond_3
    move-object/from16 v10, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v10, v11, 0x30

    if-nez v10, :cond_3

    move-object/from16 v10, p1

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v5

    goto :goto_2

    :cond_5
    move v13, v4

    :goto_2
    or-int/2addr v9, v13

    :goto_3
    and-int/2addr v3, v12

    if-eqz v3, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v11, 0x180

    if-nez v13, :cond_6

    move/from16 v13, p2

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_8

    move v14, v1

    goto :goto_4

    :cond_8
    move v14, v0

    :goto_4
    or-int/2addr v9, v14

    :goto_5
    and-int/lit16 v14, v11, 0xc00

    if-nez v14, :cond_b

    and-int/lit8 v14, v12, 0x8

    if-nez v14, :cond_9

    move-object/from16 v14, p3

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v14, p3

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v9, v15

    goto :goto_7

    :cond_b
    move-object/from16 v14, p3

    :goto_7
    and-int/lit16 v15, v11, 0x6000

    if-nez v15, :cond_e

    and-int/lit8 v15, v12, 0x10

    if-nez v15, :cond_c

    move-object/from16 v15, p4

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v15, p4

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v9, v9, v16

    goto :goto_9

    :cond_e
    move-object/from16 v15, p4

    :goto_9
    const/high16 v16, 0x30000

    and-int v16, v11, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v12, 0x20

    move-object/from16 v5, p5

    if-nez v16, :cond_f

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v17, 0x10000

    :goto_a
    or-int v9, v9, v17

    goto :goto_b

    :cond_10
    move-object/from16 v5, p5

    :goto_b
    and-int/lit8 v17, v12, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_11

    or-int v9, v9, v18

    move-object/from16 v4, p6

    goto :goto_d

    :cond_11
    and-int v18, v11, v18

    move-object/from16 v4, p6

    if-nez v18, :cond_13

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v19, 0x80000

    :goto_c
    or-int v9, v9, v19

    :cond_13
    :goto_d
    and-int/2addr v0, v12

    const/high16 v19, 0xc00000

    if-eqz v0, :cond_14

    or-int v9, v9, v19

    move-object/from16 v7, p7

    goto :goto_f

    :cond_14
    and-int v19, v11, v19

    move-object/from16 v7, p7

    if-nez v19, :cond_16

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v19, 0x400000

    :goto_e
    or-int v9, v9, v19

    :cond_16
    :goto_f
    and-int/2addr v1, v12

    const/high16 v19, 0x6000000

    if-eqz v1, :cond_17

    or-int v9, v9, v19

    move-object/from16 v4, p8

    goto :goto_11

    :cond_17
    and-int v19, v11, v19

    move-object/from16 v4, p8

    if-nez v19, :cond_19

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    const/high16 v19, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v19, 0x2000000

    :goto_10
    or-int v9, v9, v19

    :cond_19
    :goto_11
    and-int/lit16 v4, v12, 0x200

    const/high16 v19, 0x30000000

    if-eqz v4, :cond_1b

    or-int v9, v9, v19

    :cond_1a
    move-object/from16 v4, p9

    goto :goto_13

    :cond_1b
    and-int v4, v11, v19

    if-nez v4, :cond_1a

    move-object/from16 v4, p9

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/high16 v19, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v19, 0x10000000

    :goto_12
    or-int v9, v9, v19

    :goto_13
    const v19, 0x12492493

    and-int v4, v9, v19

    const v5, 0x12492492

    if-ne v4, v5, :cond_1e

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_14

    :cond_1d
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v9, p6

    move-object v2, v10

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v13, p8

    move-object v10, v7

    move-object/from16 v7, p5

    goto/16 :goto_1b

    :cond_1e
    :goto_14
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v4, 0x1

    and-int/lit8 v5, v11, 0x1

    const v19, -0x70001

    const v20, -0xe001

    if-eqz v5, :cond_23

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_20

    and-int/lit16 v9, v9, -0x1c01

    :cond_20
    const/16 v0, 0x10

    and-int/2addr v0, v12

    if-eqz v0, :cond_21

    and-int v9, v9, v20

    :cond_21
    const/16 v0, 0x20

    and-int/2addr v0, v12

    if-eqz v0, :cond_22

    and-int v9, v9, v19

    :cond_22
    move-object/from16 v3, p5

    move-object/from16 v5, p6

    move-object/from16 v2, p8

    move v4, v13

    :goto_15
    move-object v0, v14

    move-object v1, v15

    goto/16 :goto_1a

    :cond_23
    :goto_16
    if-eqz v2, :cond_24

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    move-object v10, v2

    :cond_24
    if-eqz v3, :cond_25

    goto :goto_17

    :cond_25
    move v4, v13

    :goto_17
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_26

    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v2, v6}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int/lit16 v9, v9, -0x1c01

    move-object v14, v2

    :cond_26
    const/16 v2, 0x10

    and-int/2addr v2, v12

    if-eqz v2, :cond_27

    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/ColorScheme;

    invoke-static {v2}, Landroidx/compose/material3/ButtonDefaults;->getDefaultFilledTonalButtonColors$material3_release(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/ButtonColors;

    move-result-object v2

    and-int v9, v9, v20

    move-object v15, v2

    :cond_27
    const/16 v2, 0x20

    and-int/2addr v2, v12

    if-eqz v2, :cond_28

    sget-object v2, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget v21, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->ContainerElevation:F

    sget v22, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->PressedContainerElevation:F

    sget v23, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->FocusContainerElevation:F

    sget v24, Landroidx/compose/material3/tokens/FilledTonalButtonTokens;->HoverContainerElevation:F

    const/4 v2, 0x0

    int-to-float v2, v2

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Landroidx/compose/material3/ButtonElevation;

    move-object/from16 v20, v3

    move/from16 v25, v2

    invoke-direct/range {v20 .. v25}, Landroidx/compose/material3/ButtonElevation;-><init>(FFFFF)V

    and-int v2, v9, v19

    move v9, v2

    goto :goto_18

    :cond_28
    move-object/from16 v3, p5

    :goto_18
    const/4 v2, 0x0

    if-eqz v17, :cond_29

    move-object v5, v2

    goto :goto_19

    :cond_29
    move-object/from16 v5, p6

    :goto_19
    if-eqz v0, :cond_2a

    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-object v7, v0

    :cond_2a
    if-eqz v1, :cond_2b

    goto :goto_15

    :cond_2b
    move-object/from16 v2, p8

    goto :goto_15

    :goto_1a
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v13, 0x7ffffffe

    and-int v24, v9, v13

    const/16 v25, 0x0

    move-object/from16 v13, p0

    move-object v14, v10

    move v15, v4

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v2

    move-object/from16 v22, p9

    move-object/from16 v23, v6

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v13, v2

    move-object v9, v5

    move-object v2, v10

    move-object v5, v1

    move-object v10, v7

    move-object v7, v3

    move v3, v4

    move-object v4, v0

    :goto_1b
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_2c

    new-instance v15, Landroidx/compose/material3/ButtonKt$FilledTonalButton$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v13

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt$FilledTonalButton$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    iput-object v15, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method

.method public static final OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 29

    move/from16 v11, p11

    move/from16 v12, p12

    const/16 v0, 0x80

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x10

    move-object/from16 v6, p10

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x6504b8df

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v12, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v11, 0x6

    move v9, v8

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v11, 0x6

    if-nez v8, :cond_2

    move-object/from16 v8, p0

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v3

    :goto_0
    or-int/2addr v9, v11

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    move v9, v11

    :goto_1
    and-int/2addr v3, v12

    if-eqz v3, :cond_4

    or-int/lit8 v9, v9, 0x30

    :cond_3
    move-object/from16 v10, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v10, v11, 0x30

    if-nez v10, :cond_3

    move-object/from16 v10, p1

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v2

    goto :goto_2

    :cond_5
    move v13, v5

    :goto_2
    or-int/2addr v9, v13

    :goto_3
    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v11, 0x180

    if-nez v13, :cond_6

    move/from16 v13, p2

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    move v14, v0

    :goto_4
    or-int/2addr v9, v14

    :goto_5
    and-int/lit16 v14, v11, 0xc00

    if-nez v14, :cond_b

    and-int/lit8 v14, v12, 0x8

    if-nez v14, :cond_9

    move-object/from16 v14, p3

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v14, p3

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v9, v15

    goto :goto_7

    :cond_b
    move-object/from16 v14, p3

    :goto_7
    and-int/lit16 v15, v11, 0x6000

    if-nez v15, :cond_e

    and-int/lit8 v15, v12, 0x10

    if-nez v15, :cond_c

    move-object/from16 v15, p4

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v15, p4

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v9, v9, v16

    goto :goto_9

    :cond_e
    move-object/from16 v15, p4

    :goto_9
    and-int/2addr v2, v12

    const/high16 v16, 0x30000

    if-eqz v2, :cond_f

    or-int v9, v9, v16

    move-object/from16 v5, p5

    goto :goto_b

    :cond_f
    and-int v16, v11, v16

    move-object/from16 v5, p5

    if-nez v16, :cond_11

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v9, v9, v17

    :cond_11
    :goto_b
    const/high16 v17, 0x180000

    and-int v17, v11, v17

    if-nez v17, :cond_13

    and-int/lit8 v17, v12, 0x40

    move-object/from16 v7, p6

    if-nez v17, :cond_12

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v17, 0x80000

    :goto_c
    or-int v9, v9, v17

    goto :goto_d

    :cond_13
    move-object/from16 v7, p6

    :goto_d
    and-int/2addr v0, v12

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_15

    or-int v9, v9, v17

    :cond_14
    :goto_e
    const/16 v1, 0x100

    goto :goto_10

    :cond_15
    and-int v17, v11, v17

    move-object/from16 v1, p7

    if-nez v17, :cond_14

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v18, 0x400000

    :goto_f
    or-int v9, v9, v18

    goto :goto_e

    :goto_10
    and-int/2addr v1, v12

    const/high16 v17, 0x6000000

    if-eqz v1, :cond_17

    or-int v9, v9, v17

    move-object/from16 v5, p8

    goto :goto_12

    :cond_17
    and-int v17, v11, v17

    move-object/from16 v5, p8

    if-nez v17, :cond_19

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    const/high16 v17, 0x4000000

    goto :goto_11

    :cond_18
    const/high16 v17, 0x2000000

    :goto_11
    or-int v9, v9, v17

    :cond_19
    :goto_12
    and-int/lit16 v5, v12, 0x200

    const/high16 v17, 0x30000000

    if-eqz v5, :cond_1b

    or-int v9, v9, v17

    :cond_1a
    move-object/from16 v5, p9

    goto :goto_14

    :cond_1b
    and-int v5, v11, v17

    if-nez v5, :cond_1a

    move-object/from16 v5, p9

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/high16 v17, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v17, 0x10000000

    :goto_13
    or-int v9, v9, v17

    :goto_14
    const v17, 0x12492493

    and-int v5, v9, v17

    const v7, 0x12492492

    if-ne v5, v7, :cond_1e

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object v2, v10

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v10, p7

    move-object/from16 v13, p8

    goto/16 :goto_23

    :cond_1e
    :goto_15
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v5, 0x1

    and-int/lit8 v7, v11, 0x1

    const v17, -0x380001

    const v18, -0xe001

    if-eqz v7, :cond_23

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_20

    and-int/lit16 v9, v9, -0x1c01

    :cond_20
    const/16 v0, 0x10

    and-int/2addr v0, v12

    if-eqz v0, :cond_21

    and-int v9, v9, v18

    :cond_21
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_22

    and-int v9, v9, v17

    :cond_22
    move-object/from16 v1, p5

    move-object/from16 v7, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move v5, v13

    move-object v4, v14

    move-object v0, v15

    goto/16 :goto_22

    :cond_23
    :goto_16
    if-eqz v3, :cond_24

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_17

    :cond_24
    move-object v3, v10

    :goto_17
    if-eqz v4, :cond_25

    goto :goto_18

    :cond_25
    move v5, v13

    :goto_18
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_26

    sget-object v4, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget v4, Landroidx/compose/material3/tokens/OutlinedButtonTokens;->OutlineWidth:F

    sget-object v4, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v4, v6}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    and-int/lit16 v9, v9, -0x1c01

    :goto_19
    const/16 v7, 0x10

    goto :goto_1a

    :cond_26
    move-object v4, v14

    goto :goto_19

    :goto_1a
    and-int/2addr v7, v12

    if-eqz v7, :cond_28

    sget-object v7, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/ColorScheme;

    iget-object v10, v7, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    if-nez v10, :cond_27

    new-instance v10, Landroidx/compose/material3/ButtonColors;

    sget-wide v24, Landroidx/compose/ui/graphics/Color;->Transparent:J

    sget v13, Landroidx/compose/material3/tokens/OutlinedButtonTokens;->OutlineWidth:F

    sget-object v13, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v7, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v22

    sget-object v13, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v7, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    const v15, 0x3ec28f5c    # 0.38f

    invoke-static {v15, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v26

    move-object/from16 v19, v10

    move-wide/from16 v20, v24

    invoke-direct/range {v19 .. v27}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    iput-object v10, v7, Landroidx/compose/material3/ColorScheme;->defaultOutlinedButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    :cond_27
    and-int v9, v9, v18

    goto :goto_1b

    :cond_28
    move-object v10, v15

    :goto_1b
    if-eqz v2, :cond_29

    const/4 v2, 0x0

    goto :goto_1c

    :cond_29
    move-object/from16 v2, p5

    :goto_1c
    and-int/lit8 v13, v12, 0x40

    if-eqz v13, :cond_2b

    sget-object v13, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget v13, Landroidx/compose/material3/tokens/OutlinedButtonTokens;->OutlineWidth:F

    sget-object v14, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Outline:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const/4 v15, 0x0

    if-eqz v5, :cond_2a

    const v7, -0x3313910c    # -1.239592E8f

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v14, v6}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v18

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 p2, v2

    move-object/from16 p10, v3

    :goto_1d
    move-wide/from16 v2, v18

    goto :goto_1e

    :cond_2a
    const v7, -0x33125b0c    # -1.2459408E8f

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    move-object/from16 p2, v2

    move-object/from16 p10, v3

    invoke-static {v14, v6}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v2

    const v7, 0x3df5c28f    # 0.12f

    invoke-static {v7, v2, v3}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v18

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1d

    :goto_1e
    new-instance v7, Landroidx/compose/foundation/BorderStroke;

    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {v14, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    invoke-direct {v7, v13, v14}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/SolidColor;)V

    and-int v2, v9, v17

    move v9, v2

    goto :goto_1f

    :cond_2b
    move-object/from16 p2, v2

    move-object/from16 p10, v3

    move-object/from16 v7, p6

    :goto_1f
    if-eqz v0, :cond_2c

    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    goto :goto_20

    :cond_2c
    move-object/from16 v0, p7

    :goto_20
    if-eqz v1, :cond_2d

    move-object/from16 v1, p2

    move-object v2, v0

    move-object v0, v10

    const/4 v3, 0x0

    :goto_21
    move-object/from16 v10, p10

    goto :goto_22

    :cond_2d
    move-object/from16 v1, p2

    move-object/from16 v3, p8

    move-object v2, v0

    move-object v0, v10

    goto :goto_21

    :goto_22
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v13, 0x7ffffffe

    and-int v24, v9, v13

    const/16 v25, 0x0

    move-object/from16 v13, p0

    move-object v14, v10

    move v15, v5

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v7

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, p9

    move-object/from16 v23, v6

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v13, v3

    move v3, v5

    move-object v9, v7

    move-object v5, v0

    move-object v7, v1

    move-object/from16 v28, v10

    move-object v10, v2

    move-object/from16 v2, v28

    :goto_23
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_2e

    new-instance v15, Landroidx/compose/material3/ButtonKt$OutlinedButton$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v13

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt$OutlinedButton$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    iput-object v15, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method

.method public static final TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move/from16 v11, p11

    move/from16 v12, p12

    const/16 v0, 0x80

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/16 v5, 0x10

    move-object/from16 v6, p10

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x7d8d8bca

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v12, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v11, 0x6

    move v9, v8

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v11, 0x6

    if-nez v8, :cond_2

    move-object/from16 v8, p0

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v3

    :goto_0
    or-int/2addr v9, v11

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    move v9, v11

    :goto_1
    and-int/2addr v3, v12

    if-eqz v3, :cond_4

    or-int/lit8 v9, v9, 0x30

    :cond_3
    move-object/from16 v10, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v10, v11, 0x30

    if-nez v10, :cond_3

    move-object/from16 v10, p1

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v2

    goto :goto_2

    :cond_5
    move v13, v5

    :goto_2
    or-int/2addr v9, v13

    :goto_3
    and-int/2addr v4, v12

    if-eqz v4, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move/from16 v13, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v13, v11, 0x180

    if-nez v13, :cond_6

    move/from16 v13, p2

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x100

    goto :goto_4

    :cond_8
    move v14, v0

    :goto_4
    or-int/2addr v9, v14

    :goto_5
    and-int/lit16 v14, v11, 0xc00

    if-nez v14, :cond_b

    and-int/lit8 v14, v12, 0x8

    if-nez v14, :cond_9

    move-object/from16 v14, p3

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v14, p3

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v9, v15

    goto :goto_7

    :cond_b
    move-object/from16 v14, p3

    :goto_7
    and-int/lit16 v15, v11, 0x6000

    if-nez v15, :cond_e

    and-int/lit8 v15, v12, 0x10

    if-nez v15, :cond_c

    move-object/from16 v15, p4

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v15, p4

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v9, v9, v16

    goto :goto_9

    :cond_e
    move-object/from16 v15, p4

    :goto_9
    and-int/2addr v2, v12

    const/high16 v16, 0x30000

    if-eqz v2, :cond_f

    or-int v9, v9, v16

    move-object/from16 v5, p5

    goto :goto_b

    :cond_f
    and-int v16, v11, v16

    move-object/from16 v5, p5

    if-nez v16, :cond_11

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v9, v9, v17

    :cond_11
    :goto_b
    and-int/lit8 v17, v12, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_12

    or-int v9, v9, v18

    move-object/from16 v7, p6

    goto :goto_d

    :cond_12
    and-int v18, v11, v18

    move-object/from16 v7, p6

    if-nez v18, :cond_14

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v9, v9, v18

    :cond_14
    :goto_d
    and-int/2addr v0, v12

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_16

    or-int v9, v9, v18

    :cond_15
    :goto_e
    const/16 v1, 0x100

    goto :goto_10

    :cond_16
    and-int v18, v11, v18

    move-object/from16 v1, p7

    if-nez v18, :cond_15

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/high16 v19, 0x800000

    goto :goto_f

    :cond_17
    const/high16 v19, 0x400000

    :goto_f
    or-int v9, v9, v19

    goto :goto_e

    :goto_10
    and-int/2addr v1, v12

    const/high16 v18, 0x6000000

    if-eqz v1, :cond_18

    or-int v9, v9, v18

    move-object/from16 v5, p8

    goto :goto_12

    :cond_18
    and-int v18, v11, v18

    move-object/from16 v5, p8

    if-nez v18, :cond_1a

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v18, 0x2000000

    :goto_11
    or-int v9, v9, v18

    :cond_1a
    :goto_12
    and-int/lit16 v5, v12, 0x200

    const/high16 v18, 0x30000000

    if-eqz v5, :cond_1c

    or-int v9, v9, v18

    :cond_1b
    move-object/from16 v5, p9

    goto :goto_14

    :cond_1c
    and-int v5, v11, v18

    if-nez v5, :cond_1b

    move-object/from16 v5, p9

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    const/high16 v18, 0x20000000

    goto :goto_13

    :cond_1d
    const/high16 v18, 0x10000000

    :goto_13
    or-int v9, v9, v18

    :goto_14
    const v18, 0x12492493

    and-int v5, v9, v18

    const v7, 0x12492492

    if-ne v5, v7, :cond_1f

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_15

    :cond_1e
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object v2, v10

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v10, p7

    move-object/from16 v13, p8

    goto/16 :goto_21

    :cond_1f
    :goto_15
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v5, 0x1

    and-int/lit8 v7, v11, 0x1

    const v18, -0xe001

    if-eqz v7, :cond_23

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_16

    :cond_20
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_21

    and-int/lit16 v9, v9, -0x1c01

    :cond_21
    const/16 v0, 0x10

    and-int/2addr v0, v12

    if-eqz v0, :cond_22

    and-int v9, v9, v18

    :cond_22
    move-object/from16 v2, p5

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v7, p8

    move-object v3, v10

    move v5, v13

    move-object v4, v14

    move-object v10, v15

    goto/16 :goto_20

    :cond_23
    :goto_16
    if-eqz v3, :cond_24

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_17

    :cond_24
    move-object v3, v10

    :goto_17
    if-eqz v4, :cond_25

    goto :goto_18

    :cond_25
    move v5, v13

    :goto_18
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_26

    sget-object v4, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v4, v6}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    and-int/lit16 v9, v9, -0x1c01

    :goto_19
    const/16 v7, 0x10

    goto :goto_1a

    :cond_26
    move-object v4, v14

    goto :goto_19

    :goto_1a
    and-int/2addr v7, v12

    if-eqz v7, :cond_28

    sget-object v7, Landroidx/compose/material3/ButtonDefaults;->ContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/ColorScheme;

    iget-object v10, v7, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    if-nez v10, :cond_27

    new-instance v10, Landroidx/compose/material3/ButtonColors;

    sget-wide v24, Landroidx/compose/ui/graphics/Color;->Transparent:J

    sget-object v13, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v7, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v22

    sget-object v13, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v7, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v13

    const v15, 0x3ec28f5c    # 0.38f

    invoke-static {v15, v13, v14}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v26

    move-object/from16 v19, v10

    move-wide/from16 v20, v24

    invoke-direct/range {v19 .. v27}, Landroidx/compose/material3/ButtonColors;-><init>(JJJJ)V

    iput-object v10, v7, Landroidx/compose/material3/ColorScheme;->defaultTextButtonColorsCached:Landroidx/compose/material3/ButtonColors;

    :cond_27
    and-int v7, v9, v18

    move v9, v7

    goto :goto_1b

    :cond_28
    move-object v10, v15

    :goto_1b
    const/4 v7, 0x0

    if-eqz v2, :cond_29

    move-object v2, v7

    goto :goto_1c

    :cond_29
    move-object/from16 v2, p5

    :goto_1c
    if-eqz v17, :cond_2a

    move-object v13, v7

    goto :goto_1d

    :cond_2a
    move-object/from16 v13, p6

    :goto_1d
    if-eqz v0, :cond_2b

    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->TextButtonContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    goto :goto_1e

    :cond_2b
    move-object/from16 v0, p7

    :goto_1e
    if-eqz v1, :cond_2c

    :goto_1f
    move-object v1, v0

    move-object v0, v13

    goto :goto_20

    :cond_2c
    move-object/from16 v7, p8

    goto :goto_1f

    :goto_20
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v13, 0x7ffffffe

    and-int v24, v9, v13

    const/16 v25, 0x0

    move-object/from16 v13, p0

    move-object v14, v3

    move v15, v5

    move-object/from16 v16, v4

    move-object/from16 v17, v10

    move-object/from16 v18, v2

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v7

    move-object/from16 v22, p9

    move-object/from16 v23, v6

    invoke-static/range {v13 .. v25}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v9, v0

    move-object v13, v7

    move-object v7, v2

    move-object v2, v3

    move v3, v5

    move-object v5, v10

    move-object v10, v1

    :goto_21
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_2d

    new-instance v15, Landroidx/compose/material3/ButtonKt$TextButton$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v13

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt$TextButton$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;II)V

    iput-object v15, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void
.end method
