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

    .line 52
    const-class v0, Landroid/app/QueuedWork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 93
    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    sput-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 95
    const/4 v0, 0x0

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist addFinisher(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 130
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist getHandler()Landroid/os/Handler;
    .locals 4

    .line 104
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v2, Landroid/app/QueuedWork$QueuedWorkHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/QueuedWork$QueuedWorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    .line 112
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o hasPendingWork()Z
    .locals 2

    .line 240
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
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

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o processPendingWork()V
    .locals 7

    .line 246
    const-wide/16 v0, 0x0

    .line 252
    .local v0, "startTime":J
    sget-object v2, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    monitor-enter v2

    .line 255
    :try_start_0
    sget-object v3, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :try_start_1
    sget-object v4, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 257
    .local v4, "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    sput-object v5, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    .line 260
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :try_start_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 264
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 265
    .local v5, "w":Ljava/lang/Runnable;
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 266
    .end local v5    # "w":Ljava/lang/Runnable;
    goto :goto_0

    .line 273
    .end local v4    # "work":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Runnable;>;"
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    return-void

    .line 261
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "startTime":J
    :try_start_4
    throw v4

    .line 273
    .restart local v0    # "startTime":J
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public static greylist-max-r queue(Ljava/lang/Runnable;Z)V
    .locals 5
    .param p0, "work"    # Ljava/lang/Runnable;
    .param p1, "shouldDelay"    # Z

    .line 223
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 225
    .local v0, "handler":Landroid/os/Handler;
    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    sget-object v2, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v2, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 228
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    sget-boolean v3, Landroid/app/QueuedWork;->sCanDelay:Z

    if-eqz v3, :cond_0

    .line 229
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    :goto_0
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static greylist removeFinisher(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "finisher"    # Ljava/lang/Runnable;

    .line 142
    sget-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o waitToFinish()V
    .locals 12

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 159
    .local v2, "hadMessages":Z
    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 161
    .local v3, "handler":Landroid/os/Handler;
    sget-object v4, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 162
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 164
    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    :cond_0
    const/4 v6, 0x0

    sput-boolean v6, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 174
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 176
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 178
    .local v4, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    invoke-static {}, Landroid/app/QueuedWork;->processPendingWork()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 180
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 181
    nop

    .line 187
    :goto_0
    :try_start_2
    sget-object v6, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 188
    :try_start_3
    sget-object v7, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    .line 189
    .local v7, "finisher":Ljava/lang/Runnable;
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    if-nez v7, :cond_4

    .line 192
    nop

    .line 198
    .end local v7    # "finisher":Ljava/lang/Runnable;
    sput-boolean v5, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 199
    nop

    .line 201
    monitor-enter v6

    .line 202
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 204
    .local v7, "waitTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_1

    if-eqz v2, :cond_3

    .line 205
    :cond_1
    sget-object v9, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 206
    sget v10, Landroid/app/QueuedWork;->mNumWaits:I

    add-int/2addr v10, v5

    sput v10, Landroid/app/QueuedWork;->mNumWaits:I

    .line 208
    rem-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_2

    const-wide/16 v10, 0x200

    cmp-long v5, v7, v10

    if-lez v5, :cond_3

    .line 209
    :cond_2
    sget-object v5, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "waited: "

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 212
    .end local v7    # "waitTime":J
    :cond_3
    monitor-exit v6

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 195
    .local v7, "finisher":Ljava/lang/Runnable;
    :cond_4
    :try_start_5
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 196
    .end local v7    # "finisher":Ljava/lang/Runnable;
    goto :goto_0

    .line 189
    :catchall_1
    move-exception v7

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "startTime":J
    .end local v2    # "hadMessages":Z
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 198
    .restart local v0    # "startTime":J
    .restart local v2    # "hadMessages":Z
    .restart local v3    # "handler":Landroid/os/Handler;
    .restart local v4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_2
    move-exception v6

    sput-boolean v5, Landroid/app/QueuedWork;->sCanDelay:Z

    .line 199
    throw v6

    .line 180
    :catchall_3
    move-exception v5

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 181
    throw v5

    .line 174
    .end local v4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_4
    move-exception v5

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v5
.end method
