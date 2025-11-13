.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->QUERY_DURATION_HOURS:Ljava/time/Duration;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
