.class public abstract Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppDataUsagePreference(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/datausage/lib/INetworkTemplates;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 8

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x371e327d

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v0, 0x2

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    sget-object p1, Lcom/android/settings/datausage/lib/NetworkTemplates;->INSTANCE:Lcom/android/settings/datausage/lib/NetworkTemplates;

    :cond_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    sget-object p2, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$1;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$1;

    :cond_1
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v3, :cond_2

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, p3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    invoke-static {v1, p3}, Landroidx/activity/compose/PredictiveBackHandlerKt$$ExternalSyntheticOutline0;->m(Lkotlinx/coroutines/internal/ContextScope;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    move-result-object v1

    :cond_2
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    iget-object v1, v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const v4, -0x548bd770

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    if-ne v5, v3, :cond_4

    :cond_3
    new-instance v7, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/internal/ContextScope;

    move-object v1, v7

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settings/datausage/lib/INetworkTemplates;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p3, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v5, v7

    :cond_4
    check-cast v5, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v2, v5, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->isAvailableFlow:Lkotlinx/coroutines/flow/SafeFlow;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v4, 0x38

    invoke-static {v2, v3, p3, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_5

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$2;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/datausage/lib/INetworkTemplates;Lkotlin/jvm/functions/Function2;II)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void

    :cond_6
    const v2, 0x7f1409d8

    invoke-static {p3, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v4, v5, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->summaryFlow:Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter$special$$inlined$map$2;

    invoke-static {v4, v2, p3, v3}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$3;

    invoke-direct {v3, v5, p3, v2}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$3;-><init>(Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;)V

    invoke-static {v3, v1, p3, v1, v0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_7

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$4;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/datausage/lib/INetworkTemplates;Lkotlin/jvm/functions/Function2;II)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method
