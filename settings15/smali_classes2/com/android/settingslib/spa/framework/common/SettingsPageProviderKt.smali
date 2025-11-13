.class public abstract Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final createSettingsPage(Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-interface {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getParameter()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/settingslib/spa/framework/util/UniqueIdKt;->genPageId(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getMetricsCategory()I

    move-result v4

    invoke-interface {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getParameter()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, p1, v6}, Lcom/android/settingslib/spa/framework/util/ParameterKt;->normalizeArgList(Ljava/util/List;Landroid/os/Bundle;Z)Ljava/util/List;

    move-result-object v7

    sget-object v11, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt$createSettingsPage$1;->INSTANCE:Lcom/android/settingslib/spa/framework/common/SettingsPageProviderKt$createSettingsPage$1;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v8, ""

    const/16 v12, 0x1e

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getParameter()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/spa/framework/common/SettingsPage;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static final getPageProvider(Ljava/lang/String;)Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;
    .locals 1

    const-string v0, "sppName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/settings/spa/SettingsSpaEnvironment;

    iget-object v0, v0, Lcom/android/settings/spa/SettingsSpaEnvironment;->pageProviderRepository:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/settingslib/spa/framework/common/SettingsPageProviderRepository;->pageProviderMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spa environment is not set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
