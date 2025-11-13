.class public abstract Landroid/nfc/INfcCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcCardEmulation"

.field static final blacklist TRANSACTION_disableAutoRouting:I = 0x11

.field static final blacklist TRANSACTION_enableAutoRouting:I = 0x10

.field static final greylist-max-o TRANSACTION_getAidGroupForService:I = 0x8

.field static final blacklist TRANSACTION_getAidSizeForServiceInPercent:I = 0x18

.field static final blacklist TRANSACTION_getPaymentDefaultServiceInfo:I = 0x1b

.field static final blacklist TRANSACTION_getPaymentPriority:I = 0x1a

.field static final blacklist TRANSACTION_getPreferredPaymentService:I = 0xe

.field static final greylist-max-o TRANSACTION_getServices:I = 0xa

.field static final blacklist TRANSACTION_getUsedAidTableSizeInPercent:I = 0x17

.field static final blacklist TRANSACTION_initializePaymentDefault:I = 0x19

.field static final blacklist TRANSACTION_isDefaultPaymentRegistered:I = 0x1d

.field static final greylist-max-o TRANSACTION_isDefaultServiceForAid:I = 0x2

.field static final greylist-max-o TRANSACTION_isDefaultServiceForCategory:I = 0x1

.field static final blacklist TRANSACTION_isRegisteredService:I = 0x16

.field static final greylist-max-o TRANSACTION_registerAidGroupForService:I = 0x5

.field static final blacklist TRANSACTION_registerService:I = 0x14

.field static final greylist-max-o TRANSACTION_removeAidGroupForService:I = 0x9

.field static final greylist-max-o TRANSACTION_setDefaultForNextTap:I = 0x4

.field static final greylist-max-o TRANSACTION_setDefaultServiceForCategory:I = 0x3

.field static final blacklist TRANSACTION_setLockPassword:I = 0x1c

.field static final blacklist TRANSACTION_setOffHostForService:I = 0x6

.field static final blacklist TRANSACTION_setOtherService:I = 0x12

.field static final greylist-max-o TRANSACTION_setPreferredService:I = 0xb

.field static final greylist-max-o TRANSACTION_supportsAidPrefixRegistration:I = 0xd

.field static final blacklist TRANSACTION_supportsAutoRouting:I = 0xf

.field static final blacklist TRANSACTION_unregisterOtherService:I = 0x15

.field static final blacklist TRANSACTION_unsetOffHostForService:I = 0x7

.field static final blacklist TRANSACTION_unsetOtherService:I = 0x13

.field static final greylist-max-o TRANSACTION_unsetPreferredService:I = 0xc


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 148
    const-string v0, "android.nfc.INfcCardEmulation"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcCardEmulation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 156
    if-nez p0, :cond_0

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    const-string v0, "android.nfc.INfcCardEmulation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 160
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcCardEmulation;

    if-eqz v1, :cond_1

    .line 161
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcCardEmulation;

    return-object v1

    .line 163
    :cond_1
    new-instance v1, Landroid/nfc/INfcCardEmulation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 172
    packed-switch p0, :pswitch_data_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 288
    :pswitch_0
    const-string v0, "isDefaultPaymentRegistered"

    return-object v0

    .line 284
    :pswitch_1
    const-string/jumbo v0, "setLockPassword"

    return-object v0

    .line 280
    :pswitch_2
    const-string v0, "getPaymentDefaultServiceInfo"

    return-object v0

    .line 276
    :pswitch_3
    const-string v0, "getPaymentPriority"

    return-object v0

    .line 272
    :pswitch_4
    const-string v0, "initializePaymentDefault"

    return-object v0

    .line 268
    :pswitch_5
    const-string v0, "getAidSizeForServiceInPercent"

    return-object v0

    .line 264
    :pswitch_6
    const-string v0, "getUsedAidTableSizeInPercent"

    return-object v0

    .line 260
    :pswitch_7
    const-string v0, "isRegisteredService"

    return-object v0

    .line 256
    :pswitch_8
    const-string/jumbo v0, "unregisterOtherService"

    return-object v0

    .line 252
    :pswitch_9
    const-string v0, "registerService"

    return-object v0

    .line 248
    :pswitch_a
    const-string/jumbo v0, "unsetOtherService"

    return-object v0

    .line 244
    :pswitch_b
    const-string/jumbo v0, "setOtherService"

    return-object v0

    .line 240
    :pswitch_c
    const-string v0, "disableAutoRouting"

    return-object v0

    .line 236
    :pswitch_d
    const-string v0, "enableAutoRouting"

    return-object v0

    .line 232
    :pswitch_e
    const-string/jumbo v0, "supportsAutoRouting"

    return-object v0

    .line 228
    :pswitch_f
    const-string v0, "getPreferredPaymentService"

    return-object v0

    .line 224
    :pswitch_10
    const-string/jumbo v0, "supportsAidPrefixRegistration"

    return-object v0

    .line 220
    :pswitch_11
    const-string/jumbo v0, "unsetPreferredService"

    return-object v0

    .line 216
    :pswitch_12
    const-string/jumbo v0, "setPreferredService"

    return-object v0

    .line 212
    :pswitch_13
    const-string v0, "getServices"

    return-object v0

    .line 208
    :pswitch_14
    const-string v0, "removeAidGroupForService"

    return-object v0

    .line 204
    :pswitch_15
    const-string v0, "getAidGroupForService"

    return-object v0

    .line 200
    :pswitch_16
    const-string/jumbo v0, "unsetOffHostForService"

    return-object v0

    .line 196
    :pswitch_17
    const-string/jumbo v0, "setOffHostForService"

    return-object v0

    .line 192
    :pswitch_18
    const-string v0, "registerAidGroupForService"

    return-object v0

    .line 188
    :pswitch_19
    const-string v0, "setDefaultForNextTap"

    return-object v0

    .line 184
    :pswitch_1a
    const-string v0, "setDefaultServiceForCategory"

    return-object v0

    .line 180
    :pswitch_1b
    const-string v0, "isDefaultServiceForAid"

    return-object v0

    .line 176
    :pswitch_1c
    const-string v0, "isDefaultServiceForCategory"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 167
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1252
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 299
    invoke-static {p1}, Landroid/nfc/INfcCardEmulation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    const-string v0, "android.nfc.INfcCardEmulation"

    .line 304
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 305
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 315
    packed-switch p1, :pswitch_data_1

    .line 646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 311
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    return v1

    .line 639
    :pswitch_1
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultPaymentRegistered()Z

    move-result v2

    .line 640
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 642
    goto/16 :goto_0

    .line 630
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->setLockPassword(Ljava/lang/String;)Z

    move-result v3

    .line 633
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 635
    goto/16 :goto_0

    .line 620
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 621
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->getPaymentDefaultServiceInfo(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 623
    .local v3, "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 625
    goto/16 :goto_0

    .line 610
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 611
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->getPaymentPriority(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 613
    .local v3, "_result":Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 615
    goto/16 :goto_0

    .line 599
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/content/ComponentName;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 601
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 602
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->initializePaymentDefault(II)V

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    goto/16 :goto_0

    .line 587
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 589
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 590
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->getAidSizeForServiceInPercent(ILandroid/content/ComponentName;)I

    move-result v4

    .line 592
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    goto/16 :goto_0

    .line 575
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->getUsedAidTableSizeInPercent(ILjava/lang/String;)I

    move-result v4

    .line 580
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    goto/16 :goto_0

    .line 561
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 563
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 565
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 566
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 568
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 570
    goto/16 :goto_0

    .line 549
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 551
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 552
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->unregisterOtherService(ILandroid/content/ComponentName;)I

    move-result v4

    .line 554
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    goto/16 :goto_0

    .line 533
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 535
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 537
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 540
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I

    move-result v6

    .line 542
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    goto/16 :goto_0

    .line 521
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 523
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 524
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 525
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->unsetOtherService(ILandroid/content/ComponentName;)Z

    move-result v4

    .line 526
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 528
    goto/16 :goto_0

    .line 509
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 511
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 512
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->setOtherService(ILandroid/content/ComponentName;)Z

    move-result v4

    .line 514
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 516
    goto/16 :goto_0

    .line 501
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_d
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->disableAutoRouting()Z

    move-result v2

    .line 502
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 504
    goto/16 :goto_0

    .line 494
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->enableAutoRouting()Z

    move-result v2

    .line 495
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 497
    goto/16 :goto_0

    .line 487
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->supportsAutoRouting()Z

    move-result v2

    .line 488
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 490
    goto/16 :goto_0

    .line 478
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 479
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 481
    .local v3, "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 483
    goto/16 :goto_0

    .line 470
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    :pswitch_11
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->supportsAidPrefixRegistration()Z

    move-result v2

    .line 471
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 473
    goto/16 :goto_0

    .line 463
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->unsetPreferredService()Z

    move-result v2

    .line 464
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 466
    goto/16 :goto_0

    .line 454
    .end local v2    # "_result":Z
    :pswitch_13
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 455
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v3

    .line 457
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 459
    goto/16 :goto_0

    .line 442
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 447
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 449
    goto/16 :goto_0

    .line 428
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 432
    .local v3, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 435
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 437
    goto/16 :goto_0

    .line 414
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 418
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 419
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v5

    .line 421
    .local v5, "_result":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 423
    goto/16 :goto_0

    .line 402
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 404
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 405
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->unsetOffHostForService(ILandroid/content/ComponentName;)Z

    move-result v4

    .line 407
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    goto/16 :goto_0

    .line 388
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 390
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 392
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->setOffHostForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 395
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 397
    goto/16 :goto_0

    .line 374
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 378
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    sget-object v4, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/AidGroup;

    .line 379
    .local v4, "_arg2":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v5

    .line 381
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 383
    goto :goto_0

    .line 362
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Landroid/nfc/cardemulation/AidGroup;
    .end local v5    # "_result":Z
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 365
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v4

    .line 367
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 369
    goto :goto_0

    .line 348
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 350
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 352
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 355
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 357
    goto :goto_0

    .line 334
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 338
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 339
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 341
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    goto :goto_0

    .line 320
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 324
    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 325
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v5

    .line 327
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 329
    nop

    .line 649
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
