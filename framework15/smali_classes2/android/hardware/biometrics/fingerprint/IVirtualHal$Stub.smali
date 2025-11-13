.class public abstract Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;
.super Landroid/os/Binder;
.source "IVirtualHal.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/IVirtualHal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/IVirtualHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_resetConfigurations:I = 0x16

.field static final blacklist TRANSACTION_setAuthenticatorId:I = 0x4

.field static final blacklist TRANSACTION_setChallenge:I = 0x5

.field static final blacklist TRANSACTION_setControlIllumination:I = 0x1f

.field static final blacklist TRANSACTION_setDetectInteraction:I = 0x1d

.field static final blacklist TRANSACTION_setDisplayTouch:I = 0x1e

.field static final blacklist TRANSACTION_setEnrollmentHit:I = 0x2

.field static final blacklist TRANSACTION_setEnrollments:I = 0x1

.field static final blacklist TRANSACTION_setLockout:I = 0x11

.field static final blacklist TRANSACTION_setLockoutEnable:I = 0x12

.field static final blacklist TRANSACTION_setLockoutPermanentThreshold:I = 0x15

.field static final blacklist TRANSACTION_setLockoutTimedDuration:I = 0x14

.field static final blacklist TRANSACTION_setLockoutTimedThreshold:I = 0x13

.field static final blacklist TRANSACTION_setMaxEnrollmentPerUser:I = 0x1a

.field static final blacklist TRANSACTION_setNavigationGuesture:I = 0x1c

.field static final blacklist TRANSACTION_setNextEnrollment:I = 0x3

.field static final blacklist TRANSACTION_setOperationAuthenticateAcquired:I = 0xa

.field static final blacklist TRANSACTION_setOperationAuthenticateDuration:I = 0x8

.field static final blacklist TRANSACTION_setOperationAuthenticateError:I = 0x9

.field static final blacklist TRANSACTION_setOperationAuthenticateFails:I = 0x6

.field static final blacklist TRANSACTION_setOperationAuthenticateLatency:I = 0x7

.field static final blacklist TRANSACTION_setOperationDetectInteractionAcquired:I = 0x10

.field static final blacklist TRANSACTION_setOperationDetectInteractionDuration:I = 0xf

.field static final blacklist TRANSACTION_setOperationDetectInteractionError:I = 0xe

.field static final blacklist TRANSACTION_setOperationDetectInteractionLatency:I = 0xd

.field static final blacklist TRANSACTION_setOperationEnrollError:I = 0xb

.field static final blacklist TRANSACTION_setOperationEnrollLatency:I = 0xc

.field static final blacklist TRANSACTION_setSensorId:I = 0x18

.field static final blacklist TRANSACTION_setSensorLocation:I = 0x1b

.field static final blacklist TRANSACTION_setSensorStrength:I = 0x19

.field static final blacklist TRANSACTION_setType:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/IVirtualHal;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/IVirtualHal;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/IVirtualHal;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    :sswitch_2
    const-string v0, "setControlIllumination"

    return-object v0

    :sswitch_3
    const-string v0, "setDisplayTouch"

    return-object v0

    :sswitch_4
    const-string v0, "setDetectInteraction"

    return-object v0

    :sswitch_5
    const-string v0, "setNavigationGuesture"

    return-object v0

    :sswitch_6
    const-string v0, "setSensorLocation"

    return-object v0

    :sswitch_7
    const-string v0, "setMaxEnrollmentPerUser"

    return-object v0

    :sswitch_8
    const-string v0, "setSensorStrength"

    return-object v0

    :sswitch_9
    const-string v0, "setSensorId"

    return-object v0

    :sswitch_a
    const-string v0, "setType"

    return-object v0

    :sswitch_b
    const-string v0, "resetConfigurations"

    return-object v0

    :sswitch_c
    const-string v0, "setLockoutPermanentThreshold"

    return-object v0

    :sswitch_d
    const-string v0, "setLockoutTimedDuration"

    return-object v0

    :sswitch_e
    const-string v0, "setLockoutTimedThreshold"

    return-object v0

    :sswitch_f
    const-string v0, "setLockoutEnable"

    return-object v0

    :sswitch_10
    const-string v0, "setLockout"

    return-object v0

    :sswitch_11
    const-string v0, "setOperationDetectInteractionAcquired"

    return-object v0

    :sswitch_12
    const-string v0, "setOperationDetectInteractionDuration"

    return-object v0

    :sswitch_13
    const-string v0, "setOperationDetectInteractionError"

    return-object v0

    :sswitch_14
    const-string v0, "setOperationDetectInteractionLatency"

    return-object v0

    :sswitch_15
    const-string v0, "setOperationEnrollLatency"

    return-object v0

    :sswitch_16
    const-string v0, "setOperationEnrollError"

    return-object v0

    :sswitch_17
    const-string v0, "setOperationAuthenticateAcquired"

    return-object v0

    :sswitch_18
    const-string v0, "setOperationAuthenticateError"

    return-object v0

    :sswitch_19
    const-string v0, "setOperationAuthenticateDuration"

    return-object v0

    :sswitch_1a
    const-string v0, "setOperationAuthenticateLatency"

    return-object v0

    :sswitch_1b
    const-string v0, "setOperationAuthenticateFails"

    return-object v0

    :sswitch_1c
    const-string v0, "setChallenge"

    return-object v0

    :sswitch_1d
    const-string v0, "setAuthenticatorId"

    return-object v0

    :sswitch_1e
    const-string v0, "setNextEnrollment"

    return-object v0

    :sswitch_1f
    const-string v0, "setEnrollmentHit"

    return-object v0

    :sswitch_20
    const-string v0, "setEnrollments"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_1e
        0x4 -> :sswitch_1d
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_1b
        0x7 -> :sswitch_1a
        0x8 -> :sswitch_19
        0x9 -> :sswitch_18
        0xa -> :sswitch_17
        0xb -> :sswitch_16
        0xc -> :sswitch_15
        0xd -> :sswitch_14
        0xe -> :sswitch_13
        0xf -> :sswitch_12
        0x10 -> :sswitch_11
        0x11 -> :sswitch_10
        0x12 -> :sswitch_f
        0x13 -> :sswitch_e
        0x14 -> :sswitch_d
        0x15 -> :sswitch_c
        0x16 -> :sswitch_b
        0x17 -> :sswitch_a
        0x18 -> :sswitch_9
        0x19 -> :sswitch_8
        0x1a -> :sswitch_7
        0x1b -> :sswitch_6
        0x1c -> :sswitch_5
        0x1d -> :sswitch_4
        0x1e -> :sswitch_3
        0x1f -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->DESCRIPTOR:Ljava/lang/String;

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

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setControlIllumination(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setDisplayTouch(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setDetectInteraction(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setNavigationGuesture(Z)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/fingerprint/SensorLocation;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setSensorLocation(Landroid/hardware/biometrics/fingerprint/SensorLocation;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setMaxEnrollmentPerUser(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setSensorStrength(B)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setSensorId(I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setType(B)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->resetConfigurations()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setLockoutPermanentThreshold(I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setLockoutTimedDuration(I)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setLockoutTimedThreshold(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setLockoutEnable(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setLockout(Z)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v1, Landroid/hardware/biometrics/fingerprint/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/biometrics/fingerprint/AcquiredInfoAndVendorCode;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationDetectInteractionAcquired([Landroid/hardware/biometrics/fingerprint/AcquiredInfoAndVendorCode;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationDetectInteractionDuration(I)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationDetectInteractionError(I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationDetectInteractionLatency([I)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationEnrollLatency([I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationEnrollError(I)V

    goto/16 :goto_0

    :pswitch_15
    sget-object v1, Landroid/hardware/biometrics/fingerprint/AcquiredInfoAndVendorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/biometrics/fingerprint/AcquiredInfoAndVendorCode;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationAuthenticateAcquired([Landroid/hardware/biometrics/fingerprint/AcquiredInfoAndVendorCode;)V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationAuthenticateError(I)V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationAuthenticateDuration(I)V

    goto :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationAuthenticateLatency([I)V

    goto :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setOperationAuthenticateFails(Z)V

    goto :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setChallenge(J)V

    goto :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setAuthenticatorId(J)V

    goto :goto_0

    :pswitch_1c
    sget-object v1, Landroid/hardware/biometrics/fingerprint/NextEnrollment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/fingerprint/NextEnrollment;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setNextEnrollment(Landroid/hardware/biometrics/fingerprint/NextEnrollment;)V

    goto :goto_0

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setEnrollmentHit(I)V

    goto :goto_0

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/fingerprint/IVirtualHal$Stub;->setEnrollments([I)V

    nop

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
