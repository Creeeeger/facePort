.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1$onTasksVisibilityChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# instance fields
.field public final synthetic $displayId:I

.field public final synthetic $visibleTasksCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1$onTasksVisibilityChanged$1;->$displayId:I

    iput p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1$onTasksVisibilityChanged$1;->$visibleTasksCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;

    check-cast p1, Lcom/android/wm/shell/desktopmode/IDesktopTaskListener$Stub$Proxy;

    iget v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1$onTasksVisibilityChanged$1;->$displayId:I

    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl$listener$1$onTasksVisibilityChanged$1;->$visibleTasksCount:I

    iget-object v1, p1, Lcom/android/wm/shell/desktopmode/IDesktopTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.wm.shell.desktopmode.IDesktopTaskListener"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/IDesktopTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, v0, v1, p1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
