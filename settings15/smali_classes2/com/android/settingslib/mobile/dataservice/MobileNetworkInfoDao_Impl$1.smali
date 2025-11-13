.class public final Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryEnabled:Z

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryVisible:Z

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isMobileDataEnabled:Z

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isCdmaOptions:Z

    int-to-long v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isGsmOptions:Z

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isWorldMode:Z

    int-to-long v0, p0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->shouldDisplayNetworkSelectOptions:Z

    int-to-long v0, p0

    const/16 p0, 0x8

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isTdscdmaSupported:Z

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->activeNetworkIsCellular:Z

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->showToggleForPhysicalSim:Z

    int-to-long v0, p0

    const/16 p0, 0xb

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isDataRoamingEnabled:Z

    int-to-long v0, p0

    const/16 p0, 0xc

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `MobileNetworkInfo` (`subId`,`isContactDiscoveryEnabled`,`isContactDiscoveryVisible`,`isMobileDataEnabled`,`isCdmaOptions`,`isGsmOptions`,`isWorldMode`,`shouldDisplayNetworkSelectOptions`,`isTdscdmaSupported`,`activeNetworkIsCellular`,`showToggleForPhysicalSim`,`isDataRoamingEnabled`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
