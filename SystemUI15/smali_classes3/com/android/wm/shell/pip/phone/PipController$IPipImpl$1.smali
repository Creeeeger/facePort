.class public final Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpandPip()V
    .locals 5

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    const-string v0, "SingleInstanceRemoteListener"

    if-nez p0, :cond_0

    const-string p0, "Failed remote call on null listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;

    iget-object v1, p0, Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "com.android.wm.shell.common.pip.IPipAnimationListener"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {p0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "Failed remote call"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onPipAnimationStarted()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    const-string v0, "SingleInstanceRemoteListener"

    if-nez p0, :cond_0

    const-string p0, "Failed remote call on null listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;->onPipAnimationStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed remote call"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onPipResourceDimensionsChanged(II)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    const-string v0, "SingleInstanceRemoteListener"

    if-nez p0, :cond_0

    const-string p0, "Failed remote call on null listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/pip/IPipAnimationListener$Stub$Proxy;->onPipResourceDimensionsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed remote call"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
