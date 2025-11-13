.class public interface abstract Lcom/android/wm/shell/common/ExternalInterfaceBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/android/wm/shell/common/RemoteCallable;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p0}, Lcom/android/wm/shell/common/RemoteCallable;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p3, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p3, p2, p0, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Lcom/android/wm/shell/common/RemoteCallable;I)V

    invoke-interface {p1, p3}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ExternalInterfaceBinder"

    const-string p2, "Remote call failed"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/android/wm/shell/common/RemoteCallable;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p3, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p2, p0, v0}, Lcom/android/wm/shell/common/ExternalInterfaceBinder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Lcom/android/wm/shell/common/RemoteCallable;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p3}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IBinder;
.end method

.method public abstract invalidate()V
.end method
