.class public abstract Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final InteractAcrossProfilesDetailsPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 5

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x78ae13fd

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, -0x5b0d1827

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v2, v1, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;->isAvailableFlow:Lkotlinx/coroutines/flow/Flow;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v4, 0x38

    invoke-static {v2, v3, p1, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$1;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$1;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void

    :cond_2
    const v2, 0x7f142e0a

    invoke-static {p1, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v4, v1, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v4, v2, p1, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    new-instance v3, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;

    invoke-direct {v3, p1, v1, v2}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$2;-><init>(Landroidx/compose/runtime/Composer;Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPresenter;Landroidx/compose/runtime/MutableState;)V

    const/4 v1, 0x2

    invoke-static {v3, v0, p1, v0, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$3;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/InteractAcrossProfilesDetailsPreferenceKt$InteractAcrossProfilesDetailsPreference$3;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
