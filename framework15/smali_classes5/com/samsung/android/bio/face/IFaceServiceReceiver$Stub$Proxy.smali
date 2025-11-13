.class Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFaceServiceReceiver.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/bio/face/IFaceServiceReceiver;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 225
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 232
    const-string v0, "com.samsung.android.bio.face.IFaceServiceReceiver"

    return-object v0
.end method

.method public blacklist onAcquired(JILjava/lang/String;)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 259
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 264
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 265
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 266
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->onAcquired(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    return-void

    .line 272
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    nop

    .line 274
    return-void

    .line 272
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    throw v1
.end method

.method public blacklist onAuthenticationFailed(J)V
    .locals 5
    .param p1, "deviceId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 309
    iget-object v1, p0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 310
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 311
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 312
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    return-void

    .line 318
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    nop

    .line 320
    return-void

    .line 318
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    throw v1
.end method

.method public blacklist onAuthenticationSucceeded(JIZLcom/samsung/android/bio/face/SemBioFace;[B)V
    .locals 15
    .param p1, "deviceId"    # J
    .param p3, "userId"    # I
    .param p4, "isStrongBiometric"    # Z
    .param p5, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p6, "fidoResultData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    move-object/from16 v8, p5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 279
    .local v9, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 280
    move-wide/from16 v10, p1

    :try_start_1
    invoke-virtual {v9, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 281
    move/from16 v12, p3

    :try_start_2
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    if-eqz v8, :cond_1

    .line 284
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    invoke-virtual {v8, v9, v1}, Lcom/samsung/android/bio/face/SemBioFace;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 290
    :goto_1
    move-object/from16 v13, p6

    :try_start_3
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    move-object v14, p0

    :try_start_4
    iget-object v1, v14, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v9, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 292
    .local v0, "_status":Z
    if-nez v0, :cond_2

    .line 293
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 294
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v1

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->onAuthenticationSucceeded(JIZLcom/samsung/android/bio/face/SemBioFace;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 300
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 295
    return-void

    .line 300
    .end local v0    # "_status":Z
    :cond_2
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 301
    nop

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v14, p0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v14, p0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v14, p0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v14, p0

    move-wide/from16 v10, p1

    :goto_2
    move/from16 v12, p3

    :goto_3
    move-object/from16 v13, p6

    :goto_4
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw v0
.end method

.method public blacklist onEnrollResult(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v1, p0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 244
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 245
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v3

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    return-void

    .line 252
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    nop

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    throw v1
.end method

.method public blacklist onError(JILjava/lang/String;)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 327
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 330
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 331
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 332
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->onError(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    return-void

    .line 338
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    nop

    .line 340
    return-void

    .line 338
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw v1
.end method

.method public blacklist onRemoved(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 345
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 347
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v1, p0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 350
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 351
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->onRemoved(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    return-void

    .line 358
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    throw v1
.end method

.method public blacklist onStatusUpdate(ILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 365
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 369
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 370
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 371
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->onStatusUpdate(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    return-void

    .line 377
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    nop

    .line 379
    return-void

    .line 377
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw v1
.end method
