.class public final Lcom/android/settings/spa/development/UsageStatsListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListModel;


# instance fields
.field public final context:Landroid/content/Context;

.field public final now:J

.field public final usageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/development/UsageStatsListModel;->context:Landroid/content/Context;

    const-string v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.usage.UsageStatsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/spa/development/UsageStatsListModel;->usageStatsManager:Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/spa/development/UsageStatsListModel;->now:J

    return-void
.end method


# virtual methods
.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;ILkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    const-string p0, "recordListFlow"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/spa/development/UsageStatsListModel$filter$$inlined$map$1;

    invoke-direct {p0, p3}, Lcom/android/settings/spa/development/UsageStatsListModel$filter$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;)V

    return-object p0
.end method

.method public final getComparator(I)Ljava/util/Comparator;
    .locals 2

    sget-object v0, Lcom/android/settings/spa/development/UsageStatsListModel$SpinnerItem;->Companion:Lcom/android/settings/spa/development/UsageStatsListModel$SpinnerItem$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/settings/spa/development/UsageStatsListModel$SpinnerItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/spa/development/UsageStatsListModel$SpinnerItem;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/settings/spa/development/UsageStatsListModel$getComparator$$inlined$compareBy$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/spa/development/UsageStatsListModel$getComparator$$inlined$compareBy$1;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/spa/development/UsageStatsListModel$getComparator$$inlined$compareBy$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settings/spa/development/UsageStatsListModel$getComparator$$inlined$compareBy$1;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/spa/development/UsageStatsListModel$getComparator$$inlined$compareBy$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/spa/development/UsageStatsListModel$getComparator$$inlined$compareBy$1;-><init>(I)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->getComparator(I)Ljava/util/Comparator;

    move-result-object p0

    check-cast p0, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda1;

    new-instance p1, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda1;)V

    return-object p1
.end method

.method public final getSpinnerOptions(Ljava/util/List;)Ljava/util/List;
    .locals 5

    const-string v0, "recordList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/spa/development/UsageStatsListModel$SpinnerItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    check-cast v1, Lcom/android/settings/spa/development/UsageStatsListModel$SpinnerItem;

    new-instance v2, Lcom/android/settingslib/spa/widget/ui/SpinnerOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/spa/development/UsageStatsListModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/settings/spa/development/UsageStatsListModel$SpinnerItem;->getStringResId()I

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
    .locals 8

    check-cast p2, Lcom/android/settings/spa/development/UsageStatsAppRecord;

    const-string p1, "record"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x677667d7

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p2, Lcom/android/settings/spa/development/UsageStatsAppRecord;->usageStats:Landroid/app/usage/UsageStats;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 p0, 0x0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/spa/development/UsageStatsListModel;->context:Landroid/content/Context;

    const v1, 0x7f1414b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/spa/development/UsageStatsListModel;->context:Landroid/content/Context;

    const v2, 0x7f1414b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v2

    const/4 v6, 0x2

    const/4 v7, 0x2

    iget-wide v4, p0, Lcom/android/settings/spa/development/UsageStatsListModel;->now:J

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    const/16 p1, 0x3e8

    int-to-long v4, p1

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/spa/development/UsageStatsListModel;->context:Landroid/content/Context;

    const v2, 0x7f143085

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x3ba94ade

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_2

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, p1, :cond_3

    :cond_2
    new-instance v0, Lcom/android/settings/spa/development/UsageStatsListModel$getSummary$1$1;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/spa/development/UsageStatsListModel$getSummary$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object p0, v0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    return-object p0
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/settings/spa/development/UsageStatsListModel$transform$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/spa/development/UsageStatsListModel$transform$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settings/spa/development/UsageStatsListModel;)V

    new-instance p0, Lcom/android/settings/spa/development/UsageStatsListModel$transform$2;

    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method
