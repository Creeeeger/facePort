.class Lsamsung/uwb/IUwbAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUwbAdapter.java"

# interfaces
.implements Lsamsung/uwb/IUwbAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/IUwbAdapter$Stub;
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

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-object p1, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 860
    iget-object p0, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public checkRestrict()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1559
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "samsung.uwb.IUwbAdapter"

    .line 1562
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1563
    iget-object p0, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 1568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1570
    throw p0
.end method
