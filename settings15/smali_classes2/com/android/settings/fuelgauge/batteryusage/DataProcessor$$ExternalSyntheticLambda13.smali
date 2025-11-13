.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/os/UidBatteryConsumer;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result p0

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getRealUid(Landroid/os/UidBatteryConsumer;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
