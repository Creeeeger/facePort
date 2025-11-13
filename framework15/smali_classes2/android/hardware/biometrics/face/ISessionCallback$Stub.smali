.class public abstract Landroid/hardware/biometrics/face/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x8

.field static final blacklist TRANSACTION_onAuthenticationFrame:I = 0x3

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x7

.field static final blacklist TRANSACTION_onAuthenticatorIdInvalidated:I = 0x12

.field static final blacklist TRANSACTION_onAuthenticatorIdRetrieved:I = 0x11

.field static final blacklist TRANSACTION_onChallengeGenerated:I = 0x1

.field static final blacklist TRANSACTION_onChallengeRevoked:I = 0x2

.field static final blacklist TRANSACTION_onEnrollmentFrame:I = 0x4

.field static final blacklist TRANSACTION_onEnrollmentProgress:I = 0x6

.field static final blacklist TRANSACTION_onEnrollmentsEnumerated:I = 0xd

.field static final blacklist TRANSACTION_onEnrollmentsRemoved:I = 0x10

.field static final blacklist TRANSACTION_onError:I = 0x5

.field static final blacklist TRANSACTION_onFeatureSet:I = 0xf

.field static final blacklist TRANSACTION_onFeaturesRetrieved:I = 0xe

.field static final blacklist TRANSACTION_onInteractionDetected:I = 0xc

.field static final blacklist TRANSACTION_onLockoutCleared:I = 0xb

.field static final blacklist TRANSACTION_onLockoutPermanent:I = 0xa

.field static final blacklist TRANSACTION_onLockoutTimed:I = 0x9

.field static final blacklist TRANSACTION_onSessionClosed:I = 0x13


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISessionCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/face/ISessionCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/face/ISessionCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "onSessionClosed"

    return-object v0

    :sswitch_3
    const-string v0, "onAuthenticatorIdInvalidated"

    return-object v0

    :sswitch_4
    const-string v0, "onAuthenticatorIdRetrieved"

    return-object v0

    :sswitch_5
    const-string v0, "onEnrollmentsRemoved"

    return-object v0

    :sswitch_6
    const-string v0, "onFeatureSet"

    return-object v0

    :sswitch_7
    const-string v0, "onFeaturesRetrieved"

    return-object v0

    :sswitch_8
    const-string v0, "onEnrollmentsEnumerated"

    return-object v0

    :sswitch_9
    const-string v0, "onInteractionDetected"

    return-object v0

    :sswitch_a
    const-string v0, "onLockoutCleared"

    return-object v0

    :sswitch_b
    const-string v0, "onLockoutPermanent"

    return-object v0

    :sswitch_c
    const-string v0, "onLockoutTimed"

    return-object v0

    :sswitch_d
    const-string v0, "onAuthenticationFailed"

    return-object v0

    :sswitch_e
    const-string v0, "onAuthenticationSucceeded"

    return-object v0

    :sswitch_f
    const-string v0, "onEnrollmentProgress"

    return-object v0

    :sswitch_10
    const-string v0, "onError"

    return-object v0

    :sswitch_11
    const-string v0, "onEnrollmentFrame"

    return-object v0

    :sswitch_12
    const-string v0, "onAuthenticationFrame"

    return-object v0

    :sswitch_13
    const-string v0, "onChallengeRevoked"

    return-object v0

    :sswitch_14
    const-string v0, "onChallengeGenerated"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_13
        0x3 -> :sswitch_12
        0x4 -> :sswitch_11
        0x5 -> :sswitch_10
        0x6 -> :sswitch_f
        0x7 -> :sswitch_e
        0x8 -> :sswitch_d
        0x9 -> :sswitch_c
        0xa -> :sswitch_b
        0xb -> :sswitch_a
        0xc -> :sswitch_9
        0xd -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x10 -> :sswitch_5
        0x11 -> :sswitch_4
        0x12 -> :sswitch_3
        0x13 -> :sswitch_2
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

    invoke-static {p1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    sget-object v0, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

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

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onSessionClosed()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticatorIdInvalidated(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticatorIdRetrieved(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentsRemoved([I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onFeatureSet(B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onFeaturesRetrieved([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentsEnumerated([I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onInteractionDetected()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onLockoutCleared()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onLockoutPermanent()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onLockoutTimed(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticationFailed()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v3, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/keymaster/HardwareAuthToken;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentProgress(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onError(BI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_f
    sget-object v1, Landroid/hardware/biometrics/face/EnrollmentFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/EnrollmentFrame;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_10
    sget-object v1, Landroid/hardware/biometrics/face/AuthenticationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onChallengeRevoked(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v3, v4}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->onChallengeGenerated(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
