.class public final Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoDao_Impl$1;
.super Landroidx/room/EntityInsertAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->simSlotIndex:I

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierId:I

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->displayName:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->carrierName:Ljava/lang/String;

    const/4 v0, 0x5

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_2
    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->dataRoaming:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mcc:Ljava/lang/String;

    const/4 v0, 0x7

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_3
    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->mnc:Ljava/lang/String;

    const/16 v0, 0x8

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_4
    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->countryIso:Ljava/lang/String;

    const/16 v0, 0x9

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_5
    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->cardId:I

    int-to-long v0, p0

    const/16 p0, 0xb

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->portIndex:I

    int-to-long v0, p0

    const/16 p0, 0xc

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    int-to-long v0, p0

    const/16 p0, 0xd

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->groupUUID:Ljava/lang/String;

    const/16 v0, 0xe

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_6
    iget p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subscriptionType:I

    int-to-long v0, p0

    const/16 p0, 0xf

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    const/16 v0, 0x10

    if-nez p0, :cond_7

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_7
    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isSubscriptionVisible:Z

    int-to-long v0, p0

    const/16 p0, 0x11

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->formattedPhoneNumber:Ljava/lang/String;

    const/16 v0, 0x12

    if-nez p0, :cond_8

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_8
    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isFirstRemovableSubscription:Z

    int-to-long v0, p0

    const/16 p0, 0x13

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isDefaultSubscriptionSelection:Z

    int-to-long v0, p0

    const/16 p0, 0x14

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    int-to-long v0, p0

    const/16 p0, 0x15

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isUsableSubscription:Z

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveSubscriptionId:Z

    int-to-long v0, p0

    const/16 p0, 0x17

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isAvailableSubscription:Z

    int-to-long v0, p0

    const/16 p0, 0x18

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveDataSubscriptionId:Z

    int-to-long v0, p0

    const/16 p0, 0x19

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `subscriptionInfo` (`sudId`,`simSlotIndex`,`carrierId`,`displayName`,`carrierName`,`dataRoaming`,`mcc`,`mnc`,`countryIso`,`isEmbedded`,`cardId`,`portIndex`,`isOpportunistic`,`groupUUID`,`subscriptionType`,`uniqueName`,`isSubscriptionVisible`,`getFormattedPhoneNumber`,`isFirstRemovableSubscription`,`isDefaultSubscriptionSelection`,`isValidSubscription`,`isUsableSubscription`,`isActiveSubscription`,`isAvailableSubscription`,`isActiveDataSubscriptionId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0
.end method
