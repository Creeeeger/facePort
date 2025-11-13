.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;
.super Landroid/hardware/camera2/impl/CaptureCallback;
.source "CameraCaptureSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxyWithExecutor(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

.field final synthetic blacklist val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 643
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p2, p3}, Landroid/hardware/camera2/impl/CaptureCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCaptureBufferLost$7$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 6
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 751
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureCompleted$3$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 693
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureFailed$4$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 707
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void
.end method

.method synthetic blacklist lambda$onCapturePartial$1$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 665
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCapturePartial(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureProgressed$2$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 679
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureSequenceAborted$6$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "sequenceId"    # I

    .line 736
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureSequenceCompleted$5$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 721
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureStarted$0$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 7
    .param p1, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 650
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    move-object v0, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method

.method public blacklist onCaptureBufferLost(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 12
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 748
    move-object v8, p0

    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 749
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 751
    .local v9, "ident":J
    :try_start_0
    iget-object v0, v8, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, v8, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v11, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda2;

    move-object v1, v11

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    goto :goto_0

    .line 754
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    throw v0

    .line 757
    .end local v9    # "ident":J
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 690
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 693
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    goto :goto_0

    .line 696
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    throw v2

    .line 699
    .end local v0    # "ident":J
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 704
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 707
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v3, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 711
    goto :goto_0

    .line 710
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 711
    throw v2

    .line 713
    .end local v0    # "ident":J
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 662
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 665
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v3, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    goto :goto_0

    .line 668
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    throw v2

    .line 671
    .end local v0    # "ident":J
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 676
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 679
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, p2, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    goto :goto_0

    .line 682
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    throw v2

    .line 685
    .end local v0    # "ident":J
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 5
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I

    .line 733
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 736
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 740
    goto :goto_0

    .line 739
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 740
    throw v2

    .line 742
    .end local v0    # "ident":J
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$mfinishPendingSequence(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    .line 743
    return-void
.end method

.method public blacklist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
    .locals 10
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 718
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 721
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v9, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;

    move-object v3, v9

    move-object v4, p0

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    goto :goto_0

    .line 724
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    throw v2

    .line 727
    .end local v0    # "ident":J
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$mfinishPendingSequence(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    .line 728
    return-void
.end method

.method public blacklist onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 13
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 647
    move-object v9, p0

    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-eqz v0, :cond_0

    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 650
    .local v10, "ident":J
    :try_start_0
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, v9, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->val$callback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v12, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;

    move-object v1, v12

    move-object v2, p0

    move-object v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    goto :goto_0

    .line 654
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    throw v0

    .line 657
    .end local v10    # "ident":J
    :cond_0
    :goto_0
    return-void
.end method
