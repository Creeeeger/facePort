.class public final Lcom/android/settings/spa/app/AppsMainPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/AppsMainPageProvider;

.field public static final owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/AppsMainPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/AppsMainPageProvider;->INSTANCE:Lcom/android/settings/spa/app/AppsMainPageProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/AppsMainPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    return-void
.end method


# virtual methods
.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x1c02e6cf

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0}, Lcom/android/settings/spa/app/AppsMainPageProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/settings/spa/app/ComposableSingletons$AppsMainKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/16 v4, 0x180

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/AppsMainPageProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/AppsMainPageProvider$Page$1;-><init>(Lcom/android/settings/spa/app/AppsMainPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final buildEntry(Landroid/os/Bundle;)Ljava/util/List;
    .locals 4

    sget-object p0, Lcom/android/settings/spa/app/AllAppListPageProvider;->INSTANCE:Lcom/android/settings/spa/app/AllAppListPageProvider;

    sget-object p0, Lcom/android/settings/spa/app/AllAppListPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/settings/spa/app/AllAppListPageProvider$buildInjectEntry$1;->INSTANCE:Lcom/android/settings/spa/app/AllAppListPageProvider$buildInjectEntry$1;

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->searchDataFn:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->isAllowSearch:Z

    sget-object p1, Lcom/android/settings/spa/app/ComposableSingletons$AllAppListKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object p1, Lcom/android/settings/spa/app/AppsMainPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object p0

    sget-object v2, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v2}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object v2

    invoke-static {v2, p1, v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object v2

    sget-object v3, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->INSTANCE:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;

    invoke-virtual {v3}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->buildInjectEntry()Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object v3

    invoke-static {v3, p1, v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {v3}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object p1

    filled-new-array {p0, v2, p1}, [Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "AppsMain"

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->appContext:Landroid/content/Context;

    const v0, 0x7f1403d3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spa environment is not set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
