.class public Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;
.super Ljava/lang/Object;
.source "ExtensionSessionStatsAggregator.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mIsDone:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mStats:Landroid/hardware/CameraExtensionSessionStats;


# direct methods
.method public static synthetic blacklist $r8$lambda$2y3LaUvRTJbQnC8Vl_i9wSPZrkY(Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->lambda$commit$0(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mIsDone:Z

    new-instance v0, Landroid/hardware/CameraExtensionSessionStats;

    invoke-direct {v0}, Landroid/hardware/CameraExtensionSessionStats;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    iget-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    const-string v1, ""

    iput-object v1, v0, Landroid/hardware/CameraExtensionSessionStats;->key:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    iput-object p1, v0, Landroid/hardware/CameraExtensionSessionStats;->cameraId:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    iput-boolean p2, v0, Landroid/hardware/CameraExtensionSessionStats;->isAdvanced:Z

    return-void
.end method

.method private synthetic blacklist lambda$commit$0(Z)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mIsDone:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mIsDone:Z

    iget-object v1, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    iget-object v2, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/CameraExtensionSessionStats;->key:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist prettyPrintStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/hardware/CameraExtensionSessionStats;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n  key: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/CameraExtensionSessionStats;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\n  cameraId: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/CameraExtensionSessionStats;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\n  clientName: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/CameraExtensionSessionStats;->clientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\n  type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/CameraExtensionSessionStats;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\n  isAdvanced: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/CameraExtensionSessionStats;->isAdvanced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\n  captureFormat: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/CameraExtensionSessionStats;->captureFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist commit(Z)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist getStatsKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    iget-object v0, v0, Landroid/hardware/CameraExtensionSessionStats;->key:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setCaptureFormat(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mIsDone:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    iput p1, v1, Landroid/hardware/CameraExtensionSessionStats;->captureFormat:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setClientName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mIsDone:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    iput-object p1, v1, Landroid/hardware/CameraExtensionSessionStats;->clientName:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setExtensionType(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mIsDone:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/ExtensionSessionStatsAggregator;->mStats:Landroid/hardware/CameraExtensionSessionStats;

    iput p1, v1, Landroid/hardware/CameraExtensionSessionStats;->type:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
