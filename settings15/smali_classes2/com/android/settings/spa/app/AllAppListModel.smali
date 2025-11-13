.class public final Lcom/android/settings/spa/app/AllAppListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# instance fields
.field public final context:Landroid/content/Context;

.field public final getStorageSummary:Lkotlin/jvm/functions/Function3;

.field public final isDisabled:Lkotlin/jvm/functions/Function1;

.field public final isInstant:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/settings/spa/app/AllAppListModel$1;->INSTANCE:Lcom/android/settings/spa/app/AllAppListModel$1;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getStorageSummary"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/AllAppListModel;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/spa/app/AllAppListModel;->getStorageSummary:Lkotlin/jvm/functions/Function3;

    sget-object p1, Lcom/android/settings/spa/app/AllAppListModel$isDisabled$1;->INSTANCE:Lcom/android/settings/spa/app/AllAppListModel$isDisabled$1;

    iput-object p1, p0, Lcom/android/settings/spa/app/AllAppListModel;->isDisabled:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/android/settings/spa/app/AllAppListModel$isInstant$1;->INSTANCE:Lcom/android/settings/spa/app/AllAppListModel$isInstant$1;

    iput-object p1, p0, Lcom/android/settings/spa/app/AllAppListModel;->isInstant:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x2c3488a6

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;

    iget-object v0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;->record:Lcom/android/settingslib/spaprivileged/model/app/AppRecord;

    check-cast v0, Lcom/android/settings/spa/app/AppRecordWithSize;

    iget-object v0, v0, Lcom/android/settings/spa/app/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsProvider;->navigator(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p1, v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModelKt;->AppListItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/AllAppListModel$AppItem$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/AllAppListModel$AppItem$1;-><init>(Lcom/android/settings/spa/app/AllAppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    const-string p1, "recordListFlow"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/spa/app/SpinnerItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/spa/app/SpinnerItem;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/settings/spa/app/AllAppListModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    sget-object p0, Lcom/android/settings/spa/app/AllAppListModel$filter$2;->INSTANCE:Lcom/android/settings/spa/app/AllAppListModel$filter$2;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/spa/app/AllAppListModel;->isInstant:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/spa/app/AllAppListModel;->isDisabled:Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/settings/spa/app/AllAppListModel$filter$1;->INSTANCE:Lcom/android/settings/spa/app/AllAppListModel$filter$1;

    :goto_1
    new-instance p1, Lcom/android/settings/spa/app/AllAppListModel$filter$$inlined$filterItem$1;

    invoke-direct {p1, p3, p0}, Lcom/android/settings/spa/app/AllAppListModel$filter$$inlined$filterItem$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lkotlin/jvm/functions/Function1;)V

    return-object p1
.end method

.method public final getSpinnerOptions(Ljava/util/List;)Ljava/util/List;
    .locals 7

    const-string v0, "recordList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/android/settings/spa/app/AllAppListModel;->isDisabled:Lkotlin/jvm/functions/Function1;

    instance-of v1, p1, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lcom/android/settings/spa/app/AllAppListModel$isDisabled$1;

    invoke-virtual {v6, v5}, Lcom/android/settings/spa/app/AllAppListModel$isDisabled$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/spa/app/AllAppListModel;->isInstant:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v4

    check-cast v5, Lcom/android/settings/spa/app/AllAppListModel$isInstant$1;

    invoke-virtual {v5, v1}, Lcom/android/settings/spa/app/AllAppListModel$isInstant$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    if-nez v0, :cond_6

    if-nez v2, :cond_6

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_6
    sget-object p1, Lcom/android/settings/spa/app/SpinnerItem;->All:Lcom/android/settings/spa/app/SpinnerItem;

    sget-object v1, Lcom/android/settings/spa/app/SpinnerItem;->Enabled:Lcom/android/settings/spa/app/SpinnerItem;

    filled-new-array {p1, v1}, [Lcom/android/settings/spa/app/SpinnerItem;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/spa/app/SpinnerItem;->Disabled:Lcom/android/settings/spa/app/SpinnerItem;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v2, :cond_8

    sget-object v0, Lcom/android/settings/spa/app/SpinnerItem;->Instant:Lcom/android/settings/spa/app/SpinnerItem;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
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

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/spa/app/SpinnerItem;

    new-instance v2, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/spa/app/AllAppListModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/settings/spa/app/SpinnerItem;->getStringResId()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    return-object v0
.end method

.method public final getSummary(ILcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 2

    check-cast p2, Lcom/android/settings/spa/app/AppRecordWithSize;

    const-string p1, "record"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x1003e289

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p2, Lcom/android/settings/spa/app/AppRecordWithSize;->app:Landroid/content/pm/ApplicationInfo;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spa/app/AllAppListModel;->getStorageSummary:Lkotlin/jvm/functions/Function3;

    invoke-interface {v1, p1, p3, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/State;

    new-instance v0, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/settings/spa/app/AllAppListModel$getSummary$1;-><init>(Landroidx/compose/runtime/State;Lcom/android/settings/spa/app/AppRecordWithSize;Lcom/android/settings/spa/app/AllAppListModel;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    new-instance p0, Lcom/android/settings/spa/app/AllAppListModel$transform$$inlined$mapItem$1;

    invoke-direct {p0, p2}, Lcom/android/settings/spa/app/AllAppListModel$transform$$inlined$mapItem$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)V

    return-object p0
.end method
