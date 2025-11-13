.class public final Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;

.field public static final owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;->INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    return-void
.end method


# virtual methods
.method public final EntryItem(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x2943228a

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v2, v0, 0xb

    if-ne v2, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/16 v2, 0x8

    and-int/lit8 v0, v0, 0xe

    or-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;->getSummary(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider$EntryItem$1;

    invoke-direct {v2, p1, v0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider$EntryItem$1;-><init>(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v2, v0, p1, v0, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider$EntryItem$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider$EntryItem$2;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x534e1c26

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const/4 v0, 0x1

    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p2, v2, v0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProviderKt;->UserAspectRatioAppList(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider$Page$1;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final buildInjectEntry()Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;
    .locals 2

    sget-object p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider$buildInjectEntry$1;->INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppsPageProvider$buildInjectEntry$1;

    const-string v1, "fn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->searchDataFn:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->isAllowSearch:Z

    sget-object v0, Lcom/android/settings/spa/app/appcompat/ComposableSingletons$UserAspectRatioAppsPageProviderKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "UserAspectRatioAppsPage"

    return-object p0
.end method

.method public final getSummary(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p0, 0x62fbeeb6

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p2, "MODEL"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const p2, 0x7f140456

    invoke-static {p2, p0, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 1

    sget-object p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spa environment is not set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
