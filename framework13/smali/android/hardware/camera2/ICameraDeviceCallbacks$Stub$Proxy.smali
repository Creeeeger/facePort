.class Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraDeviceCallbacks.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 204
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 211
    const-string v0, "android.hardware.camera2.ICameraDeviceCallbacks"

    return-object v0
.end method

.method public greylist-max-o onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 5
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 242
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 244
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 249
    nop

    .line 250
    return-void

    .line 248
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 249
    throw v1
.end method

.method public greylist-max-o onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 218
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 221
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    nop

    .line 226
    return-void

    .line 224
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    throw v1
.end method

.method public greylist-max-o onDeviceIdle()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    nop

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    throw v1
.end method

.method public greylist-max-o onPrepared(I)V
    .locals 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 269
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    nop

    .line 276
    return-void

    .line 274
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    throw v1
.end method

.method public greylist-max-o onRepeatingRequestError(JI)V
    .locals 5
    .param p1, "lastFrameNumber"    # J
    .param p3, "repeatingRequestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    nop

    .line 295
    return-void

    .line 293
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw v1
.end method

.method public greylist-max-o onRequestQueueEmpty()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 305
    nop

    .line 306
    return-void

    .line 304
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 305
    throw v1
.end method

.method public greylist-max-o onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .locals 5
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p3, "physicalCaptureResultInfos"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 255
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.camera2.ICameraDeviceCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 257
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 258
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 259
    iget-object v1, p0, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    nop

    .line 264
    return-void

    .line 262
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v1
.end method
