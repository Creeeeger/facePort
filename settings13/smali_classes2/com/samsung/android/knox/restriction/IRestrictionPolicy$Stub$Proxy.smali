.class Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRestrictionPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;
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

    .line 2698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2699
    iput-object p1, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 2703
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 3376
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3377
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3378
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x24

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3380
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3385
    throw p0
.end method

.method public isDataSavingAllowed()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 5328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5329
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5330
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5331
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 5334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5336
    throw p0
.end method

.method public isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 4577
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4578
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4579
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4580
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x64

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4581
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4582
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4587
    throw p0
.end method

.method public isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 2831
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2832
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2833
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2835
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2840
    throw p0
.end method

.method public isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3014
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 3018
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3019
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3020
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3021
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3022
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3026
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3027
    throw p0
.end method

.method public isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 4049
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4050
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4051
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x48

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4052
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4053
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4058
    throw p0
.end method

.method public isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 2943
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2944
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2945
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xd

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2947
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2950
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2952
    throw p0
.end method
