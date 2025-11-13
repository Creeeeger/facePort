.class public abstract Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppAllServicesPreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 5

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x4b6d63e3    # 1.5557603E7f

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_0

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, p1}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v1

    :cond_0
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v1, v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v3, -0x7f8aa661

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;

    check-cast v1, Lkotlinx/coroutines/internal/ContextScope;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/internal/ContextScope;)V

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, v3, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->isAvailableFlow:Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter$special$$inlined$map$1;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v4, 0x38

    invoke-static {v1, v2, p1, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt$AppAllServicesPreference$1;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt$AppAllServicesPreference$1;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void

    :cond_3
    const v1, 0x7f142e0a

    invoke-static {p1, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v4, v3, Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v4, v1, p1, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    new-instance v2, Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt$AppAllServicesPreference$2;

    invoke-direct {v2, p1, v3, v1}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt$AppAllServicesPreference$2;-><init>(Landroidx/compose/runtime/Composer;Lcom/android/settings/spa/app/appinfo/AppAllServicesPresenter;Landroidx/compose/runtime/MutableState;)V

    const/4 v1, 0x2

    invoke-static {v2, v0, p1, v0, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt$AppAllServicesPreference$3;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/AppAllServicesPreferenceKt$AppAllServicesPreference$3;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
