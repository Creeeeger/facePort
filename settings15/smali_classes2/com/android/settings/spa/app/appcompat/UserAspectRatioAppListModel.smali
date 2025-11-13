.class public final Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# static fields
.field public static final GET_ACTIVITIES_FLAGS:Landroid/content/pm/PackageManager$PackageInfoFlags;


# instance fields
.field public final context:Landroid/content/Context;

.field public final ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final userAspectRatioManager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->GET_ACTIVITIES_FLAGS:Landroid/content/pm/PackageManager$PackageInfoFlags;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ioDispatcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->packageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->userAspectRatioManager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    return-void
.end method


# virtual methods
.method public final AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x3cc5d6c2

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;

    iget-object v0, v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->app:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$AppItem$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$AppItem$1;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;Landroid/content/pm/ApplicationInfo;)V

    const/16 v0, 0x8

    invoke-static {p1, v1, p2, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModelKt;->AppListItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$AppItem$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$AppItem$2;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    const-string p1, "recordListFlow"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    sget-object p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$3;->INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$3;

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$2;

    invoke-direct {p1, p0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$2;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;)V

    move-object p0, p1

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$1;->INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$1;

    :goto_1
    new-instance p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$$inlined$filterItem$1;

    invoke-direct {p1, p3, p0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$$inlined$filterItem$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lkotlin/jvm/functions/Function1;)V

    return-object p1
.end method

.method public final getSpinnerOptions(Ljava/util/List;)Ljava/util/List;
    .locals 7

    const-string v0, "recordList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;

    iget-boolean v4, v4, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->suggested:Z

    if-eqz v4, :cond_2

    move v3, v1

    :goto_0
    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;

    iget-object v4, v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->userAspectRatioManager:Lcom/android/settings/applications/appcompat/UserAspectRatioManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->userOverride:I

    if-eqz v0, :cond_6

    const/4 v6, 0x7

    if-ne v0, v6, :cond_7

    :cond_6
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-nez v0, :cond_5

    invoke-virtual {v5, v4, v6}, Lcom/android/settings/applications/appcompat/UserAspectRatioManager;->isOverrideToFullscreenEnabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_7
    :goto_1
    sget-object p1, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->All:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    filled-new-array {p1}, [Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz v3, :cond_8

    sget-object v0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->Suggested:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    if-eqz v1, :cond_9

    sget-object v0, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->Overridden:Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/spa/app/appcompat/SpinnerItem;

    new-instance v2, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/settings/spa/app/appcompat/SpinnerItem;->getStringResId()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    return-object v0
.end method

.method public final getSummary(ILcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 2

    check-cast p2, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;

    const-string p1, "record"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p1, 0x1309de87

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const p1, -0x5f13efe4    # -3.9990615E-19f

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget p1, p2, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->userOverride:I

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$getSummary$summary$2$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$getSummary$summary$2$1;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iget-object p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->ioDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p2, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const p1, 0x7f142e0a

    invoke-static {p3, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {v0, p1, p3, p2}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    const p2, -0x5f13ee80    # -3.9991536E-19f

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$getSummary$1$1;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$getSummary$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$transform$1;-><init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method
