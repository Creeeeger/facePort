.class public abstract Lcom/android/settingslib/utils/AsyncLoaderCompat;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mResult:Ljava/lang/Object;


# virtual methods
.method public final deliverResult(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-eq v0, p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onCanceled(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract onDiscardResult(Ljava/lang/Object;)V
.end method

.method public final onReset()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onStopLoading()V

    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->onDiscardResult(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    return-void
.end method

.method public onStartLoading()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/utils/AsyncLoaderCompat;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    iget-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/utils/AsyncLoaderCompat;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onForceLoad()V

    :cond_2
    return-void
.end method

.method public onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Landroidx/loader/content/AsyncTaskLoader;->onCancelLoad()Z

    return-void
.end method
