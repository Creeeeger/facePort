.class public final Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final buckets:Ljava/util/List;

.field public final networkCycleDataRepository:Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;Ljava/util/List;)V
    .locals 2

    new-instance v0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkTemplate"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "buckets"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;->buckets:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;->networkCycleDataRepository:Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;

    return-void
.end method


# virtual methods
.method public final aggregateUsage(Landroid/util/Range;)Lcom/android/settings/datausage/lib/NetworkUsageData;
    .locals 10

    new-instance v7, Lcom/android/settings/datausage/lib/NetworkUsageData;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    const-string v1, "getLower(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    const-string v4, "getUpper(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    sget-object v0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->Companion:Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;

    iget-object p0, p0, Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;->buckets:Ljava/util/List;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {p0, v0, v1, v8, v9}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;->filterTime(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;->aggregate(Ljava/util/List;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide p0, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    move-object v0, v7

    move-wide v1, v2

    move-wide v3, v5

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/datausage/lib/NetworkUsageData;-><init>(JJJ)V

    return-object v7
.end method

.method public final loadCycles()Ljava/util/List;
    .locals 6

    new-instance v0, Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;->networkCycleDataRepository:Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;

    iget-object v2, v1, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->policyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v2}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    invoke-virtual {v0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    iget-object v1, v1, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->networkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->cycleIterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "cycleIterator(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    sget-object v2, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository$Companion$getCycles$1;->INSTANCE:Lcom/android/settings/datausage/lib/NetworkCycleDataRepository$Companion$getCycles$1;

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->Companion:Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;

    iget-object v0, p0, Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;->buckets:Ljava/util/List;

    invoke-static {v0}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;->aggregate(Ljava/util/List;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/settings/datausage/lib/NetworkUsageData;->timeRange:Landroid/util/Range;

    :cond_2
    invoke-static {v1}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository$Companion;->asFourWeeks(Landroid/util/Range;)Ljava/util/List;

    move-result-object v0

    :cond_3
    check-cast v0, Ljava/util/List;

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

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;->aggregateUsage(Landroid/util/Range;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v2, v2, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p0
.end method
