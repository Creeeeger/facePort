.class public final Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mData:Ljava/util/List;

.field public final mRetrieveDetail:Z

.field public final mUids:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;)V

    iget-object v0, p1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;->mUids:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    iget-boolean p1, p1, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;->mRetrieveDetail:Z

    iput-boolean p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getUids()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    return-object p0
.end method

.method public final recordUsage(JJ)V
    .locals 16

    move-object/from16 v0, p0

    :try_start_0
    iget-object v1, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v8, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/4 v14, 0x0

    const/4 v15, -0x1

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move v13, v6

    invoke-virtual/range {v7 .. v15}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-lez v9, :cond_0

    add-long/2addr v4, v7

    iget-boolean v7, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v8, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move v13, v6

    invoke-virtual/range {v7 .. v15}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    new-instance v1, Lcom/android/settingslib/net/NetworkCycleDataForUid;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v2, p1

    iput-wide v2, v1, Lcom/android/settingslib/net/NetworkCycleDataForUid;->mStartTime:J

    iput-wide v4, v1, Lcom/android/settingslib/net/NetworkCycleDataForUid;->mTotalUsage:J

    iget-object v0, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "NetworkDataForUidLoader"

    const-string v2, "Exception querying network detail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method
