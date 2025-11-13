.class public abstract Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "ISemPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/ISemPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISemPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_changeDRX:I = 0x2

.field static final blacklist TRANSACTION_changeDRXForKodiak:I = 0xc

.field static final blacklist TRANSACTION_clearMwiNotificationAndVoicemailCount:I = 0x1b

.field static final blacklist TRANSACTION_getBtid:I = 0x17

.field static final blacklist TRANSACTION_getCurrentCycle:I = 0x5

.field static final blacklist TRANSACTION_getCurrentModeForKodiak:I = 0xf

.field static final blacklist TRANSACTION_getDataServiceState:I = 0x8

.field static final blacklist TRANSACTION_getDataServiceStateUsingSubId:I = 0x9

.field static final blacklist TRANSACTION_getDefaultCycle:I = 0x4

.field static final blacklist TRANSACTION_getDefaultCycleForKodiak:I = 0xe

.field static final blacklist TRANSACTION_getDrxMode:I = 0x7

.field static final blacklist TRANSACTION_getGroupIdLevel2ForSubscriber:I = 0x19

.field static final blacklist TRANSACTION_getHomePlmns:I = 0x10

.field static final blacklist TRANSACTION_getKeyLifetime:I = 0x18

.field static final blacklist TRANSACTION_getPsismsc:I = 0x12

.field static final blacklist TRANSACTION_getPsismscWithPhoneId:I = 0x13

.field static final blacklist TRANSACTION_getRand:I = 0x16

.field static final blacklist TRANSACTION_getSubscriberIdForUiccAppType:I = 0x11

.field static final blacklist TRANSACTION_getSupportedCycles:I = 0x3

.field static final blacklist TRANSACTION_getSupportedModesForKodiak:I = 0xd

.field static final blacklist TRANSACTION_getUwbTimers:I = 0xb

.field static final blacklist TRANSACTION_hasCall:I = 0x1

.field static final blacklist TRANSACTION_isGbaSupported:I = 0x14

.field static final blacklist TRANSACTION_isGbaSupportedForSubscriber:I = 0x15

.field static final blacklist TRANSACTION_setDefaultSmsApplicationByForce:I = 0x1a

.field static final blacklist TRANSACTION_setDrxMode:I = 0x6

.field static final blacklist TRANSACTION_setUwbTimers:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ISemPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemPhoneSubInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.telephony.ISemPhoneSubInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISemPhoneSubInfo;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISemPhoneSubInfo;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "clearMwiNotificationAndVoicemailCount"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "setDefaultSmsApplicationByForce"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "getGroupIdLevel2ForSubscriber"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "getKeyLifetime"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "getBtid"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "getRand"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "isGbaSupportedForSubscriber"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "isGbaSupported"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "getPsismscWithPhoneId"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "getPsismsc"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "getSubscriberIdForUiccAppType"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "getHomePlmns"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "getCurrentModeForKodiak"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "getDefaultCycleForKodiak"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "getSupportedModesForKodiak"

    return-object v0

    :pswitch_f
    const-string v0, "changeDRXForKodiak"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "getUwbTimers"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "setUwbTimers"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "getDataServiceStateUsingSubId"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "getDataServiceState"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "getDrxMode"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "setDrxMode"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "getCurrentCycle"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "getDefaultCycle"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "getSupportedCycles"

    return-object v0

    :pswitch_19
    const-string v0, "changeDRX"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "hasCall"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.telephony.ISemPhoneSubInfo"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->clearMwiNotificationAndVoicemailCount(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->setDefaultSmsApplicationByForce(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getGroupIdLevel2ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getKeyLifetime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getBtid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getRand(I)[B

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->isGbaSupportedForSubscriber(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->isGbaSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getPsismscWithPhoneId(ILjava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getPsismsc(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getSubscriberIdForUiccAppType(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getHomePlmns(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getCurrentModeForKodiak()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDefaultCycleForKodiak()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getSupportedModesForKodiak()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->changeDRXForKodiak(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getUwbTimers()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->setUwbTimers([I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDataServiceStateUsingSubId(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDataServiceState()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDrxMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->setDrxMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getCurrentCycle(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getDefaultCycle(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->getSupportedCycles(I)[I

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->changeDRX(III)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemPhoneSubInfo$Stub;->hasCall(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
