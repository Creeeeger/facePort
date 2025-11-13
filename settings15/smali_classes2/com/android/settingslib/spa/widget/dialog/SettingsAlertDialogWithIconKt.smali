.class public abstract Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SettingsAlertDialogWithIcon(Lkotlin/jvm/functions/Function0;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    move-object/from16 v2, p5

    move/from16 v0, p7

    const/16 v1, 0x10

    const/16 v7, 0x20

    const/4 v8, 0x2

    const/4 v9, 0x4

    const-string v10, "onDismissRequest"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, p6

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    const v10, 0x2b6092c7

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v10, p8, 0x1

    if-eqz v10, :cond_0

    or-int/lit8 v10, v0, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v10, v0, 0xe

    if-nez v10, :cond_2

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    or-int/2addr v10, v0

    goto :goto_1

    :cond_2
    move v10, v0

    :goto_1
    and-int/lit8 v8, p8, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v10, v10, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v0, 0x70

    if-nez v8, :cond_5

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    move v8, v1

    :goto_2
    or-int/2addr v10, v8

    :cond_5
    :goto_3
    and-int/lit8 v8, p8, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v10, v10, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v0, 0x380

    if-nez v8, :cond_8

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v10, v8

    :cond_8
    :goto_5
    and-int/lit8 v8, p8, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v10, v10, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v8, v0, 0x1c00

    if-nez v8, :cond_b

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v10, v8

    :cond_b
    :goto_7
    and-int/lit8 v1, p8, 0x10

    const v8, 0xe000

    if-eqz v1, :cond_d

    or-int/lit16 v10, v10, 0x6000

    :cond_c
    move-object/from16 v9, p4

    goto :goto_9

    :cond_d
    and-int v9, v0, v8

    if-nez v9, :cond_c

    move-object/from16 v9, p4

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x4000

    goto :goto_8

    :cond_e
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v10, v11

    :goto_9
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_f

    const/high16 v7, 0x30000

    :goto_a
    or-int/2addr v10, v7

    goto :goto_b

    :cond_f
    const/high16 v7, 0x70000

    and-int/2addr v7, v0

    if-nez v7, :cond_11

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/high16 v7, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v7, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    const v7, 0x5b6db

    and-int/2addr v7, v10

    const v11, 0x12492

    if-ne v7, v11, :cond_13

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v5, v9

    move-object/from16 v26, v12

    goto/16 :goto_12

    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/settingslib/spa/widget/dialog/ComposableSingletons$SettingsAlertDialogWithIconKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v22, v1

    goto :goto_d

    :cond_14
    move-object/from16 v22, v9

    :goto_d
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v12}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->getDialogWidth(Landroidx/compose/runtime/Composer;)F

    move-result v7

    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v18

    const v1, -0x628bed22

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 v1, 0x0

    if-nez v4, :cond_15

    move-object/from16 v23, v1

    goto :goto_e

    :cond_15
    new-instance v7, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$1$1;

    invoke-direct {v7, v4}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$1$1;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V

    const v9, 0x686fc7a8

    invoke-static {v9, v7, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    move-object/from16 v23, v7

    :goto_e
    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v9, -0x628bec1a

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v3, :cond_16

    move-object/from16 v24, v1

    goto :goto_f

    :cond_16
    new-instance v9, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$2$1;

    invoke-direct {v9, v3}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$2$1;-><init>(Ljava/lang/String;)V

    const v11, 0x35d88650

    invoke-static {v11, v9, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    move-object/from16 v24, v9

    :goto_f
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v9, -0x628beb2f

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v2, :cond_17

    :goto_10
    move-object/from16 v25, v1

    goto :goto_11

    :cond_17
    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$3$1;

    invoke-direct {v1, v2}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$3$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v9, -0x727224f3

    invoke-static {v9, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    goto :goto_10

    :goto_11
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Landroidx/compose/ui/window/DialogProperties;

    move-object/from16 v17, v1

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Landroidx/compose/ui/window/DialogProperties;-><init>(I)V

    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$4;

    invoke-direct {v1, v5}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$4;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V

    const v7, 0x68877d7f

    invoke-static {v7, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    and-int/lit8 v7, v10, 0xe

    or-int/lit8 v7, v7, 0x30

    and-int/2addr v8, v10

    or-int v19, v7, v8

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v26, v12

    move-wide/from16 v12, v20

    const/16 v20, 0xc00

    const/16 v21, 0x1f80

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    move-object/from16 v4, v22

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v18, v26

    invoke-static/range {v0 .. v21}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v22

    :goto_12
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_18

    new-instance v10, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$5;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$5;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    iput-object v10, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method
