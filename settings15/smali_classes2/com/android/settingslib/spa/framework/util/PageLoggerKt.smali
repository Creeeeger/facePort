.class public abstract Lcom/android/settingslib/spa/framework/util/PageLoggerKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final PageLogger(Lcom/android/settingslib/spa/framework/common/SettingsPage;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x3298ffbc

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->LocalNavController:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    new-instance v1, Lcom/android/settingslib/spa/framework/util/PageLoggerKt$PageLogger$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/spa/framework/util/PageLoggerKt$PageLogger$1;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;)V

    new-instance v2, Lcom/android/settingslib/spa/framework/util/PageLoggerKt$PageLogger$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settingslib/spa/framework/util/PageLoggerKt$PageLogger$2;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;)V

    const/4 v0, 0x0

    invoke-static {v1, v2, p1, v0, v0}, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt;->LifecycleEffect(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settingslib/spa/framework/util/PageLoggerKt$PageLogger$3;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/framework/util/PageLoggerKt$PageLogger$3;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public static final access$logPageEvent(Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/LogEvent;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;)V
    .locals 7

    sget-object v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/settings/spa/SettingsSpaEnvironment;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->id:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/spa/framework/common/LogCategory;->FRAMEWORK:Lcom/android/settingslib/spa/framework/common/LogCategory;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "name"

    iget-object v5, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->displayName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;->getSessionSourceName()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Lkotlin/Pair;

    const-string v5, "session"

    invoke-direct {v4, v5, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p2, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->metricsCategory:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v5, Lkotlin/Pair;

    const-string v6, "metricsCategory"

    invoke-direct {v5, v6, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v4, v5}, [Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v3, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->parameter:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SettingsPage;->arguments:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Lcom/android/settingslib/spa/framework/util/ParameterKt;->normalize(Ljava/util/List;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget-object p0, v0, Lcom/android/settings/spa/SettingsSpaEnvironment;->logger:Lcom/android/settingslib/spa/framework/common/SpaLogger;

    invoke-interface {p0, v1, p1, v2, p2}, Lcom/android/settingslib/spa/framework/common/SpaLogger;->event(Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/LogEvent;Lcom/android/settingslib/spa/framework/common/LogCategory;Landroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Spa environment is not set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
