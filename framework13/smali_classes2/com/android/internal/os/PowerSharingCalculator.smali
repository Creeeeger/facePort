.class public Lcom/android/internal/os/PowerSharingCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "PowerSharingCalculator.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 13
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 13
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 25
    move-object v0, p2

    const/4 v1, 0x0

    .line 26
    .local v1, "statsType":I
    const/4 v2, 0x1

    .line 27
    .local v2, "powerModel":I
    const/4 v3, 0x0

    move-wide/from16 v4, p3

    invoke-virtual {p2, v4, v5, v3}, Landroid/os/BatteryStats;->getTxPowerSharingTime(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 29
    .local v6, "powerSharingTimeMs":J
    invoke-virtual {p2, v3}, Landroid/os/BatteryStats;->getTxSharingDischargeAmount(I)J

    move-result-wide v8

    long-to-double v8, v8

    .line 31
    .local v8, "powerSharingPower":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-eqz v10, :cond_0

    .line 32
    move-object v10, p1

    invoke-virtual {p1, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    const/4 v11, 0x1

    .line 34
    const/16 v12, 0x12

    invoke-virtual {v3, v12, v8, v9, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 36
    invoke-virtual {v3, v12, v6, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    goto :goto_0

    .line 31
    :cond_0
    move-object v10, p1

    .line 39
    :goto_0
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 19
    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
