.class public abstract Lcom/android/internal/telephony/ISub$Stub;
.super Landroid/os/Binder;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISub$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISub"

.field static final blacklist TRANSACTION_addSubInfo:I = 0xd

.field static final greylist-max-o TRANSACTION_addSubInfoRecord:I = 0xc

.field static final blacklist TRANSACTION_addSubscriptionsIntoGroup:I = 0x19

.field static final blacklist TRANSACTION_canDisablePhysicalSubscription:I = 0x2f

.field static final greylist-max-o TRANSACTION_clearSubInfo:I = 0x1e

.field static final blacklist TRANSACTION_createSubscriptionGroup:I = 0x14

.field static final greylist-max-o TRANSACTION_getAccessibleSubscriptionInfoList:I = 0xa

.field static final blacklist TRANSACTION_getActiveDataSubscriptionId:I = 0x2e

.field static final greylist-max-o TRANSACTION_getActiveSubIdList:I = 0x26

.field static final greylist-max-o TRANSACTION_getActiveSubInfoCount:I = 0x7

.field static final greylist-max-o TRANSACTION_getActiveSubInfoCountMax:I = 0x8

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoForIccId:I = 0x4

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoForSimSlotIndex:I = 0x5

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoList:I = 0x6

.field static final greylist-max-o TRANSACTION_getAllSubInfoCount:I = 0x2

.field static final greylist-max-o TRANSACTION_getAllSubInfoList:I = 0x1

.field static final greylist-max-o TRANSACTION_getAvailableSubscriptionInfoList:I = 0x9

.field static final greylist-max-o TRANSACTION_getDefaultDataSubId:I = 0x20

.field static final greylist-max-o TRANSACTION_getDefaultSmsSubId:I = 0x24

.field static final greylist-max-o TRANSACTION_getDefaultSubId:I = 0x1d

.field static final greylist-max-o TRANSACTION_getDefaultVoiceSubId:I = 0x22

.field static final blacklist TRANSACTION_getEnabledSubscriptionId:I = 0x2b

.field static final blacklist TRANSACTION_getOpportunisticSubscriptions:I = 0x17

.field static final greylist-max-o TRANSACTION_getPhoneId:I = 0x1f

.field static final blacklist TRANSACTION_getPhoneNumber:I = 0x33

.field static final blacklist TRANSACTION_getPhoneNumberFromFirstAvailableSource:I = 0x34

.field static final blacklist TRANSACTION_getPreferredDataSubscriptionId:I = 0x16

.field static final greylist-max-o TRANSACTION_getSimStateForSlotIndex:I = 0x2c

.field static final greylist-max-o TRANSACTION_getSlotIndex:I = 0x1b

.field static final greylist-max-o TRANSACTION_getSubId:I = 0x1c

.field static final greylist-max-o TRANSACTION_getSubscriptionProperty:I = 0x28

.field static final blacklist TRANSACTION_getSubscriptionsInGroup:I = 0x1a

.field static final greylist-max-o TRANSACTION_isActiveSubId:I = 0x2d

.field static final blacklist TRANSACTION_isSubscriptionEnabled:I = 0x2a

.field static final blacklist TRANSACTION_phoneAccountIsRegistered:I = 0x37

.field static final blacklist TRANSACTION_removeSubInfo:I = 0xe

.field static final blacklist TRANSACTION_removeSubscriptionsFromGroup:I = 0x18

.field static final greylist-max-o TRANSACTION_requestEmbeddedSubscriptionInfoListRefresh:I = 0xb

.field static final greylist-max-o TRANSACTION_setDataRoaming:I = 0x12

.field static final greylist-max-o TRANSACTION_setDefaultDataSubId:I = 0x21

.field static final greylist-max-o TRANSACTION_setDefaultSmsSubId:I = 0x25

.field static final greylist-max-o TRANSACTION_setDefaultVoiceSubId:I = 0x23

.field static final blacklist TRANSACTION_setDeviceToDeviceStatusSharing:I = 0x31

.field static final blacklist TRANSACTION_setDeviceToDeviceStatusSharingContacts:I = 0x32

.field static final greylist-max-o TRANSACTION_setDisplayNameUsingSrc:I = 0x10

.field static final greylist-max-o TRANSACTION_setDisplayNumber:I = 0x11

.field static final greylist-max-o TRANSACTION_setIconTint:I = 0xf

.field static final blacklist TRANSACTION_setOpportunistic:I = 0x13

.field static final blacklist TRANSACTION_setPhoneNumber:I = 0x35

.field static final blacklist TRANSACTION_setPreferredDataSubscriptionId:I = 0x15

.field static final blacklist TRANSACTION_setSubscriptionEnabled:I = 0x29

.field static final greylist-max-o TRANSACTION_setSubscriptionProperty:I = 0x27

.field static final blacklist TRANSACTION_setUiccApplicationsEnabled:I = 0x30

.field static final blacklist TRANSACTION_setUsageSetting:I = 0x36


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 404
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 405
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 413
    if-nez p0, :cond_0

    .line 414
    const/4 v0, 0x0

    return-object v0

    .line 416
    :cond_0
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 417
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_1

    .line 418
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISub;

    return-object v1

    .line 420
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISub$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 429
    packed-switch p0, :pswitch_data_0

    .line 653
    const/4 v0, 0x0

    return-object v0

    .line 649
    :pswitch_0
    const-string/jumbo v0, "phoneAccountIsRegistered"

    return-object v0

    .line 645
    :pswitch_1
    const-string/jumbo v0, "setUsageSetting"

    return-object v0

    .line 641
    :pswitch_2
    const-string/jumbo v0, "setPhoneNumber"

    return-object v0

    .line 637
    :pswitch_3
    const-string/jumbo v0, "getPhoneNumberFromFirstAvailableSource"

    return-object v0

    .line 633
    :pswitch_4
    const-string/jumbo v0, "getPhoneNumber"

    return-object v0

    .line 629
    :pswitch_5
    const-string/jumbo v0, "setDeviceToDeviceStatusSharingContacts"

    return-object v0

    .line 625
    :pswitch_6
    const-string/jumbo v0, "setDeviceToDeviceStatusSharing"

    return-object v0

    .line 621
    :pswitch_7
    const-string/jumbo v0, "setUiccApplicationsEnabled"

    return-object v0

    .line 617
    :pswitch_8
    const-string v0, "canDisablePhysicalSubscription"

    return-object v0

    .line 613
    :pswitch_9
    const-string v0, "getActiveDataSubscriptionId"

    return-object v0

    .line 609
    :pswitch_a
    const-string/jumbo v0, "isActiveSubId"

    return-object v0

    .line 605
    :pswitch_b
    const-string/jumbo v0, "getSimStateForSlotIndex"

    return-object v0

    .line 601
    :pswitch_c
    const-string v0, "getEnabledSubscriptionId"

    return-object v0

    .line 597
    :pswitch_d
    const-string/jumbo v0, "isSubscriptionEnabled"

    return-object v0

    .line 593
    :pswitch_e
    const-string/jumbo v0, "setSubscriptionEnabled"

    return-object v0

    .line 589
    :pswitch_f
    const-string/jumbo v0, "getSubscriptionProperty"

    return-object v0

    .line 585
    :pswitch_10
    const-string/jumbo v0, "setSubscriptionProperty"

    return-object v0

    .line 581
    :pswitch_11
    const-string v0, "getActiveSubIdList"

    return-object v0

    .line 577
    :pswitch_12
    const-string/jumbo v0, "setDefaultSmsSubId"

    return-object v0

    .line 573
    :pswitch_13
    const-string v0, "getDefaultSmsSubId"

    return-object v0

    .line 569
    :pswitch_14
    const-string/jumbo v0, "setDefaultVoiceSubId"

    return-object v0

    .line 565
    :pswitch_15
    const-string v0, "getDefaultVoiceSubId"

    return-object v0

    .line 561
    :pswitch_16
    const-string/jumbo v0, "setDefaultDataSubId"

    return-object v0

    .line 557
    :pswitch_17
    const-string v0, "getDefaultDataSubId"

    return-object v0

    .line 553
    :pswitch_18
    const-string/jumbo v0, "getPhoneId"

    return-object v0

    .line 549
    :pswitch_19
    const-string v0, "clearSubInfo"

    return-object v0

    .line 545
    :pswitch_1a
    const-string v0, "getDefaultSubId"

    return-object v0

    .line 541
    :pswitch_1b
    const-string/jumbo v0, "getSubId"

    return-object v0

    .line 537
    :pswitch_1c
    const-string/jumbo v0, "getSlotIndex"

    return-object v0

    .line 533
    :pswitch_1d
    const-string/jumbo v0, "getSubscriptionsInGroup"

    return-object v0

    .line 529
    :pswitch_1e
    const-string v0, "addSubscriptionsIntoGroup"

    return-object v0

    .line 525
    :pswitch_1f
    const-string/jumbo v0, "removeSubscriptionsFromGroup"

    return-object v0

    .line 521
    :pswitch_20
    const-string/jumbo v0, "getOpportunisticSubscriptions"

    return-object v0

    .line 517
    :pswitch_21
    const-string/jumbo v0, "getPreferredDataSubscriptionId"

    return-object v0

    .line 513
    :pswitch_22
    const-string/jumbo v0, "setPreferredDataSubscriptionId"

    return-object v0

    .line 509
    :pswitch_23
    const-string v0, "createSubscriptionGroup"

    return-object v0

    .line 505
    :pswitch_24
    const-string/jumbo v0, "setOpportunistic"

    return-object v0

    .line 501
    :pswitch_25
    const-string/jumbo v0, "setDataRoaming"

    return-object v0

    .line 497
    :pswitch_26
    const-string/jumbo v0, "setDisplayNumber"

    return-object v0

    .line 493
    :pswitch_27
    const-string/jumbo v0, "setDisplayNameUsingSrc"

    return-object v0

    .line 489
    :pswitch_28
    const-string/jumbo v0, "setIconTint"

    return-object v0

    .line 485
    :pswitch_29
    const-string/jumbo v0, "removeSubInfo"

    return-object v0

    .line 481
    :pswitch_2a
    const-string v0, "addSubInfo"

    return-object v0

    .line 477
    :pswitch_2b
    const-string v0, "addSubInfoRecord"

    return-object v0

    .line 473
    :pswitch_2c
    const-string/jumbo v0, "requestEmbeddedSubscriptionInfoListRefresh"

    return-object v0

    .line 469
    :pswitch_2d
    const-string v0, "getAccessibleSubscriptionInfoList"

    return-object v0

    .line 465
    :pswitch_2e
    const-string v0, "getAvailableSubscriptionInfoList"

    return-object v0

    .line 461
    :pswitch_2f
    const-string v0, "getActiveSubInfoCountMax"

    return-object v0

    .line 457
    :pswitch_30
    const-string v0, "getActiveSubInfoCount"

    return-object v0

    .line 453
    :pswitch_31
    const-string v0, "getActiveSubscriptionInfoList"

    return-object v0

    .line 449
    :pswitch_32
    const-string v0, "getActiveSubscriptionInfoForSimSlotIndex"

    return-object v0

    .line 445
    :pswitch_33
    const-string v0, "getActiveSubscriptionInfoForIccId"

    return-object v0

    .line 441
    :pswitch_34
    const-string v0, "getActiveSubscriptionInfo"

    return-object v0

    .line 437
    :pswitch_35
    const-string v0, "getAllSubInfoCount"

    return-object v0

    .line 433
    :pswitch_36
    const-string v0, "getAllSubInfoList"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 424
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2562
    const/16 v0, 0x36

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 660
    invoke-static {p1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.telephony.ISub"

    .line 665
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 666
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 676
    packed-switch v7, :pswitch_data_1

    .line 1303
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 672
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 673
    return v11

    .line 1295
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1296
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1297
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->phoneAccountIsRegistered(I)V

    .line 1298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    goto/16 :goto_0

    .line 1281
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1283
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1285
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1286
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1287
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setUsageSetting(IILjava/lang/String;)I

    move-result v3

    .line 1288
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    goto/16 :goto_0

    .line 1264
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1266
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1268
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1270
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1272
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1273
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1274
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISub$Stub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    goto/16 :goto_0

    .line 1250
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1252
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1254
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1255
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1257
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1259
    goto/16 :goto_0

    .line 1234
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1236
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1238
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1240
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1241
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1243
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1245
    goto/16 :goto_0

    .line 1222
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1225
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1226
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result v2

    .line 1227
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    goto/16 :goto_0

    .line 1210
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1212
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1213
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1214
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharing(II)I

    move-result v2

    .line 1215
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    goto/16 :goto_0

    .line 1198
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1200
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1201
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1202
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setUiccApplicationsEnabled(ZI)I

    move-result v2

    .line 1203
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    goto/16 :goto_0

    .line 1190
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->canDisablePhysicalSubscription()Z

    move-result v0

    .line 1191
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1193
    goto/16 :goto_0

    .line 1183
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveDataSubscriptionId()I

    move-result v0

    .line 1184
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    goto/16 :goto_0

    .line 1170
    .end local v0    # "_result":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1172
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1175
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1177
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1179
    goto/16 :goto_0

    .line 1160
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1161
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1162
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 1163
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    goto/16 :goto_0

    .line 1150
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1151
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getEnabledSubscriptionId(I)I

    move-result v1

    .line 1153
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    goto/16 :goto_0

    .line 1140
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1141
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionEnabled(I)Z

    move-result v1

    .line 1143
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1145
    goto/16 :goto_0

    .line 1128
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1130
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1131
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionEnabled(ZI)Z

    move-result v2

    .line 1133
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1135
    goto/16 :goto_0

    .line 1112
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1114
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1118
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1119
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1121
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1123
    goto/16 :goto_0

    .line 1098
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1100
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1103
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1105
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    goto/16 :goto_0

    .line 1088
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1089
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubIdList(Z)[I

    move-result-object v1

    .line 1091
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1093
    goto/16 :goto_0

    .line 1079
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":[I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1080
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultSmsSubId(I)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    goto/16 :goto_0

    .line 1071
    .end local v0    # "_arg0":I
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubId()I

    move-result v0

    .line 1072
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    goto/16 :goto_0

    .line 1063
    .end local v0    # "_result":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1064
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultVoiceSubId(I)V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    goto/16 :goto_0

    .line 1055
    .end local v0    # "_arg0":I
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubId()I

    move-result v0

    .line 1056
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    goto/16 :goto_0

    .line 1047
    .end local v0    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1048
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1049
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubId(I)V

    .line 1050
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    goto/16 :goto_0

    .line 1039
    .end local v0    # "_arg0":I
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultDataSubId()I

    move-result v0

    .line 1040
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    goto/16 :goto_0

    .line 1030
    .end local v0    # "_result":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1031
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneId(I)I

    move-result v1

    .line 1033
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    goto/16 :goto_0

    .line 1022
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->clearSubInfo()I

    move-result v0

    .line 1023
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    goto/16 :goto_0

    .line 1015
    .end local v0    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubId()I

    move-result v0

    .line 1016
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    goto/16 :goto_0

    .line 1006
    .end local v0    # "_result":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1007
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSubId(I)[I

    move-result-object v1

    .line 1009
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1011
    goto/16 :goto_0

    .line 996
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 997
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSlotIndex(I)I

    move-result v1

    .line 999
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    goto/16 :goto_0

    .line 982
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1e
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 984
    .local v0, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 987
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 989
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 991
    goto/16 :goto_0

    .line 969
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 971
    .local v0, "_arg0":[I
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 973
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 974
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    goto/16 :goto_0

    .line 956
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 958
    .restart local v0    # "_arg0":[I
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 960
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 961
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    goto/16 :goto_0

    .line 944
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 949
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 951
    goto/16 :goto_0

    .line 936
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getPreferredDataSubscriptionId()I

    move-result v0

    .line 937
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    goto/16 :goto_0

    .line 924
    .end local v0    # "_result":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 926
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 928
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    move-result-object v2

    .line 929
    .local v2, "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 930
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    .line 931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    goto/16 :goto_0

    .line 912
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 914
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 917
    .local v2, "_result":Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 919
    goto/16 :goto_0

    .line 898
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/ParcelUuid;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 900
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 902
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setOpportunistic(ZILjava/lang/String;)I

    move-result v3

    .line 905
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    goto/16 :goto_0

    .line 886
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 888
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 889
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDataRoaming(II)I

    move-result v2

    .line 891
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    goto/16 :goto_0

    .line 874
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 877
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v2

    .line 879
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    goto/16 :goto_0

    .line 860
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 862
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 864
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 865
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 866
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result v3

    .line 867
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    goto/16 :goto_0

    .line 848
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 850
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 851
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setIconTint(II)I

    move-result v2

    .line 853
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    goto/16 :goto_0

    .line 836
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 839
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->removeSubInfo(Ljava/lang/String;I)I

    move-result v2

    .line 841
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    goto/16 :goto_0

    .line 820
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 822
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 826
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 827
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 829
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    goto/16 :goto_0

    .line 808
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 811
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfoRecord(Ljava/lang/String;I)I

    move-result v2

    .line 813
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    goto/16 :goto_0

    .line 800
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 801
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 802
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->requestEmbeddedSubscriptionInfoListRefresh(I)V

    .line 803
    goto/16 :goto_0

    .line 790
    .end local v0    # "_arg0":I
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 793
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 795
    goto/16 :goto_0

    .line 778
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 780
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 783
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 785
    goto/16 :goto_0

    .line 770
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCountMax()I

    move-result v0

    .line 771
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    goto/16 :goto_0

    .line 759
    .end local v0    # "_result":I
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 764
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    goto/16 :goto_0

    .line 747
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 749
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 750
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 752
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 754
    goto/16 :goto_0

    .line 733
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 735
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 737
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 740
    .local v3, "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 742
    goto :goto_0

    .line 719
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 723
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 724
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 726
    .restart local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 728
    goto :goto_0

    .line 705
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 707
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 709
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 710
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 712
    .restart local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 714
    goto :goto_0

    .line 693
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 696
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 698
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    goto :goto_0

    .line 681
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 686
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 688
    nop

    .line 1306
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
