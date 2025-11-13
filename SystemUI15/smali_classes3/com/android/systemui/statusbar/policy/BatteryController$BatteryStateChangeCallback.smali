.class public interface abstract Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    return-void
.end method

.method public onBatteryLevelChanged(IZZIIIZI)V
    .locals 0

    return-void
.end method

.method public onBatteryUnknownStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIsBatteryDefenderChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIsIncompatibleChargingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onWirelessChargingChanged(Z)V
    .locals 0

    return-void
.end method
