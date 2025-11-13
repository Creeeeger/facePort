.class public abstract Lcom/android/settings/spa/network/AirplaneModePreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AirplaneModePreference(Landroidx/compose/runtime/Composer;I)V
    .locals 5

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x629bfbf3    # 1.4387001E21f

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x19ff2478

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/android/settings/spa/network/AirplaneModeController;

    invoke-direct {v1, v0}, Lcom/android/settings/spa/network/AirplaneModeController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Lcom/android/settings/spa/network/AirplaneModeController;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v3, v1, Lcom/android/settings/spa/network/AirplaneModeController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/settings/spa/network/AirplaneModeController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.leanback"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/android/settings/spa/network/AirplaneModeController;->_airplaneModeState:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v1, Lcom/android/settings/spa/network/AirplaneModeController;->airplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    iget-object v4, v4, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4, p0}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt;->observeAsState(Landroidx/lifecycle/LiveData;Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    new-instance v4, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;

    invoke-direct {v4, v0, v3, v1}, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$2;-><init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;Lcom/android/settings/spa/network/AirplaneModeController;)V

    invoke-static {v4, p0, v2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceKt;->SwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$3;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$3;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v0, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$1;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/network/AirplaneModePreferenceKt$AirplaneModePreference$1;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method
