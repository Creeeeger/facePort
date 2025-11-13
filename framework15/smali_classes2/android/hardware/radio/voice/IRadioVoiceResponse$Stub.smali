.class public abstract Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioVoiceResponse.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptCallResponse:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x2

.field static final blacklist TRANSACTION_cancelPendingUssdResponse:I = 0x3

.field static final blacklist TRANSACTION_conferenceResponse:I = 0x4

.field static final blacklist TRANSACTION_dialResponse:I = 0x5

.field static final blacklist TRANSACTION_emergencyDialResponse:I = 0x6

.field static final blacklist TRANSACTION_exitEmergencyCallbackModeResponse:I = 0x7

.field static final blacklist TRANSACTION_explicitCallTransferResponse:I = 0x8

.field static final blacklist TRANSACTION_getCallForwardStatusResponse:I = 0x9

.field static final blacklist TRANSACTION_getCallWaitingResponse:I = 0xa

.field static final blacklist TRANSACTION_getClipResponse:I = 0xb

.field static final blacklist TRANSACTION_getClirResponse:I = 0xc

.field static final blacklist TRANSACTION_getCurrentCallsResponse:I = 0xd

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLastCallFailCauseResponse:I = 0xe

.field static final blacklist TRANSACTION_getMuteResponse:I = 0xf

.field static final blacklist TRANSACTION_getPreferredVoicePrivacyResponse:I = 0x10

.field static final blacklist TRANSACTION_getTtyModeResponse:I = 0x11

.field static final blacklist TRANSACTION_handleStkCallSetupRequestFromSimResponse:I = 0x12

.field static final blacklist TRANSACTION_hangupConnectionResponse:I = 0x13

.field static final blacklist TRANSACTION_hangupForegroundResumeBackgroundResponse:I = 0x14

.field static final blacklist TRANSACTION_hangupWaitingOrBackgroundResponse:I = 0x15

.field static final blacklist TRANSACTION_isVoNrEnabledResponse:I = 0x16

.field static final blacklist TRANSACTION_rejectCallResponse:I = 0x17

.field static final blacklist TRANSACTION_sendBurstDtmfResponse:I = 0x18

.field static final blacklist TRANSACTION_sendCdmaFeatureCodeResponse:I = 0x19

.field static final blacklist TRANSACTION_sendDtmfResponse:I = 0x1a

.field static final blacklist TRANSACTION_sendUssdResponse:I = 0x1b

.field static final blacklist TRANSACTION_separateConnectionResponse:I = 0x1c

.field static final blacklist TRANSACTION_setCallForwardResponse:I = 0x1d

.field static final blacklist TRANSACTION_setCallWaitingResponse:I = 0x1e

.field static final blacklist TRANSACTION_setClirResponse:I = 0x1f

.field static final blacklist TRANSACTION_setMuteResponse:I = 0x20

.field static final blacklist TRANSACTION_setPreferredVoicePrivacyResponse:I = 0x21

.field static final blacklist TRANSACTION_setTtyModeResponse:I = 0x22

.field static final blacklist TRANSACTION_setVoNrEnabledResponse:I = 0x23

.field static final blacklist TRANSACTION_startDtmfResponse:I = 0x24

.field static final blacklist TRANSACTION_stopDtmfResponse:I = 0x25

.field static final blacklist TRANSACTION_switchWaitingOrHoldingAndActiveResponse:I = 0x26


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoiceResponse;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoiceResponse;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

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

    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setMuteResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setClirResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendCdmaFeatureCodeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_e
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_10
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->isVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    goto/16 :goto_0

    :pswitch_11
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_12
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_13
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_14
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_15
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    goto/16 :goto_0

    :pswitch_16
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    goto/16 :goto_0

    :pswitch_17
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getMuteResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    goto/16 :goto_0

    :pswitch_18
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    sget-object v3, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/LastCallFailCauseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/voice/LastCallFailCauseInfo;)V

    goto/16 :goto_0

    :pswitch_19
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    sget-object v3, Landroid/hardware/radio/voice/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/Call;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/Call;)V

    goto/16 :goto_0

    :pswitch_1a
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getClirResponse(Landroid/hardware/radio/RadioResponseInfo;II)V

    goto/16 :goto_0

    :pswitch_1b
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getClipResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    goto/16 :goto_0

    :pswitch_1c
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V

    goto/16 :goto_0

    :pswitch_1d
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    sget-object v3, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/CallForwardInfo;)V

    goto/16 :goto_0

    :pswitch_1e
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto :goto_0

    :pswitch_1f
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto :goto_0

    :pswitch_20
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto :goto_0

    :pswitch_21
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->dialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto :goto_0

    :pswitch_22
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->conferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto :goto_0

    :pswitch_23
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    goto :goto_0

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->acknowledgeRequest(I)V

    goto :goto_0

    :pswitch_25
    sget-object v1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    nop

    :goto_0
    return v2

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
