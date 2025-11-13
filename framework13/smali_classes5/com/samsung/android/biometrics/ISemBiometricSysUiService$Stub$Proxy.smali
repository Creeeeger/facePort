.class Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISemBiometricSysUiService.java"

# interfaces
.implements Lcom/samsung/android/biometrics/ISemBiometricSysUiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub;
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

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 256
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 263
    const-string v0, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    return-object v0
.end method

.method public blacklist hideBiometricDialog(III)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .param p3, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 341
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    nop

    .line 350
    return-void

    .line 348
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    throw v1
.end method

.method public blacklist onBiometricAuthenticated(IIZLjava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "modality"    # I
    .param p3, "authenticated"    # Z
    .param p4, "extraInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 291
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 295
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    nop

    .line 301
    return-void

    .line 299
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw v1
.end method

.method public blacklist onBiometricError(IIIILjava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "modality"    # I
    .param p3, "errCode"    # I
    .param p4, "vendorCode"    # I
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 324
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    nop

    .line 335
    return-void

    .line 333
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    throw v1
.end method

.method public blacklist onBiometricHelp(IIIILjava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "modality"    # I
    .param p3, "helpCode"    # I
    .param p4, "vendorCode"    # I
    .param p5, "message"    # Ljava/lang/String;
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
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    nop

    .line 318
    return-void

    .line 316
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    throw v1
.end method

.method public blacklist sendCommand(IIILandroid/os/Bundle;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "cmd"    # I
    .param p3, "code"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v1
.end method

.method public blacklist setBiometricTheme(ILjava/lang/String;[BLjava/io/FileDescriptor;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 374
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 375
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    nop

    .line 380
    return-void

    .line 378
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    throw v1
.end method

.method public blacklist showBiometricDialog(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "type"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "receiver"    # Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    .param p5, "requireConfirmation"    # Z
    .param p6, "userId"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "operationId"    # J
    .param p10, "promptInfo"    # Landroid/hardware/biometrics/PromptInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.ISemBiometricSysUiService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 274
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 275
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 276
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p8, p9}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    invoke-virtual {v0, p10, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 280
    iget-object v1, p0, Lcom/samsung/android/biometrics/ISemBiometricSysUiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    nop

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    throw v1
.end method
