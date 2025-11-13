.class public final Lcom/android/settingslib/mobile/dataservice/UiccInfoDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;

    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->subId:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->physicalSlotIndex:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->logicalSlotIndex:I

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardId:I

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isEuicc:Z

    int-to-long v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isMultipleEnabledProfilesSupported:Z

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardState:I

    int-to-long v0, p0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isRemovable:Z

    int-to-long v0, p0

    const/16 p0, 0x8

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isActive:Z

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->portIndex:I

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `uiccInfo` (`sudId`,`physicalSlotIndex`,`logicalSlotIndex`,`cardId`,`isEuicc`,`isMultipleEnabledProfilesSupported`,`cardState`,`isRemovable`,`isActive`,`portIndex`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
