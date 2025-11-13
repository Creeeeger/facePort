.class public abstract Lcom/android/settings/network/MobileNetworkListFragment$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static collectAirplaneModeAndFinishIfOn(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v1, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;

    const/4 v2, 0x0

    const-string v3, "airplane_mode_on"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v2}, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalChangeFlowKt;->settingsGlobalChangeFlow(Landroid/content/Context;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v2, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt$settingsGlobalBooleanFlow$$inlined$map$1;

    invoke-direct {v2, v0, v1}, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt$settingsGlobalBooleanFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/network/MobileNetworkListFragment$Companion$collectAirplaneModeAndFinishIfOn$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/network/MobileNetworkListFragment$Companion$collectAirplaneModeAndFinishIfOn$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, v1, p0, v2}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
