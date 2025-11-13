.class public final Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;

    iget-object v0, p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;

    invoke-direct {p1, v0, p2, p0}, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object p0, p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository$querySummary$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;

    iget-object p0, p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    sget-object p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->Companion:Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;

    sget-object p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->AllTimeRange:Landroid/util/Range;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    const-string v2, "getLower(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    const-string p1, "getUpper(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object p0

    const-string p1, "queryDetailsForUidTagState(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;->access$convertToBuckets(Landroid/app/usage/NetworkStats;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;->aggregate(Ljava/util/List;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NetworkStatsRepository"

    const-string v0, "Exception queryDetailsForUidTagState"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
