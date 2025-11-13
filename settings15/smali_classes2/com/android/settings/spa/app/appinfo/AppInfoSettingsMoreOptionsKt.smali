.class public abstract Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppInfoSettingsMoreOptions(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Landroidx/compose/runtime/Composer;II)V
    .locals 7

    const-string v0, "packageInfoPresenter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x32db33fc

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    sget-object p2, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, -0x605f2be7

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$produceState$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/coroutines/Continuation;)V

    const/16 v0, 0x246

    invoke-static {v2, p1, v1, p3, v0}, Landroidx/compose/runtime/SnapshotStateKt;->produceState(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v6, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$state$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$state$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;II)V

    iput-object v6, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void

    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$restrictedSettingsAllowed$2;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$restrictedSettingsAllowed$2;

    const/4 v6, 0x6

    const/4 v2, 0x0

    const/16 v5, 0xc08

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaverKt$Saver$1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-boolean v2, v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallUpdates:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallForAllUsers:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shouldShowAccessRestrictedSettings:Z

    if-eqz v2, :cond_3

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v6, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;II)V

    iput-object v6, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void

    :cond_5
    new-instance v2, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;

    invoke-direct {v2, p1, v0, p0, v1}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroidx/compose/runtime/MutableState;)V

    const v0, -0x63d0dbc9

    invoke-static {v0, v2, p3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p3, v1}, Lcom/android/settingslib/spa/widget/scaffold/MoreOptionsKt;->MoreOptionsAction(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v6, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$3;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;II)V

    iput-object v6, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
