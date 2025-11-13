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

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    const-string v0, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    const-string v0, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 91
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    if-eqz v1, :cond_1

    .line 92
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    return-object v1

    .line 94
    :cond_1
    new-instance v1, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 103
    packed-switch p0, :pswitch_data_0

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 175
    :pswitch_0
    const-string v0, "onProgrammeIdentificationExtendedCountryCodesReceived"

    return-object v0

    .line 171
    :pswitch_1
    const-string v0, "onRecordingFinished"

    return-object v0

    .line 167
    :pswitch_2
    const-string v0, "onVolumeLocked"

    return-object v0

    .line 163
    :pswitch_3
    const-string v0, "onAlternateFrequencyReceived"

    return-object v0

    .line 159
    :pswitch_4
    const-string v0, "onAlternateFrequencyStarted"

    return-object v0

    .line 155
    :pswitch_5
    const-string v0, "onRadioDataSystemDisabled"

    return-object v0

    .line 151
    :pswitch_6
    const-string v0, "onRadioDataSystemEnabled"

    return-object v0

    .line 147
    :pswitch_7
    const-string v0, "onRadioTextPlusReceived"

    return-object v0

    .line 143
    :pswitch_8
    const-string v0, "onRadioDataSystemReceived"

    return-object v0

    .line 139
    :pswitch_9
    const-string v0, "onHeadsetDisconnected"

    return-object v0

    .line 135
    :pswitch_a
    const-string v0, "onHeadsetConnected"

    return-object v0

    .line 131
    :pswitch_b
    const-string v0, "onTuned"

    return-object v0

    .line 127
    :pswitch_c
    const-string v0, "onScanFinished"

    return-object v0

    .line 123
    :pswitch_d
    const-string v0, "onScanStopped"

    return-object v0

    .line 119
    :pswitch_e
    const-string v0, "onScanStarted"

    return-object v0

    .line 115
    :pswitch_f
    const-string v0, "onChannelFound"

    return-object v0

    .line 111
    :pswitch_10
    const-string v0, "onRadioDisabled"

    return-object v0

    .line 107
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

    .line 98
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 628
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 186
    invoke-static {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    .line 191
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 192
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    move-object/from16 v12, p2

    .line 194
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 202
    packed-switch v8, :pswitch_data_1

    .line 353
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 198
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return v11

    .line 344
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 346
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    .line 349
    goto/16 :goto_3

    .line 338
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRecordingFinished()V

    .line 339
    goto/16 :goto_3

    .line 333
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onVolumeLocked()V

    .line 334
    goto/16 :goto_3

    .line 326
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 327
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onAlternateFrequencyReceived(J)V

    .line 329
    goto/16 :goto_3

    .line 320
    .end local v0    # "_arg0":J
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onAlternateFrequencyStarted()V

    .line 321
    goto/16 :goto_3

    .line 315
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemDisabled()V

    .line 316
    goto/16 :goto_3

    .line 310
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemEnabled()V

    .line 311
    goto/16 :goto_3

    .line 293
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 295
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 297
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 299
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 301
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 303
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 304
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioTextPlusReceived(IIIIII)V

    .line 306
    goto/16 :goto_3

    .line 281
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 283
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    .line 288
    goto :goto_3

    .line 275
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onHeadsetDisconnected()V

    .line 276
    goto :goto_3

    .line 270
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onHeadsetConnected()V

    .line 271
    goto :goto_3

    .line 263
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 264
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onTuned(J)V

    .line 266
    goto :goto_3

    .line 248
    .end local v0    # "_arg0":J
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .local v0, "_arg0_length":I
    if-gez v0, :cond_1

    .line 250
    const/4 v1, 0x0

    .local v1, "_arg0":[J
    goto :goto_1

    .line 252
    .end local v1    # "_arg0":[J
    :cond_1
    new-array v1, v0, [J

    .line 254
    .restart local v1    # "_arg0":[J
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {v7, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanFinished([J)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 258
    goto :goto_3

    .line 233
    .end local v0    # "_arg0_length":I
    .end local v1    # "_arg0":[J
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .restart local v0    # "_arg0_length":I
    if-gez v0, :cond_2

    .line 235
    const/4 v1, 0x0

    .restart local v1    # "_arg0":[J
    goto :goto_2

    .line 237
    .end local v1    # "_arg0":[J
    :cond_2
    new-array v1, v0, [J

    .line 239
    .restart local v1    # "_arg0":[J
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v7, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanStopped([J)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 243
    goto :goto_3

    .line 227
    .end local v0    # "_arg0_length":I
    .end local v1    # "_arg0":[J
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanStarted()V

    .line 228
    goto :goto_3

    .line 220
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 221
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onChannelFound(J)V

    .line 223
    goto :goto_3

    .line 212
    .end local v0    # "_arg0":J
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v7, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDisabled(I)V

    .line 215
    goto :goto_3

    .line 206
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioEnabled()V

    .line 207
    nop

    .line 356
    :goto_3
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
