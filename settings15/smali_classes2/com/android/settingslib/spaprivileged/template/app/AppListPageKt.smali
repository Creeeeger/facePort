.class public abstract Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v10, p10

    move/from16 v11, p11

    const/16 v0, 0x80

    const/16 v4, 0x10

    const/16 v5, 0x20

    const/4 v6, 0x2

    const/4 v7, 0x4

    const-string v8, "title"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "listModel"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p9

    check-cast v8, Landroidx/compose/runtime/ComposerImpl;

    const v9, -0xc7ea164

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v9, v11, 0x1

    if-eqz v9, :cond_0

    or-int/lit8 v9, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v9, v10, 0xe

    if-nez v9, :cond_2

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v7

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_0
    or-int/2addr v9, v10

    goto :goto_1

    :cond_2
    move v9, v10

    :goto_1
    and-int/2addr v6, v11

    if-eqz v6, :cond_3

    or-int/lit8 v9, v9, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v10, 0x70

    if-nez v6, :cond_5

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    or-int/2addr v9, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v9, v9, 0x180

    :cond_6
    move/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v10, 0x380

    if-nez v7, :cond_6

    move/from16 v7, p2

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x100

    goto :goto_4

    :cond_8
    move v12, v0

    :goto_4
    or-int/2addr v9, v12

    :goto_5
    and-int/lit8 v12, v11, 0x8

    if-eqz v12, :cond_a

    or-int/lit16 v9, v9, 0xc00

    :cond_9
    move/from16 v13, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v13, v10, 0x1c00

    if-nez v13, :cond_9

    move/from16 v13, p3

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x800

    goto :goto_6

    :cond_b
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v9, v14

    :goto_7
    and-int/2addr v4, v11

    if-eqz v4, :cond_d

    or-int/lit16 v9, v9, 0x6000

    :cond_c
    move/from16 v14, p4

    goto :goto_9

    :cond_d
    const v14, 0xe000

    and-int/2addr v14, v10

    if-nez v14, :cond_c

    move/from16 v14, p4

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_e

    const/16 v15, 0x4000

    goto :goto_8

    :cond_e
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v9, v15

    :goto_9
    and-int/2addr v5, v11

    if-eqz v5, :cond_10

    const/high16 v15, 0x30000

    or-int/2addr v9, v15

    :cond_f
    move-object/from16 v15, p5

    goto :goto_b

    :cond_10
    const/high16 v15, 0x70000

    and-int/2addr v15, v10

    if-nez v15, :cond_f

    move-object/from16 v15, p5

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v16, 0x10000

    :goto_a
    or-int v9, v9, v16

    :goto_b
    and-int/lit8 v16, v11, 0x40

    if-eqz v16, :cond_12

    const/high16 v17, 0x180000

    or-int v9, v9, v17

    move-object/from16 v3, p6

    goto :goto_d

    :cond_12
    const/high16 v17, 0x380000

    and-int v17, v10, v17

    move-object/from16 v3, p6

    if-nez v17, :cond_14

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v9, v9, v18

    :cond_14
    :goto_d
    and-int/2addr v0, v11

    if-eqz v0, :cond_16

    const/high16 v18, 0xc00000

    :goto_e
    or-int v9, v9, v18

    :cond_15
    const/16 v1, 0x100

    goto :goto_f

    :cond_16
    const/high16 v18, 0x1c00000

    and-int v18, v10, v18

    move-object/from16 v1, p7

    if-nez v18, :cond_15

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v18, 0x400000

    goto :goto_e

    :goto_f
    and-int/2addr v1, v11

    if-eqz v1, :cond_18

    const/high16 v17, 0x6000000

    or-int v9, v9, v17

    move-object/from16 v2, p8

    goto :goto_11

    :cond_18
    const/high16 v17, 0xe000000

    and-int v17, v10, v17

    move-object/from16 v2, p8

    if-nez v17, :cond_1a

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/high16 v17, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v17, 0x2000000

    :goto_10
    or-int v9, v9, v17

    :cond_1a
    :goto_11
    const v17, 0xb6db6db

    and-int v2, v9, v17

    const v3, 0x2492492

    if-ne v2, v3, :cond_1c

    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v9, p7

    move-object/from16 v12, p8

    move v3, v7

    move v4, v13

    move v5, v14

    move-object v6, v15

    move-object/from16 v7, p6

    goto/16 :goto_16

    :cond_1c
    :goto_12
    const/4 v2, 0x0

    if-eqz v6, :cond_1d

    move v7, v2

    :cond_1d
    if-eqz v12, :cond_1e

    move v13, v2

    :cond_1e
    if-eqz v4, :cond_1f

    move v14, v2

    :cond_1f
    if-eqz v5, :cond_20

    const/4 v3, 0x0

    move-object v15, v3

    :cond_20
    if-eqz v16, :cond_21

    sget-object v3, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_13

    :cond_21
    move-object/from16 v3, p6

    :goto_13
    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_14

    :cond_22
    move-object/from16 v0, p7

    :goto_14
    if-eqz v1, :cond_23

    sget-object v1, Lcom/android/settingslib/spaprivileged/template/app/ComposableSingletons$AppListPageKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_15

    :cond_23
    move-object/from16 v1, p8

    :goto_15
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$showSystem$2;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$showSystem$2;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v12, 0xc08

    move-object/from16 p2, v2

    move-object/from16 p3, v6

    move-object/from16 p4, v4

    move-object/from16 p5, v8

    move/from16 p6, v12

    move/from16 p7, v5

    invoke-static/range {p2 .. p7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MutableState;

    new-instance v4, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;

    invoke-direct {v4, v13, v2, v3}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$1;-><init>(ZLandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;)V

    const v5, 0x72652fa8

    invoke-static {v5, v4, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    new-instance v5, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;

    move-object/from16 p2, v5

    move/from16 p3, v7

    move/from16 p4, v14

    move-object/from16 p5, v2

    move-object/from16 p6, p1

    move-object/from16 p7, v0

    move-object/from16 p8, v15

    move-object/from16 p9, v1

    invoke-direct/range {p2 .. p9}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;-><init>(ZZLandroidx/compose/runtime/MutableState;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    const v2, -0x4285f359

    invoke-static {v2, v5, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    and-int/lit8 v5, v9, 0xe

    or-int/lit16 v5, v5, 0x1b0

    const/4 v6, 0x0

    move-object/from16 p2, p0

    move-object/from16 p3, v4

    move-object/from16 p4, v2

    move-object/from16 p5, v8

    move/from16 p6, v5

    move/from16 p7, v6

    invoke-static/range {p2 .. p7}, Lcom/android/settingslib/spa/widget/scaffold/SearchScaffoldKt;->SearchScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    move-object v9, v0

    move-object v12, v1

    move v4, v13

    move v5, v14

    move-object v6, v15

    move/from16 v19, v7

    move-object v7, v3

    move/from16 v3, v19

    :goto_16
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_24

    new-instance v14, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v8, v9

    move-object v9, v12

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$3;-><init>(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;II)V

    iput-object v14, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_24
    return-void
.end method

.method public static final access$ShowSystemAction(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0xfa230e

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    and-int/lit8 v1, p4, 0x70

    const/16 v2, 0x20

    if-nez v1, :cond_3

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p4, 0x380

    const/16 v3, 0x100

    if-nez v1, :cond_5

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, v0, 0x2db

    const/16 v4, 0x92

    if-ne v1, v4, :cond_7

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_8

    :cond_7
    :goto_4
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz p1, :cond_8

    const v1, 0x7f1417af

    goto :goto_5

    :cond_8
    const v1, 0x7f1417e6

    :goto_5
    invoke-static {p3, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const v4, 0xe6d49e

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit16 v4, v0, 0x380

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v3, :cond_9

    move v3, v6

    goto :goto_6

    :cond_9
    move v3, v5

    :goto_6
    and-int/lit8 v4, v0, 0x70

    if-ne v4, v2, :cond_a

    goto :goto_7

    :cond_a
    move v6, v5

    :goto_7
    or-int v2, v3, v6

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_b

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_c

    :cond_b
    new-instance v3, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$ShowSystemAction$1$1;

    invoke-direct {v3, p2, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$ShowSystemAction$1$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v0, v0, 0x9

    and-int/lit16 v5, v0, 0x1c00

    const/4 v6, 0x2

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;->MenuItem(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    :goto_8
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_d

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$ShowSystemAction$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$ShowSystemAction$2;-><init>(Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsScope;ZLkotlin/jvm/functions/Function1;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method
