.class Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBiometricsService.java"

# interfaces
.implements Lcom/samsung/android/biometrics/IBiometricsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/IBiometricsService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/biometrics/IBiometricsService;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 318
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist authenticate(ILandroid/os/IBinder;JILcom/samsung/android/biometrics/IBiometricsServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "sessionId"    # J
    .param p5, "userId"    # I
    .param p6, "receiver"    # Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "attr"    # Landroid/os/Bundle;
    .param p9, "fidoRequestData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    move-object/from16 v11, p8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 331
    .local v12, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 333
    .local v13, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 334
    move/from16 v14, p1

    :try_start_1
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    move-object/from16 v15, p2

    :try_start_2
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 336
    move-wide/from16 v9, p3

    invoke-virtual {v12, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 337
    move/from16 v8, p5

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 339
    move-object/from16 v7, p7

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v11, :cond_1

    .line 341
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    :goto_1
    move-object/from16 v6, p9

    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 348
    move-object/from16 v4, p0

    iget-object v2, v4, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, v0, v12, v13, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 349
    .local v0, "_status":Z
    if-nez v0, :cond_2

    .line 350
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 351
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/biometrics/IBiometricsService;->authenticate(ILandroid/os/IBinder;JILcom/samsung/android/biometrics/IBiometricsServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 352
    return-void

    .line 355
    :cond_2
    :try_start_3
    invoke-virtual {v13}, Landroid/os/Parcel;->readException()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 358
    .end local v0    # "_status":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 360
    nop

    .line 361
    return-void

    .line 358
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move/from16 v14, p1

    :goto_2
    move-object/from16 v15, p2

    :goto_3
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 360
    throw v0
.end method

.method public blacklist cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 372
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 373
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 374
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/biometrics/IBiometricsService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    return-void

    .line 378
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    nop

    .line 384
    return-void

    .line 381
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    throw v2
.end method

.method public blacklist cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 565
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 567
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 568
    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 569
    move-object/from16 v11, p2

    :try_start_2
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 570
    move/from16 v12, p3

    :try_start_3
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 571
    move/from16 v13, p4

    :try_start_4
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 572
    move/from16 v14, p5

    :try_start_5
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 574
    move-object/from16 v15, p0

    :try_start_6
    iget-object v3, v15, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 575
    .local v0, "_status":Z
    if-nez v0, :cond_1

    .line 576
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 577
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/samsung/android/biometrics/IBiometricsService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 584
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    return-void

    .line 581
    :cond_1
    :try_start_7
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 584
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    nop

    .line 587
    return-void

    .line 584
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1

    :catchall_6
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v10, p1

    :goto_1
    move-object/from16 v11, p2

    :goto_2
    move/from16 v12, p3

    :goto_3
    move/from16 v13, p4

    :goto_4
    move/from16 v14, p5

    :goto_5
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 586
    throw v0
.end method

.method public blacklist getAuthenticatorId(Ljava/lang/String;)J
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 420
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 421
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 422
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/biometrics/IBiometricsService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    return-wide v3

    .line 425
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v3

    .line 429
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    nop

    .line 432
    return-wide v2

    .line 429
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 325
    const-string v0, "com.samsung.android.biometrics.IBiometricsService"

    return-object v0
.end method

.method public blacklist isHardwareDetected(JLjava/lang/String;)Z
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 389
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 392
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 394
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 396
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 397
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 398
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/biometrics/IBiometricsService;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 398
    return v3

    .line 401
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 405
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    nop

    .line 408
    return v2

    .line 405
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw v2
.end method

.method public blacklist prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IIIILandroid/os/Bundle;)V
    .locals 17
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "sessionId"    # J
    .param p5, "userId"    # I
    .param p6, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUserId"    # I
    .param p12, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    move-object/from16 v14, p12

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 506
    .local v15, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 508
    .local v13, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    move-object/from16 v12, p2

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 511
    move-wide/from16 v10, p3

    invoke-virtual {v15, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 512
    move/from16 v9, p5

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 513
    if-eqz p6, :cond_1

    :try_start_1
    invoke-interface/range {p6 .. p6}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 536
    :catchall_0
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_4

    .line 513
    :cond_1
    const/4 v2, 0x0

    :goto_1
    :try_start_2
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 514
    move-object/from16 v8, p7

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    move/from16 v7, p8

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    move/from16 v6, p9

    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    move/from16 v4, p10

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    move/from16 v5, p11

    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 519
    if-eqz v14, :cond_2

    .line 520
    :try_start_3
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    invoke-virtual {v14, v15, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 524
    :cond_2
    :try_start_4
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    :goto_2
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    invoke-interface {v0, v2, v15, v13, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 527
    .local v0, "_status":Z
    if-nez v0, :cond_4

    .line 528
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 529
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v16, v13

    .end local v13    # "_reply":Landroid/os/Parcel;
    .local v16, "_reply":Landroid/os/Parcel;
    move-object/from16 v13, p12

    :try_start_5
    invoke-interface/range {v1 .. v13}, Lcom/samsung/android/biometrics/IBiometricsService;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IIIILandroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 536
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 530
    return-void

    .line 528
    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v13    # "_reply":Landroid/os/Parcel;
    :cond_3
    move-object/from16 v16, v13

    .end local v13    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    goto :goto_3

    .line 527
    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v13    # "_reply":Landroid/os/Parcel;
    :cond_4
    move-object/from16 v16, v13

    .line 533
    .end local v13    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    :goto_3
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 536
    .end local v0    # "_status":Z
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 538
    nop

    .line 539
    return-void

    .line 536
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v13    # "_reply":Landroid/os/Parcel;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v13

    .end local v13    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    :goto_4
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 538
    throw v0
.end method

.method public blacklist requestSessionClose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 463
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 464
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 465
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/biometrics/IBiometricsService;->requestSessionClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    return-void

    .line 469
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    nop

    .line 475
    return-void

    .line 472
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    throw v2
.end method

.method public blacklist requestSessionOpen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 442
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 443
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 444
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/biometrics/IBiometricsService;->requestSessionOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    return-void

    .line 448
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    nop

    .line 454
    return-void

    .line 451
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    throw v2
.end method

.method public blacklist resetTimeout([B)V
    .locals 5
    .param p1, "cryptoToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 480
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 484
    iget-object v2, p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 485
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 486
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 487
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/biometrics/IBiometricsService;->resetTimeout([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    return-void

    .line 491
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    nop

    .line 497
    return-void

    .line 494
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    throw v2
.end method

.method public blacklist startPreparedClient(I)V
    .locals 5
    .param p1, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 546
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.biometrics.IBiometricsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget-object v2, p0, Lcom/samsung/android/biometrics/IBiometricsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 549
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 550
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 551
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/biometrics/IBiometricsService;->startPreparedClient(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    return-void

    .line 555
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    nop

    .line 561
    return-void

    .line 558
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw v2
.end method
