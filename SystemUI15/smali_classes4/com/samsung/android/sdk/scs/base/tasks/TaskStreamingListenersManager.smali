.class public final Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingListenersManager;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final processCompletion(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->mQueue:Ljava/util/Queue;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->mIsProcessingCompletion:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->mIsProcessingCompletion:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "TaskStreamingListenersManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processCompletionStreaming: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->mQueue:Ljava/util/Queue;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->mQueue:Ljava/util/Queue;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;->onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskListenersManager;->mIsProcessingCompletion:Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
