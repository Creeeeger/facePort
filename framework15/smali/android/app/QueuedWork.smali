.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QueuedWork$QueuedWorkHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DELAY:J = 0x64L

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field private static final greylist-max-o MAX_WAIT_TIME_MILLIS:J = 0x200L

.field private static greylist-max-o mNumWaits:I

.field private static final greylist-max-o mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

.field private static greylist-max-o sCanDelay:Z

.field private static final greylist sFinishers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sHandler:Landroid/os/Handler;

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sProcessingWork:Ljava/lang/Object;

.field private static greylist-max-o sWork:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smprocessPendingWork()V
    .locals 0

    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-class v0, Landroid/app/QueuedWork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/QueuedWork;->sCanDelay:Z

    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    sput-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/4 v0, 0x0

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addFinisher(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist getHandler()Landroid/os/Handler;
    .locals 4

    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/app/QueuedWork$QueuedWorkHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/QueuedWork$QueuedWorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    :cond_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist handlerRemoveMessages(I)V
    .locals 2

    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o hasPendingWork()Z
    .locals 2

    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o processPendingWork()V
    .locals 6

    const-wide/16 v0, 0x0

    sget-object v2, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    sput-object v5, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/app/QueuedWork;->handlerRemoveMessages(I)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public static greylist-max-r queue(Ljava/lang/Runnable;Z)V
    .locals 5

    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    sget-boolean v3, Landroid/app/QueuedWork;->sCanDelay:Z

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static greylist removeFinisher(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist resetHandler()V
    .locals 2

    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    const/4 v1, 0x0

    sput-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o waitToFinish()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Landroid/app/QueuedWork;->handlerRemoveMessages(I)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/app/QueuedWork;->sCanDelay:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    :try_start_1
    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    :goto_0
    :try_start_2
    sget-object v5, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v6, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v6, :cond_3

    nop

    sput-boolean v4, Landroid/app/QueuedWork;->sCanDelay:Z

    nop

    sget-object v5, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    sget-object v8, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    sget v8, Landroid/app/QueuedWork;->mNumWaits:I

    add-int/2addr v8, v4

    sput v8, Landroid/app/QueuedWork;->mNumWaits:I

    sget v4, Landroid/app/QueuedWork;->mNumWaits:I

    rem-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_1

    const-wide/16 v8, 0x200

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    :cond_1
    sget-object v4, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    sget-object v8, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "waited: "

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :cond_3
    :try_start_5
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v5

    sput-boolean v4, Landroid/app/QueuedWork;->sCanDelay:Z

    throw v5

    :catchall_3
    move-exception v4

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4

    :catchall_4
    move-exception v4

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v4
.end method
