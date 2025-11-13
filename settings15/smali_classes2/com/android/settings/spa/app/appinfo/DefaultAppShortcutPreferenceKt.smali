.class public abstract Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final DefaultAppShortcutPreference(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 5

    const-string v0, "shortcut"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x36089039    # -2027000.9f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, -0x2718bd02

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;->roleName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v2, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    new-instance v3, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;

    invoke-direct {v3, v0, v1, p1}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v1, -0x2718bc8c

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2

    if-ne v2, v4, :cond_3

    :cond_2
    iget-object v1, v3, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, v3, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt$DefaultAppShortcutPreference$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt$DefaultAppShortcutPreference$2;-><init>(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter$isVisible$1;-><init>(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Landroidx/lifecycle/CoroutineLiveDataKt;->liveData$default(Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/CoroutineLiveData;

    move-result-object v1

    const v2, -0x78d4b600

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt$DefaultAppShortcutPreference$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt$DefaultAppShortcutPreference$3;-><init>(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void

    :cond_7
    const v1, 0x7f142e0a

    invoke-static {p2, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v4, v3, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;->summaryFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v4, v1, p2, v2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    new-instance v2, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt$DefaultAppShortcutPreference$4;

    invoke-direct {v2, p0, p2, v3, v1}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt$DefaultAppShortcutPreference$4;-><init>(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;Landroidx/compose/runtime/Composer;Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPresenter;Landroidx/compose/runtime/MutableState;)V

    const/4 v1, 0x2

    invoke-static {v2, v0, p2, v0, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance v0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt$DefaultAppShortcutPreference$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt$DefaultAppShortcutPreference$5;-><init>(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method
