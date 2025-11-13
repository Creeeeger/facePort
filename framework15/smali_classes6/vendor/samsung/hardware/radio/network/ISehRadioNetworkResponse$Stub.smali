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

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->markVintfStability()V

    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;

    return-object v1

    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

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

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getInterfaceHash()Ljava/lang/String;

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

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setScanResultViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setImsCallListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->setCurrentNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->sendRequestStringsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->sendRequestRawResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[B)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->sendEncodedUssdResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->selectCsgManualResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V

    goto/16 :goto_0

    :pswitch_e
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    goto/16 :goto_0

    :pswitch_10
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getNrIconTypeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    goto/16 :goto_0

    :pswitch_11
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    goto :goto_0

    :pswitch_12
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehCsgInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehCsgInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getCsgListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehCsgInfo;)V

    goto :goto_0

    :pswitch_13
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getCnapResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    goto :goto_0

    :pswitch_14
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehOperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehOperatorInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->getAvailableNetworksResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)V

    goto :goto_0

    :pswitch_15
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->emergencySearchResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V

    goto :goto_0

    :pswitch_16
    sget-object v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/samsung/hardware/radio/SehRadioResponseInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;->emergencyControlResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V

    nop

    :goto_0
    return v2

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
