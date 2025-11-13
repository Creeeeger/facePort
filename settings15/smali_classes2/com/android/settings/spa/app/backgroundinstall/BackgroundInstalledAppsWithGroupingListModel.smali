.class public final Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# instance fields
.field public backgroundInstallService:Landroid/content/pm/IBackgroundInstallControlService;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;->context:Landroid/content/Context;

    const-string p1, "background_install_control"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;->backgroundInstallService:Landroid/content/pm/IBackgroundInstallControlService;

    return-void
.end method


# virtual methods
.method public final AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x472998b6

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast v1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppListWithGroupingAppRecord;

    iget-object v1, v1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppListWithGroupingAppRecord;->app:Landroid/content/pm/ApplicationInfo;

    sget-object v2, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;

    invoke-static {v1, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->navigator(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object v2

    new-instance v3, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$AppItem$1;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$AppItem$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    invoke-static {}, Landroidx/compose/material/icons/outlined/DeleteKt;->getDelete()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v4

    const v0, 0x7f140568

    invoke-static {p2, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/spaprivileged/template/app/AppListButtonItemKt;->AppListButtonItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$AppItem$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$AppItem$2;-><init>(Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    const-string p2, "recordListFlow"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;->backgroundInstallService:Landroid/content/pm/IBackgroundInstallControlService;

    if-nez p2, :cond_0

    const-string p0, "AppListModel<BackgroundInstalledAppListWithGroupingAppRecord>"

    const-string p1, "Failed to retrieve Background Install Control Service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/util/List;

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1;-><init>([Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p2, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$filter$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$filter$1;-><init>(Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method

.method public final getComparator(I)Ljava/util/Comparator;
    .locals 0

    new-instance p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$getComparator$$inlined$compareByDescending$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public final getGroupTitle(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Ljava/lang/String;
    .locals 8

    check-cast p1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppListWithGroupingAppRecord;

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings_ui"

    const-string v1, "key_grouping_by_month"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->INSTANCE:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing list grouping value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " falling back to default value: 6"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackgroundInstalledAppsPage"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    const-wide v6, 0x9cbf9040L

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iget-wide v4, p1, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppListWithGroupingAppRecord;->dateOfInstall:J

    cmp-long p1, v4, v2

    const-string v0, "count"

    if-lez p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;->context:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object p1

    const v0, 0x7f140563

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/spa/framework/util/MessageFormatsKt;->formatString(Landroid/content/Context;I[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;->context:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object p1

    const v0, 0x7f140562

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/spa/framework/util/MessageFormatsKt;->formatString(Landroid/content/Context;I[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final setBackgroundInstallControlService(Landroid/content/pm/IBackgroundInstallControlService;)V
    .locals 1

    const-string v0, "bic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;->backgroundInstallService:Landroid/content/pm/IBackgroundInstallControlService;

    return-void
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel$transform$1;-><init>(Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsWithGroupingListModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method
