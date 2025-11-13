.class public abstract Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppOpenByDefaultPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x4deebe9f

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, -0x570f49d4

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_0

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;

    invoke-direct {v2, v0, p0}, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, -0x570f4992

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_2

    if-ne v4, v3, :cond_4

    :cond_2
    iget-object v1, v2, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, v2, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;->context:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v4

    invoke-static {v1, v4, v5}, Lcom/android/settingslib/applications/AppUtils;->isBrowserApp(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    xor-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPreferenceKt$AppOpenByDefaultPreference$2;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPreferenceKt$AppOpenByDefaultPreference$2;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void

    :cond_6
    iget-object v1, v2, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    const v3, 0x7f142e0a

    invoke-static {p1, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v1, v3, p1, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPreferenceKt$AppOpenByDefaultPreference$3;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPreferenceKt$AppOpenByDefaultPreference$3;-><init>(Landroidx/compose/runtime/Composer;Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPresenter;Landroidx/compose/runtime/MutableState;)V

    const/4 v1, 0x2

    invoke-static {v3, v0, p1, v0, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPreferenceKt$AppOpenByDefaultPreference$4;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/AppOpenByDefaultPreferenceKt$AppOpenByDefaultPreference$4;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method
