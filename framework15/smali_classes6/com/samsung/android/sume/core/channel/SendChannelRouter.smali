.class public Lcom/samsung/android/sume/core/channel/SendChannelRouter;
.super Lcom/samsung/android/sume/core/channel/ChannelRouterBase;
.source "SendChannelRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist sendOp:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;


# direct methods
.method public static synthetic blacklist $r8$lambda$-JibfloaA83KuYUQOgNkFZ0uTGs(Lcom/samsung/android/sume/core/channel/SendChannelRouter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->broadcast(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$6x0wVCH72Z058_gLOYoIC4ZwvvA(Lcom/samsung/android/sume/core/channel/SendChannelRouter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendAny(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Nvmdh-rcuH__JEjI1s2rgkNfdEg(Lcom/samsung/android/sume/core/channel/SendChannelRouter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendAll(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$TcA2RU-nYg6-j_GlDRc-miIYaqw(Lcom/samsung/android/sume/core/channel/SendChannelRouter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->evaluate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;-><init>(Ljava/util/List;)V

    sget-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->BROADCAST_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->init()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;-><init>(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)V
    .locals 0
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

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->init()V

    return-void
.end method

.method public constructor blacklist <init>([Lcom/samsung/android/sume/core/graph/GraphEdge;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;-><init>([Lcom/samsung/android/sume/core/graph/GraphEdge;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)V

    return-void
.end method

.method public constructor blacklist <init>([Lcom/samsung/android/sume/core/graph/GraphEdge;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)V
    .locals 5

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda8;-><init>()V

    new-instance v2, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda9;-><init>()V

    new-instance v3, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda10;-><init>()V

    new-instance v4, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;-><init>(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)V

    return-void
.end method

.method private blacklist broadcast(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->channels:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist evaluate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->evChannelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$broadcast$1(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$evaluate$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 2

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

.method static synthetic blacklist lambda$evaluate$3(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method static synthetic blacklist lambda$evaluate$4(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/util/Map$Entry;)Z
    .locals 8

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    move-object v2, p0

    instance-of v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    :cond_0
    nop

    invoke-interface {v0}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->getValueType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->of(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBufferReader;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p0

    instance-of v5, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containFlags([I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v4

    const-string v6, "evaluate-value"

    invoke-interface {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    :cond_1
    invoke-interface {v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    const/4 v5, 0x1

    return v5

    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 0

    return-object p0
.end method

.method private blacklist sendAll(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->evaluate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->broadcast(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

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

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->evaluate(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->broadcast(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist cancel()V
    .locals 0

    return-void
.end method

.method public blacklist close()V
    .locals 0

    return-void
.end method

.method blacklist init()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    sget-object v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->EVALUATE_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/channel/SendChannelRouter;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendOp:Ljava/util/function/Consumer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    sget-object v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->BROADCAST_ONLY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/channel/SendChannelRouter;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendOp:Ljava/util/function/Consumer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendType:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    sget-object v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/channel/SendChannelRouter;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendOp:Ljava/util/function/Consumer;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/channel/SendChannelRouter;)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendOp:Ljava/util/function/Consumer;

    :goto_0
    return-void
.end method

.method public blacklist isClosedForReceive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isClosedForSend()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist receive()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->sendOp:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist send(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method
