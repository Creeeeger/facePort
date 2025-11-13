.class Lcom/samsung/android/knox/kiosk/IKioskMode$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKioskMode.java"

# interfaces
.implements Lcom/samsung/android/knox/kiosk/IKioskMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;
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

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 576
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getBlockedEdgeScreen(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.kiosk.IKioskMode"

    .line 1186
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1187
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1188
    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x21

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1190
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 1193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    throw p0
.end method
