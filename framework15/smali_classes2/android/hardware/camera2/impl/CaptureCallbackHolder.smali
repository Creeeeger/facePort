.class public Landroid/hardware/camera2/impl/CaptureCallbackHolder;
.super Ljava/lang/Object;
.source "CaptureCallbackHolder.java"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/impl/CaptureCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHasBatchedOutputs:Z

.field private final blacklist mRepeating:Z

.field private final blacklist mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionId:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CaptureCallback;Ljava/util/List;Ljava/util/concurrent/Executor;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/impl/CaptureCallback;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iput-boolean p4, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRepeating:Z

    iput-object p3, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CaptureCallback;

    iput p5, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mSessionId:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->isPartOfCRequestList()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mHasBatchedOutputs:Z

    return-void

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must have a valid handler and a valid callback"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getCallback()Landroid/hardware/camera2/impl/CaptureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mCallback:Landroid/hardware/camera2/impl/CaptureCallback;

    return-object v0
.end method

.method public blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public blacklist getRequest()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequest(I)Landroid/hardware/camera2/CaptureRequest;
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Requested subsequenceId %d is negative"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Requested subsequenceId %d is larger than request list size %d."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRequestCount()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getSessionId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mSessionId:I

    return v0
.end method

.method public blacklist hasBatchedOutputs()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mHasBatchedOutputs:Z

    return v0
.end method

.method public blacklist isRepeating()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->mRepeating:Z

    return v0
.end method
