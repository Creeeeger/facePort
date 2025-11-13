.class public Lcom/samsung/android/sume/core/controller/SumeClient;
.super Ljava/lang/Object;
.source "SumeClient.java"

# interfaces
.implements Lcom/samsung/android/sume/core/controller/MediaController;
.implements Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/controller/MediaController<",
        "Ljava/util/concurrent/Future<",
        "Lcom/samsung/android/sume/core/message/Response;",
        ">;>;",
        "Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

.field private final blacklist graph:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

.field private blacklist serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/samsung/android/sume/core/controller/SumeClient;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/controller/SumeClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/service/ServiceProxy;Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;)V
    .locals 2
    .param p1, "serviceProxy"    # Lcom/samsung/android/sume/core/service/ServiceProxy;
    .param p2, "graph"    # Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceProxy",
            "graph"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->graph:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    .line 37
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;->getOption()Lcom/samsung/android/sume/core/graph/Graph$Option;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/SumeClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->setExceptionHandler(Lcom/samsung/android/sume/core/functional/ExceptionHandler;)V

    .line 44
    :cond_0
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->setEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V

    .line 45
    const/16 v0, 0x384

    const-string v1, "graph"

    invoke-static {v0, v1, p2}, Lcom/samsung/android/sume/core/message/Request;->of(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Request;->asOneWay()Lcom/samsung/android/sume/core/message/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;

    .line 46
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Ljava/lang/Exception;)Z
    .locals 3
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 39
    sget-object v0, Lcom/samsung/android/sume/core/controller/SumeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist getExceptionHandler()Lcom/samsung/android/sume/core/functional/ExceptionHandler;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->getExceptionHandler()Lcom/samsung/android/sume/core/functional/ExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGraph()Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->graph:Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;

    return-object v0
.end method

.method public blacklist onEvent(Lcom/samsung/android/sume/core/message/Event;)V
    .locals 3
    .param p1, "event"    # Lcom/samsung/android/sume/core/message/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/samsung/android/sume/core/controller/SumeClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Event;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occur, do force-release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Event;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;->onEvent(Lcom/samsung/android/sume/core/message/Event;)V

    .line 93
    :cond_1
    return-void
.end method

.method public declared-synchronized blacklist release()V
    .locals 2

    monitor-enter p0

    .line 66
    :try_start_0
    sget-object v0, Lcom/samsung/android/sume/core/controller/SumeClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/samsung/android/sume/core/service/ServiceProxy;->release()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local p0    # "this":Lcom/samsung/android/sume/core/controller/SumeClient;
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic blacklist request(Lcom/samsung/android/sume/core/message/Request;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "request"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/controller/SumeClient;->request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public blacklist request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;
    .locals 1
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

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/service/ServiceProxy;->request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist run(Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inBuffers",
            "outBuffers"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/controller/SumeClient;->run(Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public blacklist run(Ljava/util/List;Lcom/samsung/android/sume/core/format/MediaFormat;)Ljava/util/concurrent/Future;
    .locals 2
    .param p2, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inBuffers",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/core/message/Response;",
            ">;"
        }
    .end annotation

    .line 49
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 50
    .local v0, "outBuffers":[Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-static {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->sharedOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sume/core/controller/SumeClient;->run(Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public blacklist run(Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inBuffers",
            "outBuffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/sume/core/message/Response;",
            ">;"
        }
    .end annotation

    .line 56
    .local p1, "inBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    .local p2, "outBuffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    const/16 v1, 0x385

    invoke-static {v1}, Lcom/samsung/android/sume/core/message/Request;->of(I)Lcom/samsung/android/sume/core/message/Request;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sume/core/message/Request;->setInputBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Request;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/sume/core/message/Request;->setOutputBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/service/ServiceProxy;->request(Lcom/samsung/android/sume/core/message/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setExceptionHandler(Lcom/samsung/android/sume/core/functional/ExceptionHandler;)V
    .locals 1
    .param p1, "exceptionHandler"    # Lcom/samsung/android/sume/core/functional/ExceptionHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptionHandler"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->serviceProxy:Lcom/samsung/android/sume/core/service/ServiceProxy;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/service/ServiceProxy;->setExceptionHandler(Lcom/samsung/android/sume/core/functional/ExceptionHandler;)V

    .line 101
    return-void
.end method

.method public blacklist setOnEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/SumeClient;->eventListener:Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    .line 77
    return-void
.end method
