.class public abstract Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;
.super Landroid/os/Binder;
.source "ISehRadioNetworkIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acbInfoChanged:I = 0x1

.field static final blacklist TRANSACTION_callDetailsChanged:I = 0x2

.field static final blacklist TRANSACTION_csFallback:I = 0x3

.field static final blacklist TRANSACTION_currentNetworkScanIsRequested:I = 0x4

.field static final blacklist TRANSACTION_eriInfoReceived:I = 0x5

.field static final blacklist TRANSACTION_execute:I = 0x6

.field static final blacklist TRANSACTION_extendedRegistrationState:I = 0x7

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_imsPreferenceChanged:I = 0x8

.field static final blacklist TRANSACTION_needTurnOnRadioIndication:I = 0x9

.field static final blacklist TRANSACTION_nrBearerAllocationChanged:I = 0xa

.field static final blacklist TRANSACTION_nrIconTypeChanged:I = 0xb

.field static final blacklist TRANSACTION_nrNetworkTypeAdded:I = 0xc

.field static final blacklist TRANSACTION_roamingNetworkScanIsRequested:I = 0xd

.field static final blacklist TRANSACTION_signalLevelInfoChanged:I = 0xe

.field static final blacklist TRANSACTION_vendorConfigurationChanged:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->markVintfStability()V

    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication;

    return-object v1

    :cond_1
    new-instance v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

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

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->vendorConfigurationChanged(I[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehSignalBar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/network/SehSignalBar;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->signalLevelInfoChanged(ILvendor/samsung/hardware/radio/network/SehSignalBar;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->roamingNetworkScanIsRequested(I[B)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->nrNetworkTypeAdded(II)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->nrIconTypeChanged(II)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->nrBearerAllocationChanged(II)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->needTurnOnRadioIndication(I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->imsPreferenceChanged(I[I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->extendedRegistrationState(ILvendor/samsung/hardware/radio/network/SehExtendedRegStateResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->execute(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehEriInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/network/SehEriInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->eriInfoReceived(ILvendor/samsung/hardware/radio/network/SehEriInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->currentNetworkScanIsRequested(IB)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->csFallback(II)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Lvendor/samsung/hardware/radio/network/SehCallDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/samsung/hardware/radio/network/SehCallDetails;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->callDetailsChanged(I[Lvendor/samsung/hardware/radio/network/SehCallDetails;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkIndication$Stub;->acbInfoChanged(I[I)V

    nop

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
