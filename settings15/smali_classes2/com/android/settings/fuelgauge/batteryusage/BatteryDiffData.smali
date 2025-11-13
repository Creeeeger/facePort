.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppEntries:Ljava/util/List;

.field public final mEndBatteryLevel:I

.field public final mEndTimestamp:J

.field public final mScreenOnTime:J

.field public final mStartBatteryLevel:I

.field public final mStartTimestamp:J

.field public final mSystemEntries:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJIIJLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v4, p2

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mStartTimestamp:J

    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mEndTimestamp:J

    move/from16 v4, p6

    iput v4, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mStartBatteryLevel:I

    move/from16 v4, p7

    iput v4, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mEndBatteryLevel:I

    move-wide/from16 v4, p8

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mScreenOnTime:J

    iput-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    iput-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    if-nez p14, :cond_11

    sget-object v4, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->purgeBatteryDiffData(Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;Ljava/util/List;)V

    invoke-static {v4, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->purgeBatteryDiffData(Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;Ljava/util/List;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v9

    if-nez v9, :cond_0

    iget-wide v9, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUid:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sPackageNameAndUidCacheLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sPackageNameAndUidCache:Ljava/util/Map;

    move-object v11, v10

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_2

    check-cast v10, Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    monitor-exit v9

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v9

    iget-wide v10, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUserId:J

    long-to-int v10, v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v9, v9, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x80

    invoke-virtual {v9, v8, v11, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :goto_1
    move v9, v12

    :goto_2
    sget-object v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sPackageNameAndUidCacheLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_2
    sget-object v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->sPackageNameAndUidCache:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v8, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v8, v9

    :goto_3
    const/4 v9, -0x4

    if-eq v8, v9, :cond_4

    if-ne v8, v12, :cond_0

    :cond_4
    if-nez v5, :cond_5

    new-instance v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    const-string v8, "A|UninstalledApps"

    const-string v9, "A|UninstalledApps"

    invoke-direct {v5, v1, v8, v9, v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    iget-wide v7, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v9, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v7, v9

    iput-wide v7, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v7, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v9, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_4
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v4

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-static {v8, v3, v9, v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->needsCombineInSystemApp(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-nez v6, :cond_9

    new-instance v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    const-string v11, "A|SystemApps"

    invoke-direct {v6, v1, v11, v11, v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    iget-wide v11, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v13, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v11, v13

    iput-wide v11, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v11, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v13, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    add-long/2addr v11, v13

    iput-wide v11, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v11, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    invoke-virtual {v6, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_b

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iget v8, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mComponentId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const/16 v9, 0x3e8

    if-lt v8, v9, :cond_c

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_d
    if-nez v4, :cond_e

    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    const/4 v8, 0x3

    const-string v9, "S|Others"

    invoke-direct {v4, v1, v9, v9, v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_e
    iget-wide v8, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v10, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v8, v10

    iput-wide v8, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v7, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mTotalConsumePower:D

    invoke-virtual {v4, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_f
    if-eqz v4, :cond_11

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_7
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->processAndSortEntries(Ljava/util/List;)V

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->processAndSortEntries(Ljava/util/List;)V

    return-void
.end method

.method public static needsCombineInSystemApp(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mIsHidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-wide p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mUid:J

    long-to-int p0, p0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method public static processAndSortEntries(Ljava/util/List;)V
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iget-wide v3, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iget-wide v4, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_4
    const/16 v0, 0x64

    if-gt v2, v0, :cond_5

    if-ge v3, v0, :cond_7

    :cond_5
    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->COMPARATOR:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;

    invoke-static {p0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v4, v1

    :goto_3
    add-int/lit8 v5, v2, -0x64

    if-ge v4, v5, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    const/4 v6, -0x1

    iput v6, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    rsub-int/lit8 v2, v3, 0x64

    if-ge v1, v2, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    const/4 v4, 0x1

    iput v4, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->COMPARATOR:Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static purgeBatteryDiffData(Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;Ljava/util/List;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    :goto_1
    iget-wide v5, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mComponentId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    long-to-double v3, v3

    const-wide/16 v9, 0x0

    cmpg-double v3, v3, v9

    if-gez v3, :cond_2

    cmpg-double v3, v5, v9

    if-ltz v3, :cond_3

    :cond_2
    const-string v3, "fake_package"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v7, :cond_4

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_4
    if-eqz v7, :cond_0

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatteryDiffData{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startTimestamp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mStartTimestamp:J

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|endTimestamp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mEndTimestamp:J

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|startLevel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mStartBatteryLevel:I

    const-string v3, "|endLevel:"

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mEndBatteryLevel:I

    const-string v3, "|screenOnTime:"

    invoke-static {v1, v2, v0, v3}, Landroidx/core/text/PrecomputedTextCompat$Params$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mScreenOnTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|appEntries.size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|systemEntries.size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
