.class public abstract Lcom/samsung/android/aod/IAODManager$Stub;
.super Landroid/os/Binder;
.source "IAODManager.java"

# interfaces
.implements Lcom/samsung/android/aod/IAODManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/IAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/IAODManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireDoze:I = 0xd

.field static final blacklist TRANSACTION_addLogText:I = 0x4

.field static final blacklist TRANSACTION_getActiveImageInfo:I = 0x7

.field static final blacklist TRANSACTION_isAODState:I = 0x1

.field static final blacklist TRANSACTION_isSViewCoverBrightnessHigh:I = 0x10

.field static final blacklist TRANSACTION_readyToScreenTurningOn:I = 0x8

.field static final blacklist TRANSACTION_registerAODDozeCallback:I = 0xb

.field static final blacklist TRANSACTION_registerAODListener:I = 0x9

.field static final blacklist TRANSACTION_releaseDoze:I = 0xe

.field static final blacklist TRANSACTION_requestAODToast:I = 0xf

.field static final blacklist TRANSACTION_setLiveClockCommand:I = 0x12

.field static final blacklist TRANSACTION_setLiveClockImage:I = 0x11

.field static final blacklist TRANSACTION_setLiveClockInfo:I = 0x5

.field static final blacklist TRANSACTION_setLiveClockNeedle:I = 0x6

.field static final blacklist TRANSACTION_unregisterAODDozeCallback:I = 0xc

.field static final blacklist TRANSACTION_unregisterAODListener:I = 0xa

.field static final blacklist TRANSACTION_updateAODTspRect:I = 0x2

.field static final blacklist TRANSACTION_writeAODCommand:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    const-string v0, "com.samsung.android.aod.IAODManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    const-string v0, "com.samsung.android.aod.IAODManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/aod/IAODManager;

    if-eqz v1, :cond_1

    .line 96
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/aod/IAODManager;

    return-object v1

    .line 98
    :cond_1
    new-instance v1, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 107
    packed-switch p0, :pswitch_data_0

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 179
    :pswitch_0
    const-string/jumbo v0, "setLiveClockCommand"

    return-object v0

    .line 175
    :pswitch_1
    const-string/jumbo v0, "setLiveClockImage"

    return-object v0

    .line 171
    :pswitch_2
    const-string v0, "isSViewCoverBrightnessHigh"

    return-object v0

    .line 167
    :pswitch_3
    const-string/jumbo v0, "requestAODToast"

    return-object v0

    .line 163
    :pswitch_4
    const-string/jumbo v0, "releaseDoze"

    return-object v0

    .line 159
    :pswitch_5
    const-string v0, "acquireDoze"

    return-object v0

    .line 155
    :pswitch_6
    const-string/jumbo v0, "unregisterAODDozeCallback"

    return-object v0

    .line 151
    :pswitch_7
    const-string/jumbo v0, "registerAODDozeCallback"

    return-object v0

    .line 147
    :pswitch_8
    const-string/jumbo v0, "unregisterAODListener"

    return-object v0

    .line 143
    :pswitch_9
    const-string/jumbo v0, "registerAODListener"

    return-object v0

    .line 139
    :pswitch_a
    const-string/jumbo v0, "readyToScreenTurningOn"

    return-object v0

    .line 135
    :pswitch_b
    const-string v0, "getActiveImageInfo"

    return-object v0

    .line 131
    :pswitch_c
    const-string/jumbo v0, "setLiveClockNeedle"

    return-object v0

    .line 127
    :pswitch_d
    const-string/jumbo v0, "setLiveClockInfo"

    return-object v0

    .line 123
    :pswitch_e
    const-string v0, "addLogText"

    return-object v0

    .line 119
    :pswitch_f
    const-string/jumbo v0, "writeAODCommand"

    return-object v0

    .line 115
    :pswitch_10
    const-string/jumbo v0, "updateAODTspRect"

    return-object v0

    .line 111
    :pswitch_11
    const-string v0, "isAODState"

    return-object v0

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

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 768
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 190
    invoke-static {p1}, Lcom/samsung/android/aod/IAODManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 37
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    move-object/from16 v0, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v13, "com.samsung.android.aod.IAODManager"

    .line 195
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v1, 0xffffff

    if-gt v14, v1, :cond_0

    .line 196
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 206
    packed-switch v14, :pswitch_data_1

    .line 416
    move-object v7, v0

    move-object v6, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 202
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return v10

    .line 401
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 407
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 408
    .local v4, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockCommand(III[I)I

    move-result v5

    .line 410
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 385
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    .end local v5    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 391
    .local v3, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockImage(II[BLjava/lang/String;)I

    move-result v5

    .line 394
    .restart local v5    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 377
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->isSViewCoverBrightnessHigh()Z

    move-result v1

    .line 378
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 367
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/aod/AODToast;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/aod/AODToast;

    .line 370
    .local v2, "_arg1":Lcom/samsung/android/aod/AODToast;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/aod/IAODManager$Stub;->requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 358
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Lcom/samsung/android/aod/AODToast;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 359
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->releaseDoze(Landroid/os/IBinder;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 345
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 347
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/aod/IAODManager$Stub;->acquireDoze(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 336
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 337
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->unregisterAODDozeCallback(Landroid/os/IBinder;)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 327
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 328
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->registerAODDozeCallback(Landroid/os/IBinder;)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 318
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 319
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->unregisterAODListener(Landroid/os/IBinder;)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 309
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 310
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->registerAODListener(Landroid/os/IBinder;)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 302
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->readyToScreenTurningOn()V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 295
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->getActiveImageInfo()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 287
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 288
    .local v1, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockNeedle([B)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    .line 261
    .end local v1    # "_arg0":[B
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg0":I
    move/from16 v1, v18

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .local v19, "_arg1":J
    move-wide/from16 v2, v19

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .local v21, "_arg2":J
    move-wide/from16 v4, v21

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .local v23, "_arg3":J
    move-wide/from16 v6, v23

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .local v25, "_arg4":J
    move-wide/from16 v8, v25

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v27

    move/from16 v29, v10

    .local v27, "_arg5":J
    move-wide/from16 v10, v27

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-object/from16 v32, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .local v30, "_arg6":J
    .local v32, "descriptor":Ljava/lang/String;
    move-wide/from16 v12, v30

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .local v33, "_arg7":J
    move-wide/from16 v14, v33

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .local v35, "_arg8":J
    move-wide/from16 v16, v35

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v17}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockInfo(IJJJJJJJJ)I

    move-result v0

    .line 280
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    move-object/from16 v6, p3

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    move-object/from16 v7, p0

    goto/16 :goto_0

    .line 252
    .end local v0    # "_result":I
    .end local v18    # "_arg0":I
    .end local v19    # "_arg1":J
    .end local v21    # "_arg2":J
    .end local v23    # "_arg3":J
    .end local v25    # "_arg4":J
    .end local v27    # "_arg5":J
    .end local v30    # "_arg6":J
    .end local v32    # "descriptor":Ljava/lang/String;
    .end local v33    # "_arg7":J
    .end local v35    # "_arg8":J
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_f
    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v32    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 253
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    move-object/from16 v7, p0

    invoke-virtual {v7, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->addLogText(Ljava/util/List;)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto/16 :goto_0

    .line 235
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_10
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v32    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 243
    .local v11, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 244
    .local v12, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/aod/IAODManager$Stub;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto :goto_0

    .line 218
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg4":Ljava/lang/String;
    .end local v32    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_11
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v32    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 220
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 222
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 224
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 226
    .local v11, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 227
    .restart local v12    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/aod/IAODManager$Stub;->updateAODTspRect(IIIILjava/lang/String;)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto :goto_0

    .line 210
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":I
    .end local v11    # "_arg3":I
    .end local v12    # "_arg4":Ljava/lang/String;
    .end local v32    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v32    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->isAODState()Z

    move-result v0

    .line 211
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 213
    nop

    .line 419
    .end local v0    # "_result":Z
    :goto_0
    return v29

    nop

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
