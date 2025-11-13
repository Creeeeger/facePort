.class public interface abstract Lcom/android/internal/listeners/ListenerExecutor;
.super Ljava/lang/Object;
.source "ListenerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;,
        Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;
    }
.end annotation


# direct methods
.method public static synthetic blacklist lambda$executeSafely$0(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    invoke-interface {p2, p0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->operate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    invoke-interface {p2, v1}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onFailure(Ljava/lang/Exception;)V

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, v1}, Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;->onFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    throw v1
.end method


# virtual methods
.method public blacklist executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method public blacklist executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            "T",
            "ListenerOperation::Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;TT",
            "ListenerOperation;",
            "Lcom/android/internal/listeners/ListenerExecutor$FailureCallback<",
            "TT",
            "ListenerOperation;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPreExecute()V

    const/4 v2, 0x1

    new-instance v4, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p2, p3, p4}, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    :cond_2
    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception v4

    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    :cond_4
    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    :cond_5
    throw v4
.end method
