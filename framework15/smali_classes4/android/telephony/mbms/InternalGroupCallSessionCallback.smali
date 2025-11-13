.class public Landroid/telephony/mbms/InternalGroupCallSessionCallback;
.super Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;
.source "InternalGroupCallSessionCallback.java"


# instance fields
.field private final blacklist mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)Landroid/telephony/mbms/MbmsGroupCallSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/telephony/mbms/MbmsGroupCallSessionCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsGroupCallSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public blacklist onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onError(ILjava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onMiddlewareReady()V
    .locals 4

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;

    invoke-direct {v3, p0}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$4;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .locals 4

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalGroupCallSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalGroupCallSessionCallback;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalGroupCallSessionCallback;->mIsStopped:Z

    return-void
.end method
