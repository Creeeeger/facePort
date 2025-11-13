.class public Landroid/telephony/mbms/InternalDownloadStatusListener;
.super Landroid/telephony/mbms/IDownloadStatusListener$Stub;
.source "InternalDownloadStatusListener.java"


# instance fields
.field private final greylist-max-o mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppListener(Landroid/telephony/mbms/InternalDownloadStatusListener;)Landroid/telephony/mbms/DownloadStatusListener;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/DownloadStatusListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/mbms/IDownloadStatusListener$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mAppListener:Landroid/telephony/mbms/DownloadStatusListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public greylist-max-o onStatusUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/mbms/InternalDownloadStatusListener$1;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/telephony/mbms/InternalDownloadStatusListener$1;-><init>(Landroid/telephony/mbms/InternalDownloadStatusListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V

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

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadStatusListener;->mIsStopped:Z

    return-void
.end method
