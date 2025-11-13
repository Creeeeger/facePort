.class public abstract Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final HibernationSwitchPreference(Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isHibernationSwitchEnabledStateFlow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0xbf41fb6

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const v0, -0x191b304d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    new-instance v1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object v0, v1

    check-cast v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "app_hibernation"

    const-string v4, "app_hibernation_enabled"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$1;-><init>(Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/flow/MutableStateFlow;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->isEligibleFlow:Lkotlinx/coroutines/flow/SafeFlow;

    const/16 v5, 0x38

    invoke-static {v4, v1, p2, v5}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    const/4 v1, 0x0

    iget-object v6, v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->isCheckedFlow:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    invoke-static {v6, v1, p2, v5}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    const v1, -0x191b2f0b

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    new-instance v8, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;

    move-object v1, v8

    move-object v3, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;-><init>(Landroid/content/Context;Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/flow/MutableStateFlow;)V

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1;

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x6

    invoke-static {v1, p2, v0}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceKt;->SwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$3;-><init>(Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/flow/MutableStateFlow;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method
