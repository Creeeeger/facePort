.class Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBiometricsServiceReceiver.java"

# interfaces
.implements Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 162
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 169
    const-string v0, "com.samsung.android.biometrics.IBiometricsServiceReceiver"

    return-object v0
.end method

.method public blacklist onAcquired(JILjava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "helpMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.IBiometricsServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 180
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 181
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;->onAcquired(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    return-void

    .line 188
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
    nop

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 189
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

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.IBiometricsServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 222
    iget-object v1, p0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 223
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 224
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 225
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    return-void

    .line 231
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    nop

    .line 233
    return-void

    .line 231
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw v1
.end method

.method public blacklist onAuthenticationSucceeded(JLandroid/os/Bundle;)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 195
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.IBiometricsServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 205
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 206
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 207
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;->onAuthenticationSucceeded(JLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    return-void

    .line 213
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 215
    return-void

    .line 213
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
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

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.samsung.android.biometrics.IBiometricsServiceReceiver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 243
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 244
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 245
    invoke-static {}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver$Stub;->getDefaultImpl()Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;->onError(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    return-void

    .line 251
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    nop

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v1
.end method
