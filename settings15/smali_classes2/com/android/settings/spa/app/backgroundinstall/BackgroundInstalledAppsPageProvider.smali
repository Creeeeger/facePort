.class public final Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;

.field public static backgroundInstallService:Landroid/content/pm/IBackgroundInstallControlService;

.field public static featureIsDisabled:Z

.field public static final owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->INSTANCE:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    const-string v0, "background_install_control"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->backgroundInstallService:Landroid/content/pm/IBackgroundInstallControlService;

    const-string v0, "settings_ui"

    const-string v1, "key_bic_ui_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->featureIsDisabled:Z

    return-void
.end method


# virtual methods
.method public final EntryItem(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x5807818c

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-boolean v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->featureIsDisabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$EntryItem$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$EntryItem$1;-><init>(Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void

    :cond_1
    const v0, -0x506540e0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f142e0a

    invoke-static {p1, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$generatePreferenceSummary$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->produceState(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v2, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$EntryItem$2;

    invoke-direct {v2, p1, v0}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$EntryItem$2;-><init>(Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/MutableState;)V

    const/4 v0, 0x2

    invoke-static {v2, v1, p1, v1, v0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$EntryItem$3;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$EntryItem$3;-><init>(Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x717c3cd8

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-boolean v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->featureIsDisabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$Page$1;-><init>(Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p2, v2, v0}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProviderKt;->BackgroundInstalledAppList(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$Page$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$Page$2;-><init>(Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final buildInjectEntry()Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;
    .locals 2

    sget-object p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$buildInjectEntry$1;->INSTANCE:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider$buildInjectEntry$1;

    const-string v1, "fn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->searchDataFn:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->isAllowSearch:Z

    sget-object v0, Lcom/android/settings/spa/app/backgroundinstall/ComposableSingletons$BackgroundInstalledAppsPageProviderKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "BackgroundInstalledAppsPage"

    return-object p0
.end method

.method public final setBackgroundInstallControlService(Landroid/content/pm/IBackgroundInstallControlService;)Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;
    .locals 1

    const-string v0, "bic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->backgroundInstallService:Landroid/content/pm/IBackgroundInstallControlService;

    return-object p0
.end method

.method public final setDisableFeature(Z)Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;
    .locals 0

    sput-boolean p1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->featureIsDisabled:Z

    return-object p0
.end method
