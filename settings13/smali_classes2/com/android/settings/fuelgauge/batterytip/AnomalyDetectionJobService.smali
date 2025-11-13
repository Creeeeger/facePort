.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;
.super Landroid/app/job/JobService;
.source "AnomalyDetectionJobService.java"


# static fields
.field static final MAX_DELAY_MS:J

.field static final STATSD_UID_FILED:I = 0x1

.field static final UID_NULL:I = -0x1


# instance fields
.field mIsJobCanceled:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$FC-ntYTaE53jPCe94kFyz47b_xM(Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->MAX_DELAY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    return-void
.end method

.method private synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .locals 22

    move-object/from16 v11, p0

    .line 95
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v12

    .line 96
    new-instance v13, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    invoke-direct {v13, v11}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v14

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 99
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v11, v0}, Landroid/app/job/JobService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserManager;

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v17

    .line 103
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v18

    .line 105
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v19

    .line 107
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->dequeueWork(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    move-result-object v0

    move-object v10, v0

    :goto_0
    if-eqz v10, :cond_0

    .line 111
    invoke-virtual {v10}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v12

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v6, v17

    move-object v7, v15

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v21, v12

    move-object v12, v10

    move-object/from16 v10, v20

    .line 108
    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->saveAnomalyToDatabase(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Landroid/content/ContentResolver;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/os/Bundle;)V

    move-object/from16 v0, p1

    .line 113
    invoke-virtual {v11, v0, v12}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->completeWork(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    .line 107
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->dequeueWork(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;

    move-result-object v10

    move-object/from16 v12, v21

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scheduleAnomalyDetection(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 74
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 75
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/android/settings/R$integer;->job_anomaly_detection:I

    invoke-direct {p0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->MAX_DELAY_MS:J

    .line 79
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    new-instance v1, Landroid/app/job/JobWorkItem;

    invoke-direct {v1, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const-string p0, "AnomalyDetectionService"

    const-string p1, "Anomaly detection job service enqueue failed."

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method completeWork(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    if-eqz p0, :cond_0

    .line 242
    monitor-exit v0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 246
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method dequeueWork(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 231
    monitor-exit v0

    return-object p0

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method extractUidFromStatsDimensionsValue(Landroid/os/StatsDimensionsValue;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    .line 209
    invoke-virtual {p1, v1}, Landroid/os/StatsDimensionsValue;->isValueType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getField()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 212
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getIntValue()I

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x7

    .line 214
    invoke-virtual {p1, v1}, Landroid/os/StatsDimensionsValue;->isValueType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {p1}, Landroid/os/StatsDimensionsValue;->getTupleValueList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 217
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StatsDimensionsValue;

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->extractUidFromStatsDimensionsValue(Landroid/os/StatsDimensionsValue;)I

    move-result v3

    if-eq v3, v0, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 90
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 123
    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->mIsJobCanceled:Z

    .line 124
    monitor-exit p1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method saveAnomalyToDatabase(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/BatteryUtils;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;Landroid/content/ContentResolver;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p10

    const-string v3, "android.app.extra.STATS_DIMENSIONS_VALUE"

    .line 136
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/StatsDimensionsValue;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "key_anomaly_timestamp"

    .line 137
    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v4, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    .line 139
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 141
    new-instance v5, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;

    .line 142
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    const/4 v14, 0x0

    if-nez v6, :cond_0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-direct {v5, v4}, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra stats value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/StatsDimensionsValue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AnomalyDetectionService"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    .line 146
    :try_start_0
    invoke-virtual {v4, v3}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->extractUidFromStatsDimensionsValue(Landroid/os/StatsDimensionsValue;)I

    move-result v3

    .line 147
    invoke-interface/range {p8 .. p8}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isSmartBatterySupported()Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    const-string v4, "adaptive_battery_management_enabled"

    .line 148
    invoke-static {v1, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_2

    goto :goto_1

    :cond_1
    const-string v4, "app_auto_restriction_enabled"

    .line 150
    invoke-static {v1, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_2

    :goto_1
    move v1, v7

    goto :goto_2

    :cond_2
    move v1, v14

    .line 152
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v0, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getAppLongVersionCode(Ljava/lang/String;)J

    move-result-wide v8

    .line 154
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v8, p6

    .line 155
    invoke-virtual {v0, v8, v3, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideAnomaly(Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;ILcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v16, 0x0

    const/16 v17, 0x56b

    const/16 v18, 0x0

    .line 156
    iget-object v1, v5, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    .line 160
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v15, p9

    .line 156
    invoke-virtual/range {v15 .. v20}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    .line 162
    iget-boolean v1, v5, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->autoRestriction:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    .line 167
    invoke-virtual {v0, v3, v4, v7, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;II)V

    .line 170
    iget-object v1, v5, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x2

    move-object/from16 v7, p3

    move v8, v3

    move-object v9, v4

    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAnomaly(ILjava/lang/String;IIJ)Z

    goto :goto_3

    .line 174
    :cond_4
    iget-object v1, v5, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move v8, v3

    move-object v9, v4

    invoke-virtual/range {v7 .. v13}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAnomaly(ILjava/lang/String;IIJ)Z

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " packageName="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual/range {p4 .. p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getDeviceCareManager()Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    move-result-object v1

    iget-object v7, v5, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v3, v4, v7, v14}, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;->sendToDeviceCare(ILjava/lang/String;II)V

    :goto_3
    const/16 v16, 0x0

    const/16 v17, 0x557

    const/16 v18, 0x0

    .line 182
    iget-object v1, v5, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v15, p9

    .line 182
    invoke-virtual/range {v15 .. v20}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 189
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getDeviceCareManager()Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;->sendLogToDeviceCare(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "Parse stats dimensions value error."

    .line 192
    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method
