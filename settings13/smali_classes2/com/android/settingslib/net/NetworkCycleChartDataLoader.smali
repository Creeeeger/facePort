.class public Lcom/android/settingslib/net/NetworkCycleChartDataLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleChartData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mHiddenTemplate:Landroid/net/NetworkTemplate;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;Lcom/android/settingslib/net/NetworkCycleChartDataLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder<",
            "*>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getUsageBuckets(JJ)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 86
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 88
    sget-wide v7, Lcom/android/settingslib/net/NetworkCycleChartData;->BUCKET_DURATION_MS:J

    add-long/2addr v7, v2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", end : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "NetworkCycleChartLoader"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    cmp-long v0, v7, v4

    if-gtz v0, :cond_1

    const-wide/16 v16, 0x0

    .line 93
    :try_start_0
    iget-object v10, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v11, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide v12, v2

    move-wide v14, v7

    invoke-virtual/range {v10 .. v15}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v10

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v10, v12

    move-wide/from16 v16, v10

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v10, "Exception querying network detail."

    .line 99
    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    move-wide/from16 v10, v16

    .line 101
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-direct {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;-><init>()V

    .line 102
    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->build()Lcom/android/settingslib/net/NetworkCycleData;

    move-result-object v0

    .line 101
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-wide v2, Lcom/android/settingslib/net/NetworkCycleChartData;->BUCKET_DURATION_MS:J

    add-long/2addr v2, v7

    move-wide/from16 v18, v2

    move-wide v2, v7

    move-wide/from16 v7, v18

    goto :goto_0

    :cond_1
    return-object v6
.end method


# virtual methods
.method bridge synthetic getCycleUsage()Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->getCycleUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCycleUsage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    return-object p0
.end method

.method recordUsage(JJ)V
    .locals 8

    const-string v0, "NetworkCycleChartLoader"

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v2, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 55
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "total : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 59
    new-instance v1, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;

    invoke-direct {v1}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;-><init>()V

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->getUsageBuckets(JJ)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;->setUsageBuckets(Ljava/util/List;)Lcom/android/settingslib/net/NetworkCycleChartData$Builder;

    move-result-object v2

    .line 61
    invoke-virtual {v2, p1, p2}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p3, p4}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v4, v5}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    .line 64
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;->build()Lcom/android/settingslib/net/NetworkCycleChartData;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Exception querying network detail."

    .line 67
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
