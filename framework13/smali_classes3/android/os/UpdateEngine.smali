.class public Landroid/os/UpdateEngine;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;,
        Landroid/os/UpdateEngine$AllocateSpaceResult;,
        Landroid/os/UpdateEngine$UpdateStatusConstants;,
        Landroid/os/UpdateEngine$ErrorCode;,
        Landroid/os/UpdateEngine$ErrorCodeConstants;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "UpdateEngine"

.field private static final greylist-max-o UPDATE_ENGINE_SERVICE:Ljava/lang/String; = "android.os.UpdateEngineService"


# instance fields
.field private final greylist-max-o mUpdateEngine:Landroid/os/IUpdateEngine;

.field private greylist-max-o mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

.field private final greylist-max-o mUpdateEngineCallbackLock:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    .line 249
    nop

    .line 250
    const-string v0, "android.os.UpdateEngineService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/os/IUpdateEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    .line 251
    if-eqz v0, :cond_0

    .line 254
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find update_engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist allocateSpace(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/UpdateEngine$AllocateSpaceResult;
    .locals 5
    .param p1, "payloadMetadataFilename"    # Ljava/lang/String;
    .param p2, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 581
    new-instance v0, Landroid/os/UpdateEngine$AllocateSpaceResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UpdateEngine$AllocateSpaceResult;-><init>(Landroid/os/UpdateEngine$AllocateSpaceResult-IA;)V

    .line 583
    .local v0, "result":Landroid/os/UpdateEngine$AllocateSpaceResult;
    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v3, p1, p2}, Landroid/os/IUpdateEngine;->allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V

    .line 586
    invoke-static {v0}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fgetmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 587
    const/4 v3, 0x0

    goto :goto_0

    .line 588
    :cond_0
    const/16 v3, 0x3c

    :goto_0
    invoke-static {v0, v3}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    return-object v0

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 590
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 591
    .local v3, "e":Landroid/os/ServiceSpecificException;
    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v0, v4}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V

    .line 592
    invoke-static {v0, v1, v2}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V

    .line 593
    return-object v0
.end method

.method public whitelist applyPayload(Landroid/content/res/AssetFileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "assetFd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 366
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 367
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 366
    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    nop

    .line 371
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .param p6, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 350
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    nop

    .line 354
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist bind(Landroid/os/UpdateEngineCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/os/UpdateEngineCallback;

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
    .locals 3
    .param p1, "callback"    # Landroid/os/UpdateEngineCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 262
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    new-instance v1, Landroid/os/UpdateEngine$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/os/UpdateEngine$1;-><init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V

    iput-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :try_start_1
    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v2, v1}, Landroid/os/IUpdateEngine;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/UpdateEngine;
    .end local p1    # "callback":Landroid/os/UpdateEngineCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 298
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/UpdateEngine;
    .restart local p1    # "callback":Landroid/os/UpdateEngineCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist cancel()V
    .locals 2

    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    nop

    .line 388
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist cleanupAppliedPayload()I
    .locals 3

    .line 658
    new-instance v0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;-><init>(Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback-IA;)V

    .line 660
    .local v0, "callback":Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1, v0}, Landroid/os/IUpdateEngine;->cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V

    .line 661
    invoke-static {v0}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->-$$Nest$mgetResult(Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 662
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist resetShouldSwitchSlotOnReboot()V
    .locals 2

    .line 458
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resetShouldSwitchSlotOnReboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    nop

    .line 462
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resetStatus()V
    .locals 2

    .line 425
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resetStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    nop

    .line 429
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resume()V
    .locals 2

    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    nop

    .line 411
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    .locals 2
    .param p1, "payloadMetadataFilename"    # Ljava/lang/String;

    .line 441
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    nop

    .line 445
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist suspend()V
    .locals 2

    .line 396
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->suspend()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    nop

    .line 400
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unbind()Z
    .locals 3

    .line 468
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    if-nez v1, :cond_0

    .line 470
    const/4 v1, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 473
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v2, v1}, Landroid/os/IUpdateEngine;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    .line 474
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :try_start_2
    monitor-exit v0

    return v1

    .line 476
    .end local v1    # "result":Z
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/UpdateEngine;
    throw v2

    .line 479
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/UpdateEngine;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist verifyPayloadMetadata(Ljava/lang/String;)Z
    .locals 2
    .param p1, "payloadMetadataFilename"    # Ljava/lang/String;

    .line 493
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->verifyPayloadApplicable(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
