.class public Landroid/telephony/mbms/InternalDownloadSessionCallback;
.super Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;
.source "InternalDownloadSessionCallback.java"


# instance fields
.field private final greylist-max-o mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppCallback(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mAppCallback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public greylist-max-o onError(ILjava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback$1;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;ILjava/lang/String;)V

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

.method public greylist-max-o onFileServicesUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;

    invoke-direct {v3, p0, p1}, Landroid/telephony/mbms/InternalDownloadSessionCallback$2;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;Ljava/util/List;)V

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

.method public greylist-max-o onMiddlewareReady()V
    .locals 4

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;

    invoke-direct {v3, p0}, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;-><init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;)V

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

.method public greylist-max-o stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback;->mIsStopped:Z

    return-void
.end method
