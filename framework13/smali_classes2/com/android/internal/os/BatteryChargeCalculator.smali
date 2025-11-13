.class public Lcom/android/internal/os/BatteryChargeCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "BatteryChargeCalculator.java"


# instance fields
.field private final blacklist mBatteryRatedCapacity:D

.field private final blacklist mBatteryTypicalCapacity:D


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryChargeCalculator;->mBatteryRatedCapacity:D

    .line 41
    iput-wide v0, p0, Lcom/android/internal/os/BatteryChargeCalculator;->mBatteryTypicalCapacity:D

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 34
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryChargeCalculator;->mBatteryRatedCapacity:D

    .line 36
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryTypicalCapacity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryChargeCalculator;->mBatteryTypicalCapacity:D

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 19
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 55
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v4

    .line 54
    invoke-virtual {v1, v4}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    .line 58
    .local v4, "batteryCapacityMah":I
    if-gtz v4, :cond_0

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v5

    div-int/lit16 v4, v5, 0x3e8

    .line 60
    if-gtz v4, :cond_0

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v4

    .line 64
    :cond_0
    int-to-double v5, v4

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 67
    iget-wide v5, v0, Lcom/android/internal/os/BatteryChargeCalculator;->mBatteryRatedCapacity:D

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryUsageStats$Builder;->setBatteryRatedCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 69
    iget-wide v5, v0, Lcom/android/internal/os/BatteryChargeCalculator;->mBatteryTypicalCapacity:D

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTypicalCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 72
    nop

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v5

    mul-int/2addr v5, v4

    int-to-double v5, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    .line 74
    .local v5, "dischargedPowerLowerBoundMah":D
    nop

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v9

    mul-int/2addr v9, v4

    int-to-double v9, v9

    div-double/2addr v9, v7

    .line 76
    .local v9, "dischargedPowerUpperBoundMah":D
    nop

    .line 77
    invoke-virtual {v2, v3}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v7

    .line 76
    invoke-virtual {v1, v7}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v7

    .line 78
    invoke-virtual {v7, v5, v6, v9, v10}, Landroid/os/BatteryUsageStats$Builder;->setDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v7

    .line 80
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v7, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 82
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v7

    .line 83
    .local v7, "batteryTimeRemainingMs":J
    const-wide/16 v11, -0x1

    cmp-long v15, v7, v11

    if-eqz v15, :cond_1

    .line 84
    move/from16 v16, v4

    .end local v4    # "batteryCapacityMah":I
    .local v16, "batteryCapacityMah":I
    div-long v3, v7, v13

    invoke-virtual {v1, v3, v4}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    goto :goto_0

    .line 83
    .end local v16    # "batteryCapacityMah":I
    .restart local v4    # "batteryCapacityMah":I
    :cond_1
    move/from16 v16, v4

    .line 87
    .end local v4    # "batteryCapacityMah":I
    .restart local v16    # "batteryCapacityMah":I
    :goto_0
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v3

    .line 88
    .local v3, "chargeTimeRemainingMs":J
    cmp-long v11, v3, v11

    if-eqz v11, :cond_2

    .line 89
    div-long v11, v3, v13

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 92
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v17

    div-long v17, v17, v13

    .line 93
    .local v17, "dischargeMah":J
    const-wide/16 v11, 0x0

    cmp-long v11, v17, v11

    if-nez v11, :cond_3

    .line 94
    add-double v11, v5, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-long v11, v11

    .end local v17    # "dischargeMah":J
    .local v11, "dischargeMah":J
    goto :goto_1

    .line 93
    .end local v11    # "dischargeMah":J
    .restart local v17    # "dischargeMah":J
    :cond_3
    move-wide/from16 v11, v17

    .line 98
    .end local v17    # "dischargeMah":J
    .restart local v11    # "dischargeMah":J
    :goto_1
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v13

    long-to-double v14, v11

    .line 100
    invoke-virtual {v13, v14, v15}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 101
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 48
    const/4 v0, 0x1

    return v0
.end method
