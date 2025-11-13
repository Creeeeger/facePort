.class Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPhoneRestrictionPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;
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

    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1767
    iput-object p1, p0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1771
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IPhoneRestrictionPolicy"

    .line 2644
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2646
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2648
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2653
    throw p0
.end method

.method public isDataAllowedFromSimSlot(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IPhoneRestrictionPolicy"

    .line 3740
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3742
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x69

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3743
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3744
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3749
    throw p0
.end method
