.class public final Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->mId:J

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x2

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->uid:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x3

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->userId:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x4

    iget-object v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x5

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->timestamp:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->consumerType:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->isFullChargeCycleStart:Z

    int-to-long v0, p0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x8

    iget-object v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->batteryInformation:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    const/16 p0, 0x9

    iget-object p2, p2, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->batteryInformationDebug:Ljava/lang/String;

    if-nez p2, :cond_2

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, p0, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `BatteryState` (`mId`,`uid`,`userId`,`packageName`,`timestamp`,`consumerType`,`isFullChargeCycleStart`,`batteryInformation`,`batteryInformationDebug`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?)"

    return-object p0
.end method
