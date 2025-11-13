.class public abstract Lcom/android/settings/spa/app/AllAppListKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AllAppListPage(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x6

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/ComposerImpl;

    const v3, -0x6e2446d0

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    or-int/lit8 v5, v0, 0x6

    move v9, v5

    move-object/from16 v5, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v0, 0xe

    if-nez v5, :cond_2

    move-object/from16 v5, p0

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    or-int/2addr v6, v0

    move v9, v6

    goto :goto_1

    :cond_2
    move-object/from16 v5, p0

    move v9, v0

    :goto_1
    and-int/lit8 v6, v9, 0xb

    if-ne v6, v4, :cond_4

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/settings/spa/app/ComposableSingletons$AllAppListKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v16, v3

    goto :goto_3

    :cond_5
    move-object/from16 v16, v5

    :goto_3
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v3, -0x239b917d

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v4, -0x46b425d5

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v5, :cond_6

    new-instance v4, Lcom/android/settings/network/telephony/CallStateRepository;

    invoke-direct {v4, v3}, Lcom/android/settings/network/telephony/CallStateRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/network/telephony/CallStateRepository;->isInCallFlow()Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v4, Lkotlinx/coroutines/flow/Flow;

    const/4 v10, 0x0

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v6, 0x38

    invoke-static {v4, v5, v15, v6}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    new-instance v5, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v6, 0x7f141ebf

    invoke-static {v15, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    new-instance v7, Lcom/android/settings/spa/app/ResetAppPreferencesKt$rememberResetAppDialogPresenter$1;

    invoke-direct {v7, v3}, Lcom/android/settings/spa/app/ResetAppPreferencesKt$rememberResetAppDialogPresenter$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6, v4, v7}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    new-instance v4, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const v3, 0x7f1408bf

    invoke-static {v15, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v4, v3, v6, v2}, Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    const v2, 0x7f141ec1

    invoke-static {v15, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v8, 0x0

    move-object v3, v5

    move-object v5, v2

    move-object v7, v15

    invoke-static/range {v3 .. v8}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->rememberAlertDialogPresenter(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;

    move-result-object v2

    invoke-virtual {v15, v10}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x7f1402e5

    invoke-static {v15, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/spa/app/AllAppListKt$AllAppListPage$1;->INSTANCE:Lcom/android/settings/spa/app/AllAppListKt$AllAppListPage$1;

    invoke-static {v4, v15}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    new-instance v5, Lcom/android/settings/spa/app/AllAppListKt$AllAppListPage$2;

    invoke-direct {v5, v2}, Lcom/android/settings/spa/app/AllAppListKt$AllAppListPage$2;-><init>(Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$rememberAlertDialogPresenter$alertDialogPresenter$1$1;)V

    const v2, -0x6afdefec

    invoke-static {v2, v5, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    shl-int/lit8 v5, v9, 0x18

    const/high16 v6, 0xe000000

    and-int/2addr v5, v6

    const v6, 0x1861c0

    or-int v13, v5, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v14, 0xa8

    move-object v9, v2

    move-object/from16 v11, v16

    move-object v12, v15

    invoke-static/range {v3 .. v14}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;->AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v5, v16

    :goto_4
    invoke-virtual {v15}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lcom/android/settings/spa/app/AllAppListKt$AllAppListPage$3;

    invoke-direct {v3, v5, v0, v1}, Lcom/android/settings/spa/app/AllAppListKt$AllAppListPage$3;-><init>(Lkotlin/jvm/functions/Function3;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method
