.class Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IApplicationPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/application/IApplicationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 3275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3276
    iput-object p1, p0, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 3280
    iget-object p0, p0, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.application.IApplicationPolicy"

    .line 3464
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3465
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3466
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3467
    iget-object p0, p0, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3468
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3469
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3474
    throw p0
.end method

.method public isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.application.IApplicationPolicy"

    .line 4917
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4918
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4919
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4920
    iget-object p0, p0, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x57

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4921
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4922
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4927
    throw p0
.end method

.method public isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.application.IApplicationPolicy"

    .line 4878
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4879
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4880
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4881
    iget-object p0, p0, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x55

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4882
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4883
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4887
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4888
    throw p0
.end method
