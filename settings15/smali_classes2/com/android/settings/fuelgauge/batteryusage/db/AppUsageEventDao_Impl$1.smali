.class public final Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->mId:J

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x2

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->uid:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x3

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->userId:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x4

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->timestamp:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->appUsageEventType:I

    int-to-long v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x6

    iget-object v0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    iget p0, p2, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->instanceId:I

    int-to-long v0, p0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x8

    iget-object p2, p2, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->taskRootPackageName:Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `AppUsageEventEntity` (`mId`,`uid`,`userId`,`timestamp`,`appUsageEventType`,`packageName`,`instanceId`,`taskRootPackageName`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object p0
.end method
