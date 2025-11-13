.class public final Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 2

    new-instance v0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/datausage/lib/NetworkStatsRepository;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "template"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    return-void
.end method


# virtual methods
.method public final querySummary(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$1;

    iget v1, v0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$1;-><init>(Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, p2

    check-cast v5, Ljava/util/Collection;

    invoke-static {v2}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1;

    invoke-direct {p2, p1, v3, p0}, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1;-><init>(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;)V

    iput v4, v0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Iterable;

    const-string p0, "<this>"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v0, p2, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    :goto_4
    move-wide v3, v0

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v0, p2, Lcom/android/settings/datausage/lib/NetworkUsageData;->startTime:J

    cmp-long p2, v3, v0

    if-lez p2, :cond_9

    goto :goto_4

    :cond_a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v0, p2, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    :goto_5
    move-wide v5, v0

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide v0, p2, Lcom/android/settings/datausage/lib/NetworkUsageData;->endTime:J

    cmp-long p2, v5, v0

    if-gez p2, :cond_b

    goto :goto_5

    :cond_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 p1, 0x0

    move-wide v7, p1

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkUsageData;

    iget-wide p1, p1, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    add-long/2addr v7, p1

    goto :goto_6

    :cond_d
    new-instance p0, Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/datausage/lib/NetworkUsageData;-><init>(JJJ)V

    move-object v3, p0

    :goto_7
    return-object v3

    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
