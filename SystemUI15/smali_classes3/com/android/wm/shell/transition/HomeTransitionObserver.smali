.class public final Lcom/android/wm/shell/transition/HomeTransitionObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionObserver;
.implements Lcom/android/wm/shell/common/RemoteCallable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final notifyHomeVisibilityChanged(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/transition/HomeTransitionObserver;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    const-string v0, "SingleInstanceRemoteListener"

    if-nez p0, :cond_0

    const-string p0, "Failed remote call on null listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/wm/shell/shared/IHomeTransitionListener$Stub$Proxy;

    iget-object v1, p0, Lcom/android/wm/shell/shared/IHomeTransitionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "com.android.wm.shell.shared.IHomeTransitionListener"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/shared/IHomeTransitionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v1, p1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    const-string p1, "Failed remote call"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTransitionFinished(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionMerged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_0

    if-eqz p4, :cond_0

    iget v0, p4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v0, :cond_0

    iget v0, p4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p4, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p3, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p3

    invoke-virtual {p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p4

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpenOrCloseMode(I)Z

    move-result p4

    if-nez p4, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    invoke-static {v0}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result p4

    if-nez p4, :cond_4

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p3, 0x1

    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/transition/HomeTransitionObserver;->notifyHomeVisibilityChanged(Z)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final onTransitionStarting()V
    .locals 0

    return-void
.end method
