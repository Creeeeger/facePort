.class public abstract Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PAGE_PARAMETER:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "permission"

    sget-object v1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt$PAGE_PARAMETER$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt$PAGE_PARAMETER$1;

    invoke-static {v0, v1}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt;->PAGE_PARAMETER:Ljava/util/List;

    return-void
.end method

.method public static final TogglePermissionAppList(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p5

    const/4 v0, 0x4

    const/4 v3, 0x2

    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "permissionType"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p4

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v6, 0x50d6f7d8

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/high16 v6, -0x80000000

    and-int v6, p6, v6

    if-eqz v6, :cond_0

    or-int/lit8 v6, v5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v6, v5, 0xe

    if-nez v6, :cond_2

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    and-int/lit8 v7, p6, 0x1

    if-eqz v7, :cond_3

    or-int/lit8 v6, v6, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v7, v5, 0x70

    if-nez v7, :cond_5

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_5
    :goto_3
    and-int/lit16 v7, v5, 0x380

    if-nez v7, :cond_8

    and-int/lit8 v7, p6, 0x2

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v7, p2

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v6, v8

    goto :goto_5

    :cond_8
    move-object/from16 v7, p2

    :goto_5
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v5, 0x1c00

    if-nez v8, :cond_9

    move-object/from16 v8, p3

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x800

    goto :goto_6

    :cond_b
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v6, v9

    :goto_7
    and-int/lit16 v9, v6, 0x16db

    const/16 v10, 0x492

    if-ne v9, v10, :cond_d

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v3, v7

    goto/16 :goto_c

    :cond_d
    :goto_8
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_11

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_f

    and-int/lit16 v6, v6, -0x381

    :cond_f
    move-object v3, v7

    :cond_10
    move-object v0, v8

    goto :goto_b

    :cond_11
    :goto_9
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_12

    sget-object v3, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt$TogglePermissionAppList$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt$TogglePermissionAppList$1;

    and-int/lit16 v6, v6, -0x381

    goto :goto_a

    :cond_12
    move-object v3, v7

    :goto_a
    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$TogglePermissionAppListPageKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    :goto_b
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-interface/range {p0 .. p0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->getPageTitleResId()I

    move-result v8

    invoke-static {v4, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x1dcff14b

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v10, :cond_13

    new-instance v9, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;

    invoke-direct {v9, v7, v2, v1, v3}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    move-object v7, v9

    check-cast v7, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v6, v6, 0xf

    const/high16 v9, 0xe000000

    and-int/2addr v6, v9

    or-int/lit8 v16, v6, 0x40

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0xfc

    move-object v6, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v14

    move-object v14, v0

    move-object v15, v4

    invoke-static/range {v6 .. v17}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;->AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v0

    :goto_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_14

    new-instance v9, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt$TogglePermissionAppList$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v8

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt$TogglePermissionAppList$3;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    iput-object v9, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
