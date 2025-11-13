.class public Landroid/os/HandlerThread;
.super Ljava/lang/Thread;
.source "HandlerThread.java"


# instance fields
.field private volatile blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mLooper:Landroid/os/Looper;

.field greylist-max-o mPriority:I

.field greylist-max-o mTid:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HandlerThread;->mPriority:I

    invoke-virtual {p0}, Landroid/os/HandlerThread;->onCreated()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    iput p2, p0, Landroid/os/HandlerThread;->mPriority:I

    invoke-virtual {p0}, Landroid/os/HandlerThread;->onCreated()V

    return-void
.end method


# virtual methods
.method public whitelist getLooper()Landroid/os/Looper;
    .locals 2

    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    iget-object v1, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public blacklist getThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    iget-object v0, p0, Landroid/os/HandlerThread;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/os/HandlerThread;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Landroid/os/HandlerThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public greylist-max-o getThreadHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public whitelist getThreadId()I
    .locals 1

    iget v0, p0, Landroid/os/HandlerThread;->mTid:I

    return v0
.end method

.method protected blacklist onCreated()V
    .locals 0

    return-void
.end method

.method protected blacklist onCreated$ravenwood()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/HandlerThread;->setDaemon(Z)V

    return-void
.end method

.method protected whitelist onLooperPrepared()V
    .locals 0

    return-void
.end method

.method public whitelist quit()Z
    .locals 2

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist quitSafely()Z
    .locals 2

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api run()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Landroid/os/HandlerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
