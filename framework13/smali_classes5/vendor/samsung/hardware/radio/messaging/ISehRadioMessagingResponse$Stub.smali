.class public abstract Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;
.super Landroid/os/Binder;
.source "ISehRadioMessagingResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCellBroadcastConfigResponse:I = 0x8

.field static final blacklist TRANSACTION_getImsRegistrationStateResponse:I = 0x9

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getStoredMsgCountFromSimResponse:I = 0x5

.field static final blacklist TRANSACTION_readSmsFromSimResponse:I = 0x6

.field static final blacklist TRANSACTION_sendCdmaSmsExpectMoreResponse:I = 0x4

.field static final blacklist TRANSACTION_sendCdmaSmsResponse:I = 0x3

.field static final blacklist TRANSACTION_sendSMSExpectMoreResponse:I = 0x2

.field static final blacklist TRANSACTION_sendSmsResponse:I = 0x1

.field static final blacklist TRANSACTION_writeSmsToSimResponse:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 281
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 282
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->markVintfStability()V

    .line 283
    sget-object v0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 291
    if-nez p0, :cond_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 295
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;

    if-eqz v1, :cond_1

    .line 296
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;

    return-object v1

    .line 298
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 302
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    sget-object v0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 307
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 308
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 330
    packed-switch p1, :pswitch_data_0

    .line 424
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 314
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    return v1

    .line 319
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    return v1

    .line 325
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    return v1

    .line 415
    :pswitch_0
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 417
    .local v2, "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 418
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->getImsRegistrationStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    .line 420
    goto/16 :goto_0

    .line 405
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":[I
    :pswitch_1
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 407
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;

    .line 408
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->getCellBroadcastConfigResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;)V

    .line 410
    goto/16 :goto_0

    .line 395
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
    :pswitch_2
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 397
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 398
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->writeSmsToSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    .line 400
    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 387
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;

    .line 388
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->readSmsFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V

    .line 390
    goto :goto_0

    .line 375
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    :pswitch_4
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 377
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;

    .line 378
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->getStoredMsgCountFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;)V

    .line 380
    goto :goto_0

    .line 365
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;
    :pswitch_5
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 367
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;

    .line 368
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->sendCdmaSmsExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    .line 370
    goto :goto_0

    .line 355
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    :pswitch_6
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 357
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;

    .line 358
    .restart local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->sendCdmaSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    .line 360
    goto :goto_0

    .line 345
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    :pswitch_7
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 347
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;

    .line 348
    .restart local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->sendSMSExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    .line 350
    goto :goto_0

    .line 335
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    :pswitch_8
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 337
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;

    .line 338
    .restart local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->sendSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V

    .line 340
    nop

    .line 427
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
