.class public abstract Lcom/android/settingslib/net/NetworkCycleDataLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field public final mPolicy:Landroid/net/NetworkPolicy;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;)V
    .locals 3

    iget-object v0, p1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    iget-object v1, p1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;->mContext:Landroid/content/Context;

    const-string v2, "netstats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    iput-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object p1, p1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    invoke-virtual {v1}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    invoke-virtual {v1, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mPolicy:Landroid/net/NetworkPolicy;

    return-void
.end method

.method public static getTotalUsage(Landroid/app/usage/NetworkStats;)J
    .locals 7

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    new-instance v2, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5

    add-long/2addr v5, v3

    add-long/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public getCycles()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextBucket(Landroid/app/usage/NetworkStats;)Landroid/app/usage/NetworkStats$Bucket;
    .locals 0

    new-instance p0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    invoke-virtual {p1, p0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    return-object p0
.end method

.method public getTimeRangeOf(Landroid/app/usage/NetworkStats;)Landroid/util/Range;
    .locals 7

    const-wide v0, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->hasNextBucket(Landroid/app/usage/NetworkStats;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getNextBucket(Landroid/app/usage/NetworkStats;)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/usage/NetworkStats$Bucket;->getStartTimeStamp()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v4}, Landroid/app/usage/NetworkStats$Bucket;->getEndTimeStamp()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/Range;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method public hasNextBucket(Landroid/app/usage/NetworkStats;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result p0

    return p0
.end method

.method public loadDataForSpecificCycles()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public loadFourWeeksData()V
    .locals 6

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getTimeRangeOf(Landroid/app/usage/NetworkStats;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    const-wide v3, 0x90321000L

    sub-long v3, v1, v3

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->recordUsage(JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final loadInBackground()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mPolicy:Landroid/net/NetworkPolicy;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->loadFourWeeksData()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->loadPolicyData()V

    :goto_0
    check-cast p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;

    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-object p0
.end method

.method public loadPolicyData()V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->recordUsage(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onReset()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onCancelLoad()Z

    return-void
.end method

.method public final onStartLoading()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onForceLoad()V

    return-void
.end method

.method public final onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onCancelLoad()Z

    return-void
.end method

.method public abstract recordUsage(JJ)V
.end method
