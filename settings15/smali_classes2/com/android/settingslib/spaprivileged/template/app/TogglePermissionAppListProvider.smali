.class public interface abstract Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public InfoPageEntryItem(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x24abba5d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider$InfoPageEntryItem$listModel$1;

    const-class v4, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;

    const-string v5, "createModel"

    const/4 v2, 0x1

    const-string v6, "createModel(Landroid/content/Context;)Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;"

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, p2}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    invoke-interface {p0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;->getPermissionType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x200

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt;->TogglePermissionAppInfoPageEntryItem(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider$InfoPageEntryItem$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider$InfoPageEntryItem$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public buildAppListInjectEntry()Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;
    .locals 4

    invoke-interface {p0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;->getPermissionType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider$buildAppListInjectEntry$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider$buildAppListInjectEntry$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;)V

    sget-object p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageKt;->PAGE_PARAMETER:Ljava/util/List;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "permission"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TogglePermissionAppList"

    invoke-static {v3, p0, v2}, Lcom/android/settingslib/spa/framework/common/SettingsPage$Companion;->create$default(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object p0

    new-instance v2, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1;

    invoke-direct {v2, v0, v1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x6a9df389

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->uiLayoutFn:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public abstract createModel(Landroid/content/Context;)Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;
.end method

.method public abstract getPermissionType()Ljava/lang/String;
.end method
