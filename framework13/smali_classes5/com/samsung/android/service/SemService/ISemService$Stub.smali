.class public abstract Lcom/samsung/android/service/SemService/ISemService$Stub;
.super Landroid/os/Binder;
.source "ISemService.java"

# interfaces
.implements Lcom/samsung/android/service/SemService/ISemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/SemService/ISemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/SemService/ISemService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_ICD:I = 0xb

.field static final blacklist TRANSACTION_check_SeState:I = 0x16

.field static final blacklist TRANSACTION_closeSpiDriver:I = 0x20

.field static final blacklist TRANSACTION_close_Spi:I = 0x14

.field static final blacklist TRANSACTION_continue_attestation:I = 0xd

.field static final blacklist TRANSACTION_deactivate_Cards:I = 0x8

.field static final blacklist TRANSACTION_deactivate_CardsAID:I = 0x9

.field static final blacklist TRANSACTION_eSE_FactoryReset:I = 0xa

.field static final blacklist TRANSACTION_eSE_FullFactoryReset:I = 0x22

.field static final blacklist TRANSACTION_eSE_LowFactoryReset:I = 0x21

.field static final blacklist TRANSACTION_esek_certificate_check:I = 0x23

.field static final blacklist TRANSACTION_getAtr_Spi:I = 0x11

.field static final blacklist TRANSACTION_getCPLC14mode:I = 0x2

.field static final blacklist TRANSACTION_get_ESEA:I = 0x1

.field static final blacklist TRANSACTION_get_HQMMemory:I = 0x7

.field static final blacklist TRANSACTION_grdm_Check_Status:I = 0x1e

.field static final blacklist TRANSACTION_grdm_check_restricted_mode:I = 0x1d

.field static final blacklist TRANSACTION_grdm_get_attes_cert:I = 0x1c

.field static final blacklist TRANSACTION_grdm_get_session:I = 0x19

.field static final blacklist TRANSACTION_grdm_release_session:I = 0x1b

.field static final blacklist TRANSACTION_grdm_request_key:I = 0x1a

.field static final blacklist TRANSACTION_handle_CCM:I = 0x4

.field static final blacklist TRANSACTION_handle_CCMCB:I = 0x5

.field static final blacklist TRANSACTION_inject_esesm_keyset:I = 0x25

.field static final blacklist TRANSACTION_isLccmSwp:I = 0x6

.field static final blacklist TRANSACTION_openSpiDriver:I = 0x1f

.field static final blacklist TRANSACTION_open_Spi:I = 0x13

.field static final blacklist TRANSACTION_resetForCOSU:I = 0x12

.field static final blacklist TRANSACTION_scp11_certificate_check:I = 0x24

.field static final blacklist TRANSACTION_secureLog:I = 0xe

.field static final blacklist TRANSACTION_sem_factory:I = 0x3

.field static final blacklist TRANSACTION_send_Data:I = 0x15

.field static final blacklist TRANSACTION_start_SLOG:I = 0xf

.field static final blacklist TRANSACTION_start_attestation:I = 0xc

.field static final blacklist TRANSACTION_start_request_credentials:I = 0x17

.field static final blacklist TRANSACTION_stop_SLOG:I = 0x10

.field static final blacklist TRANSACTION_stop_request_credentials:I = 0x18

.field static final blacklist TRANSACTION_verify_esesm_keyset:I = 0x26


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 184
    const-string v0, "com.samsung.android.service.SemService.ISemService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SemService/ISemService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 192
    if-nez p0, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    const-string v0, "com.samsung.android.service.SemService.ISemService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 196
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/SemService/ISemService;

    if-eqz v1, :cond_1

    .line 197
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/service/SemService/ISemService;

    return-object v1

    .line 199
    :cond_1
    new-instance v1, Lcom/samsung/android/service/SemService/ISemService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/SemService/ISemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 208
    packed-switch p0, :pswitch_data_0

    .line 364
    const/4 v0, 0x0

    return-object v0

    .line 360
    :pswitch_0
    const-string/jumbo v0, "verify_esesm_keyset"

    return-object v0

    .line 356
    :pswitch_1
    const-string v0, "inject_esesm_keyset"

    return-object v0

    .line 352
    :pswitch_2
    const-string/jumbo v0, "scp11_certificate_check"

    return-object v0

    .line 348
    :pswitch_3
    const-string v0, "esek_certificate_check"

    return-object v0

    .line 344
    :pswitch_4
    const-string v0, "eSE_FullFactoryReset"

    return-object v0

    .line 340
    :pswitch_5
    const-string v0, "eSE_LowFactoryReset"

    return-object v0

    .line 336
    :pswitch_6
    const-string v0, "closeSpiDriver"

    return-object v0

    .line 332
    :pswitch_7
    const-string/jumbo v0, "openSpiDriver"

    return-object v0

    .line 328
    :pswitch_8
    const-string v0, "grdm_Check_Status"

    return-object v0

    .line 324
    :pswitch_9
    const-string v0, "grdm_check_restricted_mode"

    return-object v0

    .line 320
    :pswitch_a
    const-string v0, "grdm_get_attes_cert"

    return-object v0

    .line 316
    :pswitch_b
    const-string v0, "grdm_release_session"

    return-object v0

    .line 312
    :pswitch_c
    const-string v0, "grdm_request_key"

    return-object v0

    .line 308
    :pswitch_d
    const-string v0, "grdm_get_session"

    return-object v0

    .line 304
    :pswitch_e
    const-string/jumbo v0, "stop_request_credentials"

    return-object v0

    .line 300
    :pswitch_f
    const-string/jumbo v0, "start_request_credentials"

    return-object v0

    .line 296
    :pswitch_10
    const-string v0, "check_SeState"

    return-object v0

    .line 292
    :pswitch_11
    const-string/jumbo v0, "send_Data"

    return-object v0

    .line 288
    :pswitch_12
    const-string v0, "close_Spi"

    return-object v0

    .line 284
    :pswitch_13
    const-string/jumbo v0, "open_Spi"

    return-object v0

    .line 280
    :pswitch_14
    const-string/jumbo v0, "resetForCOSU"

    return-object v0

    .line 276
    :pswitch_15
    const-string v0, "getAtr_Spi"

    return-object v0

    .line 272
    :pswitch_16
    const-string/jumbo v0, "stop_SLOG"

    return-object v0

    .line 268
    :pswitch_17
    const-string/jumbo v0, "start_SLOG"

    return-object v0

    .line 264
    :pswitch_18
    const-string/jumbo v0, "secureLog"

    return-object v0

    .line 260
    :pswitch_19
    const-string v0, "continue_attestation"

    return-object v0

    .line 256
    :pswitch_1a
    const-string/jumbo v0, "start_attestation"

    return-object v0

    .line 252
    :pswitch_1b
    const-string v0, "ICD"

    return-object v0

    .line 248
    :pswitch_1c
    const-string v0, "eSE_FactoryReset"

    return-object v0

    .line 244
    :pswitch_1d
    const-string v0, "deactivate_CardsAID"

    return-object v0

    .line 240
    :pswitch_1e
    const-string v0, "deactivate_Cards"

    return-object v0

    .line 236
    :pswitch_1f
    const-string v0, "get_HQMMemory"

    return-object v0

    .line 232
    :pswitch_20
    const-string v0, "isLccmSwp"

    return-object v0

    .line 228
    :pswitch_21
    const-string v0, "handle_CCMCB"

    return-object v0

    .line 224
    :pswitch_22
    const-string v0, "handle_CCM"

    return-object v0

    .line 220
    :pswitch_23
    const-string/jumbo v0, "sem_factory"

    return-object v0

    .line 216
    :pswitch_24
    const-string v0, "getCPLC14mode"

    return-object v0

    .line 212
    :pswitch_25
    const-string v0, "get_ESEA"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 203
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1516
    const/16 v0, 0x25

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 371
    invoke-static {p1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 375
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "com.samsung.android.service.SemService.ISemService"

    .line 376
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 377
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_0
    move-object/from16 v11, p2

    .line 379
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 387
    packed-switch v7, :pswitch_data_1

    .line 759
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 383
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    return v10

    .line 752
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->verify_esesm_keyset()I

    move-result v0

    .line 753
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    goto/16 :goto_1

    .line 745
    .end local v0    # "_result":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->inject_esesm_keyset()I

    move-result v0

    .line 746
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    goto/16 :goto_1

    .line 738
    .end local v0    # "_result":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->scp11_certificate_check()I

    move-result v0

    .line 739
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    goto/16 :goto_1

    .line 731
    .end local v0    # "_result":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->esek_certificate_check()I

    move-result v0

    .line 732
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    goto/16 :goto_1

    .line 724
    .end local v0    # "_result":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->eSE_FullFactoryReset()I

    move-result v0

    .line 725
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    goto/16 :goto_1

    .line 717
    .end local v0    # "_result":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->eSE_LowFactoryReset()I

    move-result v0

    .line 718
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    goto/16 :goto_1

    .line 710
    .end local v0    # "_result":I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->closeSpiDriver()I

    move-result v0

    .line 711
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    goto/16 :goto_1

    .line 703
    .end local v0    # "_result":I
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->openSpiDriver()I

    move-result v0

    .line 704
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    goto/16 :goto_1

    .line 696
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_Check_Status()I

    move-result v0

    .line 697
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    goto/16 :goto_1

    .line 689
    .end local v0    # "_result":I
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_check_restricted_mode()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 692
    goto/16 :goto_1

    .line 677
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 679
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 680
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_get_attes_cert(I[B)I

    move-result v2

    .line 682
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 685
    goto/16 :goto_1

    .line 669
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_release_session()I

    move-result v0

    .line 670
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    goto/16 :goto_1

    .line 657
    .end local v0    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 659
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 660
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_request_key(I[B)I

    move-result v2

    .line 662
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 665
    goto/16 :goto_1

    .line 649
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":I
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_get_session()I

    move-result v0

    .line 650
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    goto/16 :goto_1

    .line 643
    .end local v0    # "_result":I
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->stop_request_credentials()V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_1

    .line 627
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 629
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 631
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 634
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->start_request_credentials([B[BLjava/lang/String;[B)I

    move-result v4

    .line 636
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 639
    goto/16 :goto_1

    .line 615
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 617
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 618
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->check_SeState([B[B)I

    move-result v2

    .line 620
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    goto/16 :goto_1

    .line 597
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 599
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 601
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 603
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 604
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->send_Data([BI[BI)I

    move-result v4

    .line 606
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 609
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 610
    goto/16 :goto_1

    .line 587
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 588
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->close_Spi(I)I

    move-result v1

    .line 590
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    goto/16 :goto_1

    .line 577
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 578
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->open_Spi(I)I

    move-result v1

    .line 580
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    goto/16 :goto_1

    .line 569
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->resetForCOSU()I

    move-result v0

    .line 570
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    goto/16 :goto_1

    .line 562
    .end local v0    # "_result":I
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->getAtr_Spi()I

    move-result v0

    .line 563
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    goto/16 :goto_1

    .line 556
    .end local v0    # "_result":I
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->stop_SLOG()V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_1

    .line 550
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->start_SLOG()V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    goto/16 :goto_1

    .line 542
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->secureLog(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    goto/16 :goto_1

    .line 527
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 531
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 532
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/service/SemService/ISemService$Stub;->continue_attestation(Ljava/lang/String;I[B)I

    move-result v3

    .line 534
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 537
    goto/16 :goto_1

    .line 509
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 511
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 513
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 515
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 516
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->start_attestation([BI[BI)I

    move-result v4

    .line 518
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 521
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 522
    goto/16 :goto_1

    .line 501
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->ICD()I

    move-result v0

    .line 502
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    goto/16 :goto_1

    .line 494
    .end local v0    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->eSE_FactoryReset()I

    move-result v0

    .line 495
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    goto/16 :goto_1

    .line 477
    .end local v0    # "_result":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 479
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 481
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 483
    .local v14, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 485
    .local v15, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 486
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/service/SemService/ISemService$Stub;->deactivate_CardsAID(II[Ljava/lang/String;[II)I

    move-result v0

    .line 488
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    goto/16 :goto_1

    .line 461
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":[Ljava/lang/String;
    .end local v15    # "_arg3":[I
    .end local v16    # "_arg4":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 463
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 467
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 468
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->deactivate_Cards(I[Ljava/lang/String;[II)I

    move-result v4

    .line 470
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    goto/16 :goto_1

    .line 450
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 451
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->get_HQMMemory([B)I

    move-result v1

    .line 453
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 456
    goto :goto_1

    .line 442
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":I
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->isLccmSwp()I

    move-result v0

    .line 443
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    goto :goto_1

    .line 425
    .end local v0    # "_result":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 427
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 431
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 432
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->handle_CCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 436
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 437
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 438
    goto :goto_1

    .line 412
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":I
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 414
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 415
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->handle_CCM([BI)[Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 419
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 420
    goto :goto_1

    .line 405
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->sem_factory()V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    goto :goto_1

    .line 398
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->getCPLC14mode()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    goto :goto_1

    .line 391
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->get_ESEA()Ljava/lang/String;

    move-result-object v0

    .line 392
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    nop

    .line 762
    .end local v0    # "_result":Ljava/lang/String;
    :goto_1
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
