.class public final Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;


# instance fields
.field public final networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

.field public final networkTemplate:Landroid/net/NetworkTemplate;

.field public final policyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V
    .locals 2

    new-instance v0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/datausage/lib/NetworkStatsRepository;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "networkTemplate"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->networkTemplate:Landroid/net/NetworkTemplate;

    iput-object v0, p0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    const-class p2, Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/net/NetworkPolicyManager;

    iput-object p1, p0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->policyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method


# virtual methods
.method public final getCycles()Ljava/util/List;
    .locals 3

    new-instance v0, Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->policyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    invoke-virtual {v0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    iget-object v1, p0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->networkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository$Companion;->getCycles(Landroid/net/NetworkPolicy;)Ljava/util/List;

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

    iget-object p0, p0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    invoke-virtual {p0}, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->queryDetailsForDevice()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;->aggregate(Ljava/util/List;)Lcom/android/settings/datausage/lib/NetworkUsageData;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/settings/datausage/lib/NetworkUsageData;->timeRange:Landroid/util/Range;

    :cond_2
    invoke-static {v1}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository$Companion;->asFourWeeks(Landroid/util/Range;)Ljava/util/List;

    move-result-object v0

    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final queryUsage(Landroid/util/Range;)Lcom/android/settings/datausage/lib/NetworkUsageData;
    .locals 14

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/datausage/lib/NetworkUsageData;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    const-string v2, "getLower(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    const-string v5, "getUpper(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    iget-object p0, p0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->Companion:Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion;

    iget-object v8, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v9, p0, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->template:Landroid/net/NetworkTemplate;

    invoke-virtual/range {v8 .. v13}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    const-string p1, "querySummaryForDevice(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr p0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NetworkStatsRepository"

    const-string v1, "Exception querySummaryForDevice"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    :goto_0
    move-object v1, v0

    move-wide v2, v3

    move-wide v4, v6

    move-wide v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/datausage/lib/NetworkUsageData;-><init>(JJJ)V

    return-object v0
.end method
