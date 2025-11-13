.class public Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
.super Ljava/lang/Object;
.source "ServiceRemasterDirector.java"

# interfaces
.implements Lcom/samsung/android/photoremaster/IDirector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;
    }
.end annotation


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "ServiceRemasterDirector"


# instance fields
.field private blacklist mInitialized:Z

.field private final blacklist mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

.field private final blacklist mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

.field private final blacklist mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

.field private final blacklist mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    .line 22
    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    .line 23
    new-instance v0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    .line 25
    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    return-void
.end method

.method private blacklist confirmInitialized()V
    .locals 1

    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized(Z)V

    .line 367
    return-void
.end method

.method private blacklist confirmInitialized(Z)V
    .locals 2
    .param p1, "isLeavingLog"    # Z

    .line 370
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-nez v0, :cond_1

    .line 371
    const-string v0, "Access before initialization."

    const-string v1, "ServiceRemasterDirector"

    if-eqz p1, :cond_0

    .line 372
    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 378
    :cond_1
    return-void
.end method

.method private blacklist throwEmptyBundleException()V
    .locals 2

    .line 381
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "Return bundle is empty."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public declared-synchronized blacklist deinit()V
    .locals 4

    monitor-enter p0

    .line 98
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 104
    :try_start_1
    invoke-direct {p0, v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-nez v1, :cond_0

    .line 107
    const-string v1, "ServiceRemasterDirector"

    const-string v2, "Double Deinitialization!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 108
    monitor-exit p0

    return-void

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_0
    :goto_0
    :try_start_4
    iput-boolean v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    .line 115
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->deinitServiceCall()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->unbindService()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->deinit()V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->deinitServiceCall()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 126
    nop

    .line 127
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "deinit() is done."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 128
    monitor-exit p0

    return-void

    .line 125
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 126
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 97
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getIntParam(I)I
    .locals 5
    .param p1, "id"    # I

    monitor-enter p0

    .line 317
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 328
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    const/4 v2, -0x1

    .line 337
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    monitor-exit p0

    return v2

    .line 332
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_0
    :try_start_3
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_int"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v2, "ret_int"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 333
    monitor-exit p0

    return v2

    .line 337
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 338
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 316
    .end local p1    # "id":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getLongParam(I)J
    .locals 6
    .param p1, "id"    # I

    monitor-enter p0

    .line 344
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 354
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    const-wide/16 v2, -0x1

    .line 361
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v4}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 356
    monitor-exit p0

    return-wide v2

    .line 358
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_0
    :try_start_3
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_long"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v2, "ret_long"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :try_start_4
    iget-object v4, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v4}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    monitor-exit p0

    return-wide v2

    .line 361
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 362
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 343
    .end local p1    # "id":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getStringParam(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    monitor-enter p0

    .line 294
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 304
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->throwEmptyBundleException()V

    .line 306
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    monitor-exit p0

    return-object v2

    .line 308
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_0
    :try_start_3
    const-string v2, "ServiceRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ret_string"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v2, "ret_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 309
    monitor-exit p0

    return-object v2

    .line 311
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 312
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 293
    .end local p1    # "id":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 62
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->initServiceCall()V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->initServiceCall()V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->init()V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "Double Initialization!!! init is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    monitor-exit p0

    return-void

    .line 75
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->setContext(Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->setContext(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->setContext(Landroid/content/Context;)V

    .line 79
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "PhotoRemaster git commit: %s , build date: %s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "22abe5b5f062f5a52fa9976bf5d6774bbaedf3e5"

    aput-object v5, v4, v3

    const-string v3, "2023.01.05.10:22"

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "ServiceRemasterDirector"

    const-string v1, "Double Initialization!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    monitor-exit p0

    return-void

    .line 89
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 90
    iput-boolean v5, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 93
    nop

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 93
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 61
    .end local p1    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist processAestheticScoring()F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 216
    const-string v0, "ServiceRemasterDirector"

    const-string/jumbo v1, "processAestheticScoring:"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    .local v0, "retBundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 219
    const/high16 v1, -0x40800000    # -1.0f

    .line 224
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 219
    monitor-exit p0

    return v1

    .line 222
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_0
    :try_start_3
    const-string/jumbo v1, "ret_float"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    monitor-exit p0

    return v1

    .line 224
    .end local v0    # "retBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 225
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 210
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist processImage(II)Z
    .locals 5
    .param p1, "processMode"    # I
    .param p2, "enhanceMode"    # I

    monitor-enter p0

    .line 164
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-ltz p2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->throwExceptionIfLocked()V

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_processMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v1, "int_enhanceMode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processImage("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .local v1, "retBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 180
    monitor-exit p0

    return v3

    .line 182
    :cond_0
    :try_start_1
    const-string/jumbo v2, "ret_boolean"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    .line 167
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "retBundle":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .end local p1    # "processMode":I
    .end local p2    # "enhanceMode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist processImage(ILjava/util/List;)Z
    .locals 5
    .param p1, "processMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .local p2, "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 187
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->throwExceptionIfLocked()V

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_processMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v2, "ArrayListInt_enhanceMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 197
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .local v2, "retBundle":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 199
    monitor-exit p0

    return v3

    .line 201
    :cond_0
    :try_start_1
    const-string/jumbo v3, "ret_boolean"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    .line 186
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "retBundle":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .end local p1    # "processMode":I
    .end local p2    # "enhanceModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setLongParam(IJ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "value"    # J

    monitor-enter p0

    .line 270
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 274
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .end local p1    # "id":I
    .end local p2    # "value":J
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    .restart local p1    # "id":I
    .restart local p2    # "value":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 278
    :cond_1
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v1, "long_value"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 283
    const-string v1, "ServiceRemasterDirector"

    const-string/jumbo v2, "setLongParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "long_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    .end local v0    # "argBundle":Landroid/os/Bundle;
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 289
    nop

    .line 290
    monitor-exit p0

    return-void

    .line 288
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 289
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 269
    .end local p1    # "id":I
    .end local p2    # "value":J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setObjectParam(ILjava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 230
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    move-object v1, p2

    check-cast v1, Landroid/net/Uri;

    .line 239
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "string_value"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v2, "ServiceRemasterDirector"

    const-string/jumbo v3, "setObjectParam:"

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v0    # "argBundle":Landroid/os/Bundle;
    .end local v1    # "uri":Landroid/net/Uri;
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    nop

    .line 246
    monitor-exit p0

    return-void

    .line 244
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 245
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;

    monitor-enter p0

    .line 387
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 394
    nop

    .line 395
    monitor-exit p0

    return-void

    .line 393
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 394
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 386
    .end local p1    # "listener":Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setStringParam(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 250
    :try_start_0
    const-string v0, "ServiceRemasterDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized()V

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, "argBundle":Landroid/os/Bundle;
    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string/jumbo v1, "string_value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "ServiceRemasterDirector"

    const-string/jumbo v2, "setStringParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "ServiceRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "int_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "string_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v0    # "argBundle":Landroid/os/Bundle;
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 265
    nop

    .line 266
    monitor-exit p0

    return-void

    .line 264
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 265
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    .end local p1    # "id":I
    .end local p2    # "value":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist stop()V
    .locals 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceRemasterDirector"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->lock()V

    .line 137
    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->confirmInitialized(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    nop

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    goto :goto_1

    .line 150
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "Stop is called before initialization!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 155
    nop

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->deinit()V

    .line 159
    const-string/jumbo v0, "stop() is done."

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void

    .line 150
    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V

    .line 151
    nop

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    throw v0

    .line 154
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 138
    :catch_1
    move-exception v0

    .line 140
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string v2, "Stop is called after deinit is done. Stop is ignored."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 141
    return-void

    .line 154
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ServiceRemasterDirector$StopLockManager;->unlock()V

    .line 155
    throw v0
.end method
