.class public final Lcom/android/settings/fuelgauge/BatteryInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public batteryStatus:I

.field public chargeLabel:Ljava/lang/CharSequence;

.field public discharging:Z

.field public isBatteryDefender:Z

.field public isFastCharging:Z

.field public mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field public mCharging:Z

.field public pluggedStatus:I

.field public remainingLabel:Ljava/lang/CharSequence;

.field public statusLabel:Ljava/lang/String;


# direct methods
.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settingslib/fuelgauge/Estimate;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    move-object/from16 v7, p2

    iput-object v7, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v8

    iput v8, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v8}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->pluggedStatus:I

    if-eqz v8, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    iput-boolean v8, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    const-string v8, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    iput-boolean v8, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isBatteryDefender:Z

    invoke-static {v0, v1, v4}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    const-string v8, "status"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryStatus:I

    const-string v10, "max_charging_current"

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v12, "max_charging_voltage"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-gtz v12, :cond_2

    const v12, 0x4c4b40

    :cond_2
    if-lez v10, :cond_3

    int-to-double v10, v10

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v10, v13

    int-to-double v6, v12

    mul-double/2addr v10, v6

    mul-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v11, v6

    :cond_3
    if-gtz v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-ge v11, v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x7f0b0010

    goto :goto_2

    :cond_6
    const v7, 0x7f0b000f

    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-le v11, v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v9

    :goto_4
    iput-boolean v6, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isFastCharging:Z

    iget-boolean v6, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isBatteryDefender:Z

    const-string v7, "No feature factory configured"

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isBatteryDefender:Z

    iput-boolean v6, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isBatteryDefender:Z

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    iget-boolean v6, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-nez v6, :cond_f

    sget v1, Lcom/android/settingslib/utils/PowerUtil;->$r8$clinit:I

    move-object/from16 v1, p3

    iget-wide v6, v1, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v6, v13

    cmp-long v1, v6, v11

    if-lez v1, :cond_e

    div-long/2addr v6, v13

    cmp-long v1, v6, v11

    if-gtz v1, :cond_a

    goto :goto_6

    :cond_a
    sget-wide v10, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    cmp-long v4, v6, v10

    if-gtz v4, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v6

    sget-wide v12, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    invoke-static {v10, v11, v12, v13}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide v10

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f141c62

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_b
    sget-wide v10, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    invoke-static {v6, v7, v10, v11}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide v10

    long-to-double v10, v10

    invoke-static {v0, v10, v11, v9, v9}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v8, 0x7f141c7d

    invoke-virtual {v0, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_6
    iput-object v10, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    iput-object v10, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    if-gtz v1, :cond_c

    goto/16 :goto_12

    :cond_c
    sget-wide v10, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    cmp-long v1, v6, v10

    if-gtz v1, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v6

    sget-wide v6, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    invoke-static {v8, v9, v6, v7}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide v6

    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f141c87

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_12

    :cond_d
    sget-wide v10, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    invoke-static {v6, v7, v10, v11}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v0, v6, v7, v9, v9}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f141c82

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_12

    :cond_e
    iput-object v10, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    iget-object v0, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object v0, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto/16 :goto_12

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getChargeTimeRemainingMs()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v11, "time_to_full_millis"

    const-wide/16 v9, -0x1

    invoke-static {v15, v11, v9, v10}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v9, v9, v13

    if-eqz v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v11, v13, v14}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_10
    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    iget v11, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->pluggedStatus:I

    const/16 v15, 0x8

    const/4 v12, 0x3

    if-ne v11, v15, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v15, "dock_defender_bypass"

    invoke-static {v11, v15, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_11

    const/4 v9, 0x2

    goto :goto_8

    :cond_11
    iget-boolean v9, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isBatteryDefender:Z

    if-eqz v9, :cond_13

    sget-object v9, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getPowerUsageFeatureProvider()Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_12
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_7
    iget-boolean v9, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isBatteryDefender:Z

    if-nez v9, :cond_14

    const/4 v9, 0x0

    goto :goto_8

    :cond_14
    move v9, v12

    :goto_8
    iget-boolean v10, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isBatteryDefender:Z

    const/4 v11, 0x5

    if-eqz v10, :cond_15

    if-eq v8, v11, :cond_15

    if-eq v9, v12, :cond_16

    :cond_15
    const/4 v10, 0x1

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v1, 0x0

    goto :goto_b

    :goto_a
    if-ne v9, v10, :cond_17

    goto :goto_9

    :goto_b
    iput-object v1, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    iget-object v1, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f141c5a

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto/16 :goto_12

    :cond_17
    sget-object v16, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v16, :cond_25

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getBatterySettingsFeatureProvider()Lcom/android/settings/fuelgauge/BatterySettingsFeatureProviderImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v16, 0x0

    cmp-long v7, v13, v16

    if-lez v7, :cond_18

    if-eq v8, v11, :cond_18

    if-eq v9, v12, :cond_19

    :cond_18
    const/4 v8, 0x2

    if-ne v9, v8, :cond_22

    :cond_19
    sget v1, Lcom/android/settingslib/utils/PowerUtil;->$r8$clinit:I

    iget-boolean v1, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isFastCharging:Z

    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz v1, :cond_1a

    const v1, 0x7f141c66

    goto :goto_c

    :cond_1a
    const v1, 0x7f141c58

    goto :goto_c

    :cond_1b
    const v1, 0x7f141c57

    :goto_c
    if-gtz v7, :cond_1c

    const/4 v10, 0x0

    goto :goto_f

    :cond_1c
    iget-boolean v4, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isFastCharging:Z

    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v6

    if-eqz v6, :cond_1e

    if-eqz v4, :cond_1d

    const v4, 0x7f141c7e

    goto :goto_d

    :cond_1d
    const v4, 0x7f141c7a

    :goto_d
    invoke-static {v0, v13, v14, v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->getTargetTimeShortString(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_e
    move-object v10, v4

    goto :goto_f

    :cond_1e
    long-to-double v8, v13

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v8, v9, v6, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v8

    const v4, 0x7f141c79

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :goto_f
    iput-object v10, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-gtz v7, :cond_1f

    iget-object v0, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_10

    :cond_1f
    iget-object v4, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iget-boolean v6, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->isFastCharging:Z

    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-static {v0, v13, v14, v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->getTargetTimeShortString(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_20

    const v6, 0x7f1405b0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_20
    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_21
    long-to-double v6, v13

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v0, v6, v7, v9, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    iput-object v0, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto :goto_12

    :cond_22
    if-nez v9, :cond_23

    iget-object v1, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f141c59

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto :goto_12

    :cond_23
    invoke-static {v0, v1, v4}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    iget v1, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    const/16 v4, 0x64

    if-ne v1, v4, :cond_24

    iget-object v0, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_11

    :cond_24
    iget-object v1, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f141c56

    invoke-virtual {v6, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    iput-object v0, v5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_12
    const-string v0, "BatteryInfo"

    const-string v1, "time for getBatteryInfo"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final varargs parseBatteryHistory([Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {v2}, Landroid/os/BatteryUsageStats;->iterateBatteryStatsHistory()Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v2

    const/4 v6, 0x1

    move v15, v6

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v5

    const/4 v3, 0x7

    const/4 v4, 0x5

    if-eqz v5, :cond_7

    add-int/2addr v14, v6

    move-wide/from16 v21, v7

    if-eqz v15, :cond_0

    iget-wide v6, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v18, v6

    const/4 v15, 0x0

    :cond_0
    iget-byte v6, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v6, v4, :cond_2

    if-ne v6, v3, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v7, v21

    goto :goto_2

    :cond_2
    :goto_1
    iget-wide v3, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v6, 0x39ef8b000L

    add-long v7, v21, v6

    cmp-long v6, v3, v7

    if-gtz v6, :cond_3

    iget-wide v6, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v11, 0x493e0

    add-long v11, v18, v11

    cmp-long v6, v6, v11

    if-gez v6, :cond_4

    :cond_3
    const-wide/16 v16, 0x0

    :cond_4
    iget-wide v11, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/16 v6, 0x0

    cmp-long v8, v16, v6

    if-nez v8, :cond_5

    sub-long v6, v11, v18

    sub-long v16, v3, v6

    :cond_5
    move-wide v7, v3

    :goto_2
    invoke-virtual {v5}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v9, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    move v13, v14

    :cond_6
    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    move-wide/from16 v21, v7

    add-long v7, v21, v9

    sub-long/2addr v7, v11

    const/4 v2, 0x0

    :goto_3
    array-length v5, v1

    if-ge v2, v5, :cond_8

    aget-object v5, v1, v2

    iput-wide v7, v5, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndTimeMs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    cmp-long v2, v7, v16

    if-lez v2, :cond_14

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->iterateBatteryStatsHistory()Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v5

    if-eqz v5, :cond_14

    if-ge v2, v13, :cond_14

    invoke-virtual {v5}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v10, v8, v11

    add-long/2addr v10, v6

    sub-long v6, v10, v16

    const-wide/16 v14, 0x0

    cmp-long v12, v6, v14

    if-gez v12, :cond_9

    move-wide v6, v14

    :cond_9
    const/4 v12, 0x0

    :goto_5
    array-length v3, v1

    if-ge v12, v3, :cond_c

    aget-object v3, v1, v12

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v20, v6, v14

    if-eqz v20, :cond_b

    iget-wide v14, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 p0, v5

    iget-wide v4, v3, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndTimeMs:J

    move-wide/from16 v22, v6

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mTimePeriodMs:J

    sub-long/2addr v4, v6

    cmp-long v4, v14, v4

    if-gtz v4, :cond_a

    move-object/from16 v4, p0

    goto :goto_6

    :cond_a
    move-object/from16 v4, p0

    goto :goto_7

    :cond_b
    move-wide/from16 v22, v6

    move-object v4, v5

    :goto_6
    iget-byte v5, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v5, v3, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mLastPeriodBatteryLevel:B

    :goto_7
    iget-byte v5, v4, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v5, v3, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndBatteryLevel:B

    add-int/lit8 v12, v12, 0x1

    move-object v5, v4

    move-wide/from16 v6, v22

    const/4 v4, 0x5

    const-wide/16 v14, 0x0

    goto :goto_5

    :cond_c
    move-wide v6, v10

    const/4 v5, 0x7

    move-wide v11, v8

    goto :goto_c

    :cond_d
    move-object v4, v5

    iget-byte v3, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x5

    if-eq v3, v5, :cond_f

    const/4 v5, 0x7

    if-ne v3, v5, :cond_e

    goto :goto_8

    :cond_e
    move-wide v8, v6

    goto :goto_a

    :cond_f
    const/4 v5, 0x7

    :goto_8
    iget-wide v8, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v10, v8, v16

    if-ltz v10, :cond_10

    goto :goto_9

    :cond_10
    iget-wide v8, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v8, v8, v18

    add-long v8, v8, v16

    :goto_9
    iget-wide v11, v4, Landroid/os/BatteryStats$HistoryItem;->time:J

    :goto_a
    const/4 v4, 0x6

    if-eq v3, v4, :cond_12

    const/4 v4, 0x5

    if-ne v3, v4, :cond_11

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v14, 0x36ee80

    cmp-long v3, v6, v14

    if-lez v3, :cond_13

    :cond_11
    const/4 v3, 0x0

    :goto_b
    array-length v6, v1

    if-ge v3, v6, :cond_13

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v4, 0x5

    :cond_13
    move-wide v6, v8

    :goto_c
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto/16 :goto_4

    :cond_14
    const/4 v5, 0x0

    :goto_d
    array-length v0, v1

    if-ge v5, v0, :cond_15

    aget-object v0, v1, v5

    iget-byte v2, v0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mLastPeriodBatteryLevel:B

    iget-byte v3, v0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mEndBatteryLevel:B

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/settings/fuelgauge/batterytip/HighUsageDataParser;->mBatteryDrain:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_15
    return-void
.end method
