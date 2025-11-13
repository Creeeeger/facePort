.class public final Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mListener:Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;->mListener:Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;->mListener:Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerRunnable;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerRunnable;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
