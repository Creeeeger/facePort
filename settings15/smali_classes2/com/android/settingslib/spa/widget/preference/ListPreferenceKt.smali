.class public abstract Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final ListPreference(Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "model"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x5abc8935

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v1, v0, 0xb

    if-ne v1, v8, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v9, 0x0

    new-array v1, v9, [Ljava/lang/Object;

    sget-object v3, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$dialogOpened$2;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$dialogOpened$2;

    const/4 v6, 0x6

    const/4 v2, 0x0

    const/16 v5, 0xc08

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MutableState;

    const v2, 0xdb8edb1

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v2, :cond_6

    invoke-interface {p0}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    const v4, 0xdb8ee1d

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4

    if-ne v5, v3, :cond_5

    :cond_4
    new-instance v5, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$1$1;

    invoke-direct {v5, v1}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p1, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v4, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$2;-><init>(Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;Landroidx/compose/runtime/MutableState;)V

    const v6, -0x1fde050a

    invoke-static {v6, v4, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/16 v6, 0x180

    invoke-static {v2, v5, v4, p1, v6}, Lcom/android/settingslib/spa/widget/dialog/SettingsDialogKt;->SettingsDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_6
    invoke-virtual {p1, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, 0xdb8efde

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v2, v0, 0xe

    if-eq v2, v7, :cond_8

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v9

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_9

    if-ne v2, v3, :cond_a

    :cond_9
    new-instance v2, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;-><init>(Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v2, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1;

    invoke-virtual {p1, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v9, p1, v9, v8}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$4;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$4;-><init>(Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final access$Radio(Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;IZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    const/4 v0, 0x3

    move-object/from16 v15, p4

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x5fd97eef

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v14, 0xe

    const/4 v4, 0x4

    if-nez v3, :cond_1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_1
    move v3, v14

    :goto_1
    and-int/lit8 v5, v14, 0x70

    if-nez v5, :cond_3

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    and-int/lit16 v5, v14, 0x380

    if-nez v5, :cond_5

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v3, v5

    :cond_5
    and-int/lit16 v5, v14, 0x1c00

    const/16 v6, 0x800

    if-nez v5, :cond_7

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_4

    :cond_6
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v3, v5

    :cond_7
    move v11, v3

    and-int/lit16 v3, v11, 0x16db

    const/16 v5, 0x492

    if-ne v3, v5, :cond_9

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_c

    :cond_9
    :goto_5
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v3, v1, Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;->id:I

    const/4 v9, 0x0

    if-ne v3, v2, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    move v3, v9

    :goto_6
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    new-instance v7, Landroidx/compose/ui/semantics/Role;

    invoke-direct {v7, v0}, Landroidx/compose/ui/semantics/Role;-><init>(I)V

    const v10, -0x4f6cb56

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v10, v11, 0x1c00

    if-ne v10, v6, :cond_b

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    move v6, v9

    :goto_7
    and-int/lit8 v10, v11, 0xe

    if-ne v10, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    move v4, v9

    :goto_8
    or-int/2addr v4, v6

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_d

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v4, :cond_e

    :cond_d
    new-instance v6, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$Radio$1$1;

    invoke-direct {v6, v13, v1}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$Radio$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v5, v3, v12, v7, v6}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-XHw0xAI(Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->dialogItemPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    const/16 v7, 0x30

    invoke-static {v6, v5, v15, v7}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    iget v6, v15, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v15, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v8

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Lkotlin/jvm/functions/Function0;

    iget-object v9, v15, Landroidx/compose/runtime/ComposerImpl;->applier:Landroidx/compose/runtime/Applier;

    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    const/16 v17, 0x0

    if-eqz v9, :cond_18

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_f

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_f
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_9
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v10, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Lkotlin/jvm/functions/Function2;

    iget-boolean v0, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_10

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    invoke-static {v6, v15, v6, v10}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_11
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v2, 0x3

    shl-int/lit8 v4, v11, 0x3

    and-int/lit16 v2, v4, 0x1c00

    const/16 v4, 0x30

    or-int/2addr v2, v4

    const/4 v6, 0x0

    const/16 v18, 0x34

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v5

    move-object v5, v6

    move/from16 v6, p2

    move-object/from16 v22, v7

    move-object/from16 v7, v19

    move-object/from16 v24, v8

    move-object/from16 v23, v16

    move-object/from16 v8, v20

    move/from16 v16, v9

    move-object v9, v15

    move-object/from16 v25, v10

    move v10, v2

    move v2, v11

    move/from16 v11, v18

    invoke-static/range {v3 .. v11}, Landroidx/compose/material3/RadioButtonKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    sget v3, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    move-object/from16 v4, v23

    invoke-static {v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v15, v3}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v9, 0x0

    invoke-static {v3, v5, v15, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget v5, v15, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v15, v4}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v16, :cond_17

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_12

    move-object/from16 v7, v24

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    :goto_a
    move-object/from16 v7, v22

    goto :goto_b

    :cond_12
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    goto :goto_a

    :goto_b
    invoke-static {v15, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, v21

    invoke-static {v15, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v3, v15, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_13

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    move-object/from16 v3, v25

    invoke-static {v5, v15, v5, v3}, Landroidx/compose/animation/AnimatedContentKt$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILkotlin/jvm/functions/Function2;)V

    :cond_14
    invoke-static {v15, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x3

    shr-int/lit8 v0, v2, 0x3

    and-int/lit8 v0, v0, 0x70

    iget-object v2, v1, Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;->text:Ljava/lang/String;

    invoke-static {v2, v12, v15, v0, v9}, Lcom/android/settingslib/spa/widget/ui/TextKt;->SettingsDialogItem(Ljava/lang/String;ZLandroidx/compose/runtime/Composer;II)V

    const v0, -0x6c048f6b

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v2, v1, Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;->summary:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v7, 0x180

    const/4 v8, 0x2

    iget-object v3, v1, Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;->summary:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Lcom/android/settingslib/spa/widget/ui/TextKt;->SettingsBody(Ljava/lang/String;Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V

    :cond_15
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_c
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_16

    new-instance v7, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$Radio$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$Radio$3;-><init>(Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;IZLkotlin/jvm/functions/Function1;I)V

    iput-object v7, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void

    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17

    :cond_18
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    throw v17
.end method
