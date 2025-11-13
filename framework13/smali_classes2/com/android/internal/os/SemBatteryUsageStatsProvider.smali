.class public Lcom/android/internal/os/SemBatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "SemBatteryUsageStatsProvider.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SemBatteryUsageStatsProvider"

.field private static final blacklist mStatsType:I


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLastKWakelockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/SemKernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastScreenWakeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/SemScreenWakeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastWakeupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/SemWakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private final blacklist mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Landroid/os/BatteryStats;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    .line 70
    iput-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    .line 71
    iput-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    .line 73
    instance-of v0, p2, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v0, :cond_0

    .line 74
    move-object v0, p2

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 76
    return-void
.end method

.method private blacklist calculateWakelockTime(Landroid/os/BatteryStats$Uid;JI)J
    .locals 9
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "statsType"    # I

    .line 288
    const-wide/16 v0, 0x0

    .line 289
    .local v0, "wakeLockTimeUs":J
    nop

    .line 290
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 291
    .local v2, "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 292
    .local v3, "wakelockStatsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 293
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 295
    .local v5, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 296
    .local v6, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_0

    .line 297
    invoke-virtual {v6, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 292
    .end local v5    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v6    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    .end local v4    # "i":I
    :cond_1
    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    return-wide v4
.end method

.method private static blacklist computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 6
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 830
    if-eqz p0, :cond_0

    .line 832
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 833
    .local v0, "totalTimeMicros":J
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    .line 835
    .end local v0    # "totalTimeMicros":J
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist computeWakeupReasonTime(Landroid/os/BatteryStats$Timer;JI)J
    .locals 6
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 599
    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 602
    .local v0, "totalTimeUS":J
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    .line 604
    .end local v0    # "totalTimeUS":J
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist currentTimeMillis()J
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v1, v0, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_0

    .line 856
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 858
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist elapsedRealtime()J
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v1, v0, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_0

    .line 840
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0

    .line 842
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getBluetoothScanCount(Landroid/os/BatteryStats$Uid;JI)I
    .locals 6
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealTimeUs"    # J
    .param p4, "which"    # I

    .line 786
    const/4 v0, 0x0

    .line 788
    .local v0, "btScanCount":I
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 790
    .local v1, "btTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v1, :cond_0

    .line 791
    invoke-virtual {v1, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 793
    .local v2, "btTotalTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 794
    invoke-virtual {v1, p4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    .line 797
    .end local v2    # "btTotalTime":J
    :cond_0
    return v0
.end method

.method private blacklist getExcessivePowerCount(Landroid/os/BatteryStats$Uid;)I
    .locals 6
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;

    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, "countExcessivePower":I
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 818
    .local v1, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    if-eqz v1, :cond_0

    .line 819
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 820
    .local v2, "processStatsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 821
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Proc;

    .line 822
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v5

    add-int/2addr v0, v5

    .line 820
    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 825
    .end local v2    # "processStatsCount":I
    .end local v3    # "i":I
    :cond_0
    return v0
.end method

.method private blacklist getForegroundActivityTotalTime(Landroid/os/BatteryStats$Uid;J)J
    .locals 5
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealtimeUs"    # J

    .line 517
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 518
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_0

    .line 519
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    return-wide v1

    .line 521
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private blacklist getMsTimeFromTimer(Landroid/os/BatteryStats$Timer;J)J
    .locals 4
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "rawRealtimeUs"    # J

    .line 281
    if-eqz p1, :cond_0

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    .line 284
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist getSyncTotalTime(Landroid/os/BatteryStats$Uid;JI)J
    .locals 9
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealTimeUs"    # J
    .param p4, "which"    # I

    .line 801
    const-wide/16 v0, 0x0

    .line 802
    .local v0, "totalTime":J
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 804
    .local v2, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "isy":I
    :goto_0
    if-ltz v3, :cond_1

    .line 805
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    .line 806
    .local v4, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v4, :cond_0

    .line 808
    invoke-virtual {v4, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    add-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 804
    .end local v4    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 811
    .end local v3    # "isy":I
    :cond_1
    return-wide v0
.end method

.method private blacklist getWakeupAlarmCount(Landroid/os/BatteryStats$Uid;I)I
    .locals 9
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "which"    # I

    .line 490
    const/4 v0, 0x0

    .line 492
    .local v0, "walarmCount":I
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 494
    .local v1, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ipkg":I
    :goto_0
    if-ltz v2, :cond_2

    .line 495
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 496
    .local v3, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    nop

    .line 497
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 498
    .local v4, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 500
    .local v5, "packageName":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 501
    goto :goto_2

    .line 504
    :cond_0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "iwa":I
    :goto_1
    if-ltz v6, :cond_1

    .line 505
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 510
    .local v7, "alarmName":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v8, p2}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    add-int/2addr v0, v8

    .line 504
    .end local v7    # "alarmName":Ljava/lang/String;
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 494
    .end local v3    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v4    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "iwa":I
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 513
    .end local v2    # "ipkg":I
    :cond_2
    return v0
.end method

.method private blacklist makeWakeupReasonListName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 608
    move-object v0, p1

    .line 610
    .local v0, "listName":Ljava/lang/String;
    const-string v1, "Abort:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 611
    return-object v2

    .line 614
    :cond_0
    const-string v1, "Some devices failed to suspend, or early wake event detected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    return-object v2

    .line 618
    :cond_1
    const-string v1, "PowerManagerService.WakeLocks"

    const-string v3, "alarmtimer"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "whiteListTag":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 624
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeWakeupReasonListName WhiteList Tag/tableName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemBatteryUsageStatsProvider"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-object v2

    .line 623
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 630
    :cond_3
    return-object v0
.end method

.method private blacklist processAppUsage(Landroid/os/BatteryStats$Uid;Landroid/os/UidBatteryConsumer;Lcom/android/internal/os/SemDevicePowerInfo;J)Lcom/android/internal/os/SemUidPowerInfo;
    .locals 32
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "consumer"    # Landroid/os/UidBatteryConsumer;
    .param p3, "devInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;
    .param p4, "rawRealtimeUs"    # J

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    new-instance v5, Lcom/android/internal/os/SemUidPowerInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/android/internal/os/SemUidPowerInfo;-><init>(I)V

    .line 179
    .local v5, "uInfo":Lcom/android/internal/os/SemUidPowerInfo;
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 182
    .local v7, "uidTopTime":J
    nop

    .line 183
    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->getForegroundActivityTotalTime(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v11

    .line 182
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 185
    .local v11, "uidScreenTime":J
    nop

    .line 186
    const/4 v13, 0x1

    invoke-virtual {v1, v13, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v14

    .line 188
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v17

    add-long v14, v14, v17

    div-long/2addr v14, v9

    add-long/2addr v14, v7

    .line 192
    .local v14, "uidFgTime":J
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v18

    .line 194
    const/4 v13, 0x4

    invoke-virtual {v1, v13, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v20

    add-long v18, v18, v20

    .line 196
    const/4 v13, 0x5

    invoke-virtual {v1, v13, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v21

    add-long v18, v18, v21

    move-wide/from16 v21, v14

    .end local v14    # "uidFgTime":J
    .local v21, "uidFgTime":J
    div-long v13, v18, v9

    .line 200
    .local v13, "uidBgTime":J
    const-wide/16 v18, 0x0

    .line 201
    .local v18, "speakerLevel":J
    const-wide/16 v23, 0x0

    .line 203
    .local v23, "speakerTime":J
    const/16 v25, 0x0

    move-wide/from16 v9, v18

    move-wide/from16 v26, v23

    move/from16 v15, v25

    .end local v18    # "speakerLevel":J
    .end local v23    # "speakerTime":J
    .local v9, "speakerLevel":J
    .local v15, "i":I
    .local v26, "speakerTime":J
    :goto_0
    const/16 v6, 0x10

    if-ge v15, v6, :cond_1

    .line 204
    const/4 v6, 0x0

    invoke-virtual {v1, v15, v6}, Landroid/os/BatteryStats$Uid;->getSpeakerMediaTime(II)J

    move-result-wide v23

    .line 205
    .local v23, "mediaTimeMs":J
    const-wide/16 v28, 0x0

    cmp-long v6, v23, v28

    if-gtz v6, :cond_0

    .line 206
    move-wide/from16 v28, v7

    goto :goto_1

    .line 208
    :cond_0
    move-wide/from16 v28, v7

    move-wide/from16 v6, v26

    .end local v7    # "uidTopTime":J
    .end local v26    # "speakerTime":J
    .local v6, "speakerTime":J
    .local v28, "uidTopTime":J
    add-long v26, v6, v23

    .line 209
    .end local v6    # "speakerTime":J
    .restart local v26    # "speakerTime":J
    add-int/lit8 v6, v15, 0x1

    int-to-long v6, v6

    mul-long v6, v6, v23

    add-long/2addr v9, v6

    .line 203
    .end local v23    # "mediaTimeMs":J
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v7, v28

    const/4 v6, 0x0

    goto :goto_0

    .end local v28    # "uidTopTime":J
    .restart local v7    # "uidTopTime":J
    :cond_1
    move-wide/from16 v28, v7

    move-wide/from16 v6, v26

    .line 212
    .end local v7    # "uidTopTime":J
    .end local v15    # "i":I
    .end local v26    # "speakerTime":J
    .restart local v6    # "speakerTime":J
    .restart local v28    # "uidTopTime":J
    iget-object v8, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v8}, Landroid/os/BatteryStats;->hasDisplayPowerReporting()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 213
    move-wide/from16 v23, v9

    const/4 v8, 0x0

    .end local v9    # "speakerLevel":J
    .local v23, "speakerLevel":J
    invoke-virtual {v1, v8}, Landroid/os/BatteryStats$Uid;->getDisplayPowerDrain(I)J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v26, 0x408f400000000000L    # 1000.0

    div-double v9, v9, v26

    move-wide v8, v9

    goto :goto_2

    .line 214
    .end local v23    # "speakerLevel":J
    .restart local v9    # "speakerLevel":J
    :cond_2
    move-wide/from16 v23, v9

    const/4 v8, 0x0

    .end local v9    # "speakerLevel":J
    .restart local v23    # "speakerLevel":J
    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v26

    move-wide/from16 v8, v26

    :goto_2
    iput-wide v8, v5, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    .line 215
    iget-wide v8, v5, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    move-wide/from16 v26, v6

    .end local v6    # "speakerTime":J
    .restart local v26    # "speakerTime":J
    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    .line 216
    iget-boolean v8, v5, Lcom/android/internal/os/SemUidPowerInfo;->shouldHide:Z

    if-eqz v8, :cond_3

    move-wide v8, v6

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v8

    :goto_3
    iput-wide v8, v5, Lcom/android/internal/os/SemUidPowerInfo;->smearedPower:D

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v8

    move-wide/from16 v30, v13

    .end local v13    # "uidBgTime":J
    .local v30, "uidBgTime":J
    iget-wide v13, v5, Lcom/android/internal/os/SemUidPowerInfo;->screenPower:D

    sub-double/2addr v8, v13

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/internal/os/SemUidPowerInfo;->power:D

    .line 218
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v7

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v9

    add-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->cpuTime:J

    .line 219
    invoke-direct {v0, v1, v3, v4, v6}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->calculateWakelockTime(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    .line 220
    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v7

    div-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->mobileActive:J

    .line 221
    invoke-virtual {v1, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 222
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    add-long/2addr v7, v13

    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->mobileData:J

    .line 223
    invoke-virtual {v1, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    .line 224
    invoke-virtual {v1, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->mobilePackets:J

    .line 225
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    .line 226
    const/4 v10, 0x3

    invoke-virtual {v1, v10, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    add-long/2addr v8, v13

    iput-wide v8, v5, Lcom/android/internal/os/SemUidPowerInfo;->wifiPackets:J

    .line 227
    invoke-virtual {v1, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 228
    invoke-virtual {v1, v10, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->wifiData:J

    .line 229
    invoke-direct {v0, v1, v6}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->getWakeupAlarmCount(Landroid/os/BatteryStats$Uid;I)I

    move-result v7

    iput v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->wakeupAlarm:I

    .line 230
    invoke-direct {v0, v1, v3, v4, v6}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->getBluetoothScanCount(Landroid/os/BatteryStats$Uid;JI)I

    move-result v7

    iput v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    .line 231
    const/4 v7, 0x4

    invoke-virtual {v1, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 232
    const/4 v9, 0x5

    invoke-virtual {v1, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->btData:J

    .line 233
    invoke-direct {v0, v1, v5, v3, v4}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->updateUidGpsDuration(Landroid/os/BatteryStats$Uid;Lcom/android/internal/os/SemUidPowerInfo;J)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    invoke-direct {v0, v6, v3, v4}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->getMsTimeFromTimer(Landroid/os/BatteryStats$Timer;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/internal/os/SemUidPowerInfo;->cameraRunTime:J

    .line 235
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->getExcessivePowerCount(Landroid/os/BatteryStats$Uid;)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v5, Lcom/android/internal/os/SemUidPowerInfo;->killCount:J

    .line 236
    iput-wide v11, v5, Lcom/android/internal/os/SemUidPowerInfo;->screenTime:J

    .line 237
    move-wide/from16 v7, v21

    .end local v21    # "uidFgTime":J
    .local v7, "uidFgTime":J
    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->fgTime:J

    .line 238
    move-wide/from16 v9, v30

    .end local v30    # "uidBgTime":J
    .local v9, "uidBgTime":J
    iput-wide v9, v5, Lcom/android/internal/os/SemUidPowerInfo;->bgTime:J

    .line 239
    move-wide/from16 v13, v26

    .end local v26    # "speakerTime":J
    .local v13, "speakerTime":J
    iput-wide v13, v5, Lcom/android/internal/os/SemUidPowerInfo;->spkTime:J

    .line 240
    move-wide/from16 v6, v23

    .end local v7    # "uidFgTime":J
    .end local v23    # "speakerLevel":J
    .local v6, "speakerLevel":J
    .restart local v21    # "uidFgTime":J
    iput-wide v6, v5, Lcom/android/internal/os/SemUidPowerInfo;->spkLevel:J

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    .end local v6    # "speakerLevel":J
    .restart local v23    # "speakerLevel":J
    invoke-direct {v0, v8, v3, v4}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->getMsTimeFromTimer(Landroid/os/BatteryStats$Timer;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/internal/os/SemUidPowerInfo;->audioTime:J

    .line 242
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->networkWakeup:J

    .line 243
    invoke-direct {v0, v1, v3, v4, v6}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->getSyncTotalTime(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->syncTime:J

    .line 246
    iget v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->btScanCount:I

    iget v7, v5, Lcom/android/internal/os/SemUidPowerInfo;->btScan:I

    add-int/2addr v6, v7

    iput v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->btScanCount:I

    .line 247
    iget-wide v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->gpsTime:J

    .end local v9    # "uidBgTime":J
    .restart local v30    # "uidBgTime":J
    iget-wide v8, v5, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->gpsTime:J

    .line 248
    iget-wide v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v8, v5, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->actualGpsTime:J

    .line 249
    iget-wide v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->wifiScanTime:J

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v4, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v9

    const-wide/16 v15, 0x3e8

    div-long/2addr v9, v15

    add-long/2addr v6, v9

    iput-wide v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->wifiScanTime:J

    .line 250
    iget v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->wifiScanCount:I

    invoke-virtual {v1, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->wifiScanCount:I

    .line 251
    iget-wide v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->pwlTime:J

    iget-wide v8, v5, Lcom/android/internal/os/SemUidPowerInfo;->wakelockTime:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Lcom/android/internal/os/SemDevicePowerInfo;->pwlTime:J

    .line 260
    return-object v5
.end method

.method private blacklist processBluetoothUsage(Lcom/android/internal/os/SemDevicePowerInfo;J)V
    .locals 17
    .param p1, "devPowerInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;
    .param p2, "rawRealtimeUs"    # J

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 417
    .local v2, "counter":Landroid/os/BatteryStats$ControllerActivityCounter;
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 418
    .local v5, "idleTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 419
    .local v7, "rxTimeMs":J
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 421
    .local v9, "txTimeMs":J
    add-long v11, v5, v7

    add-long/2addr v11, v9

    iput-wide v11, v1, Lcom/android/internal/os/SemDevicePowerInfo;->btOnTime:J

    .line 422
    iget-object v3, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v11, p2

    invoke-virtual {v3, v11, v12, v4}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    iput-wide v13, v1, Lcom/android/internal/os/SemDevicePowerInfo;->btScanTime:J

    .line 423
    iget-object v3, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v13, 0x4

    invoke-virtual {v3, v13, v4}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v13

    iget-object v3, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 424
    const/4 v15, 0x5

    invoke-virtual {v3, v15, v4}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    add-long/2addr v13, v3

    iput-wide v13, v1, Lcom/android/internal/os/SemDevicePowerInfo;->btTotalBytes:J

    .line 425
    return-void
.end method

.method private blacklist processDeviceUsage(Landroid/os/BatteryUsageStats;Lcom/android/internal/os/SemDevicePowerInfo;JJ)V
    .locals 16
    .param p1, "usageStats"    # Landroid/os/BatteryUsageStats;
    .param p2, "devPowerInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;
    .param p3, "realtimeUs"    # J
    .param p5, "uptimeUs"    # J

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->processScreenUsage(Lcom/android/internal/os/SemDevicePowerInfo;J)V

    .line 306
    invoke-direct {v0, v1}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->processSpeakerUsage(Lcom/android/internal/os/SemDevicePowerInfo;)V

    .line 307
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->processRadioUsage(Lcom/android/internal/os/SemDevicePowerInfo;J)V

    .line 308
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->processWifiUsage(Lcom/android/internal/os/SemDevicePowerInfo;J)V

    .line 309
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->processBluetoothUsage(Lcom/android/internal/os/SemDevicePowerInfo;J)V

    .line 310
    invoke-direct {v0, v1}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->processNetworkUsage(Lcom/android/internal/os/SemDevicePowerInfo;)V

    .line 311
    invoke-direct {v0, v1}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->processModemUsage(Lcom/android/internal/os/SemDevicePowerInfo;)V

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->totalPower:D

    .line 314
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v6

    iput v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->batteryPerc:I

    .line 315
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOffTime:J

    .line 317
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v8

    div-long/2addr v8, v10

    iget-wide v12, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOffTime:J

    sub-long/2addr v8, v12

    iput-wide v8, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOnTime:J

    .line 319
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v6

    iput v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOnCount:I

    .line 321
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/BatteryStats;->getSubScreenOnTime(JI)J

    move-result-wide v8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/SemDevicePowerInfo;->subScreenOnTime:J

    .line 323
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v4, v5, v7}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/SemDevicePowerInfo;->uptime:J

    .line 325
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v4, v5, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOffUptime:J

    .line 328
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/SemDevicePowerInfo;->psmTime:J

    .line 331
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceChargePermil()I

    move-result v6

    iput v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOffDischarge:I

    .line 332
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceChargePermil()I

    move-result v6

    iput v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOnDischarge:I

    .line 333
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenOffSinceChargePermil()I

    move-result v6

    iput v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    .line 334
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenOnSinceChargePermil()I

    move-result v6

    iput v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    .line 336
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/BatteryStats;->getSubScreenDozeTime(JI)J

    move-result-wide v8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/SemDevicePowerInfo;->subAodTime:J

    .line 338
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 339
    invoke-virtual {v6}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceChargeCoulombCounter()I

    move-result v6

    iput v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    .line 340
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 341
    invoke-virtual {v6}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceChargeCoulombCounter()I

    move-result v6

    iput v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    .line 343
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/BatteryStats;->getTxPowerSharingTime(JI)J

    move-result-wide v8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/SemDevicePowerInfo;->powershareTime:J

    .line 345
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats;->getTxSharingDischargeAmount(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/internal/os/SemDevicePowerInfo;->powersharePower:J

    .line 347
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v8, 0x2

    invoke-virtual {v6, v8, v2, v3, v7}, Landroid/os/BatteryStats;->getDisplayHighRefreshRateTime(IJI)J

    move-result-wide v12

    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 348
    const/4 v9, 0x1

    invoke-virtual {v6, v9, v2, v3, v7}, Landroid/os/BatteryStats;->getDisplayHighRefreshRateTime(IJI)J

    move-result-wide v14

    add-long/2addr v12, v14

    div-long/2addr v12, v10

    iput-wide v12, v1, Lcom/android/internal/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    .line 350
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v8, v2, v3, v7}, Landroid/os/BatteryStats;->getSubDisplayHighRefreshRateTime(IJI)J

    move-result-wide v12

    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 351
    invoke-virtual {v6, v9, v2, v3, v7}, Landroid/os/BatteryStats;->getSubDisplayHighRefreshRateTime(IJI)J

    move-result-wide v8

    add-long/2addr v12, v8

    div-long/2addr v12, v10

    iput-wide v12, v1, Lcom/android/internal/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    .line 354
    iget-object v6, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v2, v3, v7}, Landroid/os/BatteryStats;->getScreenOnGpsRunningTime(JI)J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, v1, Lcom/android/internal/os/SemDevicePowerInfo;->screenOnGpsTime:J

    .line 355
    return-void
.end method

.method private blacklist processModemUsage(Lcom/android/internal/os/SemDevicePowerInfo;)V
    .locals 16
    .param p1, "devPowerInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;

    .line 443
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 444
    .local v1, "index":I
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->getNetworkModemControllerActivity()Landroid/os/BatteryStats$ModemActivityCounter;

    move-result-object v3

    .line 446
    .local v3, "counter":Landroid/os/BatteryStats$ModemActivityCounter;
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/os/SemDevicePowerInfo;->cpSleepTime:J

    .line 447
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/os/SemDevicePowerInfo;->cpIdleTime:J

    .line 449
    const/4 v4, 0x5

    new-array v6, v4, [J

    .line 450
    .local v6, "mNrTxTimeMillis":[J
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    .line 451
    .local v10, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v10, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    aput-wide v11, v6, v1

    .line 452
    iget-wide v11, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrTxTime:J

    aget-wide v13, v6, v1

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrTxTime:J

    .line 453
    iget-wide v11, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrTxLevel:D

    aget-wide v13, v6, v1

    add-int/lit8 v15, v1, 0x1

    int-to-long v4, v15

    mul-long/2addr v13, v4

    long-to-double v4, v13

    add-double/2addr v11, v4

    iput-wide v11, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 454
    nop

    .end local v10    # "c":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v1, v1, 0x1

    .line 450
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    goto :goto_0

    .line 457
    :cond_0
    iget-wide v4, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrTxTime:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1

    .line 458
    iget-wide v4, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrTxLevel:D

    iget-wide v9, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrTxTime:J

    long-to-double v9, v9

    div-double/2addr v4, v9

    iput-wide v4, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrTxLevel:D

    .line 461
    :cond_1
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    .line 462
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrRxTime:J

    .line 463
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxByteCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    .line 464
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrTxByte:J

    .line 465
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxByteCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    .line 466
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/os/SemDevicePowerInfo;->nrRxByte:J

    .line 468
    const/4 v1, 0x0

    .line 469
    const/4 v4, 0x5

    new-array v4, v4, [J

    .line 470
    .local v4, "mLcTxTimeMillis":[J
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    array-length v9, v5

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v5, v10

    .line 471
    .local v11, "c":Landroid/os/BatteryStats$LongCounter;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    aput-wide v13, v4, v1

    .line 472
    iget-wide v12, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcTxTime:J

    aget-wide v14, v4, v1

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcTxTime:J

    .line 473
    iget-wide v12, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcTxLevel:D

    aget-wide v14, v4, v1

    add-int/lit8 v7, v1, 0x1

    int-to-long v7, v7

    mul-long/2addr v14, v7

    long-to-double v7, v14

    add-double/2addr v12, v7

    iput-wide v12, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 474
    nop

    .end local v11    # "c":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v1, v1, 0x1

    .line 470
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 477
    :cond_2
    iget-wide v7, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcTxTime:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    .line 478
    iget-wide v7, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcTxLevel:D

    iget-wide v9, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcTxTime:J

    long-to-double v9, v9

    div-double/2addr v7, v9

    iput-wide v7, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcTxLevel:D

    .line 481
    :cond_3
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    .line 482
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcRxTime:J

    .line 483
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxByteCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    .line 484
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcTxByte:J

    .line 485
    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxByteCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    .line 486
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/internal/os/SemDevicePowerInfo;->lcRxByte:J

    .line 487
    return-void
.end method

.method private blacklist processNetworkUsage(Lcom/android/internal/os/SemDevicePowerInfo;)V
    .locals 9
    .param p1, "devPowerInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;

    .line 428
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 429
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v5

    add-long/2addr v2, v5

    iput-wide v2, p1, Lcom/android/internal/os/SemDevicePowerInfo;->mobileTotalBytes:J

    .line 431
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 432
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p1, Lcom/android/internal/os/SemDevicePowerInfo;->wifiTotalBytes:J

    .line 434
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 435
    invoke-virtual {v0, v1, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 436
    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p1, Lcom/android/internal/os/SemDevicePowerInfo;->mobileTotalPackets:J

    .line 438
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 439
    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    add-long/2addr v4, v0

    iput-wide v4, p1, Lcom/android/internal/os/SemDevicePowerInfo;->wifiTotalPackets:J

    .line 440
    return-void
.end method

.method private blacklist processRadioUsage(Lcom/android/internal/os/SemDevicePowerInfo;J)V
    .locals 7
    .param p1, "devPowerInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;
    .param p2, "rawRealtimeUs"    # J

    .line 398
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    .line 399
    .local v0, "BINS":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    if-ge v1, v0, :cond_0

    .line 400
    iget-object v5, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5, v1, p2, p3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 402
    .local v4, "strengthTimeMs":J
    iget-object v2, p1, Lcom/android/internal/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aput-wide v4, v2, v1

    .line 399
    .end local v4    # "strengthTimeMs":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, p2, p3, v4}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v5

    div-long/2addr v5, v2

    iput-wide v5, p1, Lcom/android/internal/os/SemDevicePowerInfo;->mobileActiveTime:J

    .line 406
    iget-object v1, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v1

    iput v1, p1, Lcom/android/internal/os/SemDevicePowerInfo;->mobileActiveCount:I

    .line 407
    iget-object v1, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, p2, p3, v4}, Landroid/os/BatteryStats;->getMobileActive5GTime(JI)J

    move-result-wide v4

    div-long/2addr v4, v2

    iput-wide v4, p1, Lcom/android/internal/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    .line 408
    return-void
.end method

.method private blacklist processScreenUsage(Lcom/android/internal/os/SemDevicePowerInfo;J)V
    .locals 7
    .param p1, "devPowerInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;
    .param p2, "rawRealtimeUs"    # J

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    if-ge v0, v1, :cond_0

    .line 359
    iget-object v1, p1, Lcom/android/internal/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    iget-object v5, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 360
    invoke-virtual {v5, v0, p2, p3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v2

    aput-wide v5, v1, v0

    .line 361
    iget-object v1, p1, Lcom/android/internal/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    iget-object v5, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 362
    invoke-virtual {v5, v0, p2, p3, v4}, Landroid/os/BatteryStats;->getScreenAutoBrightnessTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v2

    aput-wide v5, v1, v0

    .line 364
    iget-object v1, p1, Lcom/android/internal/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    iget-object v5, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 365
    invoke-virtual {v5, v0, p2, p3, v4}, Landroid/os/BatteryStats;->getSubScreenBrightnessTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v2

    aput-wide v5, v1, v0

    .line 366
    iget-object v1, p1, Lcom/android/internal/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    iget-object v5, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 367
    invoke-virtual {v5, v0, p2, p3, v4}, Landroid/os/BatteryStats;->getSubScreenAutoBrightnessTime(IJI)J

    move-result-wide v4

    div-long/2addr v4, v2

    aput-wide v4, v1, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 370
    invoke-virtual {v0, p2, p3, v4}, Landroid/os/BatteryStats;->getScreenHighBrightnessTime(JI)J

    move-result-wide v0

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    .line 371
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 372
    invoke-virtual {v0, p2, p3, v4}, Landroid/os/BatteryStats;->getSubScreenHighBrightnessTime(JI)J

    move-result-wide v0

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    .line 373
    return-void
.end method

.method private blacklist processSpeakerUsage(Lcom/android/internal/os/SemDevicePowerInfo;)V
    .locals 18
    .param p1, "devPowerInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 377
    .local v2, "spkCallTime":J
    const-wide/16 v4, 0x0

    .line 378
    .local v4, "spkCallLevel":J
    const-wide/16 v6, 0x0

    .line 379
    .local v6, "spkMediaTime":J
    const-wide/16 v8, 0x0

    .line 381
    .local v8, "spkMediaLevel":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v11, 0xf

    if-ge v10, v11, :cond_0

    .line 382
    iget-object v11, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/os/BatteryStats;->getSpeakerCallTime(II)J

    move-result-wide v13

    long-to-double v13, v13

    .line 383
    .local v13, "callTime":D
    iget-object v11, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v11, v10, v12}, Landroid/os/BatteryStats;->getSpeakerMediaTime(II)J

    move-result-wide v11

    long-to-double v11, v11

    .line 385
    .local v11, "mediaTime":D
    long-to-double v0, v2

    add-double/2addr v0, v13

    double-to-long v2, v0

    .line 386
    long-to-double v0, v4

    add-int/lit8 v15, v10, 0x1

    move-wide/from16 v16, v2

    .end local v2    # "spkCallTime":J
    .local v16, "spkCallTime":J
    int-to-double v2, v15

    mul-double/2addr v2, v13

    add-double/2addr v0, v2

    double-to-long v4, v0

    .line 387
    long-to-double v0, v6

    add-double/2addr v0, v11

    double-to-long v6, v0

    .line 388
    long-to-double v0, v8

    add-int/lit8 v2, v10, 0x1

    int-to-double v2, v2

    mul-double/2addr v2, v11

    add-double/2addr v0, v2

    double-to-long v8, v0

    .line 381
    .end local v11    # "mediaTime":D
    .end local v13    # "callTime":D
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    goto :goto_0

    .line 391
    .end local v10    # "i":I
    .end local v16    # "spkCallTime":J
    .restart local v2    # "spkCallTime":J
    :cond_0
    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/internal/os/SemDevicePowerInfo;->spkCallTime:J

    .line 392
    iput-wide v4, v0, Lcom/android/internal/os/SemDevicePowerInfo;->spkCallLevel:J

    .line 393
    iput-wide v6, v0, Lcom/android/internal/os/SemDevicePowerInfo;->spkMediaTime:J

    .line 394
    iput-wide v8, v0, Lcom/android/internal/os/SemDevicePowerInfo;->spkMediaLevel:J

    .line 395
    return-void
.end method

.method private blacklist processWifiUsage(Lcom/android/internal/os/SemDevicePowerInfo;J)V
    .locals 4
    .param p1, "devPowerInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;
    .param p2, "rawRealtimeUs"    # J

    .line 411
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/SemDevicePowerInfo;->wifiOnTime:J

    .line 412
    return-void
.end method

.method private blacklist updateBatteryUsage(Landroid/os/BatteryUsageStats;JJLcom/android/internal/os/SemDevicePowerInfo;Ljava/util/ArrayList;)V
    .locals 14
    .param p1, "usageStats"    # Landroid/os/BatteryUsageStats;
    .param p2, "realtimeUs"    # J
    .param p4, "uptimeUs"    # J
    .param p6, "devInfo"    # Lcom/android/internal/os/SemDevicePowerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryUsageStats;",
            "JJ",
            "Lcom/android/internal/os/SemDevicePowerInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/SemUidPowerInfo;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p7, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemUidPowerInfo;>;"
    move-object/from16 v7, p6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    .line 123
    .local v8, "uidStatsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/os/UidBatteryConsumer;>;"
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer;

    .line 124
    .local v1, "item":Landroid/os/UidBatteryConsumer;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v1    # "item":Landroid/os/UidBatteryConsumer;
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    move-object v9, p0

    iget-object v0, v9, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v10

    .line 129
    .local v10, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_3

    .line 130
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 131
    .local v11, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UidBatteryConsumer;

    move-object v0, p0

    move-object v1, v11

    move-object/from16 v3, p6

    move-wide/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->processAppUsage(Landroid/os/BatteryStats$Uid;Landroid/os/UidBatteryConsumer;Lcom/android/internal/os/SemDevicePowerInfo;J)Lcom/android/internal/os/SemUidPowerInfo;

    move-result-object v0

    move-object/from16 v12, p7

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 131
    :cond_2
    move-object/from16 v12, p7

    .line 129
    .end local v11    # "uid":Landroid/os/BatteryStats$Uid;
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    move-object/from16 v12, p7

    .line 136
    .end local v6    # "i":I
    const/4 v0, 0x0

    move-object v11, p1

    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v13

    .line 138
    .local v13, "deviceConsumer":Landroid/os/BatteryConsumer;
    const/4 v0, 0x0

    .local v0, "compId":I
    :goto_3
    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 139
    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    .line 163
    :sswitch_0
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v1

    double-to-long v1, v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->powersharePower:J

    .line 164
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->powershareTime:J

    .line 165
    goto :goto_4

    .line 145
    :sswitch_1
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->idlePower:D

    .line 146
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->idleTime:J

    .line 147
    goto :goto_4

    .line 141
    :sswitch_2
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->aodPower:D

    .line 142
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->aodTime:J

    .line 143
    goto :goto_4

    .line 152
    :sswitch_3
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->phonePower:D

    .line 153
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->phoneOnTime:J

    .line 154
    goto :goto_4

    .line 156
    :sswitch_4
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->wifiPower:D

    .line 157
    goto :goto_4

    .line 149
    :sswitch_5
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->radioPower:D

    .line 150
    goto :goto_4

    .line 159
    :sswitch_6
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->screenPower:D

    .line 160
    invoke-virtual {v13, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/internal/os/SemDevicePowerInfo;->screenOnTime:J

    .line 161
    nop

    .line 138
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 172
    .end local v0    # "compId":I
    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->processDeviceUsage(Landroid/os/BatteryUsageStats;Lcom/android/internal/os/SemDevicePowerInfo;JJ)V

    .line 173
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x8 -> :sswitch_5
        0xb -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x10 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist updateKernelWakelockInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V
    .locals 19
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryStats;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/SemKernelWakelockInfo;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p2, "delta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemKernelWakelockInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v2

    .line 702
    .local v2, "kernelWake":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    if-nez v2, :cond_0

    .line 703
    return-void

    .line 706
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 710
    .local v3, "rawRealtimeUs":J
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 711
    .local v6, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    if-eqz v6, :cond_3

    .line 712
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Timer;

    .line 714
    .local v9, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v9, :cond_3

    .line 715
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 716
    .local v10, "name":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v9, v3, v4, v11}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v17

    .line 718
    .local v17, "totalTimeMillis":J
    nop

    .line 719
    invoke-virtual {v9, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v15

    .line 721
    .local v15, "totalCount":I
    if-eqz v10, :cond_2

    cmp-long v7, v17, v7

    if-lez v7, :cond_2

    if-gtz v15, :cond_1

    .line 722
    goto :goto_0

    .line 725
    :cond_1
    new-instance v7, Lcom/android/internal/os/SemKernelWakelockInfo;

    int-to-long v13, v15

    move-object v11, v7

    move-object v12, v10

    move v8, v15

    .end local v15    # "totalCount":I
    .local v8, "totalCount":I
    move-wide/from16 v15, v17

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;JJ)V

    .line 727
    .local v7, "entry":Lcom/android/internal/os/SemKernelWakelockInfo;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 721
    .end local v7    # "entry":Lcom/android/internal/os/SemKernelWakelockInfo;
    .end local v8    # "totalCount":I
    .restart local v15    # "totalCount":I
    :cond_2
    move v8, v15

    .end local v15    # "totalCount":I
    .restart local v8    # "totalCount":I
    goto :goto_0

    .line 734
    .end local v6    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v8    # "totalCount":I
    .end local v9    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "totalTimeMillis":J
    :cond_3
    :goto_1
    goto :goto_0

    .line 735
    .end local v3    # "rawRealtimeUs":J
    :cond_4
    nop

    .line 739
    iget-object v3, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    if-nez v3, :cond_6

    .line 740
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    .line 741
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/SemKernelWakelockInfo;

    .line 742
    .local v4, "item":Lcom/android/internal/os/SemKernelWakelockInfo;
    iget-object v5, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/internal/os/SemKernelWakelockInfo;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .end local v4    # "item":Lcom/android/internal/os/SemKernelWakelockInfo;
    goto :goto_2

    .line 744
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 745
    const-string v3, "SemBatteryUsageStatsProvider"

    const-string v4, "First update of KernelWakelock"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 747
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v3, "newDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemKernelWakelockInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/SemKernelWakelockInfo;

    .line 749
    .local v5, "item":Lcom/android/internal/os/SemKernelWakelockInfo;
    invoke-virtual {v5}, Lcom/android/internal/os/SemKernelWakelockInfo;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 750
    .local v6, "curTag":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/os/SemKernelWakelockInfo;->getCount()J

    move-result-wide v15

    .line 751
    .local v15, "curCount":J
    invoke-virtual {v5}, Lcom/android/internal/os/SemKernelWakelockInfo;->getTime()J

    move-result-wide v17

    .line 752
    .local v17, "curTime":J
    iget-object v9, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 753
    iget-object v9, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/SemKernelWakelockInfo;

    invoke-virtual {v5, v9}, Lcom/android/internal/os/SemKernelWakelockInfo;->calculateDelta(Lcom/android/internal/os/SemKernelWakelockInfo;)V

    .line 754
    invoke-virtual {v5}, Lcom/android/internal/os/SemKernelWakelockInfo;->getCount()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-lez v9, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/os/SemKernelWakelockInfo;->getTime()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-gtz v9, :cond_8

    .line 755
    goto :goto_3

    .line 758
    :cond_8
    iget-object v13, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    new-instance v14, Lcom/android/internal/os/SemKernelWakelockInfo;

    move-object v9, v14

    move-object v10, v6

    move-wide v11, v15

    move-object v7, v13

    move-object v8, v14

    move-wide/from16 v13, v17

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    .end local v5    # "item":Lcom/android/internal/os/SemKernelWakelockInfo;
    .end local v6    # "curTag":Ljava/lang/String;
    .end local v15    # "curCount":J
    .end local v17    # "curTime":J
    const-wide/16 v7, 0x0

    goto :goto_3

    .line 767
    :cond_9
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 776
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/SemKernelWakelockInfo;

    .line 777
    .local v5, "result":Lcom/android/internal/os/SemKernelWakelockInfo;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_a

    .line 779
    goto :goto_5

    .line 781
    .end local v5    # "result":Lcom/android/internal/os/SemKernelWakelockInfo;
    :cond_a
    goto :goto_4

    .line 783
    .end local v3    # "newDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemKernelWakelockInfo;>;"
    :cond_b
    :goto_5
    return-void

    .line 736
    :cond_c
    return-void
.end method

.method private blacklist updateScreenWakeInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryStats;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/SemScreenWakeInfo;",
            ">;)V"
        }
    .end annotation

    .line 635
    .local p2, "delta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    nop

    .line 636
    invoke-virtual {p1}, Landroid/os/BatteryStats;->getScreenWakeStats()Ljava/util/Map;

    move-result-object v0

    .line 638
    .local v0, "screenWake":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$LongCounter;>;"
    if-nez v0, :cond_0

    .line 639
    return-void

    .line 642
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 643
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 644
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$LongCounter;>;"
    if-eqz v2, :cond_3

    .line 645
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$LongCounter;

    .line 647
    .local v5, "counter":Landroid/os/BatteryStats$LongCounter;
    if-eqz v5, :cond_3

    .line 648
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 649
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 651
    .local v7, "totalCount":J
    if-eqz v6, :cond_1

    cmp-long v3, v7, v3

    if-gtz v3, :cond_2

    .line 652
    goto :goto_0

    .line 655
    :cond_2
    new-instance v3, Lcom/android/internal/os/SemScreenWakeInfo;

    invoke-direct {v3, v6, v7, v8}, Lcom/android/internal/os/SemScreenWakeInfo;-><init>(Ljava/lang/String;J)V

    .line 656
    .local v3, "entry":Lcom/android/internal/os/SemScreenWakeInfo;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$LongCounter;>;"
    .end local v3    # "entry":Lcom/android/internal/os/SemScreenWakeInfo;
    .end local v5    # "counter":Landroid/os/BatteryStats$LongCounter;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "totalCount":J
    :cond_3
    goto :goto_0

    :cond_4
    nop

    .line 668
    iget-object v1, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    if-nez v1, :cond_6

    .line 669
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    .line 670
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SemScreenWakeInfo;

    .line 671
    .local v2, "item":Lcom/android/internal/os/SemScreenWakeInfo;
    iget-object v3, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/internal/os/SemScreenWakeInfo;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .end local v2    # "item":Lcom/android/internal/os/SemScreenWakeInfo;
    goto :goto_1

    .line 673
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 674
    const-string v1, "SemBatteryUsageStatsProvider"

    const-string v2, "First update of ScreenWake"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 676
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v1, "newDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/SemScreenWakeInfo;

    .line 678
    .local v5, "item":Lcom/android/internal/os/SemScreenWakeInfo;
    invoke-virtual {v5}, Lcom/android/internal/os/SemScreenWakeInfo;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 679
    .local v6, "curTag":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/os/SemScreenWakeInfo;->getCount()J

    move-result-wide v7

    .line 680
    .local v7, "curCount":J
    iget-object v9, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 681
    iget-object v9, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/SemScreenWakeInfo;

    invoke-virtual {v5, v9}, Lcom/android/internal/os/SemScreenWakeInfo;->calculateDelta(Lcom/android/internal/os/SemScreenWakeInfo;)V

    .line 682
    invoke-virtual {v5}, Lcom/android/internal/os/SemScreenWakeInfo;->getCount()J

    move-result-wide v9

    cmp-long v9, v9, v3

    if-nez v9, :cond_7

    .line 683
    goto :goto_2

    .line 686
    :cond_7
    iget-object v9, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    new-instance v10, Lcom/android/internal/os/SemScreenWakeInfo;

    invoke-direct {v10, v6, v7, v8}, Lcom/android/internal/os/SemScreenWakeInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    .end local v5    # "item":Lcom/android/internal/os/SemScreenWakeInfo;
    .end local v6    # "curTag":Ljava/lang/String;
    .end local v7    # "curCount":J
    goto :goto_2

    .line 692
    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 693
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 695
    .end local v1    # "newDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    :goto_3
    return-void

    .line 665
    :cond_9
    return-void
.end method

.method private blacklist updateUidGpsDuration(Landroid/os/BatteryStats$Uid;Lcom/android/internal/os/SemUidPowerInfo;J)V
    .locals 9
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "uInfo"    # Lcom/android/internal/os/SemUidPowerInfo;
    .param p3, "rawRealtimeUs"    # J

    .line 264
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 265
    .local v0, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Sensor;

    .line 266
    .local v1, "gpsSensor":Landroid/os/BatteryStats$Uid$Sensor;
    const/16 v2, -0x2711

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Sensor;

    .line 267
    .local v2, "actualGpsSensor":Landroid/os/BatteryStats$Uid$Sensor;
    const-wide/16 v3, 0x0

    iput-wide v3, p2, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    .line 268
    iput-wide v3, p2, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    .line 270
    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 271
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 272
    .local v6, "gpsTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v6, p3, p4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    div-long/2addr v7, v3

    iput-wide v7, p2, Lcom/android/internal/os/SemUidPowerInfo;->gpsTime:J

    .line 274
    .end local v6    # "gpsTimer":Landroid/os/BatteryStats$Timer;
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 275
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 276
    .local v6, "actualGpsTimer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v6, p3, p4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    div-long/2addr v7, v3

    iput-wide v7, p2, Lcom/android/internal/os/SemUidPowerInfo;->actualGpsTime:J

    .line 278
    .end local v6    # "actualGpsTimer":Landroid/os/BatteryStats$Timer;
    :cond_1
    return-void
.end method

.method private blacklist updateWakeupReasonInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V
    .locals 21
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryStats;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/SemWakeupReasonInfo;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p2, "delta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemWakeupReasonInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v2

    .line 529
    .local v2, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 535
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 536
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    if-eqz v4, :cond_2

    .line 537
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Timer;

    .line 539
    .local v7, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v7, :cond_2

    .line 540
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    .line 541
    .local v9, "totalCount":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 543
    .local v10, "wakeupTag":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    .line 544
    .local v11, "rawRealtime":J
    invoke-direct {v0, v7, v11, v12, v8}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->computeWakeupReasonTime(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v19

    .line 547
    .local v19, "totalTimeMillis":J
    invoke-direct {v0, v10}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->makeWakeupReasonListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, "wakeupListName":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-lez v9, :cond_0

    cmp-long v5, v19, v5

    if-nez v5, :cond_1

    .line 549
    goto :goto_0

    .line 552
    :cond_1
    new-instance v5, Lcom/android/internal/os/SemWakeupReasonInfo;

    int-to-long v14, v9

    move-object v13, v5

    move-wide/from16 v17, v14

    move-object v14, v8

    move-wide/from16 v15, v19

    invoke-direct/range {v13 .. v18}, Lcom/android/internal/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;JJ)V

    .line 553
    .local v5, "entry":Lcom/android/internal/os/SemWakeupReasonInfo;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v5    # "entry":Lcom/android/internal/os/SemWakeupReasonInfo;
    .end local v7    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "wakeupListName":Ljava/lang/String;
    .end local v9    # "totalCount":I
    .end local v10    # "wakeupTag":Ljava/lang/String;
    .end local v11    # "rawRealtime":J
    .end local v19    # "totalTimeMillis":J
    :cond_2
    goto :goto_0

    :cond_3
    nop

    .line 565
    iget-object v3, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    if-nez v3, :cond_5

    .line 566
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    .line 567
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/SemWakeupReasonInfo;

    .line 568
    .local v4, "item":Lcom/android/internal/os/SemWakeupReasonInfo;
    iget-object v5, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/internal/os/SemWakeupReasonInfo;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .end local v4    # "item":Lcom/android/internal/os/SemWakeupReasonInfo;
    goto :goto_1

    .line 570
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 575
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v3, "newDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemWakeupReasonInfo;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/SemWakeupReasonInfo;

    .line 577
    .local v7, "item":Lcom/android/internal/os/SemWakeupReasonInfo;
    invoke-virtual {v7}, Lcom/android/internal/os/SemWakeupReasonInfo;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 578
    .local v14, "curTag":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/os/SemWakeupReasonInfo;->getCount()J

    move-result-wide v15

    .line 579
    .local v15, "curCount":J
    invoke-virtual {v7}, Lcom/android/internal/os/SemWakeupReasonInfo;->getTime()J

    move-result-wide v17

    .line 580
    .local v17, "curTime":J
    iget-object v8, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    invoke-interface {v8, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 581
    iget-object v8, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/SemWakeupReasonInfo;

    invoke-virtual {v7, v8}, Lcom/android/internal/os/SemWakeupReasonInfo;->calculateDelta(Lcom/android/internal/os/SemWakeupReasonInfo;)V

    .line 582
    invoke-virtual {v7}, Lcom/android/internal/os/SemWakeupReasonInfo;->getCount()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-nez v8, :cond_6

    .line 583
    goto :goto_2

    .line 586
    :cond_6
    iget-object v12, v0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    new-instance v13, Lcom/android/internal/os/SemWakeupReasonInfo;

    move-object v8, v13

    move-object v9, v14

    move-wide v10, v15

    move-object v5, v12

    move-object v6, v13

    move-wide/from16 v12, v17

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v5, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v7    # "item":Lcom/android/internal/os/SemWakeupReasonInfo;
    .end local v14    # "curTag":Ljava/lang/String;
    .end local v15    # "curCount":J
    .end local v17    # "curTime":J
    const-wide/16 v5, 0x0

    goto :goto_2

    .line 593
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 594
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 596
    .end local v3    # "newDelta":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemWakeupReasonInfo;>;"
    :goto_3
    return-void

    .line 562
    :cond_8
    return-void
.end method

.method private blacklist uptimeMillis()J
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v1, v0, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_0

    .line 848
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 850
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public blacklist getBatteryUsageStats()Lcom/android/internal/os/SemBatterySipper;
    .locals 19

    .line 82
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v10, v0, v2

    .line 83
    .local v10, "rawRealtimeUs":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->uptimeMillis()J

    move-result-wide v0

    mul-long v12, v0, v2

    .line 85
    .local v12, "rawUptimeUs":J
    new-instance v7, Lcom/android/internal/os/SemDevicePowerInfo;

    const-wide/16 v0, 0x0

    invoke-direct {v7, v0, v1}, Lcom/android/internal/os/SemDevicePowerInfo;-><init>(D)V

    .line 86
    .local v7, "devPowerInfo":Lcom/android/internal/os/SemDevicePowerInfo;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v8, "appUsage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemUidPowerInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 88
    .local v14, "wakeupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemWakeupReasonInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 89
    .local v15, "kWakelockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemKernelWakelockInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 91
    .local v5, "screenWakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    iget-object v6, v9, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    monitor-enter v6

    .line 92
    :try_start_0
    iget-object v0, v9, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getIgnoreNextExternalStats()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 93
    :try_start_1
    const-string v0, "SemBatteryUsageStatsProvider"

    const-string v1, "BatteryStats is being reset. Return empty SemBatterySipper"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lcom/android/internal/os/SemBatterySipper;

    invoke-direct {v0}, Lcom/android/internal/os/SemBatterySipper;-><init>()V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    move-wide/from16 v17, v10

    move-object v10, v5

    move-object v11, v6

    goto :goto_1

    .line 97
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsProvider;

    iget-object v1, v9, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 98
    .local v0, "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v2, 0x0

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v16, v1

    .line 104
    .local v16, "usageStats":Landroid/os/BatteryUsageStats;
    if-eqz v16, :cond_1

    .line 105
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-wide v3, v10

    move-wide/from16 v17, v10

    move-object v10, v5

    move-object v11, v6

    .end local v5    # "screenWakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    .local v10, "screenWakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    .local v17, "rawRealtimeUs":J
    move-wide v5, v12

    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->updateBatteryUsage(Landroid/os/BatteryUsageStats;JJLcom/android/internal/os/SemDevicePowerInfo;Ljava/util/ArrayList;)V

    .line 106
    iget-object v1, v9, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-direct {v9, v1, v14}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->updateWakeupReasonInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V

    .line 107
    iget-object v1, v9, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-direct {v9, v1, v15}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->updateKernelWakelockInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V

    .line 108
    iget-object v1, v9, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-direct {v9, v1, v10}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->updateScreenWakeInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 104
    .end local v17    # "rawRealtimeUs":J
    .restart local v5    # "screenWakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    .local v10, "rawRealtimeUs":J
    :cond_1
    move-wide/from16 v17, v10

    move-object v10, v5

    move-object v11, v6

    .line 110
    .end local v0    # "provider":Lcom/android/internal/os/BatteryUsageStatsProvider;
    .end local v5    # "screenWakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    .end local v16    # "usageStats":Landroid/os/BatteryUsageStats;
    .local v10, "screenWakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    .restart local v17    # "rawRealtimeUs":J
    :goto_0
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 112
    new-instance v0, Lcom/android/internal/os/SemBatterySipper;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v14

    move-object v5, v15

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/SemBatterySipper;-><init>(Lcom/android/internal/os/SemDevicePowerInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 110
    .end local v17    # "rawRealtimeUs":J
    .restart local v5    # "screenWakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    .local v10, "rawRealtimeUs":J
    :catchall_1
    move-exception v0

    move-wide/from16 v17, v10

    move-object v10, v5

    move-object v11, v6

    .end local v5    # "screenWakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    .local v10, "screenWakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/SemScreenWakeInfo;>;"
    .restart local v17    # "rawRealtimeUs":J
    :goto_1
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public blacklist shouldUpdateStats(J)Z
    .locals 4
    .param p1, "lastUpdateTimeStampMs"    # J

    .line 117
    invoke-direct {p0}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
