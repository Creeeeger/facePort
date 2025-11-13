.class public abstract Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;
.super Landroid/os/Binder;
.source "ISehRadioMessaging.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCellBroadcastConfig:I = 0x1

.field static final blacklist TRANSACTION_getImsRegistrationState:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getStoredMsgCountFromSim:I = 0x3

.field static final blacklist TRANSACTION_readSmsFromSim:I = 0x4

.field static final blacklist TRANSACTION_sendCdmaSms:I = 0x5

.field static final blacklist TRANSACTION_sendCdmaSmsExpectMore:I = 0x6

.field static final blacklist TRANSACTION_sendSMSExpectMore:I = 0x7

.field static final blacklist TRANSACTION_sendSms:I = 0x8

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x9

.field static final blacklist TRANSACTION_writeSmsToSim:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 152
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->markVintfStability()V

    .line 153
    sget-object v0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 161
    if-nez p0, :cond_0

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 165
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    if-eqz v1, :cond_1

    .line 166
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;

    return-object v1

    .line 168
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 172
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

    .line 176
    sget-object v0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 177
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 178
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 200
    packed-switch p1, :pswitch_data_0

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 184
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    return v1

    .line 189
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return v1

    .line 195
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    return v1

    .line 290
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .local v2, "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;

    .line 293
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->writeSmsToSim(ILvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V

    .line 295
    goto/16 :goto_0

    .line 279
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;

    move-result-object v2

    .line 281
    .local v2, "_arg0":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;

    move-result-object v3

    .line 282
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->setResponseFunctions(Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto/16 :goto_0

    .line 269
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/GsmSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 272
    .local v3, "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->sendSms(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    .line 274
    goto :goto_0

    .line 259
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 261
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/GsmSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 262
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->sendSMSExpectMore(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    .line 264
    goto :goto_0

    .line 249
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 252
    .local v3, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    .line 254
    goto :goto_0

    .line 239
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 242
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->sendCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    .line 244
    goto :goto_0

    .line 229
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 232
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->readSmsFromSim(II)V

    .line 234
    goto :goto_0

    .line 221
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->getStoredMsgCountFromSim(I)V

    .line 224
    goto :goto_0

    .line 213
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->getImsRegistrationState(I)V

    .line 216
    goto :goto_0

    .line 205
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Stub;->getCellBroadcastConfig(I)V

    .line 208
    nop

    .line 302
    .end local v2    # "_arg0":I
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
