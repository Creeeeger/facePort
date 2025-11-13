.class public Landroid/telephony/mbms/InternalDownloadProgressListener;
.super Landroid/telephony/mbms/IDownloadProgressListener$Stub;
.source "InternalDownloadProgressListener.java"


# instance fields
.field private final greylist-max-o mAppListener:Landroid/telephony/mbms/DownloadProgressListener;

.field private final greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mIsStopped:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppListener(Landroid/telephony/mbms/InternalDownloadProgressListener;)Landroid/telephony/mbms/DownloadProgressListener;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mAppListener:Landroid/telephony/mbms/DownloadProgressListener;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/mbms/DownloadProgressListener;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/mbms/IDownloadProgressListener$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mIsStopped:Z

    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mAppListener:Landroid/telephony/mbms/DownloadProgressListener;

    iput-object p2, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public greylist-max-o onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    iget-boolean v0, v9, Landroid/telephony/mbms/InternalDownloadProgressListener;->mIsStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    iget-object v0, v9, Landroid/telephony/mbms/InternalDownloadProgressListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v12, Landroid/telephony/mbms/InternalDownloadProgressListener$1;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/telephony/mbms/InternalDownloadProgressListener$1;-><init>(Landroid/telephony/mbms/InternalDownloadProgressListener;Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public greylist-max-o stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/mbms/InternalDownloadProgressListener;->mIsStopped:Z

    return-void
.end method
