.class public final Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->mId:J

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x2

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->timestamp:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->batteryEventType:I

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->batteryLevel:I

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `BatteryEventEntity` (`mId`,`timestamp`,`batteryEventType`,`batteryLevel`) VALUES (nullif(?, 0),?,?,?)"

    return-object p0
.end method
