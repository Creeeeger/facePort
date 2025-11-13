.class public final Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotEntity;

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotEntity;->mId:J

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x2

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotEntity;->timestamp:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x3

    iget-object p2, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryUsageSlotEntity;->batteryUsageSlot:Ljava/lang/String;

    if-nez p2, :cond_0

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `BatteryUsageSlotEntity` (`mId`,`timestamp`,`batteryUsageSlot`) VALUES (nullif(?, 0),?,?)"

    return-object p0
.end method
