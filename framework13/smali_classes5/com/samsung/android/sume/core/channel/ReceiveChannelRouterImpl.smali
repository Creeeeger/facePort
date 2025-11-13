.class public Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;
.super Lcom/samsung/android/sume/core/channel/ChannelRouterBase;
.source "ReceiveChannelRouterImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/channel/ChannelRouterBase<",
        "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist receiveType:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;


# direct methods
.method public static synthetic blacklist $r8$lambda$1yJMJ4ZLcSYYrdKeJzmymkW0vws(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->receiveAll()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ivN0RilnoPnCLU0iF9UxhLEuvpo(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->receiveAny()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)V
    .locals 0
    .param p2, "type"    # Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channels",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;",
            "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;",
            ")V"
        }
    .end annotation

    .line 27
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;-><init>(Ljava/util/List;)V

    .line 28
    iput-object p2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->receiveType:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)V
    .locals 0
    .param p2, "type"    # Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evaluateChannelMap",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;",
            "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;",
            ")V"
        }
    .end annotation

    .line 32
    .local p1, "evaluateChannelMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;-><init>(Ljava/util/Map;)V

    .line 33
    iput-object p2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->receiveType:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    .line 34
    return-void
.end method

.method static synthetic blacklist lambda$receiveAny$2(Ljava/util/concurrent/Future;)V
    .locals 1
    .param p0, "e"    # Ljava/util/concurrent/Future;

    .line 92
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private blacklist receiveAll()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method private blacklist receiveAny()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 7

    .line 54
    sget-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anyReceived: # of channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 62
    .local v0, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 63
    .local v1, "threadPool":Ljava/util/concurrent/ExecutorService;
    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v3, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v2

    .line 66
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v1, v0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;)V

    .line 65
    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 82
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/Future<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;>;"
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 84
    .local v3, "id":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .local v4, "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    if-eqz v4, :cond_1

    .line 86
    nop

    .line 92
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 86
    return-object v4

    .line 87
    .end local v3    # "id":I
    .end local v4    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_1
    goto :goto_0

    .line 88
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string v4, "all buffer-channels are canceled"

    invoke-direct {v3, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Integer;>;"
    .end local v1    # "threadPool":Ljava/util/concurrent/ExecutorService;
    .end local v2    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/Future<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;>;"
    .end local p0    # "this":Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;
    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .restart local v0    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Integer;>;"
    .restart local v1    # "threadPool":Ljava/util/concurrent/ExecutorService;
    .restart local v2    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/Future<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;>;"
    .restart local p0    # "this":Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 89
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "buffer-channels receive thread are interrupted"

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Integer;>;"
    .end local v1    # "threadPool":Ljava/util/concurrent/ExecutorService;
    .end local v2    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/Future<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;>;"
    .end local p0    # "this":Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Integer;>;"
    .restart local v1    # "threadPool":Ljava/util/concurrent/ExecutorService;
    .restart local v2    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/concurrent/Future<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;>;"
    .restart local p0    # "this":Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;
    :goto_1
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 93
    throw v3
.end method


# virtual methods
.method synthetic blacklist lambda$receiveAny$0$com-samsung-android-sume-core-channel-ReceiveChannelRouterImpl(Ljava/lang/Integer;Ljava/util/concurrent/BlockingQueue;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4
    .param p1, "it"    # Ljava/lang/Integer;
    .param p2, "queue"    # Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 70
    .local v0, "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-interface {p2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object v0

    .line 72
    .end local v0    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer-channel receive thread is interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {p2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 76
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic blacklist lambda$receiveAny$1$com-samsung-android-sume-core-channel-ReceiveChannelRouterImpl(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Integer;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "threadPool"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "queue"    # Ljava/util/concurrent/BlockingQueue;
    .param p3, "it"    # Ljava/lang/Integer;

    .line 67
    new-instance v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;Ljava/lang/Integer;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newRouter()Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->receiveType:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    sget-object v1, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    if-ne v0, v1, :cond_1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->evChannelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->channels:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->evChannelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;)V

    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->evChannelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 45
    new-instance v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;)V

    return-object v0
.end method

.method public bridge synthetic blacklist newRouter()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->newRouter()Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    move-result-object v0

    return-object v0
.end method
