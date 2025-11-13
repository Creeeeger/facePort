.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    iget-wide p0, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method
