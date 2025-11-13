.class public abstract Landroid/media/IResourceManagerService$Stub;
.super Landroid/os/Binder;
.source "IResourceManagerService.java"

# interfaces
.implements Landroid/media/IResourceManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IResourceManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addMediaInfo:I = 0xb

.field static final blacklist TRANSACTION_addResource:I = 0x2

.field static final blacklist TRANSACTION_config:I = 0x1

.field static final blacklist TRANSACTION_createResourceObserver:I = 0xa

.field static final blacklist TRANSACTION_getRemainedFrameRateFor:I = 0xf

.field static final blacklist TRANSACTION_getSupportedFrameRateFor:I = 0xe

.field static final blacklist TRANSACTION_markClientForPendingRemoval:I = 0x8

.field static final blacklist TRANSACTION_overridePid:I = 0x6

.field static final blacklist TRANSACTION_overrideProcessInfo:I = 0x7

.field static final blacklist TRANSACTION_reclaimResource:I = 0x5

.field static final blacklist TRANSACTION_reclaimResourcesFromClientsPendingRemoval:I = 0x9

.field static final blacklist TRANSACTION_removeClient:I = 0x4

.field static final blacklist TRANSACTION_removeResource:I = 0x3

.field static final blacklist TRANSACTION_sendCapacityError:I = 0xd

.field static final blacklist TRANSACTION_setCodecState:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 157
    const-string v0, "android.media.IResourceManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IResourceManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 165
    if-nez p0, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    const-string v0, "android.media.IResourceManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 169
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IResourceManagerService;

    if-eqz v1, :cond_1

    .line 170
    move-object v1, v0

    check-cast v1, Landroid/media/IResourceManagerService;

    return-object v1

    .line 172
    :cond_1
    new-instance v1, Landroid/media/IResourceManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IResourceManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 181
    packed-switch p0, :pswitch_data_0

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 241
    :pswitch_0
    const-string v0, "getRemainedFrameRateFor"

    return-object v0

    .line 237
    :pswitch_1
    const-string v0, "getSupportedFrameRateFor"

    return-object v0

    .line 233
    :pswitch_2
    const-string v0, "sendCapacityError"

    return-object v0

    .line 229
    :pswitch_3
    const-string v0, "setCodecState"

    return-object v0

    .line 225
    :pswitch_4
    const-string v0, "addMediaInfo"

    return-object v0

    .line 221
    :pswitch_5
    const-string v0, "createResourceObserver"

    return-object v0

    .line 217
    :pswitch_6
    const-string v0, "reclaimResourcesFromClientsPendingRemoval"

    return-object v0

    .line 213
    :pswitch_7
    const-string v0, "markClientForPendingRemoval"

    return-object v0

    .line 209
    :pswitch_8
    const-string v0, "overrideProcessInfo"

    return-object v0

    .line 205
    :pswitch_9
    const-string v0, "overridePid"

    return-object v0

    .line 201
    :pswitch_a
    const-string v0, "reclaimResource"

    return-object v0

    .line 197
    :pswitch_b
    const-string v0, "removeClient"

    return-object v0

    .line 193
    :pswitch_c
    const-string v0, "removeResource"

    return-object v0

    .line 189
    :pswitch_d
    const-string v0, "addResource"

    return-object v0

    .line 185
    :pswitch_e
    const-string v0, "config"

    return-object v0

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 176
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 853
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 252
    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 256
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.media.IResourceManagerService"

    .line 257
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 258
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 268
    packed-switch v8, :pswitch_data_1

    .line 469
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 264
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    return v12

    .line 456
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 460
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/IResourceManagerService$Stub;->getRemainedFrameRateFor(Ljava/lang/String;II)F

    move-result v3

    .line 463
    .local v3, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 465
    goto/16 :goto_0

    .line 442
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":F
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 447
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/IResourceManagerService$Stub;->getSupportedFrameRateFor(Ljava/lang/String;II)F

    move-result v3

    .line 449
    .restart local v3    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 451
    goto/16 :goto_0

    .line 425
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":F
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 427
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 429
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 431
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v17

    .line 433
    .local v17, "_arg3":Landroid/media/IResourceManagerClient;
    sget-object v0, Lcom/samsung/android/media/MediaInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Lcom/samsung/android/media/MediaInfoParcel;

    .line 434
    .local v18, "_arg4":[Lcom/samsung/android/media/MediaInfoParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IResourceManagerService$Stub;->sendCapacityError(IIJLandroid/media/IResourceManagerClient;[Lcom/samsung/android/media/MediaInfoParcel;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    goto/16 :goto_0

    .line 408
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    .end local v18    # "_arg4":[Lcom/samsung/android/media/MediaInfoParcel;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 410
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 412
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 414
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v17

    .line 416
    .restart local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 417
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IResourceManagerService$Stub;->setCodecState(IIJLandroid/media/IResourceManagerClient;I)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    goto/16 :goto_0

    .line 391
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    .end local v18    # "_arg4":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 393
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 395
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 397
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v17

    .line 399
    .restart local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    sget-object v0, Lcom/samsung/android/media/MediaInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Lcom/samsung/android/media/MediaInfoParcel;

    .line 400
    .local v18, "_arg4":[Lcom/samsung/android/media/MediaInfoParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IResourceManagerService$Stub;->addMediaInfo(IIJLandroid/media/IResourceManagerClient;[Lcom/samsung/android/media/MediaInfoParcel;)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    goto/16 :goto_0

    .line 381
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    .end local v18    # "_arg4":[Lcom/samsung/android/media/MediaInfoParcel;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/IResourceManagerObserverClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/IResourceManagerObserverClient;

    move-result-object v0

    .line 382
    .local v0, "_arg0":Lcom/samsung/android/media/IResourceManagerObserverClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->createResourceObserver(Lcom/samsung/android/media/IResourceManagerObserverClient;)Lcom/samsung/android/media/IResourceManagerObserver;

    move-result-object v1

    .line 384
    .local v1, "_result":Lcom/samsung/android/media/IResourceManagerObserver;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 386
    goto/16 :goto_0

    .line 372
    .end local v0    # "_arg0":Lcom/samsung/android/media/IResourceManagerObserverClient;
    .end local v1    # "_result":Lcom/samsung/android/media/IResourceManagerObserver;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->reclaimResourcesFromClientsPendingRemoval(I)V

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_0

    .line 361
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 364
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/IResourceManagerService$Stub;->markClientForPendingRemoval(IJ)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    goto/16 :goto_0

    .line 346
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v0

    .line 348
    .local v0, "_arg0":Landroid/media/IResourceManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/IResourceManagerService$Stub;->overrideProcessInfo(Landroid/media/IResourceManagerClient;III)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto/16 :goto_0

    .line 335
    .end local v0    # "_arg0":Landroid/media/IResourceManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v7, v0, v1}, Landroid/media/IResourceManagerService$Stub;->overridePid(II)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/MediaResourceParcel;

    .line 326
    .local v1, "_arg1":[Landroid/media/MediaResourceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {v7, v0, v1}, Landroid/media/IResourceManagerService$Stub;->reclaimResource(I[Landroid/media/MediaResourceParcel;)Z

    move-result v2

    .line 328
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 330
    goto/16 :goto_0

    .line 312
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/media/MediaResourceParcel;
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 314
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 315
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {v7, v0, v1, v2}, Landroid/media/IResourceManagerService$Stub;->removeClient(IJ)V

    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    goto :goto_0

    .line 299
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 301
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 303
    .restart local v1    # "_arg1":J
    sget-object v3, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/MediaResourceParcel;

    .line 304
    .local v3, "_arg2":[Landroid/media/MediaResourceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/media/IResourceManagerService$Stub;->removeResource(IJ[Landroid/media/MediaResourceParcel;)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto :goto_0

    .line 282
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":[Landroid/media/MediaResourceParcel;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 284
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 286
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 288
    .restart local v15    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IResourceManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerClient;

    move-result-object v17

    .line 290
    .restart local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    sget-object v0, Landroid/media/MediaResourceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Landroid/media/MediaResourceParcel;

    .line 291
    .local v18, "_arg4":[Landroid/media/MediaResourceParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 292
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-wide v3, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IResourceManagerService$Stub;->addResource(IIJLandroid/media/IResourceManagerClient;[Landroid/media/MediaResourceParcel;)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    goto :goto_0

    .line 273
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":Landroid/media/IResourceManagerClient;
    .end local v18    # "_arg4":[Landroid/media/MediaResourceParcel;
    :pswitch_f
    sget-object v0, Landroid/media/MediaResourcePolicyParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaResourcePolicyParcel;

    .line 274
    .local v0, "_arg0":[Landroid/media/MediaResourcePolicyParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {v7, v0}, Landroid/media/IResourceManagerService$Stub;->config([Landroid/media/MediaResourcePolicyParcel;)V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    nop

    .line 472
    .end local v0    # "_arg0":[Landroid/media/MediaResourcePolicyParcel;
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
