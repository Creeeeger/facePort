.class public Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
.super Ljava/lang/Object;
.source "PhotoRemasterServiceClient.java"


# static fields
.field static final blacklist RESPONSE_TIME_OUT_SECOND_DEFAULT:J = 0xb4L

.field static final blacklist RESPONSE_TIME_OUT_SECOND_FOR_STOP:J = 0x13L

.field static final blacklist SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.photoremasterservice.PhotoRemasterService"

.field static final blacklist SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.photoremasterservice"

.field static final blacklist TAG:Ljava/lang/String; = "PhotoRemasterServiceClient"


# instance fields
.field private final blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisconnectionRequested:Z

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIncomingMessenger:Landroid/os/Messenger;

.field private blacklist mIsBound:Z

.field private final blacklist mProgressObserver:Lcom/samsung/android/photoremasterservice/ProgressObserver;

.field private volatile blacklist mServiceDisconnectionCallback:Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;

.field private blacklist mServiceMessenger:Landroid/os/Messenger;

.field private blacklist mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectionRequested(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncomingMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIncomingMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceDisconnectionCallback(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceDisconnectionCallback:Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceReturnValue(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceMessenger(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ProgressObserver;

    invoke-direct {v0}, Lcom/samsung/android/photoremasterservice/ProgressObserver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mProgressObserver:Lcom/samsung/android/photoremasterservice/ProgressObserver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceDisconnectionCallback:Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;

    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;-><init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private blacklist doGetServiceReturnValue(J)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    nop

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mProgressObserver:Lcom/samsung/android/photoremasterservice/ProgressObserver;

    invoke-virtual {v1}, Lcom/samsung/android/photoremasterservice/ProgressObserver;->wasUpdateAndClear()Z

    move-result v1

    const-string v2, "PhotoRemasterServiceClient"

    if-eqz v1, :cond_0

    const-string v1, "Wait again service return value because there has been update message."

    invoke-static {v2, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Time Out! There is no response from service."

    invoke-static {v2, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getServiceReturnValue()Landroid/os/Bundle;
    .locals 2

    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getServiceReturnValue(J)Landroid/os/Bundle;
    .locals 6

    const-string v0, "PhotoRemasterServiceClient"

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->doGetServiceReturnValue(J)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->isExceptionContained(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Exception is received from service."

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "exception"

    const-class v3, Ljava/lang/Exception;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unknown exception form service-server."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in PhotoRemaster Service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    nop

    throw v3
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is occurred at getServiceReturnValue()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist isExceptionContained(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "exception"

    const-class v2, Ljava/lang/Exception;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized blacklist bind()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Try Binding..."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Context is null."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    if-eqz v0, :cond_1

    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Already Bound."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.photoremasterservice"

    const-string v2, "com.samsung.android.photoremasterservice.PhotoRemasterService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue()Landroid/os/Bundle;

    const-string v1, "PhotoRemasterServiceClient"

    const-string v2, "Service Binding is finished."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "PhotoRemasterServiceClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call Service. message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->bind()V

    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    if-nez v0, :cond_0

    const-string v0, "PhotoRemasterServiceClient"

    const-string v2, "Service is not bounded!"

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    const-string v0, "PhotoRemasterServiceClient"

    const-string v2, "ServiceMessenger is null!"

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;-><init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;ILandroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Service called!"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Start waiting the return value."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x13

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue(J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    const-string v1, "PhotoRemasterServiceClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service return value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_3
    const-string v1, "Service return bundle is null!"

    const-string v2, "PhotoRemasterServiceClient"

    const-string v3, "Service return bundle is null!"

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Service return bundle is null!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist deinitServiceCall()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getProgressObserver()Lcom/samsung/android/photoremasterservice/ProgressObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mProgressObserver:Lcom/samsung/android/photoremasterservice/ProgressObserver;

    return-object v0
.end method

.method public declared-synchronized blacklist initServiceCall()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhotoRemasterService Looper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;-><init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Looper;)V

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIncomingMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist setContext(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Context is set."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setServiceConnectionCallback(Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceDisconnectionCallback:Lcom/samsung/android/photoremasterservice/ServiceDisconnectionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist unbindService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Try Unbinding..."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Context is null."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    if-nez v0, :cond_1

    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Already unbound!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Service is unbound."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
