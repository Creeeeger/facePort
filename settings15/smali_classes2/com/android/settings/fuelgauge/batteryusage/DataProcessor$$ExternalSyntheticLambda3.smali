.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 8

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    iget-object p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    instance-of v0, p0, Landroid/os/UidBatteryConsumer;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUsageDurationMs:J

    :goto_0
    instance-of p0, p0, Landroid/os/UidBatteryConsumer;

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    iget-wide v4, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    iget-wide p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    const-wide/16 v6, 0x0

    cmpl-double p0, p0, v6

    if-gtz p0, :cond_3

    if-nez p0, :cond_2

    cmp-long p0, v0, v2

    if-nez p0, :cond_3

    cmp-long p0, v4, v2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0
.end method
