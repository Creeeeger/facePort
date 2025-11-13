.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getTimestamp()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getTimestamp()J

    move-result-wide v0

    sub-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
