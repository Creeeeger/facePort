.class public abstract Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;
.super Landroid/os/Binder;
.source "ISehRadioSatelliteResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_answerResponse:I = 0x1

.field static final blacklist TRANSACTION_cleanupNetworkInfoResponse:I = 0x1e

.field static final blacklist TRANSACTION_dialResponse:I = 0x2

.field static final blacklist TRANSACTION_disableIotModeResponse:I = 0x20

.field static final blacklist TRANSACTION_enableIotModeResponse:I = 0x1f

.field static final blacklist TRANSACTION_getAbsoluteRfChannelNumberResponse:I = 0x13

.field static final blacklist TRANSACTION_getCallEndReasonResponse:I = 0x3

.field static final blacklist TRANSACTION_getCallStateResponse:I = 0x4

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getIotModeResponse:I = 0x21

.field static final blacklist TRANSACTION_getIotRegistrationStateResponse:I = 0x22

.field static final blacklist TRANSACTION_getRegistrationStateResponse:I = 0x8

.field static final blacklist TRANSACTION_getSatelliteIdResponse:I = 0x1a

.field static final blacklist TRANSACTION_getSerialNumberResponse:I = 0x12

.field static final blacklist TRANSACTION_getSignalStrengthResponse:I = 0x9

.field static final blacklist TRANSACTION_getTxPowerResponse:I = 0x14

.field static final blacklist TRANSACTION_hangupResponse:I = 0x5

.field static final blacklist TRANSACTION_sendIccSimAuthenticationResponse:I = 0x10

.field static final blacklist TRANSACTION_sendLocationDataResponse:I = 0x19

.field static final blacklist TRANSACTION_sendLocationUserPermitResponse:I = 0x18

.field static final blacklist TRANSACTION_sendRawAtCommandResponse:I = 0x1c

.field static final blacklist TRANSACTION_sendSMSExpectMoreResponse:I = 0x16

.field static final blacklist TRANSACTION_sendSmsResponse:I = 0x15

.field static final blacklist TRANSACTION_setDsiConfigResponse:I = 0x1b

.field static final blacklist TRANSACTION_setGpsInfoResponse:I = 0xe

.field static final blacklist TRANSACTION_setImeiResponse:I = 0x11

.field static final blacklist TRANSACTION_setImsiResponse:I = 0xf

.field static final blacklist TRANSACTION_setNetworkQueryModeResponse:I = 0xa

.field static final blacklist TRANSACTION_setPowerResponse:I = 0xd

.field static final blacklist TRANSACTION_setSignalStrengthReportResponse:I = 0xb

.field static final blacklist TRANSACTION_setSignalThresholdReportResponse:I = 0xc

.field static final blacklist TRANSACTION_setSmscAddressResponse:I = 0x17

.field static final blacklist TRANSACTION_startDtmfResponse:I = 0x6

.field static final blacklist TRANSACTION_startNetworkSearchResponse:I = 0x1d

.field static final blacklist TRANSACTION_stopDtmfResponse:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->markVintfStability()V

    sget-object v0, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse;

    return-object v1

    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/satellite/SehSatIotRegState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/satellite/SehSatIotRegState;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getIotRegistrationStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatIotRegState;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getIotModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->disableIotModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->enableIotModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->cleanupNetworkInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->startNetworkSearchResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->sendRawAtCommandResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->setDsiConfigResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getSatelliteIdResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->sendLocationDataResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->sendLocationUserPermitResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->setSmscAddressResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->sendSMSExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->sendSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatSendSmsResult;)V

    goto/16 :goto_0

    :pswitch_e
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getTxPowerResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getAbsoluteRfChannelNumberResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    goto/16 :goto_0

    :pswitch_10
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getSerialNumberResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->setImeiResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_12
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->sendIccSimAuthenticationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_13
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->setImsiResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_14
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->setGpsInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_15
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->setPowerResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_16
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->setSignalThresholdReportResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_17
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->setSignalStrengthReportResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_18
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->setNetworkQueryModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_19
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getSignalStrengthResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatSignalStrength;)V

    goto/16 :goto_0

    :pswitch_1a
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getRegistrationStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatRegStateResult;)V

    goto/16 :goto_0

    :pswitch_1b
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->stopDtmfResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto :goto_0

    :pswitch_1c
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->startDtmfResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto :goto_0

    :pswitch_1d
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->hangupResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto :goto_0

    :pswitch_1e
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/satellite/SehSatCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/satellite/SehSatCall;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getCallStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/satellite/SehSatCall;)V

    goto :goto_0

    :pswitch_1f
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/satellite/SehSatCallEndReason;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/satellite/SehSatCallEndReason;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->getCallEndReasonResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/satellite/SehSatCallEndReason;)V

    goto :goto_0

    :pswitch_20
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->dialResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto :goto_0

    :pswitch_21
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/satellite/ISehRadioSatelliteResponse$Stub;->answerResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    nop

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
