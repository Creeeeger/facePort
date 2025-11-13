.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 1990
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1994
    return-object p0
.end method

.method public greylist-max-o onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .locals 23
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    .line 2050
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v10

    .line 2051
    .local v10, "requestId":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v11

    .line 2052
    .local v11, "frameNumber":J
    nop

    .line 2053
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedRegularFrameNumber()J

    move-result-wide v13

    .line 2054
    .local v13, "lastCompletedRegularFrameNumber":J
    nop

    .line 2055
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedReprocessFrameNumber()J

    move-result-wide v15

    .line 2056
    .local v15, "lastCompletedReprocessFrameNumber":J
    nop

    .line 2057
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedZslFrameNumber()J

    move-result-wide v17

    .line 2067
    .local v17, "lastCompletedZslFrameNumber":J
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v8, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2068
    :try_start_0
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v8

    return-void

    .line 2073
    :cond_0
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    .line 2074
    :try_start_1
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, p1

    move-wide/from16 v4, p2

    :try_start_2
    invoke-virtual {v0, v6, v4, v5}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    .line 2076
    monitor-exit v8

    return-void

    .line 2130
    :catchall_0
    move-exception v0

    move-object/from16 v6, p1

    move-wide/from16 v4, p2

    goto :goto_1

    .line 2082
    :cond_1
    move-object/from16 v6, p1

    move-wide/from16 v4, p2

    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-wide v2, v13

    move-wide v4, v15

    move-wide/from16 v6, v17

    invoke-static/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;JJJ)V

    .line 2086
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    move-object/from16 v19, v0

    .line 2088
    .local v19, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    if-nez v19, :cond_2

    .line 2089
    monitor-exit v8

    return-void

    .line 2092
    :cond_2
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v8

    return-void

    .line 2095
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide/from16 v20, v0

    .line 2097
    .local v20, "ident":J
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v19

    move-wide/from16 v5, p2

    move-object v9, v7

    move-object/from16 v22, v8

    move-wide v7, v11

    :try_start_4
    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/impl/CaptureCallbackHolder;JJ)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2128
    :try_start_5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2129
    nop

    .line 2130
    .end local v20    # "ident":J
    monitor-exit v22

    .line 2131
    return-void

    .line 2128
    .restart local v20    # "ident":J
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v22, v8

    :goto_0
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2129
    nop

    .end local v10    # "requestId":I
    .end local v11    # "frameNumber":J
    .end local v13    # "lastCompletedRegularFrameNumber":J
    .end local v15    # "lastCompletedReprocessFrameNumber":J
    .end local v17    # "lastCompletedZslFrameNumber":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .end local p1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local p2    # "timestamp":J
    throw v0

    .line 2130
    .end local v19    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v20    # "ident":J
    .restart local v10    # "requestId":I
    .restart local v11    # "frameNumber":J
    .restart local v13    # "lastCompletedRegularFrameNumber":J
    .restart local v15    # "lastCompletedReprocessFrameNumber":J
    .restart local v17    # "lastCompletedZslFrameNumber":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .restart local p1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .restart local p2    # "timestamp":J
    :catchall_3
    move-exception v0

    :goto_1
    move-object/from16 v22, v8

    :goto_2
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_2
.end method

.method public greylist-max-o onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 1999
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2000
    return-void
.end method

.method public greylist-max-o onDeviceIdle()V
    .locals 1

    .line 2045
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onDeviceIdle()V

    .line 2046
    return-void
.end method

.method public greylist-max-o onPrepared(I)V
    .locals 5
    .param p1, "streamId"    # I

    .line 2316
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2319
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2320
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onPrepared(I)V

    .line 2321
    monitor-exit v0

    return-void

    .line 2324
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 2325
    .local v1, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    .line 2326
    .local v2, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2328
    if-nez v2, :cond_1

    return-void

    .line 2330
    :cond_1
    if-nez v1, :cond_2

    .line 2331
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "onPrepared invoked for unknown output Surface"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    return-void

    .line 2334
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v0

    .line 2335
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 2336
    .local v4, "surface":Landroid/view/Surface;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onSurfacePrepared(Landroid/view/Surface;)V

    .line 2337
    .end local v4    # "surface":Landroid/view/Surface;
    goto :goto_0

    .line 2338
    :cond_3
    return-void

    .line 2326
    .end local v0    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v1    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v2    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o onRepeatingRequestError(JI)V
    .locals 6
    .param p1, "lastFrameNumber"    # J
    .param p3, "repeatingRequestId"    # I

    .line 2009
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2011
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 2027
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2028
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onRepeatingRequestError(JI)V

    .line 2030
    monitor-exit v0

    return-void

    .line 2033
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I

    move-result-object v5

    invoke-static {v1, v4, p1, p2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mcheckEarlyTriggerSequenceCompleteLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ[I)V

    .line 2036
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, p3, :cond_2

    .line 2037
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V

    .line 2038
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V

    .line 2040
    :cond_2
    monitor-exit v0

    .line 2041
    return-void

    .line 2012
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, p3, :cond_4

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2014
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resuming stop of failed repeating request with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I

    move-result-object v5

    invoke-static {v1, v4, p1, p2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mcheckEarlyTriggerSequenceCompleteLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ[I)V

    .line 2019
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V

    .line 2020
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V

    .line 2022
    :cond_4
    monitor-exit v0

    return-void

    .line 2040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onRequestQueueEmpty()V
    .locals 2

    .line 2348
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2351
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2352
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onRequestQueueEmpty()V

    .line 2353
    monitor-exit v0

    return-void

    .line 2356
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v1

    .line 2357
    .local v1, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2359
    if-nez v1, :cond_1

    return-void

    .line 2361
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onRequestQueueEmpty()V

    .line 2362
    return-void

    .line 2357
    .end local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .locals 30
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p3, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2137
    move-object/from16 v13, p0

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v9

    .line 2138
    .local v9, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v14

    .line 2145
    .local v14, "frameNumber":J
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2146
    :try_start_0
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 2304
    :catchall_0
    move-exception v0

    move/from16 v16, v9

    move-wide/from16 v27, v14

    move-object v14, v12

    goto/16 :goto_4

    .line 2151
    :cond_0
    :try_start_2
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v0, :cond_1

    .line 2152
    :try_start_3
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v8, p3

    :try_start_4
    invoke-virtual {v0, v11, v10, v8}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 2154
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 2304
    :catchall_1
    move-exception v0

    move-object/from16 v8, p3

    move/from16 v16, v9

    move-wide/from16 v27, v14

    move-object v14, v12

    goto/16 :goto_4

    .line 2158
    :cond_1
    move-object/from16 v8, p3

    :try_start_5
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2159
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mgetCharacteristics(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 2158
    invoke-virtual {v11, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 2161
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2162
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    move-object v7, v0

    .line 2163
    .local v7, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    move-object v6, v0

    .line 2165
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    nop

    .line 2166
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getPartialResultCount()I

    move-result v0

    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move/from16 v29, v0

    .line 2167
    .local v29, "isPartialResult":Z
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 2170
    .local v26, "requestType":I
    if-nez v7, :cond_3

    .line 2177
    :try_start_6
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/16 v27, 0x0

    move-object/from16 v22, v0

    move/from16 v23, v9

    move-wide/from16 v24, v14

    move/from16 v28, v29

    invoke-static/range {v22 .. v28}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V

    .line 2180
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    .line 2183
    :cond_3
    :try_start_7
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-eqz v0, :cond_4

    .line 2190
    :try_start_8
    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v0, 0x0

    move v2, v9

    move-wide v3, v14

    move/from16 v5, v26

    move/from16 v22, v9

    move-object v9, v6

    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v9, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v22, "requestId":I
    move-object v6, v0

    move-object/from16 v23, v7

    .end local v7    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v23, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    move/from16 v7, v29

    :try_start_9
    invoke-static/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V

    .line 2193
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    .line 2304
    .end local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v26    # "requestType":I
    .end local v29    # "isPartialResult":Z
    :catchall_2
    move-exception v0

    move-wide/from16 v27, v14

    move/from16 v16, v22

    move-object v14, v12

    goto/16 :goto_4

    .end local v22    # "requestId":I
    .local v9, "requestId":I
    :catchall_3
    move-exception v0

    move/from16 v16, v9

    move-wide/from16 v27, v14

    move-object v14, v12

    .end local v9    # "requestId":I
    .restart local v22    # "requestId":I
    goto/16 :goto_4

    .line 2197
    .end local v22    # "requestId":I
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v7    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v9    # "requestId":I
    .restart local v26    # "requestType":I
    .restart local v29    # "isPartialResult":Z
    :cond_4
    move-object/from16 v23, v7

    move/from16 v22, v9

    move-object v9, v6

    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v7    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v9, "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v22    # "requestId":I
    .restart local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    const/4 v0, 0x0

    .line 2203
    .local v0, "resultDispatch":Ljava/lang/Runnable;
    :try_start_a
    invoke-virtual/range {v23 .. v23}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v1, :cond_5

    .line 2204
    :try_start_b
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object/from16 v24, v1

    .local v1, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_1

    .line 2206
    .end local v1    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v24, v1

    .line 2210
    .local v24, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_1
    if-eqz v29, :cond_6

    .line 2211
    new-instance v7, Landroid/hardware/camera2/CaptureResult;

    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2212
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v11, v9, v10}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2214
    .local v7, "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v5, p2

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v0, v16

    .line 2241
    move-object v1, v7

    .line 2242
    .end local v7    # "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    .local v1, "finalResult":Landroid/hardware/camera2/CaptureResult;
    move-object v8, v0

    move-object/from16 v17, v9

    move-wide/from16 v27, v14

    move/from16 v16, v22

    move-object v9, v1

    move-object v14, v12

    goto :goto_2

    .line 2243
    .end local v1    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    :cond_6
    :try_start_c
    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-result-object v1

    .line 2244
    invoke-virtual {v1, v14, v15}, Landroid/hardware/camera2/impl/FrameNumberTracker;->popPartialResults(J)Ljava/util/List;

    move-result-object v19

    .line 2246
    .local v19, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2247
    invoke-virtual {v11, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2248
    .local v5, "sensorTimestamp":J
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2249
    invoke-virtual {v9, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    move-object v8, v1

    .line 2250
    .local v8, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v7

    .line 2251
    .local v7, "subsequenceId":I
    new-instance v1, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2252
    invoke-virtual/range {v23 .. v23}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getSessionId()I

    move-result v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    move-wide/from16 v27, v14

    .end local v14    # "frameNumber":J
    .local v27, "frameNumber":J
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, p1

    move-object/from16 v17, v9

    move-object/from16 v18, p2

    move-object/from16 v21, p3

    :try_start_d
    invoke-direct/range {v14 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object v14, v12

    move-object v12, v1

    .line 2255
    .local v12, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    :try_start_e
    new-instance v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v17, v9

    move/from16 v16, v22

    .end local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v22    # "requestId":I
    .local v16, "requestId":I
    .local v17, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v9, p2

    move-object/from16 v10, v19

    move-object/from16 v11, v17

    :try_start_f
    invoke-direct/range {v1 .. v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;JILandroid/util/Range;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    move-object v0, v15

    .line 2288
    move-object v1, v12

    move-object v8, v0

    move-object v9, v1

    .line 2291
    .end local v0    # "resultDispatch":Ljava/lang/Runnable;
    .end local v5    # "sensorTimestamp":J
    .end local v7    # "subsequenceId":I
    .end local v12    # "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v19    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .local v8, "resultDispatch":Ljava/lang/Runnable;
    .local v9, "finalResult":Landroid/hardware/camera2/CaptureResult;
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    move-wide v10, v0

    .line 2293
    .local v10, "ident":J
    :try_start_10
    invoke-virtual/range {v23 .. v23}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 2295
    :try_start_11
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2296
    nop

    .line 2298
    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move/from16 v2, v16

    move-wide/from16 v3, v27

    move/from16 v5, v26

    move-object v6, v9

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V

    .line 2301
    if-nez v29, :cond_7

    .line 2302
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 2304
    .end local v8    # "resultDispatch":Ljava/lang/Runnable;
    .end local v9    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v10    # "ident":J
    .end local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v24    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v26    # "requestType":I
    .end local v29    # "isPartialResult":Z
    :cond_7
    monitor-exit v14

    .line 2305
    return-void

    .line 2295
    .restart local v8    # "resultDispatch":Ljava/lang/Runnable;
    .restart local v9    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .restart local v10    # "ident":J
    .restart local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v24    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v26    # "requestType":I
    .restart local v29    # "isPartialResult":Z
    :catchall_4
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2296
    nop

    .end local v16    # "requestId":I
    .end local v27    # "frameNumber":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .end local p1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local p3    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    throw v0

    .line 2304
    .end local v8    # "resultDispatch":Ljava/lang/Runnable;
    .end local v9    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v10    # "ident":J
    .end local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v24    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v26    # "requestType":I
    .end local v29    # "isPartialResult":Z
    .restart local v22    # "requestId":I
    .restart local v27    # "frameNumber":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .restart local p1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .restart local p3    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :catchall_5
    move-exception v0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v14, v12

    :goto_3
    move/from16 v16, v22

    .end local v22    # "requestId":I
    .restart local v16    # "requestId":I
    goto :goto_4

    .end local v16    # "requestId":I
    .end local v27    # "frameNumber":J
    .restart local v14    # "frameNumber":J
    .restart local v22    # "requestId":I
    :catchall_7
    move-exception v0

    move-wide/from16 v27, v14

    move/from16 v16, v22

    move-object v14, v12

    .end local v14    # "frameNumber":J
    .end local v22    # "requestId":I
    .restart local v16    # "requestId":I
    .restart local v27    # "frameNumber":J
    goto :goto_4

    .end local v16    # "requestId":I
    .end local v27    # "frameNumber":J
    .local v9, "requestId":I
    .restart local v14    # "frameNumber":J
    :catchall_8
    move-exception v0

    move/from16 v16, v9

    move-wide/from16 v27, v14

    move-object v14, v12

    .end local v9    # "requestId":I
    .end local v14    # "frameNumber":J
    .restart local v16    # "requestId":I
    .restart local v27    # "frameNumber":J
    :goto_4
    monitor-exit v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_4
.end method
