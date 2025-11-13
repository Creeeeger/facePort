.class public abstract Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;
.super Landroid/os/Binder;
.source "IFMPlayer.java"

# interfaces
.implements Lcom/samsung/android/media/fmradio/internal/IFMPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/internal/IFMPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelAFSwitching:I = 0x1d

.field static final blacklist TRANSACTION_cancelScan:I = 0xd

.field static final blacklist TRANSACTION_cancelSeek:I = 0xa

.field static final blacklist TRANSACTION_disableAF:I = 0x17

.field static final blacklist TRANSACTION_disableRDS:I = 0x15

.field static final blacklist TRANSACTION_enableAF:I = 0x16

.field static final blacklist TRANSACTION_enableRDS:I = 0x14

.field static final blacklist TRANSACTION_getCurrentChannel:I = 0xb

.field static final blacklist TRANSACTION_getIntegerTunningParameter:I = 0x2f

.field static final blacklist TRANSACTION_getLastScanResult:I = 0x1e

.field static final blacklist TRANSACTION_getLongTunningParameter:I = 0x31

.field static final blacklist TRANSACTION_getMaxVolume:I = 0x27

.field static final blacklist TRANSACTION_getPlayedFreq:I = 0x13

.field static final blacklist TRANSACTION_getSoftMuteMode:I = 0x2d

.field static final blacklist TRANSACTION_getStringTunningParameter:I = 0x33

.field static final blacklist TRANSACTION_getVolume:I = 0x22

.field static final blacklist TRANSACTION_isAFEnable:I = 0x1c

.field static final blacklist TRANSACTION_isAirPlaneMode:I = 0x28

.field static final blacklist TRANSACTION_isBatteryLow:I = 0x2a

.field static final blacklist TRANSACTION_isBusy:I = 0x1a

.field static final blacklist TRANSACTION_isDeviceSpeakerEnabled:I = 0x34

.field static final blacklist TRANSACTION_isHeadsetPlugged:I = 0x23

.field static final blacklist TRANSACTION_isOn:I = 0x7

.field static final blacklist TRANSACTION_isRDSEnable:I = 0x1b

.field static final blacklist TRANSACTION_isScanning:I = 0xe

.field static final blacklist TRANSACTION_isSeeking:I = 0xf

.field static final blacklist TRANSACTION_isTvOutPlugged:I = 0x24

.field static final blacklist TRANSACTION_mute:I = 0x29

.field static final blacklist TRANSACTION_off:I = 0x6

.field static final blacklist TRANSACTION_on:I = 0x4

.field static final blacklist TRANSACTION_on_in_testmode:I = 0x5

.field static final blacklist TRANSACTION_removeListener:I = 0x2

.field static final blacklist TRANSACTION_scan:I = 0xc

.field static final blacklist TRANSACTION_searchAll:I = 0x12

.field static final blacklist TRANSACTION_searchDown:I = 0x10

.field static final blacklist TRANSACTION_searchUp:I = 0x11

.field static final blacklist TRANSACTION_seekDown:I = 0x9

.field static final blacklist TRANSACTION_seekUp:I = 0x8

.field static final blacklist TRANSACTION_setBand:I = 0x18

.field static final blacklist TRANSACTION_setChannelSpacing:I = 0x19

.field static final blacklist TRANSACTION_setFMIntenna:I = 0x2b

.field static final blacklist TRANSACTION_setIntegerTunningParameter:I = 0x2e

.field static final blacklist TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setLongTunningParameter:I = 0x30

.field static final blacklist TRANSACTION_setMono:I = 0x20

.field static final blacklist TRANSACTION_setRecordMode:I = 0x26

.field static final blacklist TRANSACTION_setSoftmute:I = 0x2c

.field static final blacklist TRANSACTION_setSpeakerOn:I = 0x25

.field static final blacklist TRANSACTION_setStereo:I = 0x1f

.field static final blacklist TRANSACTION_setStringTunningParameter:I = 0x32

.field static final blacklist TRANSACTION_setVolume:I = 0x21

.field static final blacklist TRANSACTION_tune:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMPlayer;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.media.fmradio.internal.IFMPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/media/fmradio/internal/IFMPlayer;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "isDeviceSpeakerEnabled"

    return-object v0

    :pswitch_1
    const-string v0, "getStringTunningParameter"

    return-object v0

    :pswitch_2
    const-string v0, "setStringTunningParameter"

    return-object v0

    :pswitch_3
    const-string v0, "getLongTunningParameter"

    return-object v0

    :pswitch_4
    const-string v0, "setLongTunningParameter"

    return-object v0

    :pswitch_5
    const-string v0, "getIntegerTunningParameter"

    return-object v0

    :pswitch_6
    const-string v0, "setIntegerTunningParameter"

    return-object v0

    :pswitch_7
    const-string v0, "getSoftMuteMode"

    return-object v0

    :pswitch_8
    const-string v0, "setSoftmute"

    return-object v0

    :pswitch_9
    const-string v0, "setFMIntenna"

    return-object v0

    :pswitch_a
    const-string v0, "isBatteryLow"

    return-object v0

    :pswitch_b
    const-string v0, "mute"

    return-object v0

    :pswitch_c
    const-string v0, "isAirPlaneMode"

    return-object v0

    :pswitch_d
    const-string v0, "getMaxVolume"

    return-object v0

    :pswitch_e
    const-string v0, "setRecordMode"

    return-object v0

    :pswitch_f
    const-string v0, "setSpeakerOn"

    return-object v0

    :pswitch_10
    const-string v0, "isTvOutPlugged"

    return-object v0

    :pswitch_11
    const-string v0, "isHeadsetPlugged"

    return-object v0

    :pswitch_12
    const-string v0, "getVolume"

    return-object v0

    :pswitch_13
    const-string v0, "setVolume"

    return-object v0

    :pswitch_14
    const-string v0, "setMono"

    return-object v0

    :pswitch_15
    const-string v0, "setStereo"

    return-object v0

    :pswitch_16
    const-string v0, "getLastScanResult"

    return-object v0

    :pswitch_17
    const-string v0, "cancelAFSwitching"

    return-object v0

    :pswitch_18
    const-string v0, "isAFEnable"

    return-object v0

    :pswitch_19
    const-string v0, "isRDSEnable"

    return-object v0

    :pswitch_1a
    const-string v0, "isBusy"

    return-object v0

    :pswitch_1b
    const-string v0, "setChannelSpacing"

    return-object v0

    :pswitch_1c
    const-string v0, "setBand"

    return-object v0

    :pswitch_1d
    const-string v0, "disableAF"

    return-object v0

    :pswitch_1e
    const-string v0, "enableAF"

    return-object v0

    :pswitch_1f
    const-string v0, "disableRDS"

    return-object v0

    :pswitch_20
    const-string v0, "enableRDS"

    return-object v0

    :pswitch_21
    const-string v0, "getPlayedFreq"

    return-object v0

    :pswitch_22
    const-string v0, "searchAll"

    return-object v0

    :pswitch_23
    const-string v0, "searchUp"

    return-object v0

    :pswitch_24
    const-string v0, "searchDown"

    return-object v0

    :pswitch_25
    const-string v0, "isSeeking"

    return-object v0

    :pswitch_26
    const-string v0, "isScanning"

    return-object v0

    :pswitch_27
    const-string v0, "cancelScan"

    return-object v0

    :pswitch_28
    const-string v0, "scan"

    return-object v0

    :pswitch_29
    const-string v0, "getCurrentChannel"

    return-object v0

    :pswitch_2a
    const-string v0, "cancelSeek"

    return-object v0

    :pswitch_2b
    const-string v0, "seekDown"

    return-object v0

    :pswitch_2c
    const-string v0, "seekUp"

    return-object v0

    :pswitch_2d
    const-string v0, "isOn"

    return-object v0

    :pswitch_2e
    const-string v0, "off"

    return-object v0

    :pswitch_2f
    const-string v0, "on_in_testmode"

    return-object v0

    :pswitch_30
    const-string v0, "on"

    return-object v0

    :pswitch_31
    const-string v0, "tune"

    return-object v0

    :pswitch_32
    const-string v0, "removeListener"

    return-object v0

    :pswitch_33
    const-string v0, "setListener"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.media.fmradio.internal.IFMPlayer"

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
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isDeviceSpeakerEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getLongTunningParameter(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setLongTunningParameter(Ljava/lang/String;J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getIntegerTunningParameter(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setIntegerTunningParameter(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getSoftMuteMode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setSoftmute(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setFMIntenna(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isBatteryLow()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->mute(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isAirPlaneMode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getMaxVolume()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setRecordMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setSpeakerOn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isTvOutPlugged()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isHeadsetPlugged()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getVolume()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setVolume(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setMono()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setStereo()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getLastScanResult()[J

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->cancelAFSwitching()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isAFEnable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isRDSEnable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isBusy()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setChannelSpacing(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setBand(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->disableAF()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->enableAF()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->disableRDS()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->enableRDS()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getPlayedFreq()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->searchAll()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->searchUp()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->searchDown()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isSeeking()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isScanning()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->cancelScan()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->scan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->getCurrentChannel()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->cancelSeek()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->seekDown()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :pswitch_2c
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->seekUp()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :pswitch_2d
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->isOn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_2e
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->off()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_2f
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->on_in_testmode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->on()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->tune(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;->setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
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
