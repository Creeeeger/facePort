.class public Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;
.super Landroid/hardware/camera2/DeviceInjectorSession;
.source "DeviceInjectorSessionImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;,
        Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;,
        Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;,
        Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;,
        Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ijt/DeviceIjtSessionImpl"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;

.field private blacklist mClosed:Z

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mInjectionPending:Z

.field private blacklist mInjectionStarted:Z

.field private blacklist mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

.field private final blacklist mInterfaceLock:Ljava/lang/Object;

.field private blacklist mLastPackageName:Ljava/lang/String;

.field private blacklist mLastSourceId:Ljava/lang/String;

.field private blacklist mLastTargetId:Ljava/lang/String;

.field private final blacklist mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private final blacklist mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

.field private final blacklist mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;


# direct methods
.method public static synthetic blacklist $r8$lambda$JdWvVPHY7EMdhAF2MBzfVMxFl4s(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->lambda$onInjectionStarted$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PvPxMMGeTZSua3b9SDq7exsTTJk(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->notifyError(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ROLuZso3IuV1XFV1VtuZsSDOtm8(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->lambda$onInjectionPendingStopped$5(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jzjfTJ4wq3wHt3ll53ZIZnH8X9s(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->lambda$setRemoteInjectorSession$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mQkBoDxNPpGh4ZlvBWcAOZcFOKQ(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->lambda$onInjectionStopped$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nfaeo6JqKxoZ51tM4ylG_B_cvb4(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->lambda$onInjectionPendingStarted$4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zTvZ3OAj0Fs_H22ABjsDDZREjyc(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->lambda$binderDied$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInterfaceLock(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusCallback(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopDrainer(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInjectorSession(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/IDeviceInjectorSession;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionError(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionPendingStarted(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionPendingStopped(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionStarted(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monInjectionStopped(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetRemoteInjectorSession(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/IDeviceInjectorSession;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->setRemoteInjectorSession(Landroid/hardware/IDeviceInjectorSession;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;Ljava/util/concurrent/Executor;)V
    .locals 5

    invoke-direct {p0}, Landroid/hardware/camera2/DeviceInjectorSession;-><init>()V

    new-instance v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mCallback:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mClosed:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastSourceId:Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$StopDrainListener-IA;)V

    const-string v4, "stop"

    invoke-direct {v0, v1, v2, v4}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;

    invoke-direct {v2, p0, v3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$PendingDrainListener-IA;)V

    const-string v3, "pending"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-void
.end method

.method private synthetic blacklist lambda$binderDied$0()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onError(I)V

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    iget-boolean v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v2}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onInjectionPendingStarted$4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onInjectionPendingStopped$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onInjectionStarted$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onInjectionStopped$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$setRemoteInjectorSession$1()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onSessionCreated(Landroid/hardware/camera2/DeviceInjectorSession;)V

    return-void
.end method

.method private blacklist notifyError(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStatusCallback:Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;->onError(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist onInjectionError(I)V
    .locals 4

    const-string v0, "ijt/DeviceIjtSessionImpl"

    const-string v1, "injector session error received, code %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string v1, "ijt/DeviceIjtSessionImpl"

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error from injector session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastSourceId:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionPending:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1, p2}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastTargetId:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mLastSourceId:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mStopDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskFinished()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectionStarted:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, p2, p3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist scheduleNotifyError(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

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

.method private blacklist setRemoteInjectorSession(Landroid/hardware/IDeviceInjectorSession;)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string v2, "ijt/DeviceIjtSessionImpl"

    const-string v3, "The device injector session has encountered a serious error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    invoke-interface {p1}, Landroid/hardware/IDeviceInjectorSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "ijt/DeviceIjtSessionImpl"

    const-string v4, "The device injector session has encountered a serious error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v5, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_3
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->scheduleNotifyError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    nop

    monitor-exit v0

    return-void

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ijt/DeviceIjtSessionImpl"

    const-string v2, "CameraService died unexpectedly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mClosed:Z

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    invoke-interface {v1}, Landroid/hardware/IDeviceInjectorSession;->stopDeviceInjector()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    invoke-interface {v1}, Landroid/hardware/IDeviceInjectorSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v2}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    nop

    throw v1

    :catch_0
    move-exception v1

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mPendingDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    :goto_0
    invoke-virtual {v1}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    nop

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getCallback()Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mCallback:Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorCallback;

    return-object v0
.end method

.method public blacklist getRemoteDevice(Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;)Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;
    .locals 1

    new-instance v0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;

    invoke-direct {v0, p0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$DeviceInjectorRemoteDevice;-><init>(Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;Landroid/hardware/camera2/DeviceInjectorSession$RemoteDevice;)V

    return-object v0
.end method

.method public blacklist setDeviceInjectorPending(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl;->mInjectorSession:Landroid/hardware/IDeviceInjectorSession;

    invoke-interface {v1, p1}, Landroid/hardware/IDeviceInjectorSession;->setDeviceInjectorPending(Z)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Landroid/os/ServiceSpecificException;

    const-string v3, "Camera service is currently unavailable"

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Landroid/hardware/camera2/utils/ExceptionUtils;->throwAsPublicException(Landroid/os/ServiceSpecificException;)Landroid/hardware/camera2/CameraAccessException;

    nop

    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DeviceInjectorSession is already closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
