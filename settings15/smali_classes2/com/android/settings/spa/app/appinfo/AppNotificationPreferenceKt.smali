.class public abstract Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppNotificationPreference(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/notification/IAppNotificationRepository;Landroidx/compose/runtime/Composer;II)V
    .locals 6

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x5f00dda8

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v0, 0x2

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_0

    sget-object p1, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$1;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$1;

    invoke-static {p1, p2}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/spa/notification/IAppNotificationRepository;

    :cond_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, -0x6adb9bec

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_2

    :cond_1
    new-instance v2, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$summary$2$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v3}, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$summary$2$1;-><init>(Lcom/android/settings/spa/notification/IAppNotificationRepository;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v3, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x7f142e0a

    invoke-static {p2, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v3, v4, p2, v5}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    new-instance v4, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$2;

    invoke-direct {v4, p2, v3, p0, v1}, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$2;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)V

    invoke-static {v4, v2, p2, v2, v0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/notification/IAppNotificationRepository;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method
