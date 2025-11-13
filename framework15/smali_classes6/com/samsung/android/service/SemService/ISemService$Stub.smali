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

.field static final blacklist TRANSACTION_agent_SLOG:I = 0x28

.field static final blacklist TRANSACTION_check_Network:I = 0x25

.field static final blacklist TRANSACTION_check_SeState:I = 0x16

.field static final blacklist TRANSACTION_closeSpiDriver:I = 0x20

.field static final blacklist TRANSACTION_close_Spi:I = 0x14

.field static final blacklist TRANSACTION_continue_attestation:I = 0xd

.field static final blacklist TRANSACTION_deactivate_Cards:I = 0x8

.field static final blacklist TRANSACTION_deactivate_CardsAID:I = 0x9

.field static final blacklist TRANSACTION_eSE_AidFactoryReset:I = 0x27

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

.field static final blacklist TRANSACTION_handle_CCMScp11c:I = 0x26

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


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.service.SemService.ISemService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SemService/ISemService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.service.SemService.ISemService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/SemService/ISemService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/service/SemService/ISemService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/service/SemService/ISemService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/SemService/ISemService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "agent_SLOG"

    return-object v0

    :pswitch_1
    const-string v0, "eSE_AidFactoryReset"

    return-object v0

    :pswitch_2
    const-string v0, "handle_CCMScp11c"

    return-object v0

    :pswitch_3
    const-string v0, "check_Network"

    return-object v0

    :pswitch_4
    const-string v0, "scp11_certificate_check"

    return-object v0

    :pswitch_5
    const-string v0, "esek_certificate_check"

    return-object v0

    :pswitch_6
    const-string v0, "eSE_FullFactoryReset"

    return-object v0

    :pswitch_7
    const-string v0, "eSE_LowFactoryReset"

    return-object v0

    :pswitch_8
    const-string v0, "closeSpiDriver"

    return-object v0

    :pswitch_9
    const-string v0, "openSpiDriver"

    return-object v0

    :pswitch_a
    const-string v0, "grdm_Check_Status"

    return-object v0

    :pswitch_b
    const-string v0, "grdm_check_restricted_mode"

    return-object v0

    :pswitch_c
    const-string v0, "grdm_get_attes_cert"

    return-object v0

    :pswitch_d
    const-string v0, "grdm_release_session"

    return-object v0

    :pswitch_e
    const-string v0, "grdm_request_key"

    return-object v0

    :pswitch_f
    const-string v0, "grdm_get_session"

    return-object v0

    :pswitch_10
    const-string v0, "stop_request_credentials"

    return-object v0

    :pswitch_11
    const-string v0, "start_request_credentials"

    return-object v0

    :pswitch_12
    const-string v0, "check_SeState"

    return-object v0

    :pswitch_13
    const-string v0, "send_Data"

    return-object v0

    :pswitch_14
    const-string v0, "close_Spi"

    return-object v0

    :pswitch_15
    const-string v0, "open_Spi"

    return-object v0

    :pswitch_16
    const-string v0, "resetForCOSU"

    return-object v0

    :pswitch_17
    const-string v0, "getAtr_Spi"

    return-object v0

    :pswitch_18
    const-string v0, "stop_SLOG"

    return-object v0

    :pswitch_19
    const-string v0, "start_SLOG"

    return-object v0

    :pswitch_1a
    const-string v0, "secureLog"

    return-object v0

    :pswitch_1b
    const-string v0, "continue_attestation"

    return-object v0

    :pswitch_1c
    const-string v0, "start_attestation"

    return-object v0

    :pswitch_1d
    const-string v0, "ICD"

    return-object v0

    :pswitch_1e
    const-string v0, "eSE_FactoryReset"

    return-object v0

    :pswitch_1f
    const-string v0, "deactivate_CardsAID"

    return-object v0

    :pswitch_20
    const-string v0, "deactivate_Cards"

    return-object v0

    :pswitch_21
    const-string v0, "get_HQMMemory"

    return-object v0

    :pswitch_22
    const-string v0, "isLccmSwp"

    return-object v0

    :pswitch_23
    const-string v0, "handle_CCMCB"

    return-object v0

    :pswitch_24
    const-string v0, "handle_CCM"

    return-object v0

    :pswitch_25
    const-string v0, "sem_factory"

    return-object v0

    :pswitch_26
    const-string v0, "getCPLC14mode"

    return-object v0

    :pswitch_27
    const-string v0, "get_ESEA"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "com.samsung.android.service.SemService.ISemService"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    const v0, 0x5f4e5446

    if-ne v7, v0, :cond_1

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->agent_SLOG(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->eSE_AidFactoryReset([BI)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->handle_CCMScp11c([BI)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->check_Network(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->scp11_certificate_check()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->esek_certificate_check()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->eSE_FullFactoryReset()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->eSE_LowFactoryReset()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->closeSpiDriver()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->openSpiDriver()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_Check_Status()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_check_restricted_mode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_get_attes_cert(I[B)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_release_session()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_request_key(I[B)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->grdm_get_session()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->stop_request_credentials()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->start_request_credentials([B[BLjava/lang/String;[B)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->check_SeState([B[B)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->send_Data([BI[BI)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->close_Spi(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->open_Spi(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->resetForCOSU()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->getAtr_Spi()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->stop_SLOG()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->start_SLOG()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->secureLog(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Lcom/samsung/android/service/SemService/ISemService$Stub;->continue_attestation(Ljava/lang/String;I[B)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->start_attestation([BI[BI)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->ICD()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->eSE_FactoryReset()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/service/SemService/ISemService$Stub;->deactivate_CardsAID(II[Ljava/lang/String;[II)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->deactivate_Cards(I[Ljava/lang/String;[II)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->get_HQMMemory([B)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->isLccmSwp()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/samsung/android/service/SemService/ISemService$Stub;->handle_CCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/service/SemService/ISemService$Stub;->handle_CCM([BI)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->sem_factory()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->getCPLC14mode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->get_ESEA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    nop

    :goto_1
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
