.class public abstract Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppPermissionPreference(Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/Composer;II)V
    .locals 5

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x661bc11

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p4, 0x2

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const p1, 0x79893626

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const v0, 0x18d24f0c

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_0

    if-ne v3, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iget-object v3, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->flow:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    move-object p1, v3

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :cond_2
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryState;

    invoke-static {p2}, Lcom/android/settingslib/spaprivileged/framework/compose/StringResourcesKt;->placeholder(Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryState;-><init>(Ljava/lang/String;Z)V

    const/16 v4, 0x8

    invoke-static {p1, v3, p2, v4}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    const v4, 0x99e5d82

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    new-instance v4, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;

    invoke-direct {v4, v0, p0, v3}, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    const/16 v1, 0x36

    invoke-static {v4, v0, p2, v1, v2}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$2;-><init>(Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/flow/Flow;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
