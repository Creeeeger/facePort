.class public abstract Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 35

    move-object/from16 v13, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p8

    move/from16 v2, p10

    move/from16 v1, p11

    const/16 v0, 0x80

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/4 v8, 0x4

    const/16 v9, 0x20

    const-string v10, "value"

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "label"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "onTextChange"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p9

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v10, -0x6beb2ef5

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v10, 0x1

    and-int/lit8 v11, v1, 0x1

    if-eqz v11, :cond_0

    or-int/lit8 v11, v2, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v11, v2, 0xe

    if-nez v11, :cond_2

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v8

    goto :goto_0

    :cond_1
    move v11, v6

    :goto_0
    or-int/2addr v11, v2

    goto :goto_1

    :cond_2
    move v11, v2

    :goto_1
    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    or-int/lit8 v11, v11, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v2, 0x70

    if-nez v6, :cond_5

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v9

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    or-int/2addr v11, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v11, v11, 0x180

    :cond_6
    move-object/from16 v8, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v2, 0x380

    if-nez v8, :cond_6

    move-object/from16 v8, p2

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    move v12, v0

    :goto_4
    or-int/2addr v11, v12

    :goto_5
    and-int/lit8 v12, v1, 0x8

    if-eqz v12, :cond_a

    or-int/lit16 v11, v11, 0xc00

    :cond_9
    move/from16 v14, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v14, v2, 0x1c00

    if-nez v14, :cond_9

    move/from16 v14, p3

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x800

    goto :goto_6

    :cond_b
    const/16 v16, 0x400

    :goto_6
    or-int v11, v11, v16

    :goto_7
    and-int/2addr v5, v1

    if-eqz v5, :cond_c

    or-int/lit16 v11, v11, 0x6000

    move/from16 v10, p4

    goto :goto_9

    :cond_c
    const v16, 0xe000

    and-int v16, v2, v16

    move/from16 v10, p4

    if-nez v16, :cond_e

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v11, v11, v16

    :cond_e
    :goto_9
    const/high16 v16, 0x70000

    and-int v16, v2, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v1, 0x20

    move-object/from16 v9, p5

    if-nez v16, :cond_f

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v17, 0x10000

    :goto_a
    or-int v11, v11, v17

    goto :goto_b

    :cond_10
    move-object/from16 v9, p5

    :goto_b
    and-int/lit8 v17, v1, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_11

    or-int v11, v11, v18

    move-object/from16 v4, p6

    goto :goto_d

    :cond_11
    const/high16 v19, 0x380000

    and-int v19, v2, v19

    move-object/from16 v4, p6

    if-nez v19, :cond_13

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/high16 v20, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v20, 0x80000

    :goto_c
    or-int v11, v11, v20

    :cond_13
    :goto_d
    and-int/2addr v0, v1

    const/high16 v20, 0x1c00000

    if-eqz v0, :cond_15

    const/high16 v21, 0xc00000

    :goto_e
    or-int v11, v11, v21

    :cond_14
    const/16 v4, 0x100

    goto :goto_f

    :cond_15
    and-int v21, v2, v20

    move-object/from16 v4, p7

    if-nez v21, :cond_14

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v21, 0x400000

    goto :goto_e

    :goto_f
    and-int/2addr v4, v1

    if-eqz v4, :cond_17

    const/high16 v4, 0x6000000

    :goto_10
    or-int/2addr v11, v4

    goto :goto_11

    :cond_17
    const/high16 v4, 0xe000000

    and-int/2addr v4, v2

    if-nez v4, :cond_19

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/high16 v4, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v4, 0x2000000

    goto :goto_10

    :cond_19
    :goto_11
    const v4, 0xb6db6db

    and-int/2addr v4, v11

    const v3, 0x2492492

    if-ne v4, v3, :cond_1b

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move-object v3, v8

    move-object v6, v9

    move v5, v10

    move v4, v14

    move-object/from16 v33, v15

    move-object/from16 v8, p7

    goto/16 :goto_1b

    :cond_1b
    :goto_12
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    const/4 v3, 0x1

    and-int/lit8 v4, v2, 0x1

    const v19, -0x70001

    if-eqz v4, :cond_1e

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    const/16 v0, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    and-int v11, v11, v19

    :cond_1d
    move-object/from16 v31, p6

    move-object/from16 v32, p7

    move-object v0, v8

    move-object/from16 v30, v9

    :goto_13
    move/from16 v29, v10

    move/from16 v28, v14

    goto :goto_18

    :cond_1e
    :goto_14
    const/4 v4, 0x0

    if-eqz v6, :cond_1f

    move-object v8, v4

    :cond_1f
    if-eqz v12, :cond_20

    move v14, v3

    :cond_20
    if-eqz v5, :cond_21

    move v10, v3

    :cond_21
    const/16 v5, 0x20

    and-int/2addr v5, v1

    if-eqz v5, :cond_22

    sget-object v5, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v5, v15}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v5

    and-int v11, v11, v19

    goto :goto_15

    :cond_22
    move-object v5, v9

    :goto_15
    if-eqz v17, :cond_23

    goto :goto_16

    :cond_23
    move-object/from16 v4, p6

    :goto_16
    if-eqz v0, :cond_24

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    sget-object v6, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->textFieldPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v32, v0

    :goto_17
    move-object/from16 v31, v4

    move-object/from16 v30, v5

    move-object v0, v8

    goto :goto_13

    :cond_24
    move-object/from16 v32, p7

    goto :goto_17

    :goto_18
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v0, :cond_25

    :goto_19
    move/from16 v17, v3

    goto :goto_1a

    :cond_25
    const/4 v3, 0x0

    goto :goto_19

    :goto_1a
    new-instance v3, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$1;

    invoke-direct {v3, v7}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$1;-><init>(Ljava/lang/String;)V

    const v4, -0x21ea6dcf

    invoke-static {v4, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    new-instance v3, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$2;

    invoke-direct {v3, v0}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$2;-><init>(Ljava/lang/String;)V

    const v4, -0x16c6043c

    invoke-static {v4, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    and-int/lit8 v3, v11, 0xe

    or-int v3, v3, v18

    shr-int/lit8 v4, v11, 0x15

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v3, v4

    shr-int/lit8 v4, v11, 0xf

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    shr-int/lit8 v4, v11, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v3, v4

    shl-int/lit8 v4, v11, 0x3

    and-int v4, v4, v20

    or-int v24, v3, v4

    shl-int/lit8 v3, v11, 0xc

    and-int v3, v3, v20

    or-int/lit16 v3, v3, 0x180

    move/from16 v25, v3

    shr-int/lit8 v3, v11, 0xc

    and-int/lit8 v26, v3, 0x70

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    move-object/from16 v33, v15

    move-object v15, v3

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v27, 0x5dcf30

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, v32

    move/from16 v3, v29

    move-object/from16 v7, v31

    move/from16 v13, v17

    move/from16 v17, v28

    move-object/from16 v21, v30

    move-object/from16 v23, v33

    invoke-static/range {v0 .. v27}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    move/from16 v4, v28

    move/from16 v5, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v3, v34

    :goto_1b
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_26

    new-instance v13, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;II)V

    iput-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_26
    return-void
.end method
