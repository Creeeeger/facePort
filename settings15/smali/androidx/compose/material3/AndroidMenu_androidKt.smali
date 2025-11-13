.class public abstract Landroidx/compose/material3/AndroidMenu_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final DropdownMenu-IlH_yew(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 38

    move/from16 v15, p15

    move/from16 v14, p17

    const/16 v2, 0x100

    const/16 v3, 0x20

    const/16 v4, 0x80

    const/16 v5, 0x10

    move-object/from16 v6, p14

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, 0x55597dec

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v14, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eqz v8, :cond_0

    or-int/lit8 v8, v15, 0x6

    move v11, v8

    move/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v15, 0x6

    if-nez v8, :cond_2

    move/from16 v8, p0

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v9

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    or-int/2addr v11, v15

    goto :goto_1

    :cond_2
    move/from16 v8, p0

    move v11, v15

    :goto_1
    and-int/lit8 v12, v14, 0x2

    if-eqz v12, :cond_4

    or-int/lit8 v11, v11, 0x30

    :cond_3
    move-object/from16 v12, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v12, v15, 0x30

    if-nez v12, :cond_3

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v3

    goto :goto_2

    :cond_5
    move v13, v5

    :goto_2
    or-int/2addr v11, v13

    :goto_3
    and-int/lit8 v13, v14, 0x4

    if-eqz v13, :cond_7

    or-int/lit16 v11, v11, 0x180

    :cond_6
    move-object/from16 v9, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v15, 0x180

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 v16, v2

    goto :goto_4

    :cond_8
    move/from16 v16, v4

    :goto_4
    or-int v11, v11, v16

    :goto_5
    and-int/lit8 v16, v14, 0x8

    if-eqz v16, :cond_9

    or-int/lit16 v11, v11, 0xc00

    move-wide/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v10, v15, 0xc00

    move-wide/from16 v7, p3

    if-nez v10, :cond_b

    invoke-virtual {v6, v7, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x800

    goto :goto_6

    :cond_a
    const/16 v18, 0x400

    :goto_6
    or-int v11, v11, v18

    :cond_b
    :goto_7
    and-int/lit16 v10, v15, 0x6000

    if-nez v10, :cond_e

    and-int/lit8 v10, v14, 0x10

    if-nez v10, :cond_c

    move-object/from16 v10, p5

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v19, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v10, p5

    :cond_d
    const/16 v19, 0x2000

    :goto_8
    or-int v11, v11, v19

    goto :goto_9

    :cond_e
    move-object/from16 v10, p5

    :goto_9
    and-int/lit8 v19, v14, 0x20

    const/high16 v20, 0x30000

    if-eqz v19, :cond_f

    or-int v11, v11, v20

    move-object/from16 v3, p6

    goto :goto_b

    :cond_f
    and-int v20, v15, v20

    move-object/from16 v3, p6

    if-nez v20, :cond_11

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const/high16 v21, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v21, 0x10000

    :goto_a
    or-int v11, v11, v21

    :cond_11
    :goto_b
    const/high16 v21, 0x180000

    and-int v21, v15, v21

    if-nez v21, :cond_13

    and-int/lit8 v21, v14, 0x40

    move-object/from16 v5, p7

    if-nez v21, :cond_12

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v22, 0x80000

    :goto_c
    or-int v11, v11, v22

    goto :goto_d

    :cond_13
    move-object/from16 v5, p7

    :goto_d
    const/high16 v22, 0xc00000

    and-int v22, v15, v22

    if-nez v22, :cond_15

    and-int/lit16 v1, v14, 0x80

    move-wide/from16 v4, p8

    if-nez v1, :cond_14

    invoke-virtual {v6, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v23

    if-eqz v23, :cond_14

    const/high16 v23, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v23, 0x400000

    :goto_e
    or-int v11, v11, v23

    goto :goto_f

    :cond_15
    move-wide/from16 v4, p8

    :goto_f
    and-int/2addr v2, v14

    const/high16 v23, 0x6000000

    if-eqz v2, :cond_16

    or-int v11, v11, v23

    move/from16 v1, p10

    goto :goto_11

    :cond_16
    and-int v23, v15, v23

    move/from16 v1, p10

    if-nez v23, :cond_18

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_17

    const/high16 v24, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v24, 0x2000000

    :goto_10
    or-int v11, v11, v24

    :cond_18
    :goto_11
    and-int/lit16 v0, v14, 0x200

    const/high16 v25, 0x30000000

    if-eqz v0, :cond_1a

    :goto_12
    or-int v11, v11, v25

    :cond_19
    const/16 v1, 0x400

    goto :goto_13

    :cond_1a
    and-int v25, v15, v25

    move/from16 v1, p11

    if-nez v25, :cond_19

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_1b

    const/high16 v25, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v25, 0x10000000

    goto :goto_12

    :goto_13
    and-int/2addr v1, v14

    if-eqz v1, :cond_1c

    or-int/lit8 v17, p16, 0x6

    :goto_14
    const/16 v3, 0x800

    goto :goto_16

    :cond_1c
    and-int/lit8 v24, p16, 0x6

    move-object/from16 v3, p12

    if-nez v24, :cond_1e

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    const/16 v17, 0x4

    goto :goto_15

    :cond_1d
    const/16 v17, 0x2

    :goto_15
    or-int v17, p16, v17

    goto :goto_14

    :cond_1e
    move/from16 v17, p16

    goto :goto_14

    :goto_16
    and-int/lit16 v4, v14, 0x800

    if-eqz v4, :cond_1f

    or-int/lit8 v17, v17, 0x30

    move-object/from16 v4, p13

    goto :goto_18

    :cond_1f
    and-int/lit8 v3, p16, 0x30

    move-object/from16 v4, p13

    if-nez v3, :cond_21

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v3, 0x20

    goto :goto_17

    :cond_20
    const/16 v3, 0x10

    :goto_17
    or-int v17, v17, v3

    :cond_21
    :goto_18
    const v3, 0x12492493

    and-int/2addr v3, v11

    const v5, 0x12492492

    if-ne v3, v5, :cond_23

    and-int/lit8 v3, v17, 0x13

    const/16 v5, 0x12

    if-ne v3, v5, :cond_23

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_19

    :cond_22
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-wide/from16 v19, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-wide v4, v7

    move-object v3, v9

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    goto/16 :goto_26

    :cond_23
    :goto_19
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v3, 0x1

    and-int/lit8 v5, v15, 0x1

    const v3, -0x1c00001

    const v17, -0x380001

    const v18, -0xe001

    const/4 v10, 0x0

    if-eqz v5, :cond_29

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_1a

    :cond_24
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x10

    and-int/2addr v0, v14

    if-eqz v0, :cond_25

    and-int v11, v11, v18

    :cond_25
    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_26

    and-int v11, v11, v17

    :cond_26
    const/16 v0, 0x80

    and-int/2addr v0, v14

    if-eqz v0, :cond_27

    and-int/2addr v11, v3

    :cond_27
    move-object/from16 v13, p5

    move-object/from16 v5, p6

    move-object/from16 v10, p7

    move-wide/from16 v19, p8

    move/from16 v2, p10

    move/from16 v0, p11

    :cond_28
    move-object/from16 v1, p12

    goto/16 :goto_22

    :cond_29
    :goto_1a
    if-eqz v13, :cond_2a

    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    :cond_2a
    if-eqz v16, :cond_2b

    int-to-float v7, v10

    invoke-static {v7, v7}, Landroidx/compose/ui/unit/DpKt;->DpOffset-YgX7TsA(FF)J

    move-result-wide v7

    :cond_2b
    const/16 v13, 0x10

    and-int/2addr v13, v14

    if-eqz v13, :cond_2c

    invoke-static {v6}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v13

    and-int v11, v11, v18

    goto :goto_1b

    :cond_2c
    move-object/from16 v13, p5

    :goto_1b
    if-eqz v19, :cond_2d

    new-instance v5, Landroidx/compose/ui/window/PopupProperties;

    const/16 v10, 0xe

    const/4 v3, 0x1

    invoke-direct {v5, v10, v3}, Landroidx/compose/ui/window/PopupProperties;-><init>(IZ)V

    goto :goto_1c

    :cond_2d
    const/4 v3, 0x1

    move-object/from16 v5, p6

    :goto_1c
    and-int/lit8 v10, v14, 0x40

    if-eqz v10, :cond_2e

    sget v10, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/material3/tokens/MenuTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v10, v6}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    and-int v11, v11, v17

    :goto_1d
    const/16 v3, 0x80

    goto :goto_1e

    :cond_2e
    move-object/from16 v10, p7

    goto :goto_1d

    :goto_1e
    and-int/2addr v3, v14

    if-eqz v3, :cond_2f

    sget v3, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget v3, Landroidx/compose/material3/tokens/MenuTokens;->ContainerElevation:F

    sget-object v3, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v3, v6}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v19

    const v3, -0x1c00001

    and-int/2addr v3, v11

    move v11, v3

    goto :goto_1f

    :cond_2f
    move-wide/from16 v19, p8

    :goto_1f
    if-eqz v2, :cond_30

    sget v2, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    goto :goto_20

    :cond_30
    move/from16 v2, p10

    :goto_20
    if-eqz v0, :cond_31

    sget v0, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    goto :goto_21

    :cond_31
    move/from16 v0, p11

    :goto_21
    if-eqz v1, :cond_28

    const/4 v1, 0x0

    :goto_22
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_32

    new-instance v3, Landroidx/compose/animation/core/MutableTransitionState;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v12}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_32
    check-cast v3, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v14, v3, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v12, v3, Landroidx/compose/animation/core/MutableTransitionState;->currentState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v12}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_34

    iget-object v12, v3, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v12}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_33

    goto :goto_23

    :cond_33
    move-object/from16 p9, v5

    goto/16 :goto_25

    :cond_34
    :goto_23
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_35

    sget-wide v14, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    new-instance v12, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v12, v14, v15}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    sget-object v14, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v12, v14}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_35
    check-cast v12, Landroidx/compose/runtime/MutableState;

    sget-object v14, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/unit/Density;

    and-int/lit16 v15, v11, 0x1c00

    move-object/from16 p9, v5

    const/16 v5, 0x800

    if-ne v15, v5, :cond_36

    const/16 v16, 0x1

    goto :goto_24

    :cond_36
    const/16 v16, 0x0

    :goto_24
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int v5, v16, v5

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v5, :cond_37

    if-ne v15, v4, :cond_38

    :cond_37
    new-instance v15, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;

    new-instance v4, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;

    invoke-direct {v4, v12}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-direct {v15, v7, v8, v14, v4}, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_38
    move-object v4, v15

    check-cast v4, Landroidx/compose/material3/internal/DropdownMenuPositionProvider;

    new-instance v5, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;

    move-object/from16 v24, v5

    move-object/from16 v25, v9

    move-object/from16 v26, v3

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v10

    move-wide/from16 v30, v19

    move/from16 v32, v2

    move/from16 v33, v0

    move-object/from16 v34, v1

    move-object/from16 v35, p13

    invoke-direct/range {v24 .. v35}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;)V

    const v3, 0x7ec6f865

    invoke-static {v3, v5, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    and-int/lit8 v5, v11, 0x70

    or-int/lit16 v5, v5, 0xc00

    shr-int/lit8 v11, v11, 0x9

    and-int/lit16 v11, v11, 0x380

    or-int/2addr v5, v11

    const/4 v11, 0x0

    move-object/from16 p2, v4

    move-object/from16 p3, p1

    move-object/from16 p4, p9

    move-object/from16 p5, v3

    move-object/from16 p6, v6

    move/from16 p7, v5

    move/from16 p8, v11

    invoke-static/range {p2 .. p8}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_25
    move v12, v0

    move v11, v2

    move-wide v4, v7

    move-object v3, v9

    move-object v8, v10

    move-object v10, v13

    move-object/from16 v7, p9

    move-object v13, v1

    :goto_26
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_39

    new-instance v14, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$2;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object v6, v10

    move-wide/from16 v9, v19

    move-object/from16 v36, v14

    move-object/from16 v14, p13

    move-object/from16 v37, v15

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenu$2;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v36

    move-object/from16 v0, v37

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_39
    return-void
.end method

.method public static final DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move/from16 v10, p10

    move/from16 v11, p11

    const/16 v0, 0x80

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v6, p9

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    const v7, 0x6cdbbe60

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v11, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v8, v10, 0x6

    move v9, v8

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v10, 0x6

    if-nez v8, :cond_2

    move-object/from16 v8, p0

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v5

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_0
    or-int/2addr v9, v10

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    move v9, v10

    :goto_1
    and-int/2addr v4, v11

    if-eqz v4, :cond_4

    or-int/lit8 v9, v9, 0x30

    :cond_3
    move-object/from16 v4, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v10, 0x30

    if-nez v4, :cond_3

    move-object/from16 v4, p1

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v3

    goto :goto_2

    :cond_5
    move v12, v2

    :goto_2
    or-int/2addr v9, v12

    :goto_3
    and-int/2addr v5, v11

    if-eqz v5, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move-object/from16 v12, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v12, v10, 0x180

    if-nez v12, :cond_6

    move-object/from16 v12, p2

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x100

    goto :goto_4

    :cond_8
    move v13, v0

    :goto_4
    or-int/2addr v9, v13

    :goto_5
    and-int/lit8 v13, v11, 0x8

    if-eqz v13, :cond_a

    or-int/lit16 v9, v9, 0xc00

    :cond_9
    move-object/from16 v14, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v14, v10, 0xc00

    if-nez v14, :cond_9

    move-object/from16 v14, p3

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/16 v15, 0x800

    goto :goto_6

    :cond_b
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v9, v15

    :goto_7
    and-int/2addr v2, v11

    if-eqz v2, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move-object/from16 v15, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v15, v10, 0x6000

    if-nez v15, :cond_c

    move-object/from16 v15, p4

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v9, v9, v16

    :goto_9
    and-int/2addr v3, v11

    const/high16 v16, 0x30000

    if-eqz v3, :cond_f

    or-int v9, v9, v16

    move/from16 v7, p5

    goto :goto_b

    :cond_f
    and-int v16, v10, v16

    move/from16 v7, p5

    if-nez v16, :cond_11

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v9, v9, v16

    :cond_11
    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v10, v16

    if-nez v16, :cond_13

    and-int/lit8 v16, v11, 0x40

    move-object/from16 v1, p6

    if-nez v16, :cond_12

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v1, p6

    :goto_d
    and-int/2addr v0, v11

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_15

    :goto_e
    or-int v9, v9, v17

    :cond_14
    const/16 v1, 0x100

    goto :goto_f

    :cond_15
    and-int v17, v10, v17

    move-object/from16 v1, p7

    if-nez v17, :cond_14

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v17, 0x400000

    goto :goto_e

    :goto_f
    and-int/2addr v1, v11

    const/high16 v16, 0x6000000

    if-eqz v1, :cond_17

    or-int v9, v9, v16

    move-object/from16 v4, p8

    goto :goto_11

    :cond_17
    and-int v16, v10, v16

    move-object/from16 v4, p8

    if-nez v16, :cond_19

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    const/high16 v16, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v16, 0x2000000

    :goto_10
    or-int v9, v9, v16

    :cond_19
    :goto_11
    const v16, 0x2492493

    and-int v4, v9, v16

    const v7, 0x2492492

    if-ne v4, v7, :cond_1b

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v13, p8

    move-object v3, v12

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v12, p7

    goto/16 :goto_1a

    :cond_1b
    :goto_12
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v4, 0x1

    and-int/lit8 v7, v10, 0x1

    const v16, -0x380001

    if-eqz v7, :cond_1e

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_1d

    and-int v9, v9, v16

    :cond_1d
    move/from16 v4, p5

    move-object/from16 v3, p6

    move-object/from16 v2, p7

    move-object/from16 v7, p8

    move-object v5, v12

    :goto_13
    move-object v0, v14

    move-object v1, v15

    goto/16 :goto_19

    :cond_1e
    :goto_14
    if-eqz v5, :cond_1f

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_15

    :cond_1f
    move-object v5, v12

    :goto_15
    if-eqz v13, :cond_20

    const/4 v14, 0x0

    :cond_20
    if-eqz v2, :cond_21

    const/4 v15, 0x0

    :cond_21
    if-eqz v3, :cond_22

    goto :goto_16

    :cond_22
    move/from16 v4, p5

    :goto_16
    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_24

    sget v2, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material3/ColorScheme;

    iget-object v3, v2, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    if-nez v3, :cond_23

    new-instance v3, Landroidx/compose/material3/MenuItemColors;

    sget-object v12, Landroidx/compose/material3/tokens/ListTokens;->ListItemLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v2, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v18

    sget-object v12, Landroidx/compose/material3/tokens/ListTokens;->ListItemLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v2, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v20

    sget-object v12, Landroidx/compose/material3/tokens/ListTokens;->ListItemTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v2, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v22

    sget-object v12, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v2, v12}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    sget v7, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLabelTextOpacity:F

    invoke-static {v7, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v24

    sget-object v7, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v2, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    sget v7, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledLeadingIconOpacity:F

    invoke-static {v7, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v26

    sget-object v7, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v2, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v12

    sget v7, Landroidx/compose/material3/tokens/ListTokens;->ListItemDisabledTrailingIconOpacity:F

    invoke-static {v7, v12, v13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v28

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v29}, Landroidx/compose/material3/MenuItemColors;-><init>(JJJJJJ)V

    iput-object v3, v2, Landroidx/compose/material3/ColorScheme;->defaultMenuItemColorsCached:Landroidx/compose/material3/MenuItemColors;

    :cond_23
    and-int v9, v9, v16

    goto :goto_17

    :cond_24
    move-object/from16 v3, p6

    :goto_17
    if-eqz v0, :cond_25

    sget-object v0, Landroidx/compose/material3/MenuDefaults;->DropdownMenuItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    goto :goto_18

    :cond_25
    move-object/from16 v0, p7

    :goto_18
    if-eqz v1, :cond_26

    move-object v2, v0

    move-object v0, v14

    move-object v1, v15

    const/4 v7, 0x0

    goto :goto_19

    :cond_26
    move-object/from16 v7, p8

    move-object v2, v0

    goto :goto_13

    :goto_19
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v12, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v12, 0xffffffe

    and-int v22, v9, v12

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v5

    move-object v15, v0

    move-object/from16 v16, v1

    move/from16 v17, v4

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    invoke-static/range {v12 .. v22}, Landroidx/compose/material3/MenuKt;->DropdownMenuItemContent(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)V

    move-object v12, v2

    move-object v9, v3

    move-object v3, v5

    move-object v13, v7

    move-object v5, v1

    move v7, v4

    move-object v4, v0

    :goto_1a
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_27

    new-instance v15, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenuItem$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v6, v7

    move-object v7, v9

    move-object v8, v12

    move-object v9, v13

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/AndroidMenu_androidKt$DropdownMenuItem$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v15, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_27
    return-void
.end method
