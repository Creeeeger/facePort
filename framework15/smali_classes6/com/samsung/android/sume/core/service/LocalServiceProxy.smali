.class public Lcom/samsung/android/sume/core/service/LocalServiceProxy;
.super Ljava/lang/Object;
.source "LocalServiceProxy.java"

# interfaces
.implements Lcom/samsung/android/sume/core/service/ServiceProxy;
.implements Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist connection:Landroid/content/ServiceConnection;

.field private final blacklist context:Landroid/content/Context;

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

.field private blacklist mediaFilterControllerId:I

.field private final blacklist mfControllerSync:Landroid/os/ConditionVariable;

.field private final blacklist requestChannel:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/sume/core/message/Request;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist requestJob:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist requestThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final blacklist responseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/ResponseHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->mfControllerSync:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestChannel:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->responseList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->context:Landroid/content/Context;

    move-object v0, p0

    new-instance v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;-><init>(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V

    iput-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->connection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestJob:Ljava/util/concurrent/Future;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "start-foreground"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    sget-object v3, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "success to bind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Lcom/samsung/android/sume/core/service/LocalService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    return-object v0
.end method

.method static synthetic blacklist access$002(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/service/LocalService;)Lcom/samsung/android/sume/core/service/LocalService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    return-object p1
.end method

.method static synthetic blacklist access$102(Lcom/samsung/android/sume/core/service/LocalServiceProxy;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->mediaFilterControllerId:I

    return p1
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->mfControllerSync:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic blacklist access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/message/Response;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->onError(Lcom/samsung/android/sume/core/message/Response;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$5(Lcom/samsung/android/sume/core/message/Response;Ljava/lang/Exception;Lcom/samsung/android/sume/core/message/ResponseHolder;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send response("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Response;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for request("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "message"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sume/core/message/Response;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->get()Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->get()Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Response;->setException(Ljava/lang/Exception;)Lcom/samsung/android/sume/core/message/Message;

    goto :goto_0

    :cond_0
    const/4 v0, -0x4

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/message/Response;->of(ILjava/lang/Exception;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->signal()V

    return-void
.end method

.method static synthetic blacklist lambda$onWarn$4(Lcom/samsung/android/sume/core/message/Response;Lcom/samsung/android/sume/core/message/ResponseHolder;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send response("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Response;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for request("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/ResponseHolder;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "message"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sume/core/message/Response;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/ResponseHolder;->signal()V

    return-void
.end method

.method static synthetic blacklist lambda$release$3(Lcom/samsung/android/sume/core/message/ResponseHolder;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send canceled response for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/ResponseHolder;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to finish up releasing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2be

    invoke-static {v0}, Lcom/samsung/android/sume/core/message/Response;->of(I)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/ResponseHolder;->signal()V

    return-void
.end method

.method static synthetic blacklist lambda$request$1(Lcom/samsung/android/sume/core/message/ResponseHolder;Lcom/samsung/android/sume/core/message/Message;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/message/Response;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/ResponseHolder;->signal()V

    return-void
.end method

.method private blacklist onError(Lcom/samsung/android/sume/core/message/Response;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Response;->getException()Ljava/lang/Exception;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    invoke-interface {v1, v0}, Lcom/samsung/android/sume/core/functional/ExceptionHandler;->accept(Ljava/lang/Exception;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->responseList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/message/Response;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method private blacklist onWarn(Lcom/samsung/android/sume/core/message/Response;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWarn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->responseList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/message/Response;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public blacklist getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    iget-object v0, v0, Lcom/samsung/android/sume/core/service/LocalService;->binder:Landroid/os/Binder;

    return-object v0
.end method

.method public blacklist getExceptionHandler()Lcom/samsung/android/sume/core/functional/ExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    return-object v0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-sume-core-service-LocalServiceProxy()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->mfControllerSync:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestChannel:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Request;

    sget-object v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    iget v2, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->mediaFilterControllerId:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sume/core/service/LocalService;->request(ILcom/samsung/android/sume/core/message/Request;)Lcom/samsung/android/sume/core/message/ResponseHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/ResponseHolder;->get()Lcom/samsung/android/sume/core/message/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/Response;->getResponseListener()Ljava/util/function/Consumer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/message/Response;->getResponseListener()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnormal Exception at requestThreadPool: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "NullPointerException from response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "request canceled or release"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    nop

    :goto_2
    return-void
.end method

.method synthetic blacklist lambda$request$2$com-samsung-android-sume-core-service-LocalServiceProxy(Lcom/samsung/android/sume/core/message/Request;Lcom/samsung/android/sume/core/message/ResponseHolder;)Lcom/samsung/android/sume/core/message/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->isOneWay()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait response...E: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->await()Lcom/samsung/android/sume/core/message/Response;

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait response...X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->get()Lcom/samsung/android/sume/core/message/Response;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->get()Lcom/samsung/android/sume/core/message/Response;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/message/Response;->setException(Ljava/lang/Exception;)Lcom/samsung/android/sume/core/message/Message;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->responseList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/message/ResponseHolder;->reset()Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Response;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Response;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/functional/ExceptionHandler;->accept(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Response;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public blacklist onEvent(Lcom/samsung/android/sume/core/message/Event;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Response;->of(Lcom/samsung/android/sume/core/message/Message;)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Response;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->onError(Lcom/samsung/android/sume/core/message/Response;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Response;->isWarn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->onWarn(Lcom/samsung/android/sume/core/message/Response;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->eventListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;->onEvent(Lcom/samsung/android/sume/core/message/Event;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist release()V
    .locals 5

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "release E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->localService:Lcom/samsung/android/sume/core/service/LocalService;

    iget v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->mediaFilterControllerId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/service/LocalService;->releaseMediaFilterController(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->connection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "try to unbind"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broken connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->connection:Landroid/content/ServiceConnection;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->responseList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestJob:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestJob:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestJob:Ljava/util/concurrent/Future;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_3
    sget-object v0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "release X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;
    .locals 4
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

    new-instance v0, Lcom/samsung/android/sume/core/message/ResponseHolder;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/message/ResponseHolder;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->responseList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->isOneWay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/sume/core/message/Response;->of(I)Lcom/samsung/android/sume/core/message/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/message/ResponseHolder;->put(Lcom/samsung/android/sume/core/message/Response;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add response-listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/message/ResponseHolder;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Request;->then(Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/message/Message;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestChannel:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->requestThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/message/Request;Lcom/samsung/android/sume/core/message/ResponseHolder;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->eventListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public blacklist setExceptionHandler(Lcom/samsung/android/sume/core/functional/ExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->exceptionHandler:Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    return-void
.end method
