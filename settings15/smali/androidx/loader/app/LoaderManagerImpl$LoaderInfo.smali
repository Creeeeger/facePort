.class public final Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;
.super Landroidx/lifecycle/MutableLiveData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mArgs:Landroid/os/Bundle;

.field public final mId:I

.field public mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final mLoader:Landroidx/loader/content/Loader;

.field public mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

.field public mPriorLoader:Landroidx/loader/content/Loader;


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Landroidx/loader/content/Loader;Landroidx/loader/content/Loader;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    iput-object p3, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    iput-object p4, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    iget-object p2, p3, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    if-nez p2, :cond_0

    iput-object p0, p3, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    iput p1, p3, Landroidx/loader/content/Loader;->mId:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a listener registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final destroy(Z)Landroidx/loader/content/Loader;
    .locals 5

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->onCancelLoad()Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/loader/content/Loader;->mAbandoned:Z

    invoke-virtual {v0}, Landroidx/loader/content/Loader;->onAbandon()V

    iget-object v2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->removeObserver(Landroidx/lifecycle/Observer;)V

    if-eqz p1, :cond_0

    iget-boolean v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    iget-object v4, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-interface {v3, v4}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroidx/loader/content/Loader;)V

    :cond_0
    iget-object v3, v0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v3, :cond_5

    if-ne v3, p0, :cond_4

    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    if-eqz v2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroidx/loader/content/Loader;->onReset()V

    iput-boolean v1, v0, Landroidx/loader/content/Loader;->mReset:Z

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroidx/loader/content/Loader;->mStarted:Z

    iput-boolean p1, v0, Landroidx/loader/content/Loader;->mAbandoned:Z

    iput-boolean p1, v0, Landroidx/loader/content/Loader;->mContentChanged:Z

    iput-boolean p1, v0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempting to unregister the wrong listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No listener register"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final markForRedelivery()V
    .locals 2

    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public final onActive()V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    return-void
.end method

.method public final onInactive()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStopLoading()V

    return-void
.end method

.method public final removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mObserver:Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/loader/content/Loader;->onReset()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/loader/content/Loader;->mReset:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/loader/content/Loader;->mStarted:Z

    iput-boolean v0, p1, Landroidx/loader/content/Loader;->mAbandoned:Z

    iput-boolean v0, p1, Landroidx/loader/content/Loader;->mContentChanged:Z

    iput-boolean v0, p1, Landroidx/loader/content/Loader;->mProcessingChange:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mPriorLoader:Landroidx/loader/content/Loader;

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
