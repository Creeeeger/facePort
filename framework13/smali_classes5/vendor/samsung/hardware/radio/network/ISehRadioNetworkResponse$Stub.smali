.class public abstract Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;
.super Landroid/os/Binder;
.source "ISehRadioNetworkResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_emergencyControlResponse:I = 0x1

.field static final blacklist TRANSACTION_emergencySearchResponse:I = 0x2

.field static final blacklist TRANSACTION_getAvailableNetworksResponse:I = 0x3

.field static final blacklist TRANSACTION_getCnapResponse:I = 0x4

.field static final blacklist TRANSACTION_getCsgListResponse:I = 0x5

.field static final blacklist TRANSACTION_getDisable2gResponse:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNrIconTypeResponse:I = 0x7

.field static final blacklist TRANSACTION_getNrModeResponse:I = 0x8

.field static final blacklist TRANSACTION_getPreferredNetworkListResponse:I = 0x9

.field static final blacklist TRANSACTION_getRoamingNetworkInfoViaBLEResponse:I = 0xa

.field static final blacklist TRANSACTION_getVendorSpecificConfigurationResponse:I = 0xb

.field static final blacklist TRANSACTION_selectCsgManualResponse:I = 0xc

.field static final blacklist TRANSACTION_sendEncodedUssdResponse:I = 0xd

.field static final blacklist TRANSACTION_sendRequestRawResponse:I = 0xe

.field static final blacklist TRANSACTION_sendRequestStringsResponse:I = 0xf

.field static final blacklist TRANSACTION_setCurrentNetworkInfoViaBLEResponse:I = 0x10

.field static final blacklist TRANSACTION_setDisable2gResponse:I = 0x11

.field static final blacklist TRANSACTION_setImsCallListResponse:I = 0x12

.field static final blacklist TRANSACTION_setNrModeResponse:I = 0x13

.field static final blacklist TRANSACTION_setPreferredNetworkListResponse:I = 0x14

.field static final blacklist TRANSACTION_setRoamingNetworkInfoViaBLEResponse:I = 0x15

.field static final blacklist TRANSACTION_setScanResultViaBLEResponse:I = 0x16

.field static final blacklist TRANSACTION_setVendorSpecificConfigurationResponse:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 106
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->markVintfStability()V

    .line 107
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 119
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;

    if-eqz v1, :cond_1

    .line 120
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;

    return-object v1

    .line 122
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 126
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

    .line 130
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 154
    packed-switch p1, :pswitch_data_0

    .line 366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 143
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v1

    .line 149
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 359
    :pswitch_0
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 360
    .local v2, "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 362
    goto/16 :goto_0

    .line 351
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_1
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 352
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setScanResultViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 354
    goto/16 :goto_0

    .line 343
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_2
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 344
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 346
    goto/16 :goto_0

    .line 335
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_3
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 336
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 338
    goto/16 :goto_0

    .line 327
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_4
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 328
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 330
    goto/16 :goto_0

    .line 319
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_5
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 320
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setImsCallListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 322
    goto/16 :goto_0

    .line 311
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_6
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 312
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 314
    goto/16 :goto_0

    .line 303
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_7
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 304
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setCurrentNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 306
    goto/16 :goto_0

    .line 293
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_8
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 295
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->sendRequestStringsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Ljava/lang/String;)V

    .line 298
    goto/16 :goto_0

    .line 283
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_9
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 285
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 286
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->sendRequestRawResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[B)V

    .line 288
    goto/16 :goto_0

    .line 275
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":[B
    :pswitch_a
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 276
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->sendEncodedUssdResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 278
    goto/16 :goto_0

    .line 267
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_b
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 268
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->selectCsgManualResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 270
    goto/16 :goto_0

    .line 257
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :pswitch_c
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 259
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    .line 260
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V

    .line 262
    goto/16 :goto_0

    .line 247
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    :pswitch_d
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 249
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;

    .line 250
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V

    .line 252
    goto/16 :goto_0

    .line 237
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;
    :pswitch_e
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 239
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;

    .line 240
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V

    .line 242
    goto/16 :goto_0

    .line 227
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;
    :pswitch_f
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 229
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    .line 232
    goto/16 :goto_0

    .line 217
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_10
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 219
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 220
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getNrIconTypeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    .line 222
    goto/16 :goto_0

    .line 207
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_11
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 209
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    .line 212
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_12
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 199
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehCsgInfo;

    .line 200
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehCsgInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getCsgListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehCsgInfo;)V

    .line 202
    goto :goto_0

    .line 187
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehCsgInfo;
    :pswitch_13
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 189
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 190
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getCnapResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    .line 192
    goto :goto_0

    .line 177
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_14
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 179
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    sget-object v3, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehOperatorInfo;

    .line 180
    .local v3, "_arg1":[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getAvailableNetworksResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)V

    .line 182
    goto :goto_0

    .line 167
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;
    :pswitch_15
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 169
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 170
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->emergencySearchResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    .line 172
    goto :goto_0

    .line 159
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_16
    sget-object v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    .line 160
    .restart local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->emergencyControlResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    .line 162
    nop

    .line 369
    .end local v2    # "_arg0":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
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
