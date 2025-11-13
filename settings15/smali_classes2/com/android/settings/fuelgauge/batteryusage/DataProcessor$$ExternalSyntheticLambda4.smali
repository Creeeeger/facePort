.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/os/BatteryUsageStats;


# direct methods
.method public synthetic constructor <init>(Landroid/os/BatteryUsageStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda4;->f$0:Landroid/os/BatteryUsageStats;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda4;->f$0:Landroid/os/BatteryUsageStats;

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, ""

    const-string v3, "packageName"

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    iget v4, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    int-to-long v5, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "uid"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "userId"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "consumerType"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const-string v4, "fake_package"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "timestamp"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "isFullChargeCycleStart"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->-$$Nest$msetBatteryLevel(Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;)V

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->-$$Nest$msetBatteryStatus(Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;)V

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->-$$Nest$msetBatteryHealth(Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;)V

    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v7, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {v7, v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetDeviceBatteryState(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;)V

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v5, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetBootTimestamp(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v7, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {v7, v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetZoneId(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    if-eqz p0, :cond_a

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v5, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    iget-boolean v7, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIsHidden:Z

    invoke-static {v5, v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetIsHidden(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;Z)V

    iget-object v5, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v2, v5

    :cond_2
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v5, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {v5, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetAppLabel(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetTotalPower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V

    iget-wide v7, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V

    iget-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    const-wide/16 v7, 0x0

    if-eqz p0, :cond_3

    iget-wide v9, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForeground:D

    goto :goto_2

    :cond_3
    move-wide v9, v7

    :goto_2
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v9, v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetForegroundUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V

    iget-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    if-eqz p0, :cond_4

    iget-wide v9, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForegroundService:D

    goto :goto_3

    :cond_4
    move-wide v9, v7

    :goto_3
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v9, v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetForegroundServiceUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V

    iget-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    if-eqz p0, :cond_5

    iget-wide v9, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInBackground:D

    goto :goto_4

    :cond_5
    move-wide v9, v7

    :goto_4
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v9, v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetBackgroundUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V

    iget-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    if-eqz p0, :cond_6

    iget-wide v7, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInCached:D

    :cond_6
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetCachedUsageConsumePower(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V

    iget-wide v7, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPercent:D

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetPercentOfTotal(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;D)V

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    iget v2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPowerComponentId:I

    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetDrainType(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;I)V

    iget-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    if-eqz p0, :cond_7

    iget-wide v7, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    goto :goto_5

    :cond_7
    iget-wide v7, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUsageDurationMs:J

    :goto_5
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetForegroundUsageTimeInMs(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;J)V

    iget-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    if-eqz p0, :cond_8

    iget-wide v7, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundServiceMs:J

    goto :goto_6

    :cond_8
    move-wide v7, v3

    :goto_6
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetForegroundServiceUsageTimeInMs(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;J)V

    iget-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    if-eqz p0, :cond_9

    iget-wide v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    :cond_9
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-static {p0, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->-$$Nest$msetBackgroundUsageTimeInMs(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;J)V

    :cond_a
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v2, "batteryInformation"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "batteryInformationDebug"

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    return-object v0
.end method
