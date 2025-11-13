.class public final Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field public final mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

.field mDischarging:Z

.field public final mHighUsageAppList:Ljava/util/List;

.field public final mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsagePeriodMs:J

    iget p2, p2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageBatteryDraining:I

    invoke-direct {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;-><init>(IJ)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    iget-boolean p1, p4, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDischarging:Z

    return-void
.end method


# virtual methods
.method public final detect()Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;
    .locals 14

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageEnabled:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDischarging:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->parseBatteryData()V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    iget v4, v1, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mBatteryDrain:I

    iget v1, v1, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mThreshold:I

    iget-boolean v5, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testHighUsageTip:Z

    if-le v4, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v6

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {v4}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v4

    new-instance v8, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UidBatteryConsumer;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v12, 0x0

    cmpl-double v9, v6, v12

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    div-double/2addr v10, v6

    int-to-double v12, v1

    mul-double/2addr v12, v10

    :goto_2
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v12, v9

    if-ltz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v10, v9, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumer(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    new-instance v10, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v10}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v11

    iput v11, v10, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mUid:I

    iget-object v11, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v8

    iget-object v11, v11, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    aget-object v8, v8, v11

    :goto_3
    iput-object v8, v10, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mPackageName:Ljava/lang/String;

    new-instance v8, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-direct {v8, v10}, Lcom/android/settings/fuelgauge/batterytip/AppInfo;-><init>(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)V

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageAppCount:I

    if-lt v8, v9, :cond_1

    :cond_5
    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    const-string v4, "com.android.settings"

    iput-object v4, v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mPackageName:Ljava/lang/String;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->mScreenOnTimeMs:J

    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-direct {v4, v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo;-><init>(Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mHighUsageAppList:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public parseBatteryData()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->mDataParser:Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    filled-new-array {p0}, [Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->parseBatteryHistory([Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "HighUsageDetector"

    const-string v1, "parseBatteryData() failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
