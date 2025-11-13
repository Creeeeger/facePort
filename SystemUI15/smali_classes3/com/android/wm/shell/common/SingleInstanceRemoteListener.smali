.class public final Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallableController:Lcom/android/wm/shell/common/RemoteCallable;

.field public mListener:Landroid/os/IInterface;

.field public final mListenerDeathRecipient:Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;

.field public final mOnRegisterCallback:Ljava/util/function/Consumer;

.field public final mOnUnregisterCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/RemoteCallable;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/common/RemoteCallable;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/common/RemoteCallable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;-><init>(Lcom/android/wm/shell/common/SingleInstanceRemoteListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListenerDeathRecipient:Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;

    iput-object p1, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mCallableController:Lcom/android/wm/shell/common/RemoteCallable;

    iput-object p2, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mOnRegisterCallback:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mOnUnregisterCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    const-string v0, "SingleInstanceRemoteListener"

    if-nez p0, :cond_0

    const-string p0, "Failed remote call on null listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;->accept(Ljava/lang/Object;)V
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

.method public final register(Landroid/os/IInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    iget-object v1, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListenerDeathRecipient:Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SingleInstanceRemoteListener"

    const-string p1, "Failed to link to death"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    iget-object p1, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mOnRegisterCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mCallableController:Lcom/android/wm/shell/common/RemoteCallable;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final unregister()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListenerDeathRecipient:Lcom/android/wm/shell/common/SingleInstanceRemoteListener$1;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mOnUnregisterCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mCallableController:Lcom/android/wm/shell/common/RemoteCallable;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
