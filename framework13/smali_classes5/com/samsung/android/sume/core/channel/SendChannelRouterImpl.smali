.class public Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;
.super Lcom/samsung/android/sume/core/channel/ChannelRouterBase;
.source "SendChannelRouterImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/channel/ChannelRouterBase<",
        "Lcom/samsung/android/sume/core/channel/SendChannelRouter;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;


# direct methods
.method public static synthetic blacklist $r8$lambda$4cP0YbZx50s3sDxoK_XT7MCCyIs(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->evaluate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$C3ySIHY2LTxMFBU2GTQMsouOZtw(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->sendAll(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$DO0Ipls3iVKC4F43I2YRdozdqzc(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->broadcast(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$OYTSqKQORTWD-QyswcIKFKVtHY4(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->sendAny(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;-><init>(Ljava/util/List;)V

    .line 24
    sget-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->BROADCAST_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)V
    .locals 0
    .param p2, "sendType"    # Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evChannelMap",
            "sendType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;",
            "Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;",
            ")V"
        }
    .end annotation

    .line 28
    .local p1, "evChannelMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;-><init>(Ljava/util/Map;)V

    .line 29
    iput-object p2, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    .line 30
    return-void
.end method

.method private blacklist broadcast(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaBuffer"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->channels:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist evaluate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaBuffer"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->evChannelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$broadcast$0(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 0
    .param p0, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "e"    # Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 45
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$evaluate$1(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2
    .param p0, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 58
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->SCALA:Lcom/samsung/android/sume/core/types/MediaType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$evaluate$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
    .param p0, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 60
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method static synthetic blacklist lambda$evaluate$3(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/Map$Entry;)Z
    .locals 9
    .param p0, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 51
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    .line 52
    .local v0, "evaluator":Lcom/samsung/android/sume/core/evaluate/Evaluator;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 54
    .local v1, "bufferChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    move-object v2, p0

    .line 55
    .local v2, "evaluationBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    instance-of v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v3, :cond_0

    .line 57
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda6;-><init>()V

    .line 58
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 59
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 60
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 63
    :cond_0
    nop

    .line 65
    invoke-interface {v0}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->getValueType()Ljava/lang/Class;

    move-result-object v3

    .line 63
    invoke-static {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->of(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBufferReader;

    move-result-object v3

    .line 67
    .local v3, "reader":Lcom/samsung/android/sume/core/buffer/MediaBufferReader;, "Lcom/samsung/android/sume/core/buffer/MediaBufferReader<*>;"
    invoke-interface {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 69
    move-object v4, p0

    .line 70
    .local v4, "emitBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    instance-of v6, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    new-array v6, v7, [I

    const/4 v8, 0x2

    aput v8, v6, v5

    .line 71
    invoke-interface {p0, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containFlags([I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    move-object v5, p0

    check-cast v5, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    .line 73
    .local v5, "bufferGroup":Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;
    invoke-virtual {v5}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v4

    .line 74
    invoke-interface {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->get()Ljava/lang/Object;

    move-result-object v6

    const-string v8, "evaluate-value"

    invoke-interface {v4, v8, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 78
    .end local v5    # "bufferGroup":Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;
    :cond_1
    invoke-interface {v1, v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 79
    return v7

    .line 81
    .end local v4    # "emitBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_2
    return v5
.end method

.method private blacklist sendAll(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 1
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaBuffer"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->evaluate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->broadcast(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist sendAny(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 1
    .param p1, "mediaBuffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaBuffer"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->evaluate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->broadcast(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist newRouter()Lcom/samsung/android/sume/core/channel/SendChannelRouter;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    sget-object v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->EVALUATE_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    if-ne v0, v1, :cond_0

    .line 35
    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;)V

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    sget-object v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->BROADCAST_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    if-ne v0, v1, :cond_1

    .line 37
    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;)V

    return-object v0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    sget-object v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    if-ne v0, v1, :cond_2

    .line 39
    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;)V

    return-object v0

    .line 41
    :cond_2
    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;)V

    return-object v0
.end method

.method public bridge synthetic blacklist newRouter()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->newRouter()Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    move-result-object v0

    return-object v0
.end method
