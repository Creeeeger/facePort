.class final Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->update(Landroid/net/NetworkPolicy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/datausage/DataPlanInfo;",
        "Lkotlinx/coroutines/CoroutineScope;"
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
.field final synthetic $policy:Landroid/net/NetworkPolicy;

.field label:I

.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;Landroid/net/NetworkPolicy;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->$policy:Landroid/net/NetworkPolicy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->$policy:Landroid/net/NetworkPolicy;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;Landroid/net/NetworkPolicy;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->label:I

    if-nez v1, :cond_8

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$getDataPlanRepositoryFactory$p(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$getNetworkCycleDataRepository(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataPlanRepositoryImpl;

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->$policy:Landroid/net/NetworkPolicy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$getProxySubscriptionManager$p(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-virtual {v3}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$getMSubId$p$s1319510310(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v0

    const-string v3, "getSubscriptionPlans(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionPlan;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v5

    cmp-long v7, v7, v5

    if-gtz v7, :cond_0

    const-wide v7, 0x38d7ea4c68000L

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v1

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    const-wide/16 v1, -0x1

    :goto_1
    move-wide v9, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v1

    goto :goto_1

    :goto_2
    new-instance v1, Lcom/android/settings/datausage/DataPlanInfo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v11

    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v0

    iget-object v0, v0, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v13, v0

    goto :goto_3

    :cond_2
    move-object v13, v4

    :goto_3
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v14

    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v0

    iget-object v0, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_3
    move-object/from16 v16, v4

    move-object v5, v1

    move-wide v7, v9

    invoke-direct/range {v5 .. v16}, Lcom/android/settings/datausage/DataPlanInfo;-><init>(IJJJLjava/lang/Long;JLjava/lang/Long;)V

    goto :goto_6

    :cond_4
    invoke-static {v2}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository$Companion;->getCycles(Landroid/net/NetworkPolicy;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-nez v0, :cond_5

    sget-object v3, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->AllTimeRange:Landroid/util/Range;

    goto :goto_4

    :cond_5
    move-object v3, v0

    :goto_4
    iget-object v1, v1, Lcom/android/settings/datausage/DataPlanRepositoryImpl;->networkCycleDataRepository:Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;

    check-cast v1, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;

    invoke-virtual {v1, v3}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->queryUsage(Landroid/util/Range;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object v1

    new-instance v3, Lcom/android/settings/datausage/DataPlanInfo;

    iget-wide v5, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v7, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v11, v1, Lcom/android/settings/datausage/lib/NetworkUsageData;->usage:J

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v13, v1

    goto :goto_5

    :cond_6
    move-object v13, v4

    :goto_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Long;

    :cond_7
    move-object/from16 v16, v4

    const-wide/16 v14, -0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v16}, Lcom/android/settings/datausage/DataPlanInfo;-><init>(IJJJLjava/lang/Long;JLjava/lang/Long;)V

    move-object v1, v3

    :goto_6
    return-object v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
