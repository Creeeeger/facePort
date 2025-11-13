.class Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISemContinuityManager.java"

# interfaces
.implements Lcom/samsung/android/continuity/ISemContinuityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/continuity/ISemContinuityManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 218
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelDownload(Ljava/lang/String;I)V
    .locals 5
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 333
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 335
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.continuity.ISemContinuityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v2, p0, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 339
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    nop

    .line 345
    return-void

    .line 342
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    throw v2
.end method

.method public blacklist clearLocalClip(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.continuity.ISemContinuityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v2, p0, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 272
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    nop

    .line 278
    return-void

    .line 275
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 225
    const-string v0, "com.samsung.android.continuity.ISemContinuityManager"

    return-object v0
.end method

.method public blacklist getNearbyDeviceCount(II)I
    .locals 5
    .param p1, "filterType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.continuity.ISemContinuityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v2, p0, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 238
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 242
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    nop

    .line 245
    return v2

    .line 242
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw v2
.end method

.method public blacklist registerContinuityCopyListener(Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.continuity.ISemContinuityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 286
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v2, p0, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 288
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    nop

    .line 294
    return-void

    .line 291
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    throw v2
.end method

.method public blacklist requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)Z
    .locals 5
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.continuity.ISemContinuityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 319
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v2, p0, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 321
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 325
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    nop

    .line 328
    return v2

    .line 325
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    throw v2
.end method

.method public blacklist setLocalClip(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "clipBundle"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.continuity.ISemContinuityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v3, p0, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 257
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    nop

    .line 263
    return-void

    .line 260
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    throw v2
.end method

.method public blacklist unregisterContinuityCopyListener(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 298
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.continuity.ISemContinuityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v2, p0, Lcom/samsung/android/continuity/ISemContinuityManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 303
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    nop

    .line 309
    return-void

    .line 306
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    throw v2
.end method
