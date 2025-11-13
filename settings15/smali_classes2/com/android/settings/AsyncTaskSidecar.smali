.class public abstract Lcom/android/settings/AsyncTaskSidecar;
.super Lcom/android/settings/SidecarFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAsyncTask:Lcom/google/common/util/concurrent/ListenableFuture;


# virtual methods
.method public abstract doInBackground(Lcom/android/settings/network/SwitchSlotSidecar$Param;)Ljava/lang/Object;
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/AsyncTaskSidecar;->mAsyncTask:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SidecarFragment;->onDestroy()V

    return-void
.end method

.method public abstract onPostExecute$1(Ljava/lang/Object;)V
.end method

.method public final run(Lcom/android/settings/network/SwitchSlotSidecar$Param;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    iget-object v1, p0, Lcom/android/settings/AsyncTaskSidecar;->mAsyncTask:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/AsyncTaskSidecar$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/AsyncTaskSidecar;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AsyncTaskSidecar;->mAsyncTask:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
