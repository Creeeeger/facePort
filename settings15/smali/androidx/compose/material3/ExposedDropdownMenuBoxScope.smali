.class public abstract Landroidx/compose/material3/ExposedDropdownMenuBoxScope;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static menuAnchor-fsE2BvY$default(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;)Landroidx/compose/ui/Modifier;
    .locals 10

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;

    iget-object v1, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static {v0, v1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v7, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$1;

    iget-object v2, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;->$anchorTypeState:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;->$onExpandedChange:Lkotlin/jvm/functions/Function1;

    iget-boolean v4, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;->$expanded:Z

    invoke-direct {v7, v2, v3, v4}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Z)V

    new-instance v2, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1;

    const/4 v3, 0x0

    const-string v5, "PrimaryNotEditable"

    invoke-direct {v2, v5, v7, v3}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v9, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;

    iget-object v5, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;->$expandedDescription:Ljava/lang/String;

    iget-object v6, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;->$collapsedDescription:Ljava/lang/String;

    iget-object v8, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;->$toggleDescription:Ljava/lang/String;

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;->$keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-object v2, v9

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$expandable$2;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {v1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ExposedDropdownMenu-vNxi1II(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 30

    move-object/from16 v14, p0

    move/from16 v15, p1

    move/from16 v13, p14

    move/from16 v12, p16

    const/16 v2, 0x80

    const/16 v3, 0x100

    const/16 v4, 0x10

    const/16 v5, 0x180

    const/16 v6, 0x20

    move-object/from16 v11, p13

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    const v7, 0x2af87329

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v7, 0x1

    and-int/lit8 v8, v12, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eqz v8, :cond_0

    or-int/lit8 v8, v13, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v13, 0x6

    if-nez v8, :cond_2

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v10

    :goto_0
    or-int/2addr v8, v13

    goto :goto_1

    :cond_2
    move v8, v13

    :goto_1
    and-int/lit8 v16, v12, 0x2

    if-eqz v16, :cond_3

    or-int/lit8 v8, v8, 0x30

    move-object/from16 v7, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v16, v13, 0x30

    move-object/from16 v7, p2

    if-nez v16, :cond_5

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    move/from16 v16, v6

    goto :goto_2

    :cond_4
    move/from16 v16, v4

    :goto_2
    or-int v8, v8, v16

    :cond_5
    :goto_3
    and-int/lit8 v16, v12, 0x4

    if-eqz v16, :cond_7

    or-int/2addr v8, v5

    :cond_6
    move-object/from16 v9, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v13, 0x180

    if-nez v9, :cond_6

    move-object/from16 v9, p3

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v3

    goto :goto_4

    :cond_8
    move/from16 v18, v2

    :goto_4
    or-int v8, v8, v18

    :goto_5
    and-int/lit16 v10, v13, 0xc00

    if-nez v10, :cond_b

    and-int/lit8 v10, v12, 0x8

    if-nez v10, :cond_9

    move-object/from16 v10, p4

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v10, p4

    :cond_a
    const/16 v19, 0x400

    :goto_6
    or-int v8, v8, v19

    goto :goto_7

    :cond_b
    move-object/from16 v10, p4

    :goto_7
    and-int/lit8 v19, v12, 0x10

    if-eqz v19, :cond_d

    or-int/lit16 v8, v8, 0x6000

    :cond_c
    move/from16 v4, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v4, v13, 0x6000

    if-nez v4, :cond_c

    move/from16 v4, p5

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v21

    if-eqz v21, :cond_e

    const/16 v21, 0x4000

    goto :goto_8

    :cond_e
    const/16 v21, 0x2000

    :goto_8
    or-int v8, v8, v21

    :goto_9
    const/high16 v21, 0x30000

    and-int v21, v13, v21

    if-nez v21, :cond_10

    and-int/lit8 v21, v12, 0x20

    move-object/from16 v5, p6

    if-nez v21, :cond_f

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    const/high16 v22, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v22, 0x10000

    :goto_a
    or-int v8, v8, v22

    goto :goto_b

    :cond_10
    move-object/from16 v5, p6

    :goto_b
    const/high16 v22, 0x180000

    and-int v22, v13, v22

    if-nez v22, :cond_12

    and-int/lit8 v22, v12, 0x40

    move-wide/from16 v6, p7

    if-nez v22, :cond_11

    invoke-virtual {v11, v6, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v23

    if-eqz v23, :cond_11

    const/high16 v23, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v23, 0x80000

    :goto_c
    or-int v8, v8, v23

    goto :goto_d

    :cond_12
    move-wide/from16 v6, p7

    :goto_d
    and-int/2addr v2, v12

    const/high16 v23, 0xc00000

    if-eqz v2, :cond_13

    or-int v8, v8, v23

    move/from16 v1, p9

    goto :goto_f

    :cond_13
    and-int v23, v13, v23

    move/from16 v1, p9

    if-nez v23, :cond_15

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_14

    const/high16 v24, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v24, 0x400000

    :goto_e
    or-int v8, v8, v24

    :cond_15
    :goto_f
    and-int/2addr v3, v12

    const/high16 v24, 0x6000000

    if-eqz v3, :cond_16

    or-int v8, v8, v24

    move/from16 v0, p10

    goto :goto_11

    :cond_16
    and-int v24, v13, v24

    move/from16 v0, p10

    if-nez v24, :cond_18

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_17

    const/high16 v25, 0x4000000

    goto :goto_10

    :cond_17
    const/high16 v25, 0x2000000

    :goto_10
    or-int v8, v8, v25

    :cond_18
    :goto_11
    and-int/lit16 v0, v12, 0x200

    const/high16 v25, 0x30000000

    if-eqz v0, :cond_1a

    :goto_12
    or-int v8, v8, v25

    :cond_19
    const/16 v1, 0x400

    goto :goto_13

    :cond_1a
    and-int v25, v13, v25

    move-object/from16 v1, p11

    if-nez v25, :cond_19

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    const/high16 v25, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v25, 0x10000000

    goto :goto_12

    :goto_13
    and-int/2addr v1, v12

    if-eqz v1, :cond_1c

    or-int/lit8 v1, p15, 0x6

    move/from16 v17, v1

    :goto_14
    const/16 v1, 0x800

    goto :goto_16

    :cond_1c
    and-int/lit8 v1, p15, 0x6

    if-nez v1, :cond_1e

    move-object/from16 v1, p12

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    const/16 v17, 0x4

    goto :goto_15

    :cond_1d
    const/16 v17, 0x2

    :goto_15
    or-int v17, p15, v17

    goto :goto_14

    :cond_1e
    move-object/from16 v1, p12

    move/from16 v17, p15

    goto :goto_14

    :goto_16
    and-int/2addr v1, v12

    if-eqz v1, :cond_1f

    or-int/lit8 v17, v17, 0x30

    goto :goto_18

    :cond_1f
    and-int/lit8 v1, p15, 0x30

    if-nez v1, :cond_21

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v20, 0x20

    goto :goto_17

    :cond_20
    const/16 v20, 0x10

    :goto_17
    or-int v17, v17, v20

    :cond_21
    :goto_18
    const v1, 0x12492493

    and-int/2addr v1, v8

    const v4, 0x12492492

    if-ne v1, v4, :cond_23

    and-int/lit8 v1, v17, 0x13

    const/16 v4, 0x12

    if-ne v1, v4, :cond_23

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_19

    :cond_22
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v12, p11

    move-object v4, v9

    move-object v15, v11

    move/from16 v11, p10

    move-wide v8, v6

    move/from16 v6, p5

    move-object v7, v5

    move-object v5, v10

    move/from16 v10, p9

    goto/16 :goto_26

    :cond_23
    :goto_19
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v1, 0x1

    and-int/lit8 v4, v13, 0x1

    const v17, -0x380001

    const v18, -0x70001

    if-eqz v4, :cond_28

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_1a

    :cond_24
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_25

    and-int/lit16 v8, v8, -0x1c01

    :cond_25
    const/16 v0, 0x20

    and-int/2addr v0, v12

    if-eqz v0, :cond_26

    and-int v8, v8, v18

    :cond_26
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_27

    and-int v8, v8, v17

    :cond_27
    move/from16 v18, p5

    move/from16 v20, p9

    move/from16 v24, p10

    move-object/from16 v25, p11

    move-object/from16 v19, v5

    move-wide/from16 v22, v6

    move/from16 v26, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    goto/16 :goto_22

    :cond_28
    :goto_1a
    if-eqz v16, :cond_29

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1b

    :cond_29
    move-object v4, v9

    :goto_1b
    and-int/lit8 v9, v12, 0x8

    if-eqz v9, :cond_2a

    invoke-static {v11}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v9

    and-int/lit16 v8, v8, -0x1c01

    goto :goto_1c

    :cond_2a
    move-object v9, v10

    :goto_1c
    if-eqz v19, :cond_2b

    :goto_1d
    const/16 v10, 0x20

    goto :goto_1e

    :cond_2b
    move/from16 v1, p5

    goto :goto_1d

    :goto_1e
    and-int/2addr v10, v12

    if-eqz v10, :cond_2c

    sget v5, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/material3/tokens/MenuTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v5, v11}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    and-int v8, v8, v18

    :cond_2c
    and-int/lit8 v10, v12, 0x40

    if-eqz v10, :cond_2d

    sget v6, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget v6, Landroidx/compose/material3/tokens/MenuTokens;->ContainerElevation:F

    sget-object v6, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v6, v11}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J

    move-result-wide v6

    and-int v8, v8, v17

    :cond_2d
    if-eqz v2, :cond_2e

    sget v2, Landroidx/compose/material3/MenuDefaults;->TonalElevation:F

    goto :goto_1f

    :cond_2e
    move/from16 v2, p9

    :goto_1f
    if-eqz v3, :cond_2f

    sget v3, Landroidx/compose/material3/MenuDefaults;->ShadowElevation:F

    goto :goto_20

    :cond_2f
    move/from16 v3, p10

    :goto_20
    if-eqz v0, :cond_30

    const/4 v0, 0x0

    move-object/from16 v25, v0

    :goto_21
    move/from16 v18, v1

    move/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-wide/from16 v22, v6

    move/from16 v26, v8

    move-object/from16 v17, v9

    goto :goto_22

    :cond_30
    move-object/from16 v25, p11

    goto :goto_21

    :goto_22
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_31

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v2, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    invoke-static {v0, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_31
    check-cast v0, Landroidx/compose/runtime/MutableState;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Density;

    sget-object v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->Companion:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-static {v11}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->statusBars:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->getInsets$foundation_layout_release()Landroidx/core/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroidx/core/graphics/Insets;->top:I

    const v5, 0x13298be2

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v15, :cond_33

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_32

    new-instance v5, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1$1;

    invoke-direct {v5, v0}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_32
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x180

    invoke-static {v2, v3, v5, v11, v6}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt;->SoftKeyboardListener(Landroid/view/View;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_33
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_34

    new-instance v2, Landroidx/compose/animation/core/MutableTransitionState;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_34
    move-object v5, v2

    check-cast v5, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v6, v5, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v2, v5, Landroidx/compose/animation/core/MutableTransitionState;->currentState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, v5, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_23

    :cond_35
    move-object v15, v11

    goto/16 :goto_25

    :cond_36
    :goto_23
    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_37

    sget-wide v6, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    new-instance v2, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v2, v6, v7}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    sget-object v6, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v2, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_37
    move-object v6, v2

    check-cast v6, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_38

    if-ne v7, v1, :cond_39

    :cond_38
    new-instance v7, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;

    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;

    invoke-direct {v1, v6}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-direct {v7, v3, v4, v0, v1}, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;-><init>(Landroidx/compose/ui/unit/Density;ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_39
    move-object/from16 v21, v7

    check-cast v21, Landroidx/compose/material3/ExposedDropdownMenuPositionProvider;

    sget-object v0, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->INSTANCE:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    move-object v0, v14

    check-cast v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;

    iget-object v0, v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$ExposedDropdownMenuBox$scope$1$1;->$anchorTypeState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/MenuAnchorType;

    iget-object v0, v0, Landroidx/compose/material3/MenuAnchorType;->name:Ljava/lang/String;

    invoke-static {v11}, Landroidx/compose/material3/internal/AccessibilityServiceStateProvider_androidKt;->rememberAccessibilityServiceState(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/internal/Listener;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/internal/Listener;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3a

    const v2, 0x60020

    goto :goto_24

    :cond_3a
    const/high16 v2, 0x60000

    :goto_24
    const-string v3, "PrimaryEditable"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    const-string v3, "SecondaryEditable"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v1}, Landroidx/compose/material3/internal/Listener;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3c

    :cond_3b
    or-int/lit8 v2, v2, 0x8

    :cond_3c
    new-instance v27, Landroidx/compose/ui/window/PopupProperties;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x1

    move-object/from16 p3, v27

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v0

    move/from16 p7, v4

    move/from16 p8, v7

    move/from16 p9, v1

    invoke-direct/range {p3 .. p9}, Landroidx/compose/ui/window/PopupProperties;-><init>(IZZZZZ)V

    new-instance v10, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, v18

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v19

    move-wide/from16 v8, v22

    move-object v14, v10

    move/from16 v10, v20

    move-object v15, v11

    move/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;-><init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZLandroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;)V

    const v0, -0x4083cfe7

    invoke-static {v0, v14, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    and-int/lit8 v1, v26, 0x70

    or-int/lit16 v1, v1, 0xc00

    const/4 v2, 0x0

    move-object/from16 p3, v21

    move-object/from16 p4, p2

    move-object/from16 p5, v27

    move-object/from16 p6, v0

    move-object/from16 p7, v15

    move/from16 p8, v1

    move/from16 p9, v2

    invoke-static/range {p3 .. p9}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_25
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v10, v20

    move-wide/from16 v8, v22

    move/from16 v11, v24

    move-object/from16 v12, v25

    :goto_26
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_3d

    new-instance v14, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p12

    move-object/from16 v28, v14

    move/from16 v14, p14

    move-object/from16 v29, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$3;-><init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v1, v28

    move-object/from16 v0, v29

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3d
    return-void
.end method
