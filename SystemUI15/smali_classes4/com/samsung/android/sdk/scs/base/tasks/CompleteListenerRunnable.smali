.class public final Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCompletion:Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;

.field public final mTask:Lcom/samsung/android/sdk/scs/base/tasks/Task;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerRunnable;->mCompletion:Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerRunnable;->mTask:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerRunnable;->mCompletion:Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerRunnable;->mCompletion:Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;

    iget-object v1, v1, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerCompletion;->mListener:Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/CompleteListenerRunnable;->mTask:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    invoke-interface {v1, p0}, Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;->onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

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
