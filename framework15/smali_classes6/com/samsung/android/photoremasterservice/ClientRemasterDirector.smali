.class public Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;
.super Ljava/lang/Object;
.source "ClientRemasterDirector.java"

# interfaces
.implements Lcom/samsung/android/photoremaster/IDirector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;
    }
.end annotation


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "ClientRemasterDirector"


# instance fields
.field private blacklist mInitialized:Z

.field private volatile blacklist mIsServiceDisconnected:Z

.field private final blacklist mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

.field private final blacklist mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

.field private final blacklist mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

.field private final blacklist mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$GydunFiOFUsDp4RABaQUStU5GKU(Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->lambda$new$0()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mInitialized:Z

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mIsServiceDisconnected:Z

    new-instance v0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getProgressObserver()Lcom/samsung/android/photoremasterservice/ProgressObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->registerObserver(Lcom/samsung/android/photoremasterservice/ProgressObserver;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    new-instance v1, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->setServiceConnectionCallback(Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;)V

    return-void
.end method

.method private blacklist confirmInitialized()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized(Z)V

    return-void
.end method

.method private blacklist confirmInitialized(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mInitialized:Z

    const-string v1, "ClientRemasterDirector"

    if-nez v0, :cond_1

    const-string v0, "Access before initialization."

    if-eqz p1, :cond_0

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mIsServiceDisconnected:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "Service was disconnected. Throwing IllegalStateException."

    const-string v2, "Service was disconnected. Throwing IllegalStateException."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist doInit(Landroid/content/Context;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "ClientRemasterDirector"

    const-string v1, "Double Initialization!!! init is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->initServiceCall()V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->initServiceCall()V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->init()V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$new$0()V
    .locals 2

    const-string v0, "ClientRemasterDirector"

    const-string v1, "Received callback onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mIsServiceDisconnected:Z

    return-void
.end method

.method private blacklist throwEmptyBundleException()V
    .locals 2

    const-string v0, "ClientRemasterDirector"

    const-string v1, "Return bundle is empty."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private blacklist unbindClients()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->deinitServiceCall()V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->unbindService()V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->deinit()V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->deinitServiceCall()V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist deinit()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->lock()V

    iput-boolean v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mIsServiceDisconnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0, v3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "ClientRemasterDirector"

    const-string v2, "Double Deinitialization!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    :try_start_4
    iput-boolean v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mInitialized:Z

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->unbindClients()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    nop

    const-string v0, "ClientRemasterDirector"

    const-string v1, "deinit() is done."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_1
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getBitmapParam(I)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    const-string v2, "ret_bitmap"

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const-string v3, "ClientRemasterDirector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_4
    const-string v2, "ClientRemasterDirector"

    const-string v3, "Return bundle is empty."

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :goto_0
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getFocusRoi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "original_image_focus_roi"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "remastered_image_focus_roi"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ClientRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "original image for getFocusRoi(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "original_image_focus_roi"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ClientRemasterDirector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remastered image for getFocusRoi(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "remastered_image_focus_roi"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->throwEmptyBundleException()V

    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_3
    const-string v2, "ClientRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret_string"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ret_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getIntParam(I)I
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ClientRemasterDirector"

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

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->throwEmptyBundleException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    const/4 v2, -0x1

    return v2

    :cond_0
    :try_start_3
    const-string v2, "ClientRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret_int"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ret_int"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getLongParam(I)J
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->throwEmptyBundleException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    :try_start_3
    const-string v2, "ClientRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret_long"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ret_long"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v4}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getStringParam(I)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->throwEmptyBundleException()V

    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_3
    const-string v2, "ClientRemasterDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ret_string"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ret_string"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v3}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist init(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->doInit(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mInitialized:Z

    iput-boolean v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mIsServiceDisconnected:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist processImage(ILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->throwExceptionIfLocked()V

    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "int_processMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "arrayListInt_enhanceMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "ClientRemasterDirector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processImage("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v4, "ClientRemasterDirector"

    const-string v5, "retBundle is null."

    invoke-static {v4, v5}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    const-string v3, "ret_boolean"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setBitmapParam(ILandroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bitmap_val"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "ClientRemasterDirector"

    const-string v2, "setBitmapParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ClientRemasterDirector"

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

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setLongParam(IJ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "long_value"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "ClientRemasterDirector"

    const-string v2, "setLongParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ClientRemasterDirector"

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

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    nop

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mProgressUpdateClient:Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/photoremasterservice/ProgressUpdateClient;->setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setStringParam(ILjava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "string_value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ClientRemasterDirector"

    const-string v2, "setStringParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ClientRemasterDirector"

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

    const-string v3, "string_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setUriParam(ILandroid/net/Uri;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "int_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "uri_val"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "ClientRemasterDirector"

    const-string v2, "setUriParam:"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ClientRemasterDirector"

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

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist stop()V
    .locals 4

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

    const-string v1, "ClientRemasterDirector"

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->lock()V

    iput-boolean v2, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mIsServiceDisconnected:Z

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->confirmInitialized(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Stop is called before initialization!!!"

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    nop

    invoke-virtual {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->deinit()V

    const-string v0, "stop() is done."

    invoke-static {v1, v0}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopCmdClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->unbindService()V

    nop

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "Stop is called after deinit is done. Stop is ignored."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    return-void

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
.end method

.method public declared-synchronized blacklist tryInit(Landroid/content/Context;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "ClientRemasterDirector"

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

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->tryLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->doInit(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_0

    nop

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return v3

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mServiceClient:Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->callService(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "ClientRemasterDirector"

    const-string v2, "retBundle is null."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return v3

    :cond_1
    :try_start_5
    const-string v1, "ret_boolean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mInitialized:Z

    iput-boolean v3, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mIsServiceDisconnected:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    nop

    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mInitialized:Z

    if-nez v0, :cond_2

    const-string v0, "ClientRemasterDirector"

    const-string v1, "Fail to tryInit. Unbind all."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->lock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->unbindClients()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mInitialized:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector;->mStopLockManager:Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ClientRemasterDirector$StopLockManager;->unlock()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
