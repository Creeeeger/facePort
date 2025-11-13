.class public abstract Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final MenuItem(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    const/4 v0, 0x2

    const/4 v3, 0x4

    const-string v6, "text"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "onClick"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p4

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x59b7c781

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v6, 0x1

    and-int/lit8 v7, p6, 0x1

    if-eqz v7, :cond_0

    or-int/lit8 v7, v5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v7, v5, 0xe

    if-nez v7, :cond_2

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    or-int/2addr v7, v5

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_1
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_4

    or-int/lit8 v7, v7, 0x30

    :cond_3
    move/from16 v8, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v8, v5, 0x70

    if-nez v8, :cond_3

    move/from16 v8, p2

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x20

    goto :goto_2

    :cond_5
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v7, v9

    :goto_3
    and-int/lit8 v3, p6, 0x4

    const/16 v9, 0x100

    if-eqz v3, :cond_6

    or-int/lit16 v7, v7, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v5, 0x380

    if-nez v3, :cond_8

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v9

    goto :goto_4

    :cond_7
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v7, v3

    :cond_8
    :goto_5
    and-int/lit8 v3, p6, 0x8

    const/16 v10, 0x800

    if-eqz v3, :cond_9

    or-int/lit16 v7, v7, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v5, 0x1c00

    if-nez v3, :cond_b

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v10

    goto :goto_6

    :cond_a
    const/16 v3, 0x400

    :goto_6
    or-int/2addr v7, v3

    :cond_b
    :goto_7
    and-int/lit16 v3, v7, 0x16db

    const/16 v11, 0x492

    if-ne v3, v11, :cond_d

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v15

    goto/16 :goto_c

    :cond_d
    :goto_8
    if-eqz v0, :cond_e

    move v0, v6

    goto :goto_9

    :cond_e
    move v0, v8

    :goto_9
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$1;

    invoke-direct {v3, v2}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$1;-><init>(Ljava/lang/String;)V

    const v8, 0x1b4c8f51

    invoke-static {v8, v3, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const v8, 0x3ee456e4

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v8, v7, 0x1c00

    const/4 v11, 0x0

    if-ne v8, v10, :cond_f

    move v8, v6

    goto :goto_a

    :cond_f
    move v8, v11

    :goto_a
    and-int/lit16 v10, v7, 0x380

    if-ne v10, v9, :cond_10

    goto :goto_b

    :cond_10
    move v6, v11

    :goto_b
    or-int/2addr v6, v8

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_11

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v6, :cond_12

    :cond_11
    new-instance v8, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$2$1;

    invoke-direct {v8, v1, v4}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$2$1;-><init>(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v6, v7, 0xc

    const/high16 v7, 0x70000

    and-int/2addr v6, v7

    or-int/lit8 v16, v6, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x1dc

    move-object v6, v3

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v0

    move-object v3, v15

    invoke-static/range {v6 .. v17}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    move v8, v0

    :goto_c
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_13

    new-instance v9, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v8

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope$MenuItem$3;-><init>(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V

    iput-object v9, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method
