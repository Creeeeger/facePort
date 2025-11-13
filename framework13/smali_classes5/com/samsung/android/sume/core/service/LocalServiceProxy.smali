.class public Lcom/samsung/android/sume/core/service/LocalServiceProxy;
.super Ljava/lang/Object;
.source "LocalServiceProxy.java"

# interfaces
.implements Lcom/samsung/android/sume/core/service/ServiceProxy;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist bound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist connection:Landroid/content/ServiceConnection;

.field private final blacklist context:Landroid/content/Context;

.field private blacklist controllerId:I

.field private blacklist eventListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

.field private blacklist localService:Lcom/samsung/android/sume/core/service/LocalService;

.field private blacklist onConnectedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/service/ServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist readyToStart:Landroid/os/ConditionVariable;

.field private final blacklist requestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/sume/core/message/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist responseQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/sume/core/message/Response;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "serviceClass",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->readyToStart:Landroid/os/ConditionVariable;

    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 40
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->context:Landroid/content/Context;

    .line 48
    new-instance v2, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;-><init>(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)V

    iput-object v2, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->connection:Landroid/content/ServiceConnection;

    .line 79
    new-instance v3, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string/jumbo v1, "start-foreground"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    :cond_1
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 100
    .local v1, "success":Z
    sget-object v2, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Lcom/samsung/android/sume/core/service/LocalService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    return-object v0
.end method

.method static synthetic blacklist access$002(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/service/LocalService;)Lcom/samsung/android/sume/core/service/LocalService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/core/service/LocalServiceProxy;
    .param p1, "x1"    # Lcom/samsung/android/sume/core/service/LocalService;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    return-object p1
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->eventListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic blacklist access$202(Lcom/samsung/android/sume/core/service/LocalServiceProxy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sume/core/service/LocalServiceProxy;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->controllerId:I

    return p1
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->onConnectedListener:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->readyToStart:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public blacklist getBinder()Landroid/os/IBinder;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    iget-object v0, v0, Lcom/samsung/android/sume/core/service/LocalService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public blacklist getExceptionHandler()Lcom/samsung/android/sume/core/functional/ExceptionHandler;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    return-object v0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-service-LocalServiceProxy()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->readyToStart:Landroid/os/ConditionVariable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Request;

    .line 85
    .local v0, "request":Lcom/samsung/android/sume/core/message/Request;
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    iget v2, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->controllerId:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sume/core/service/LocalService;->request(ILcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v1

    .line 86
    .local v1, "response":Lcom/samsung/android/sume/core/message/Response;
    iget-object v2, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "request":Lcom/samsung/android/sume/core/message/Request;
    .end local v1    # "response":Lcom/samsung/android/sume/core/message/Response;
    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 89
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$request$1$com-samsung-android-sume-core-service-LocalServiceProxy()Lcom/samsung/android/sume/core/message/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->responseQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Response;

    .line 130
    .local v0, "response":Lcom/samsung/android/sume/core/message/Response;
    sget-object v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Response;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Response;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/functional/ExceptionHandler;->accept(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Response;->getException()Ljava/lang/Exception;

    move-result-object v1

    .end local p0    # "this":Lcom/samsung/android/sume/core/service/LocalServiceProxy;
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .restart local p0    # "this":Lcom/samsung/android/sume/core/service/LocalServiceProxy;
    :cond_1
    :goto_0
    return-object v0

    .line 136
    .end local v0    # "response":Lcom/samsung/android/sume/core/message/Response;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request canceled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/samsung/android/sume/core/message/Response;->of(ILjava/lang/Exception;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v1

    return-object v1
.end method

.method public blacklist release()V
    .locals 2

    .line 145
    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    iget v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->controllerId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/service/LocalService;->releaseMediaFilterController(I)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->bound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 150
    return-void
.end method

.method public blacklist request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "request"    # Lcom/samsung/android/sume/core/message/Request;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/message/Request;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/core/message/Response;",
            ">;"
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 127
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/service/LocalService;->setEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->eventListener:Ljava/lang/ref/WeakReference;

    .line 159
    :goto_0
    return-void
.end method

.method public blacklist setExceptionHandler(Lcom/samsung/android/sume/core/functional/ExceptionHandler;)V
    .locals 0
    .param p1, "exceptionHandler"    # Lcom/samsung/android/sume/core/functional/ExceptionHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptionHandler"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    .line 111
    return-void
.end method
