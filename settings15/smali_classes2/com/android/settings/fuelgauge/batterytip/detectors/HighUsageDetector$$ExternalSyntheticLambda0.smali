.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroid/os/UidBatteryConsumer;

    check-cast p2, Landroid/os/UidBatteryConsumer;

    invoke-virtual {p2}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method
