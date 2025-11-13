.class public abstract Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;
.super Landroid/os/Binder;
.source "IFMEventListener.java"

# interfaces
.implements Lcom/samsung/android/media/fmradio/internal/IFMEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAlternateFrequencyReceived:I = 0xf

.field static final blacklist TRANSACTION_onAlternateFrequencyStarted:I = 0xe

.field static final blacklist TRANSACTION_onChannelFound:I = 0x3

.field static final blacklist TRANSACTION_onHeadsetConnected:I = 0x8

.field static final blacklist TRANSACTION_onHeadsetDisconnected:I = 0x9

.field static final blacklist TRANSACTION_onProgrammeIdentificationExtendedCountryCodesReceived:I = 0x12

.field static final blacklist TRANSACTION_onRadioDataSystemDisabled:I = 0xd

.field static final blacklist TRANSACTION_onRadioDataSystemEnabled:I = 0xc

.field static final blacklist TRANSACTION_onRadioDataSystemReceived:I = 0xa

.field static final blacklist TRANSACTION_onRadioDisabled:I = 0x2

.field static final blacklist TRANSACTION_onRadioEnabled:I = 0x1

.field static final blacklist TRANSACTION_onRadioTextPlusReceived:I = 0xb

.field static final blacklist TRANSACTION_onRecordingFinished:I = 0x11

.field static final blacklist TRANSACTION_onScanFinished:I = 0x6

.field static final blacklist TRANSACTION_onScanStarted:I = 0x4

.field static final blacklist TRANSACTION_onScanStopped:I = 0x5

.field static final blacklist TRANSACTION_onTuned:I = 0x7

.field static final blacklist TRANSACTION_onVolumeLocked:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "onProgrammeIdentificationExtendedCountryCodesReceived"

    return-object v0

    :pswitch_1
    const-string v0, "onRecordingFinished"

    return-object v0

    :pswitch_2
    const-string v0, "onVolumeLocked"

    return-object v0

    :pswitch_3
    const-string v0, "onAlternateFrequencyReceived"

    return-object v0

    :pswitch_4
    const-string v0, "onAlternateFrequencyStarted"

    return-object v0

    :pswitch_5
    const-string v0, "onRadioDataSystemDisabled"

    return-object v0

    :pswitch_6
    const-string v0, "onRadioDataSystemEnabled"

    return-object v0

    :pswitch_7
    const-string v0, "onRadioTextPlusReceived"

    return-object v0

    :pswitch_8
    const-string v0, "onRadioDataSystemReceived"

    return-object v0

    :pswitch_9
    const-string v0, "onHeadsetDisconnected"

    return-object v0

    :pswitch_a
    const-string v0, "onHeadsetConnected"

    return-object v0

    :pswitch_b
    const-string v0, "onTuned"

    return-object v0

    :pswitch_c
    const-string v0, "onScanFinished"

    return-object v0

    :pswitch_d
    const-string v0, "onScanStopped"

    return-object v0

    :pswitch_e
    const-string v0, "onScanStarted"

    return-object v0

    :pswitch_f
    const-string v0, "onChannelFound"

    return-object v0

    :pswitch_10
    const-string v0, "onRadioDisabled"

    return-object v0

    :pswitch_11
    const-string v0, "onRadioEnabled"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p2

    :goto_0
    const v0, 0x5f4e5446

    if-ne v8, v0, :cond_1

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1
    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRecordingFinished()V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onVolumeLocked()V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onAlternateFrequencyReceived(J)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onAlternateFrequencyStarted()V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemDisabled()V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemEnabled()V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioTextPlusReceived(IIIIII)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onHeadsetDisconnected()V

    goto :goto_3

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onHeadsetConnected()V

    goto :goto_3

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onTuned(J)V

    goto :goto_3

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-array v1, v0, [J

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanFinished([J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_3

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    new-array v1, v0, [J

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanStopped([J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_3

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanStarted()V

    goto :goto_3

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onChannelFound(J)V

    goto :goto_3

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDisabled(I)V

    goto :goto_3

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioEnabled()V

    nop

    :goto_3
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
