.class public abstract Lcom/android/settings/spa/app/storage/StorageAppListKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final StorageAppListPage(Lcom/android/settings/spa/app/storage/StorageType;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x2

    const-string v4, "type"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p2

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v4, 0x54a1df0e

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v1, 0xe

    if-nez v4, :cond_2

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    or-int/2addr v4, v1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    and-int/2addr v3, v2

    if-eqz v3, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v1, 0x70

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    :goto_3
    and-int/lit8 v6, v4, 0x5b

    const/16 v7, 0x12

    if-ne v6, v7, :cond_7

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v5

    move-object/from16 p1, v15

    goto/16 :goto_8

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/settings/spa/app/storage/ComposableSingletons$StorageAppListKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_5

    :cond_8
    move-object v3, v5

    :goto_5
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    iget v6, v0, Lcom/android/settings/spa/app/storage/StorageType;->titleResource:I

    invoke-static {v15, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/spa/app/storage/StorageType$Apps;->INSTANCE:Lcom/android/settings/spa/app/storage/StorageType$Apps;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v9, 0x0

    const v10, -0x9aae13d

    if-eqz v7, :cond_b

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v7, -0x9aad3b6

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_9

    if-ne v10, v8, :cond_a

    :cond_9
    new-instance v10, Lcom/android/settings/spa/app/storage/StorageAppListModel;

    invoke-direct {v10, v5, v0}, Lcom/android/settings/spa/app/storage/StorageAppListModel;-><init>(Landroid/content/Context;Lcom/android/settings/spa/app/storage/StorageType;)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v10, Lcom/android/settings/spa/app/storage/StorageAppListModel;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    move-object v5, v10

    goto :goto_7

    :cond_b
    sget-object v7, Lcom/android/settings/spa/app/storage/StorageType$Games;->INSTANCE:Lcom/android/settings/spa/app/storage/StorageType$Games;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v7, -0x9aad35c

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_c

    if-ne v10, v8, :cond_d

    :cond_c
    new-instance v10, Lcom/android/settings/spa/app/storage/StorageAppListModel;

    invoke-direct {v10, v5, v0}, Lcom/android/settings/spa/app/storage/StorageAppListModel;-><init>(Landroid/content/Context;Lcom/android/settings/spa/app/storage/StorageType;)V

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v10, Lcom/android/settings/spa/app/storage/StorageAppListModel;

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_6

    :goto_7
    sget-object v10, Lcom/android/settings/spa/app/storage/ComposableSingletons$StorageAppListKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shl-int/lit8 v4, v4, 0x15

    const/high16 v7, 0xe000000

    and-int/2addr v4, v7

    const v7, 0x1861c0

    or-int v14, v4, v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x1

    const/16 v16, 0xa8

    move-object v4, v6

    move v6, v7

    move v7, v8

    move v8, v12

    move-object v12, v3

    move-object v13, v15

    move-object/from16 p1, v15

    move/from16 v15, v16

    invoke-static/range {v4 .. v15}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;->AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v4

    if-eqz v4, :cond_e

    new-instance v5, Lcom/android/settings/spa/app/storage/StorageAppListKt$StorageAppListPage$3;

    invoke-direct {v5, v0, v3, v1, v2}, Lcom/android/settings/spa/app/storage/StorageAppListKt$StorageAppListPage$3;-><init>(Lcom/android/settings/spa/app/storage/StorageType;Lkotlin/jvm/functions/Function3;II)V

    iput-object v5, v4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void

    :cond_f
    move-object v0, v15

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
