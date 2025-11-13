.class public abstract Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final Dialog(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v2, p3

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    const v3, 0x4acfa316    # 6803851.0f

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, v2, 0xe

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

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

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit8 v4, v3, 0x5b

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object/from16 v24, v1

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v19, Lcom/android/settings/spa/app/appinfo/ComposableSingletons$InstantAppDomainsPreferenceKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sget-object v23, Lcom/android/settings/spa/app/appinfo/ComposableSingletons$InstantAppDomainsPreferenceKt;->lambda-2:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v4, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$Dialog$1;

    invoke-direct {v4, v0}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$Dialog$1;-><init>(Landroidx/compose/runtime/State;)V

    const v5, 0x145830a3

    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    shr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0xe

    const v4, 0x1b0030

    or-int v20, v3, v4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3f9c

    move-object/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v6, v23

    move-object/from16 v19, v24

    invoke-static/range {v1 .. v22}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    :goto_4
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$Dialog$2;

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$Dialog$2;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;I)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final InstantAppDomainsPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x3b1eca7d

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$1;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$1;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void

    :cond_1
    const v1, -0x772e321c

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v7, :cond_2

    new-instance v1, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v3, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$openDialog$2;->INSTANCE:Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$openDialog$2;

    const/4 v6, 0x6

    const/4 v2, 0x0

    const/16 v5, 0xc08

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object v2, v0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    const v3, 0x7f142e0a

    invoke-static {p1, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v2, v3, p1, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    new-instance v3, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$2;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$2;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const/4 v2, 0x2

    invoke-static {v3, v8, p1, v8, v2}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    const/16 v3, 0x38

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPresenter;->domainsFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, v2, p1, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, -0x772e2f8d

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3

    if-ne v3, v7, :cond_4

    :cond_3
    new-instance v3, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$3$1;

    invoke-direct {v3, v1}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v3, p1, v8}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt;->Dialog(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$4;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/InstantAppDomainsPreferenceKt$InstantAppDomainsPreference$4;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
