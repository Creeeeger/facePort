.class Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;
.super Landroid/hardware/camera2/extension/IRequestCallback$Stub;
.source "RequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/RequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$D6CUWulxuJuwufM1h9E-TSpjDtQ(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureCompleted$2(ILandroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$V8DXZ_sDSRZw5Awg3xDu2E-zGi0(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureStarted$0(IJJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ezGATn_0lweB2BFu0DRZBG7mAjE(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureSequenceAborted$6(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k_f6CireYU2Rtfmy5lIDubG5DEE(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureProgressed$1(ILandroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mbahspFMcisar8_I5Ve3I9avIbk(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureSequenceCompleted$5(IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ve6Sbm4B-Z8IeVXKj3y3OPTxCwg(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureFailed$3(ILandroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zr4P29ui7n7QVACbMNkS-w_xGBw(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->lambda$onCaptureBufferLost$4(IJI)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/RequestProcessor$Request;",
            ">;",
            "Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IRequestCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iput-object p1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    iput-object p3, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureBufferLost$4(IJI)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureBufferLost(Landroid/hardware/camera2/extension/RequestProcessor$Request;JI)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureCompleted$2(ILandroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, v1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureCompleted(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureFailed$3(ILandroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, v1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureFailed(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureProgressed$1(ILandroid/hardware/camera2/CaptureResult;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    invoke-interface {v0, v1, p2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureProgressed(Landroid/hardware/camera2/extension/RequestProcessor$Request;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceAborted$6(I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    invoke-interface {v0, p1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureSequenceAborted(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureSequenceCompleted$5(IJ)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$onCaptureStarted$0(IJJ)V
    .locals 6

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mCallback:Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;

    iget-object v1, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/RequestProcessor$Request;

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallback;->onCaptureStarted(Landroid/hardware/camera2/extension/RequestProcessor$Request;JJ)V

    return-void
.end method


# virtual methods
.method public blacklist onCaptureBufferLost(IJI)V
    .locals 10

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda4;

    move-object v3, v9

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJI)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist onCaptureCompleted(ILandroid/hardware/camera2/extension/ParcelTotalCaptureResult;)V
    .locals 13

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    iget-object v1, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    iget-object v2, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/ParcelCaptureResult;

    new-instance v11, Landroid/hardware/camera2/CaptureResult;

    iget-object v5, v3, Landroid/hardware/camera2/extension/ParcelCaptureResult;->cameraId:Ljava/lang/String;

    iget-object v6, v3, Landroid/hardware/camera2/extension/ParcelCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v7, v3, Landroid/hardware/camera2/extension/ParcelCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    iget v8, v3, Landroid/hardware/camera2/extension/ParcelCaptureResult;->sequenceId:I

    iget-wide v9, v3, Landroid/hardware/camera2/extension/ParcelCaptureResult;->frameNumber:J

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v12, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v3, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->logicalCameraId:Ljava/lang/String;

    iget-object v4, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v5, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    iget v6, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sequenceId:I

    iget-wide v7, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->frameNumber:J

    iget v10, p2, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sessionId:I

    move-object v2, v12

    move-object v9, v1

    move-object v11, v0

    invoke-direct/range {v2 .. v11}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, p1, v2}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public blacklist onCaptureFailed(ILandroid/hardware/camera2/extension/CaptureFailure;)V
    .locals 9

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/camera2/CaptureFailure;

    iget-object v2, p2, Landroid/hardware/camera2/extension/CaptureFailure;->request:Landroid/hardware/camera2/CaptureRequest;

    iget v3, p2, Landroid/hardware/camera2/extension/CaptureFailure;->reason:I

    iget-boolean v4, p2, Landroid/hardware/camera2/extension/CaptureFailure;->dropped:Z

    iget v5, p2, Landroid/hardware/camera2/extension/CaptureFailure;->sequenceId:I

    iget-wide v6, p2, Landroid/hardware/camera2/extension/CaptureFailure;->frameNumber:J

    iget-object v8, p2, Landroid/hardware/camera2/extension/CaptureFailure;->errorPhysicalCameraId:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/CaptureFailure;-><init>(Landroid/hardware/camera2/CaptureRequest;IZIJLjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, v0}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist onCaptureProgressed(ILandroid/hardware/camera2/extension/ParcelCaptureResult;)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/camera2/CaptureResult;

    iget-object v2, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->cameraId:Ljava/lang/String;

    iget-object v3, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v4, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    iget v5, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->sequenceId:I

    iget-wide v6, p2, Landroid/hardware/camera2/extension/ParcelCaptureResult;->frameNumber:J

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJ)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1, v0}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;ILandroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist onCaptureSequenceAborted(I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onCaptureSequenceCompleted(IJ)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJ)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onCaptureStarted(IJJ)V
    .locals 13

    move-object v8, p0

    move v9, p1

    iget-object v0, v8, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    iget-object v0, v8, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v12, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda2;

    move-object v1, v12

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/extension/RequestProcessor$RequestCallbackImpl;IJJ)V

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
