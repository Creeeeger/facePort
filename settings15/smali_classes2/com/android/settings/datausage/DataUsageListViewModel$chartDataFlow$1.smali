.class final Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageListViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/datausage/lib/NetworkCycleChartData;",
        "template",
        "Landroid/net/NetworkTemplate;",
        "selectedBuckets",
        "Lcom/android/settings/datausage/SelectedBuckets;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $application:Landroid/app/Application;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/app/Application;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;->$application:Landroid/app/Application;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/net/NetworkTemplate;

    check-cast p2, Lcom/android/settings/datausage/SelectedBuckets;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;->$application:Landroid/app/Application;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;-><init>(Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;->label:I

    if-nez v0, :cond_a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkTemplate;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/SelectedBuckets;

    new-instance v1, Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListViewModel$chartDataFlow$1;->$application:Landroid/app/Application;

    iget-object v2, v0, Lcom/android/settings/datausage/SelectedBuckets;->buckets:Ljava/util/List;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;Ljava/util/List;)V

    iget-object p0, v0, Lcom/android/settings/datausage/SelectedBuckets;->selectedCycle:Lcom/android/settings/datausage/lib/NetworkUsageData;

    const-string p1, "usageData"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v2, Lcom/android/settings/datausage/lib/NetworkCycleChartData;->BUCKET_DURATION:J

    long-to-int p1, v2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    sget-wide v4, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sget-wide v4, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v0

    :goto_1
    xor-int/2addr v4, v0

    if-eqz v4, :cond_3

    shr-long/2addr v2, v0

    goto :goto_3

    :cond_2
    sget v4, Lkotlin/time/Duration;->$r8$clinit:I

    :cond_3
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const-string v5, "unit"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v5, Lkotlin/time/Duration;->INFINITE:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_4

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_3

    :cond_4
    sget-wide v5, Lkotlin/time/Duration;->NEG_INFINITE:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_5

    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_3

    :cond_5
    shr-long/2addr v2, v0

    if-nez p1, :cond_6

    sget-object p1, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    goto :goto_2

    :cond_6
    move-object p1, v4

    :goto_2
    const-string v0, "sourceUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/time/DurationUnit;->getTimeUnit$kotlin_stdlib()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    :goto_3
    new-instance p1, Lkotlin/ranges/LongRange;

    iget-wide v4, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    iget-wide v6, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    invoke-direct {p1, v4, v5, v6, v7}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-static {p1, v2, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/LongProgression;J)Lkotlin/ranges/LongProgression;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/ranges/LongProgression;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlin/ranges/LongProgressionIterator;

    iget-boolean v2, v0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-nez v2, :cond_7

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Lkotlin/ranges/LongProgressionIterator;

    invoke-virtual {p1}, Lkotlin/ranges/LongProgressionIterator;->next()Ljava/lang/Object;

    move-result-object v3

    :goto_4
    iget-boolean v4, v0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lkotlin/ranges/LongProgressionIterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Long;

    check-cast v3, Ljava/lang/Long;

    new-instance v6, Landroid/util/Range;

    invoke-direct {v6, v3, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    goto :goto_4

    :cond_8
    move-object p1, v2

    :goto_5
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/lib/NetworkCycleBucketRepository;->aggregateUsage(Landroid/util/Range;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    new-instance p1, Lcom/android/settings/datausage/lib/NetworkCycleChartData;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/datausage/lib/NetworkCycleChartData;-><init>(Lcom/android/settings/datausage/lib/NetworkUsageData;Ljava/util/List;)V

    return-object p1

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
