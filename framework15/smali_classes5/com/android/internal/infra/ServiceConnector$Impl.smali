.class public Lcom/android/internal/infra/ServiceConnector$Impl;
.super Ljava/util/ArrayDeque;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/ArrayDeque<",
        "Lcom/android/internal/infra/ServiceConnector$Job<",
        "TI;*>;>;",
        "Lcom/android/internal/infra/ServiceConnector<",
        "TI;>;",
        "Landroid/content/ServiceConnection;",
        "Landroid/os/IBinder$DeathRecipient;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_DISCONNECT_TIMEOUT_MS:J = 0x3a98L

.field private static final blacklist DEFAULT_REQUEST_TIMEOUT_MS:J = 0x7530L

.field static final blacklist LOG_TAG:Ljava/lang/String; = "ServiceConnector.Impl"


# instance fields
.field private final blacklist mBinderAsInterface:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;"
        }
    .end annotation
.end field

.field private blacklist mBinding:Z

.field private final blacklist mBindingFlags:I

.field protected final blacklist mContext:Landroid/content/Context;

.field protected final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mMainHandler:Landroid/os/Handler;

.field private final blacklist mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TI;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final blacklist mTimeoutDisconnect:Ljava/lang/Runnable;

.field private blacklist mUnbinding:Z

.field private final blacklist mUnfinishedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$lLAZkr-jbvFVCtuzKDExBq3avbQ(Lcom/android/internal/infra/ServiceConnector$Impl;Lcom/android/internal/infra/ServiceConnector$Job;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->lambda$enqueue$1(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueue(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfinishedJobs(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeScheduleUnbindTimeout(Lcom/android/internal/infra/ServiceConnector$Impl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    iput-boolean v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    iput-object p5, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private blacklist cancelTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static blacklist castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BASE:",
            "Ljava/lang/Object;",
            "T:TBASE;>(TBASE;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private blacklist dispatchOnBinderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onBinderDied()V

    :cond_0
    return-void
.end method

.method private blacklist dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onConnected(Landroid/os/IInterface;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onDisconnected(Landroid/os/IInterface;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    return-void
.end method

.method private blacklist enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to post a job to handler. Likely "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method private blacklist enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;Lcom/android/internal/infra/ServiceConnector$Job;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private blacklist isBound()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$connect$0(Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method private synthetic blacklist lambda$enqueue$1(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueueJobThread(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method private blacklist logTrace()V
    .locals 3

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ServiceConnector.Impl"

    const-string v2, "See stacktrace"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist maybeScheduleUnbindTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->scheduleUnbindTimeout()V

    :cond_0
    return-void
.end method

.method private blacklist onTimeout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method private blacklist processQueue()V
    .locals 5

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-boolean v4, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v4, v0}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    :goto_2
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method private blacklist scheduleUnbindTimeout()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getAutoDisconnectTimeoutMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private blacklist stateToString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v0, :cond_0

    const-string v0, "Binding..."

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_1

    const-string v0, "Unbinding..."

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Bound"

    return-object v0

    :cond_2
    const-string v0, "Unbound"

    return-object v0
.end method


# virtual methods
.method protected blacklist bindService(Landroid/content/ServiceConnection;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    or-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method protected blacklist binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method public whitelist binderDied()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnBinderDied()V

    return-void
.end method

.method protected blacklist cancelPendingJobs()V
    .locals 3

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method blacklist completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "**>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceConnector.Impl"

    invoke-static {v3, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public declared-synchronized blacklist connect()Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TI;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;-><init>()V

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "  "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "ServiceConnector:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Pending jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Unfinished async jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method blacklist enqueueJobThread(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service is unbinding. Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected blacklist getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method protected blacklist getJobHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected blacklist getRequestTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    const-string v1, "ServiceConnector.Impl"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring onServiceConnected due to ongoing unbinding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    :try_start_0
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    return-void
.end method

.method protected blacklist onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    :cond_0
    return-void
.end method

.method protected blacklist onServiceUnbound()V
    .locals 0

    return-void
.end method

.method public blacklist post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object v0

    return-object v0
.end method

.method public blacklist postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    invoke-direct {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    return-object v0
.end method

.method public bridge synthetic blacklist postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object p1

    return-object p1
.end method

.method public blacklist postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;TR;>;)",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-direct {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    return-object v0
.end method

.method public whitelist test-api run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->onTimeout()V

    return-void
.end method

.method public blacklist run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    return v0
.end method

.method public blacklist setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceConnector@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pending job(s)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unfinished async job(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist unbind()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method blacklist unbindJobThread()V
    .locals 8

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v4, :cond_2

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "ServiceConnector.Impl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unbind: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-virtual {v2, v1}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    iput-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->onServiceUnbound()V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
