.class Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mIconLoaded:I

.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public static synthetic $r8$lambda$2qSpC_I8r0dptZxhgyLlm3leVfo(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->lambda$handleMessage$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0

    .line 1482
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1483
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1846
    new-instance p1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    return-void
.end method

.method private getCombinedSessionFlags(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;)I"
        }
    .end annotation

    .line 1837
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p0

    const/4 v0, 0x0

    .line 1839
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1840
    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->-$$Nest$fgetmFlags(Lcom/android/settingslib/applications/ApplicationsState$Session;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 1842
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 1843
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$handleMessage$0()V
    .locals 4

    .line 1739
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1743
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1740
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 1745
    new-instance v1, Landroid/content/pm/PackageStats;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 1748
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 1749
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1750
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1752
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationsState"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :try_start_2
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1490
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1491
    :try_start_0
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 1492
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1493
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 1495
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v3, :cond_1

    .line 1497
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1498
    invoke-virtual {v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->handleRebuildList()V

    goto :goto_1

    .line 1502
    :cond_1
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->getCombinedSessionFlags(Ljava/util/List;)I

    move-result v2

    .line 1504
    iget v3, v0, Landroid/os/Message;->what:I

    const/high16 v5, 0x800000

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/16 v8, 0x8

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_12

    .line 1813
    :pswitch_0
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    move v0, v13

    .line 1814
    :goto_2
    :try_start_1
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_3

    .line 1815
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1816
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1817
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1818
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 1819
    iget-wide v6, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->lastUpdated:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 1820
    iput-wide v4, v3, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->lastUpdated:J

    move v0, v14

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1825
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2b

    .line 1827
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1828
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    :catchall_0
    move-exception v0

    .line 1825
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1793
    :pswitch_1
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1794
    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, -0x1

    .line 1795
    invoke-virtual {v0, v14, v2}, Ljava/util/Calendar;->add(II)V

    .line 1796
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 1797
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v0

    .line 1798
    :goto_3
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_5

    .line 1799
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1800
    iget-object v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    if-eqz v4, :cond_4

    .line 1802
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->lastUsed:J

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1805
    :cond_5
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1806
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1807
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1809
    :cond_6
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    :catchall_1
    move-exception v0

    .line 1805
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1707
    :pswitch_2
    invoke-static {v2, v11}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smhasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1708
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1710
    :try_start_5
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1715
    monitor-exit v2

    return-void

    .line 1718
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move v0, v13

    .line 1719
    :goto_4
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_d

    .line 1720
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1721
    iget-object v7, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v7, v5}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smhasFlag(II)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-wide v10, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v15, -0x1

    cmp-long v7, v10, v15

    if-eqz v7, :cond_8

    iget-boolean v7, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v7, :cond_c

    .line 1723
    :cond_8
    iget-wide v7, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_9

    const-wide/16 v9, 0x4e20

    sub-long v9, v3, v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_b

    .line 1725
    :cond_9
    iget-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_a

    .line 1726
    iput-boolean v14, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1727
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1728
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1727
    invoke-virtual {v0, v12, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1729
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1731
    :cond_a
    iput-wide v3, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1732
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    .line 1733
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1734
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1737
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1770
    :cond_b
    monitor-exit v2

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1773
    :cond_d
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1774
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1778
    iput-boolean v13, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1779
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1780
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1779
    invoke-virtual {v0, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1781
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1784
    :cond_e
    monitor-exit v2

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1787
    :cond_f
    :goto_5
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mTimeLoadStartTime:J

    .line 1788
    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    .line 1654
    :pswitch_3
    invoke-static {v2, v10}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smhasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1656
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    move v0, v13

    .line 1658
    :goto_6
    :try_start_6
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_14

    if-ge v0, v10, :cond_14

    .line 1659
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1660
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_10

    iget-boolean v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v4, :cond_13

    .line 1661
    :cond_10
    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1664
    :try_start_7
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v3, v5, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1666
    iget-boolean v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v4, :cond_11

    .line 1667
    iput-boolean v14, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1668
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1669
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1668
    invoke-virtual {v4, v12, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1670
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 1674
    :cond_12
    monitor-exit v3

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    .line 1678
    :cond_14
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1685
    iget v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mIconLoaded:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mIconLoaded:I

    if-lt v0, v10, :cond_15

    .line 1688
    invoke-virtual {v1, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    .line 1678
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 1697
    :cond_15
    iget v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mIconLoaded:I

    if-lez v0, :cond_16

    .line 1698
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1699
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1704
    :cond_16
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    :pswitch_4
    if-ne v3, v11, :cond_17

    .line 1596
    invoke-static {v2, v8}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smhasFlag(II)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_17
    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, v9, :cond_1d

    const/16 v3, 0x10

    .line 1598
    invoke-static {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smhasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1600
    :cond_18
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1601
    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, v11, :cond_19

    const-string v3, "android.intent.category.LAUNCHER"

    goto :goto_7

    :cond_19
    const-string v3, "android.intent.category.LEANBACK_LAUNCHER"

    :goto_7
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move v3, v13

    .line 1603
    :goto_8
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1c

    .line 1604
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1611
    sget-object v5, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const v6, 0xc0200

    invoke-virtual {v5, v2, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 1618
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1620
    :try_start_a
    iget-object v8, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 1621
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    move v15, v13

    :goto_9
    if-ge v15, v10, :cond_1b

    .line 1623
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1624
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1625
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v9, :cond_1a

    .line 1627
    iput-boolean v14, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    .line 1628
    iget-boolean v13, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v12, v12, Landroid/content/pm/ActivityInfo;->enabled:Z

    or-int/2addr v12, v13

    iput-boolean v12, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z

    goto :goto_a

    :cond_1a
    const-string v9, "ApplicationsState"

    .line 1631
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot find pkg: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " on user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x5

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_9

    .line 1636
    :cond_1b
    monitor-exit v6

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x5

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_8

    :catchall_5
    move-exception v0

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    .line 1639
    :cond_1c
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1640
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1643
    :cond_1d
    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v0, v11, :cond_1e

    const/4 v0, 0x5

    .line 1644
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    :cond_1e
    const/4 v2, 0x0

    .line 1648
    iput v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mIconLoaded:I

    const/4 v2, 0x6

    .line 1650
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    :pswitch_5
    move v3, v14

    .line 1571
    invoke-static {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smhasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1573
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1574
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1575
    :try_start_b
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v3, :cond_21

    .line 1578
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1580
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1581
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1582
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v6, :cond_1f

    const/4 v7, 0x1

    .line 1584
    iput-boolean v7, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    goto :goto_c

    :cond_20
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 1589
    :cond_21
    monitor-exit v2

    goto :goto_d

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    .line 1591
    :cond_22
    :goto_d
    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    .line 1509
    :pswitch_6
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1511
    :goto_e
    :try_start_c
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_28

    const/4 v7, 0x6

    if-ge v4, v7, :cond_28

    .line 1512
    iget-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_23

    const/4 v7, 0x1

    .line 1513
    iput-boolean v7, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1514
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1515
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x6

    .line 1514
    invoke-virtual {v0, v11, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1516
    iget-object v9, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_f

    :cond_23
    const/4 v7, 0x1

    .line 1518
    :goto_f
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 1519
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1520
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    add-int/lit8 v4, v4, 0x1

    .line 1522
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v0, v9}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$mgetEntryLocked(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_10

    .line 1526
    :cond_24
    :try_start_d
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1527
    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    .line 1528
    new-instance v12, Ljava/io/File;

    iget-object v13, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    const-string v0, "ApplicationsState"

    .line 1529
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MSG_LOAD_ENTRIES Update info.apkFile : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_10

    :catch_0
    move-exception v0

    .line 1532
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_25
    :goto_10
    if-eqz v11, :cond_27

    .line 1536
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_26

    .line 1544
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_27

    .line 1545
    iget-object v11, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v11, v5}, Lcom/android/settingslib/applications/ApplicationsState;->-$$Nest$smhasFlag(II)Z

    move-result v11

    if-nez v11, :cond_27

    .line 1547
    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v11, v11, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    iget-object v9, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_26
    move v12, v11

    goto :goto_11

    :cond_27
    const/4 v12, 0x0

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 1556
    :cond_28
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    const/4 v2, 0x6

    if-lt v4, v2, :cond_29

    .line 1559
    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12

    :cond_29
    const-string v0, "ApplicationsState"

    .line 1562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_LOAD_ENTRIES took : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v9, v5, Lcom/android/settingslib/applications/ApplicationsState;->mAppLoadStartTime:J

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1565
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1567
    :cond_2a
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_12

    :catchall_7
    move-exception v0

    .line 1556
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v0

    :cond_2b
    :goto_12
    return-void

    :catchall_8
    move-exception v0

    .line 1495
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
