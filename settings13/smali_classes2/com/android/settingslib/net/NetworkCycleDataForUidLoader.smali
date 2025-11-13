.class public Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleDataForUidLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetrieveDetail:Z

.field private final mUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V

    .line 45
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->-$$Nest$fgetmUids(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    .line 46
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->-$$Nest$fgetmRetrieveDetail(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;Lcom/android/settingslib/net/NetworkCycleDataForUidLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder<",
            "*>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getForegroundUsage(JJI)J
    .locals 9

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method bridge synthetic getCycleUsage()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->getCycleUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCycleUsage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    return-object p0
.end method

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

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    return-object p0
.end method

.method recordUsage(JJ)V
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    const-string v14, "NetworkDataForUidLoader"

    .line 55
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", end : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mUids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const-wide/16 v16, 0x0

    move-wide/from16 v5, v16

    move-wide v8, v5

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 57
    iget-object v1, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v2, v0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-wide/from16 v3, p1

    move-wide/from16 v20, v5

    move-wide/from16 v5, p3

    move/from16 v22, v7

    move-wide v12, v8

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTagState(Landroid/net/NetworkTemplate;JJIII)Landroid/app/usage/NetworkStats;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getTotalUsage(Landroid/app/usage/NetworkStats;)J

    move-result-wide v1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v22

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", usage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v3, v1, v16

    if-lez v3, :cond_1

    add-long v8, v12, v1

    .line 64
    iget-boolean v1, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    if-eqz v1, :cond_0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 65
    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->getForegroundUsage(JJI)J

    move-result-wide v1

    move-wide/from16 v3, v20

    add-long v5, v3, v1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "foreground usage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-wide/from16 v3, v20

    move-wide v5, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, v20

    move-wide v5, v3

    move-wide v8, v12

    :goto_1
    move-wide/from16 v12, p3

    goto/16 :goto_0

    :cond_2
    move-wide v3, v5

    move-wide v12, v8

    cmp-long v1, v12, v16

    if-lez v1, :cond_4

    .line 72
    new-instance v1, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    invoke-direct {v1}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;-><init>()V

    .line 73
    invoke-virtual {v1, v10, v11}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v2

    move-wide/from16 v5, p3

    move-wide v8, v12

    .line 74
    invoke-virtual {v2, v5, v6}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    move-result-object v2

    .line 75
    invoke-virtual {v2, v8, v9}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "total usage : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-boolean v2, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mRetrieveDetail:Z

    if-eqz v2, :cond_3

    sub-long/2addr v8, v3

    .line 78
    invoke-virtual {v1, v8, v9}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setBackgroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->setForegroundUsage(J)Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "total foreground : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_3
    iget-object v0, v0, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->mData:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/settingslib/net/NetworkCycleDataForUid$Builder;->build()Lcom/android/settingslib/net/NetworkCycleDataForUid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Exception querying network detail."

    .line 85
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return-void
.end method
