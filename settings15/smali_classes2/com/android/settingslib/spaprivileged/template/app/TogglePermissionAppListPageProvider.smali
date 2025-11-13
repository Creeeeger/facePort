.class public final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# instance fields
.field public final appListTemplate:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;

.field public final parameter:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;->appListTemplate:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;

    sget-object p1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt;->PAGE_PARAMETER:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;->parameter:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x5cf0d8fe

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz p1, :cond_0

    const-string v0, "permission"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;->appListTemplate:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;->rememberModel$frameworks__base__packages__SettingsLib__SpaPrivileged__android_common__SeslSpaPrivilegedLib(Landroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt;->TogglePermissionAppList(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Page$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public final buildEntry(Landroid/os/Bundle;)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;->parameter:Ljava/util/List;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "permission"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NamedNavArgument;

    iget-object v4, v1, Landroidx/navigation/NamedNavArgument;->argument:Landroidx/navigation/NavArgument;

    iget-object v4, v4, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    sget-object v5, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType$Companion$IntType$1;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, v1, Landroidx/navigation/NamedNavArgument;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;->parameter:Ljava/util/List;

    const-string v1, "TogglePermissionAppList"

    invoke-static {v1, p0, p1}, Lcom/android/settingslib/spa/framework/common/SettingsPage$Companion;->create$default(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object p0

    sget-object p1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->PAGE_PARAMETER:Ljava/util/List;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TogglePermissionAppInfoPage"

    invoke-static {v1, p1, v0}, Lcom/android/settingslib/spa/framework/common/SettingsPage$Companion;->create$default(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object p1

    const-string v0, "personal"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AppList_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "entryName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    invoke-direct {v4, v2, p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;-><init>(Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/SettingsPage;)V

    const/4 v2, 0x2

    invoke-static {v4, p0, v3, v2}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    const/4 v2, 0x1

    invoke-static {v4, v3, p1, v2}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setLink$default(Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPage;I)V

    invoke-virtual {v4}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "TogglePermissionAppList"

    return-object p0
.end method

.method public final getParameter()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider;->parameter:Ljava/util/List;

    return-object p0
.end method
