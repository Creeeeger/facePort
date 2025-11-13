.class public abstract Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SettingsAlertDialog(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p6

    move-object/from16 v15, p5

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x44471ac7

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v12, 0xe

    if-nez v0, :cond_1

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v12

    goto :goto_1

    :cond_1
    move v0, v12

    :goto_1
    and-int/lit8 v1, v12, 0x70

    if-nez v1, :cond_3

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v12, 0x380

    if-nez v1, :cond_5

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v12, 0x1c00

    if-nez v1, :cond_7

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    const v1, 0xe000

    and-int/2addr v1, v12

    if-nez v1, :cond_9

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x4000

    goto :goto_5

    :cond_8
    const/16 v1, 0x2000

    :goto_5
    or-int/2addr v0, v1

    :cond_9
    const v1, 0xb6db

    and-int/2addr v0, v1

    const/16 v1, 0x2492

    if-ne v0, v1, :cond_b

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v1, v15

    goto/16 :goto_b

    :cond_b
    :goto_6
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v13, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$1;

    const-class v3, Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;

    const-string v4, "close"

    const/4 v1, 0x0

    const-string v5, "close()V"

    const/4 v6, 0x0

    move-object v0, v13

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v15}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->getDialogWidth(Landroidx/compose/runtime/Composer;)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x511bc51c

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v1, 0x0

    if-nez v9, :cond_c

    move-object/from16 v16, v1

    goto :goto_7

    :cond_c
    new-instance v2, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$2$1;

    invoke-direct {v2, v9, v7}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$2$1;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;)V

    const v3, 0x6370be57

    invoke-static {v3, v2, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    move-object/from16 v16, v2

    :goto_7
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x511bc54b

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v10, :cond_d

    move-object/from16 v18, v1

    goto :goto_8

    :cond_d
    new-instance v3, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$3$1;

    invoke-direct {v3, v10}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$3$1;-><init>(Ljava/lang/String;)V

    const v4, 0x31ecd3af

    invoke-static {v4, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    move-object/from16 v18, v3

    :goto_8
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x511bc576

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v11, :cond_e

    :goto_9
    move-object/from16 v19, v1

    goto :goto_a

    :cond_e
    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$4$1;

    invoke-direct {v1, v11}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$4$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v3, 0x27281ef4

    invoke-static {v3, v1, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    goto :goto_9

    :goto_a
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Landroidx/compose/ui/window/DialogProperties;

    move-object/from16 v30, v1

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroidx/compose/ui/window/DialogProperties;-><init>(I)V

    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;

    invoke-direct {v1, v8, v7}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;)V

    const v2, -0x14df1e7f

    invoke-static {v2, v1, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v14

    const/16 v29, 0x0

    const/16 v32, 0x30

    const/16 v17, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v33, 0xc00

    const/16 v34, 0x1f90

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v31, v1

    invoke-static/range {v13 .. v34}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    :goto_b
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_f

    new-instance v14, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$6;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$6;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;I)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final access$Button(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v15, p2

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x6975dac9

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v2, 0xe

    if-nez v3, :cond_1

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v4, v2, 0x70

    if-nez v4, :cond_3

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit8 v3, v3, 0x5b

    const/16 v4, 0x12

    if-ne v3, v4, :cond_5

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v17, v15

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$1;

    invoke-direct {v3, v1, v0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$1;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;)V

    iget-boolean v5, v1, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;->enabled:Z

    new-instance v4, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$2;

    invoke-direct {v4, v1}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$2;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V

    const v6, 0x44cd096c

    invoke-static {v6, v4, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const/high16 v14, 0x30000000

    const/16 v16, 0x1fa

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v13, v15

    move-object/from16 v17, v15

    move/from16 v15, v16

    invoke-static/range {v3 .. v15}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_4
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v4, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$3;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$Button$3;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;I)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final getDialogWidth(Landroidx/compose/runtime/Composer;)F
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x7e39c6c5

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const v0, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_0
    const v0, 0x3f59999a    # 0.85f

    :goto_0
    mul-float/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return v1
.end method

.method public static final rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;
    .locals 8

    check-cast p4, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x754fb38d

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p2, v1

    :cond_1
    sget-object p5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 p5, 0x0

    new-array v0, p5, [Ljava/lang/Object;

    sget-object v2, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$openDialog$2;->INSTANCE:Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$openDialog$2;

    const/4 v5, 0x6

    const/4 v1, 0x0

    const/16 v4, 0xc08

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MutableState;

    const v1, 0x7309cd8e

    invoke-virtual {p4, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    invoke-direct {v1, v0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p4, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object v7, v1

    check-cast v7, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    invoke-virtual {p4, p5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v6, 0x6006

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->SettingsAlertDialog(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_3
    invoke-virtual {p4, p5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v7
.end method
