.class Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCancel:Ljava/lang/Runnable;

.field private final mCommand:Ljava/lang/Runnable;

.field private final mDelay:J

.field private final mLock:Ljava/lang/Object;

.field private final mUnit:Ljava/util/concurrent/TimeUnit;

.field final synthetic this$0:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->this$0:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCommand:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mDelay:J

    iput-object p5, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCancel:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCancel:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCancel:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->this$0:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    invoke-static {v1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->-$$Nest$fgetmExecutor(Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mDelay:J

    iget-object v4, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCancel:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->this$0:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    invoke-static {v1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->-$$Nest$fgetmExecutor(Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCancel:Ljava/lang/Runnable;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
