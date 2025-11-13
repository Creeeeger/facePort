.class public abstract Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;
.super Landroid/os/Binder;
.source "ISehRadioSimResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_accessPhonebookEntryResponse:I = 0xb

.field static final blacklist TRANSACTION_changeIccPersonalizationResponse:I = 0x9

.field static final blacklist TRANSACTION_getAtrResponse:I = 0xc

.field static final blacklist TRANSACTION_getIccCardStatusResponse:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getPhonebookEntryResponse:I = 0xa

.field static final blacklist TRANSACTION_getPhonebookStorageInfoResponse:I = 0x3

.field static final blacklist TRANSACTION_getSimLockInfoResponse:I = 0x7

.field static final blacklist TRANSACTION_getUsimPhonebookCapabilityResponse:I = 0x4

.field static final blacklist TRANSACTION_setSimInitEventResponse:I = 0x6

.field static final blacklist TRANSACTION_setSimOnOffResponse:I = 0x5

.field static final blacklist TRANSACTION_supplyIccPersonalizationResponse:I = 0x8

.field static final blacklist TRANSACTION_supplyNetworkDepersonalizationResponse:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->markVintfStability()V

    .line 74
    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 93
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

    .line 97
    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 98
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 105
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 110
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v1

    .line 116
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 228
    :pswitch_0
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 230
    .local v2, "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->getAtrResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V

    .line 233
    goto/16 :goto_0

    .line 218
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 220
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->accessPhonebookEntryResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    .line 223
    goto/16 :goto_0

    .line 208
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_2
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 210
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;

    .line 211
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->getPhonebookEntryResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;)V

    .line 213
    goto/16 :goto_0

    .line 200
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;
    :pswitch_3
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 201
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->changeIccPersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 203
    goto/16 :goto_0

    .line 192
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_4
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 193
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->supplyIccPersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 195
    goto/16 :goto_0

    .line 182
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_5
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 184
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;

    .line 185
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->getSimLockInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;)V

    .line 187
    goto :goto_0

    .line 174
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;
    :pswitch_6
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 175
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->setSimInitEventResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 177
    goto :goto_0

    .line 166
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_7
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 167
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->setSimOnOffResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 169
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_8
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 158
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 159
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->getUsimPhonebookCapabilityResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V

    .line 161
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":[I
    :pswitch_9
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 148
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;

    .line 149
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->getPhonebookStorageInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;)V

    .line 151
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;
    :pswitch_a
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 138
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->supplyNetworkDepersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    .line 141
    goto :goto_0

    .line 126
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_b
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 128
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/sim/SehCardStatus;

    .line 129
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/sim/SehCardStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Stub;->getIccCardStatusResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehCardStatus;)V

    .line 131
    nop

    .line 240
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/sim/SehCardStatus;
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
