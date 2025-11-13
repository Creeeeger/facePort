.class public final Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x69310421

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$1;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;)V

    const/16 v1, 0x8

    invoke-static {p1, v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppListItemModelKt;->AppListItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$AppItem$2;-><init>(Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    const-string p1, "recordListFlow"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    new-instance p1, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1;

    invoke-direct {p1, p3, p0, p2}, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$filter$$inlined$filterItem$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;I)V

    return-object p1
.end method

.method public final getSpinnerOptions(Ljava/util/List;)Ljava/util/List;
    .locals 5

    const-string v0, "recordList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/spa/app/battery/OptimizationModeSpinnerItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/spa/app/battery/OptimizationModeSpinnerItem;

    new-instance v2, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/settings/spa/app/battery/OptimizationModeSpinnerItem;->getStringResId()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSummary(ILcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    check-cast p2, Lcom/android/settings/spa/app/AppRecordWithSize;

    const-string p1, "record"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x271766d0

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$getSummary$1;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$getSummary$1;-><init>(Lcom/android/settings/spa/app/AppRecordWithSize;Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p1
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    new-instance p0, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$transform$$inlined$mapItem$1;

    invoke-direct {p0, p2}, Lcom/android/settings/spa/app/battery/BatteryOptimizationModeAppListModel$transform$$inlined$mapItem$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)V

    return-object p0
.end method
