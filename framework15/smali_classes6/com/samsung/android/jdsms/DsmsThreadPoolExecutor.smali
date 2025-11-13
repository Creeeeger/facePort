.class public final Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DsmsThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;
    }
.end annotation


# static fields
.field private static final blacklist KEEP_ALIVE_TIME_MS:I = 0x1f4

.field private static final blacklist MAXIMUM_THREADS:I = 0x14

.field private static final blacklist MINIMUM_THREADS:I = 0x4

.field private static final blacklist QUEUE_POOL_SIZE:I = 0x1f4

.field private static final blacklist SUBTAG:Ljava/lang/String; = "DsmsThreadPoolExecutor"

.field private static blacklist sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;


# instance fields
.field private blacklist isPaused:Z

.field private blacklist pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist unpaused:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 7

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x1f4

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    const/4 v1, 0x4

    const/16 v2, 0x14

    const-wide/16 v3, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isPaused:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread;-><init>(Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor$RejectedThread-IA;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;
    .locals 2

    const-class v0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    invoke-direct {v1}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;-><init>()V

    sput-object v1, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    :cond_0
    sget-object v1, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->sInstance:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public whitelist test-api beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist resume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isPaused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DsmsThreadPoolExecutor"

    const-string v1, "Resuming"

    invoke-static {v0, v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->isPaused:Z

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->unpaused:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
