.class public abstract Lcom/android/settingslib/spa/widget/ui/SwitchKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final SettingsSwitch(Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p6

    const/16 v0, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "changeable"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, p5

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x28d2d8de

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v7, p7, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v7, v6, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v6, 0xe

    if-nez v7, :cond_2

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v7, v7, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v6, 0x70

    if-nez v3, :cond_5

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    or-int/2addr v7, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v7, v7, 0x180

    :cond_6
    move-object/from16 v4, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v4, v6, 0x380

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v7, v8

    :goto_5
    and-int/lit8 v8, p7, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v7, v7, 0xc00

    :cond_9
    move-object/from16 v9, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v9, v6, 0x1c00

    if-nez v9, :cond_9

    move-object/from16 v9, p3

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_6

    :cond_b
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v7, v10

    :goto_7
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_d

    or-int/lit16 v7, v7, 0x6000

    :cond_c
    move-object/from16 v10, p4

    goto :goto_9

    :cond_d
    const v10, 0xe000

    and-int/2addr v10, v6

    if-nez v10, :cond_c

    move-object/from16 v10, p4

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x4000

    goto :goto_8

    :cond_e
    const/16 v11, 0x2000

    :goto_8
    or-int/2addr v7, v11

    :goto_9
    const v11, 0xb6db

    and-int/2addr v11, v7

    const/16 v12, 0x2492

    if-ne v11, v12, :cond_10

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v4

    move-object v4, v9

    goto/16 :goto_e

    :cond_10
    :goto_a
    const/4 v11, 0x0

    if-eqz v3, :cond_11

    move-object v4, v11

    :cond_11
    if-eqz v8, :cond_12

    move-object v3, v11

    goto :goto_b

    :cond_12
    move-object v3, v9

    :goto_b
    const/4 v15, 0x0

    if-eqz v0, :cond_14

    const v0, -0x508e49fe

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v8, :cond_13

    new-instance v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_c

    :cond_14
    move-object v0, v10

    :goto_c
    sget-object v8, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v8, 0x380000

    if-eqz v1, :cond_15

    const v9, -0x508e49ae

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    shr-int/lit8 v10, v7, 0x9

    and-int/lit8 v10, v10, 0xe

    invoke-static {v3, v5, v10}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt;->wrapOnSwitchWithLog(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function1;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v11, v4}, Lcom/android/settingslib/spa/framework/compose/ModifierExtKt;->contentDescription(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    and-int/lit8 v13, v7, 0xe

    shl-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v8

    or-int v16, v13, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x28

    move v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v13

    move v11, v12

    move-object v12, v14

    move-object v13, v0

    move-object v14, v5

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v7 .. v16}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_d

    :cond_15
    const v9, -0x508e4885

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shl-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v8

    or-int/lit16 v14, v7, 0x6036

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x2c

    move-object v13, v0

    move/from16 v17, v14

    move-object v14, v5

    move/from16 v15, v17

    invoke-static/range {v7 .. v16}, Landroidx/compose/material3/SwitchKt;->Switch(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_d
    move-object v10, v0

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    :goto_e
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_16

    new-instance v9, Lcom/android/settingslib/spa/widget/ui/SwitchKt$SettingsSwitch$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v10

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/spa/widget/ui/SwitchKt$SettingsSwitch$2;-><init>(Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V

    iput-object v9, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
