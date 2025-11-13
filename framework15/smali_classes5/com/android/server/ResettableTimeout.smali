.class abstract Lcom/android/server/ResettableTimeout;
.super Ljava/lang/Object;
.source "ResettableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ResettableTimeout$T;
    }
.end annotation


# instance fields
.field private greylist mLock:Landroid/os/ConditionVariable;

.field private volatile greylist mOffAt:J

.field private volatile blacklist mOffCalled:Z

.field private blacklist mThread:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffAt(Lcom/android/server/ResettableTimeout;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOffCalled(Lcom/android/server/ResettableTimeout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThread(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    invoke-virtual {p0}, Lcom/android/server/ResettableTimeout;->off()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist go(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/android/server/ResettableTimeout$T;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$T-IA;)V

    iput-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/ResettableTimeout;->on(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract blacklist off()V
.end method

.method public abstract blacklist on(Z)V
.end method
