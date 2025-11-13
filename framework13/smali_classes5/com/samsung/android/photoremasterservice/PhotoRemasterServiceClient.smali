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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    .line 37
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    .line 217
    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$2;-><init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;)V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private blacklist getServiceReturnValue()Landroid/os/Bundle;
    .locals 2

    .line 113
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getServiceReturnValue(J)Landroid/os/Bundle;
    .locals 6
    .param p1, "timeOut"    # J

    .line 119
    const-string v0, "PhotoRemasterServiceClient"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 120
    .local v1, "retValue":Landroid/os/Bundle;
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    .line 122
    invoke-static {v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->isExceptionContained(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const-string v2, "exception"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    .line 124
    .local v2, "exception":Ljava/lang/Exception;
    if-nez v2, :cond_0

    .line 125
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unknown exception form service-server."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .end local p1    # "timeOut":J
    throw v3

    .line 128
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .restart local p1    # "timeOut":J
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

    .line 129
    .local v3, "rtException":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 130
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 131
    nop

    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .end local p1    # "timeOut":J
    throw v3
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v3    # "rtException":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .restart local p1    # "timeOut":J
    :cond_1
    return-object v1

    .line 140
    .end local v1    # "retValue":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
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

    .line 142
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceReturnValue:Ljava/util/concurrent/CompletableFuture;

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist isExceptionContained(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 104
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 105
    return v0

    .line 108
    :cond_0
    const-string v1, "exception"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

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

    .line 79
    :try_start_0
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Try Binding..."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Context is null."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 86
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Already Bound."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 91
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.photoremasterservice"

    const-string v2, "com.samsung.android.photoremasterservice.PhotoRemasterService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    .line 95
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue()Landroid/os/Bundle;

    .line 98
    const-string v1, "PhotoRemasterServiceClient"

    const-string v2, "Service Binding is finished."

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-boolean v4, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist callService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "serviceMessage"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 167
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->bind()V

    .line 170
    iget-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    if-nez v0, :cond_0

    .line 171
    const-string v0, "PhotoRemasterServiceClient"

    const-string v2, "Service is not bounded!"

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-object v1

    .line 176
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 177
    const-string v0, "PhotoRemasterServiceClient"

    const-string v2, "ServiceMessenger is null!"

    invoke-static {v0, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    monitor-exit p0

    return-object v1

    .line 201
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1ServiceCallRunnable;-><init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;ILandroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Service called!"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Start waiting the return value."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x13

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue(J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->getServiceReturnValue()Landroid/os/Bundle;

    move-result-object v0

    .line 206
    .local v0, "retBundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_3

    .line 213
    const-string v1, "PhotoRemasterServiceClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service return value is received. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    monitor-exit p0

    return-object v0

    .line 207
    :cond_3
    :try_start_3
    const-string v1, "Service return bundle is null!"

    .line 208
    .local v1, "errorMsg":Ljava/lang/String;
    const-string v2, "PhotoRemasterServiceClient"

    const-string v3, "Service return bundle is null!"

    invoke-static {v2, v3}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Service return bundle is null!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    .end local v0    # "retBundle":Landroid/os/Bundle;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local p1    # "serviceMessage":I
    .end local p2    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist deinitServiceCall()V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist initServiceCall()V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhotoRemasterService Looper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    .line 44
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;

    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient$1;-><init>(Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;Landroid/os/Looper;)V

    .line 66
    .local v0, "incomingHandler":Landroid/os/Handler;
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIncomingMessenger:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 42
    .end local v0    # "incomingHandler":Landroid/os/Handler;
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 74
    :try_start_0
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Context is set."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 73
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist unbindService()V
    .locals 2

    monitor-enter p0

    .line 149
    :try_start_0
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Try Unbinding..."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 151
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Context is null."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 155
    .end local p0    # "this":Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    if-nez v1, :cond_1

    .line 156
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Already unbound!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 160
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mDisconnectionRequested:Z

    .line 161
    iget-object v1, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/photoremasterservice/PhotoRemasterServiceClient;->mIsBound:Z

    .line 163
    const-string v0, "PhotoRemasterServiceClient"

    const-string v1, "Service is unbound."

    invoke-static {v0, v1}, Lcom/samsung/android/photoremaster/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
