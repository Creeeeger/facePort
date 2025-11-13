.class public abstract Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SettingsTextFieldPassword(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 32

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v3, p3

    move/from16 v2, p5

    const/4 v0, 0x2

    const-string v1, "value"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "label"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onTextChange"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p4

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x77846482

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v4, 0x1

    and-int/lit8 v5, p6, 0x1

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    or-int/lit8 v5, v2, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v2, 0xe

    if-nez v5, :cond_2

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    or-int/2addr v5, v2

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v2, 0x70

    if-nez v0, :cond_5

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    goto :goto_2

    :cond_4
    const/16 v0, 0x10

    :goto_2
    or-int/2addr v5, v0

    :cond_5
    :goto_3
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v2, 0x380

    if-nez v7, :cond_6

    move/from16 v7, p2

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v5, v8

    :goto_5
    and-int/lit8 v8, p6, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v5, v5, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v2, 0x1c00

    if-nez v8, :cond_b

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v5, v8

    :cond_b
    :goto_7
    and-int/lit16 v8, v5, 0x16db

    const/16 v9, 0x492

    if-ne v8, v9, :cond_d

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v31, v1

    move v3, v7

    goto/16 :goto_c

    :cond_d
    :goto_8
    if-eqz v0, :cond_e

    move/from16 v28, v4

    goto :goto_9

    :cond_e
    move/from16 v28, v7

    :goto_9
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x5f610150

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v4, :cond_f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {v0, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v0, Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v7, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->menuFieldPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v4, v7}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v23

    new-instance v13, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v4, 0x73

    const/4 v7, 0x7

    invoke-direct {v13, v7, v6, v4}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(III)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->None:Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    :goto_a
    move-object/from16 v29, v4

    goto :goto_b

    :cond_10
    new-instance v4, Landroidx/compose/ui/text/input/PasswordVisualTransformation;

    invoke-direct {v4}, Landroidx/compose/ui/text/input/PasswordVisualTransformation;-><init>()V

    goto :goto_a

    :goto_b
    new-instance v4, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$1;

    invoke-direct {v4, v14}, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$1;-><init>(Ljava/lang/String;)V

    const v6, -0x25363c58

    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    new-instance v4, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$2;

    invoke-direct {v4, v0}, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$2;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v0, -0x6b392015

    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const v0, 0x30180180

    and-int/lit8 v4, v5, 0xe

    or-int/2addr v0, v4

    shr-int/lit8 v4, v5, 0x6

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v0, v4

    shl-int/lit8 v4, v5, 0x3

    and-int/lit16 v4, v4, 0x1c00

    or-int v24, v0, v4

    const/16 v22, 0x0

    const/high16 v25, 0x30000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object/from16 v30, v13

    move v13, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const v27, 0x7f3db0

    move-object/from16 v0, p0

    move-object/from16 v31, v1

    move-object/from16 v1, p3

    move-object/from16 v2, v23

    move/from16 v3, v28

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    move-object/from16 v23, v31

    invoke-static/range {v0 .. v27}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    move/from16 v3, v28

    :goto_c
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_11

    new-instance v8, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$3;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/editor/SettingsTextFieldPasswordKt$SettingsTextFieldPassword$3;-><init>(Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;II)V

    iput-object v8, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method
