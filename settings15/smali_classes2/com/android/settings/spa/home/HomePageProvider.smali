.class public final Lcom/android/settings/spa/home/HomePageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/home/HomePageProvider;

.field public static final owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/spa/home/HomePageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/home/HomePageProvider;->INSTANCE:Lcom/android/settings/spa/home/HomePageProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;->createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/home/HomePageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    return-void
.end method


# virtual methods
.method public final buildEntry(Landroid/os/Bundle;)Ljava/util/List;
    .locals 7

    sget-object p0, Lcom/android/settings/spa/network/NetworkAndInternetPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/settings/spa/network/ComposableSingletons$NetworkAndInternetKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object p1, Lcom/android/settings/spa/home/HomePageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object p0

    sget-object v2, Lcom/android/settings/spa/app/AppsMainPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v2}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/spa/app/ComposableSingletons$AppsMainKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-static {v2, p1, v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object v2

    sget-object v3, Lcom/android/settings/spa/notification/NotificationMainPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v3}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/spa/notification/ComposableSingletons$NotificationMainKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-static {v3, p1, v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {v3}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object v3

    sget-object v4, Lcom/android/settings/spa/system/SystemMainPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v4}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/spa/system/ComposableSingletons$SystemMainKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-static {v4, p1, v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {v4}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object v4

    sget-object v5, Lcom/android/settings/spa/about/AboutPhonePageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v5}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/settings/spa/about/ComposableSingletons$AboutPhoneKt;->lambda-3:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-static {v5, p1, v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {v5}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object p1

    filled-new-array {p0, v2, v3, v4, p1}, [Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Home"

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->appContext:Landroid/content/Context;

    const v0, 0x7f142b60

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
