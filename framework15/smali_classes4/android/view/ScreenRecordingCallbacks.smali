.class public final Landroid/view/ScreenRecordingCallbacks;
.super Ljava/lang/Object;
.source "ScreenRecordingCallbacks.java"


# static fields
.field private static blacklist sInstance:Landroid/view/ScreenRecordingCallbacks;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

.field private final blacklist mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKnoxCallbackNotifier:Landroid/window/IScreenRecordingCallback;

.field private blacklist mKnoxState:I

.field private blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyCallbacks(Landroid/view/ScreenRecordingCallbacks;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ScreenRecordingCallbacks;->notifyCallbacks(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCallbacks(Landroid/view/ScreenRecordingCallbacks;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ScreenRecordingCallbacks;->notifyCallbacks(IZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    iput v0, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxState:I

    return-void
.end method

.method private blacklist checkAndNotifyCallbacks(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroid/view/ScreenRecordingCallbacks;->isRecordingStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static blacklist getInstance()Landroid/view/ScreenRecordingCallbacks;
    .locals 2

    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/ScreenRecordingCallbacks;->sInstance:Landroid/view/ScreenRecordingCallbacks;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/ScreenRecordingCallbacks;

    invoke-direct {v1}, Landroid/view/ScreenRecordingCallbacks;-><init>()V

    sput-object v1, Landroid/view/ScreenRecordingCallbacks;->sInstance:Landroid/view/ScreenRecordingCallbacks;

    :cond_0
    sget-object v1, Landroid/view/ScreenRecordingCallbacks;->sInstance:Landroid/view/ScreenRecordingCallbacks;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getWindowManagerService()Landroid/view/IWindowManager;
    .locals 1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    return-object v0
.end method

.method private blacklist isRecordingStopped()Z
    .locals 1

    iget v0, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxState:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$notifyCallbacks$0(Ljava/util/function/Consumer;I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyCallbacks$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V
    .locals 1

    new-instance v0, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist needToNotifyClient(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/ScreenRecordingCallbacks;->isRecordingStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private blacklist notifyCallbacks(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ScreenRecordingCallbacks;->notifyCallbacks(IZ)V

    return-void
.end method

.method private blacklist notifyCallbacks(IZ)V
    .locals 7

    const/4 v0, 0x0

    sget-object v1, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/ScreenRecordingCallbacks;->needToNotifyClient(I)Z

    move-result v2

    move v0, v2

    invoke-direct {p0, p1, p2}, Landroid/view/ScreenRecordingCallbacks;->updateRecordingState(IZ)V

    iget-object v2, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/Consumer;

    iget-object v5, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5, v4, p1}, Landroid/view/ScreenRecordingCallbacks$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2, v0}, Landroid/view/ScreenRecordingCallbacks;->checkAndNotifyCallbacks(Ljava/util/List;Z)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private blacklist updateRecordingState(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iput p1, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxState:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    :goto_0
    return-void
.end method


# virtual methods
.method blacklist addCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/ScreenRecordingCallbacks$1;

    invoke-direct {v1, p0}, Landroid/view/ScreenRecordingCallbacks$1;-><init>(Landroid/view/ScreenRecordingCallbacks;)V

    iput-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v4, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    invoke-interface {v1, v4}, Landroid/view/IWindowManager;->registerScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput v4, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    if-nez v1, :cond_3

    new-instance v1, Landroid/view/ScreenRecordingCallbacks$2;

    invoke-direct {v1, p0}, Landroid/view/ScreenRecordingCallbacks$2;-><init>(Landroid/view/ScreenRecordingCallbacks;)V

    iput-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxCallbackNotifier:Landroid/window/IScreenRecordingCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v4, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    invoke-interface {v1, v4}, Landroid/view/IWindowManager;->registerKnoxRemoteScreenCallback(Landroid/window/IScreenRecordingCallback;)Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput v2, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxState:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_3
    :goto_3
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Landroid/view/ScreenRecordingCallbacks;->mState:I

    iget v2, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxState:I

    or-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method blacklist removeCallback(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/view/ScreenRecordingCallbacks;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->unregisterScreenRecordingCallback(Landroid/window/IScreenRecordingCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mCallbackNotifier:Landroid/window/IScreenRecordingCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/view/ScreenRecordingCallbacks;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->unregisterKnoxRemoteScreenCallback(Landroid/window/IScreenRecordingCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    iput-object v1, p0, Landroid/view/ScreenRecordingCallbacks;->mKnoxCallbackNotifier:Landroid/window/IScreenRecordingCallback;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
