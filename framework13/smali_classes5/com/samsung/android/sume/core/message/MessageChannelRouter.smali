.class public Lcom/samsung/android/sume/core/message/MessageChannelRouter;
.super Ljava/lang/Object;
.source "MessageChannelRouter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist errorListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist eventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist messageSubscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->errorListener:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->eventListener:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    return-void
.end method

.method static synthetic blacklist lambda$queryMessageChannel$0()Ljava/util/stream/Stream;
    .locals 1

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/sume/core/message/MessageChannel;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$removeMessageSubscriber$1(Lcom/samsung/android/sume/core/message/MessageSubscriber;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .param p0, "messageSubscriber"    # Lcom/samsung/android/sume/core/message/MessageSubscriber;
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/util/List;

    .line 63
    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist addMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
    .locals 6
    .param p1, "messageSubscriber"    # Lcom/samsung/android/sume/core/message/MessageSubscriber;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSubscriber"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->TAG:Ljava/lang/String;

    const-string v1, "addMessageSubscriber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->getSubscribeMessages()[Ljava/lang/Integer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 49
    .local v3, "code":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x3e1

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x3de

    if-ne v4, v5, :cond_1

    .line 52
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->eventListener:Ljava/util/List;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 55
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 50
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->errorListener:Ljava/util/List;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageSubscriber;->getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v3    # "code":Ljava/lang/Integer;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_4
    return-void
.end method

.method public blacklist newMessagePublisher()Lcom/samsung/android/sume/core/message/MessagePublisher;
    .locals 2

    .line 20
    new-instance v0, Lcom/samsung/android/sume/core/message/MessagePublisher;

    new-instance v1, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/message/MessagePublisher;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method blacklist queryMessageChannel(I)Ljava/util/List;
    .locals 4
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageChannel;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p1}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->errorListener:Ljava/util/List;

    return-object v0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;-><init>()V

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda0;-><init>()V

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->eventListener:Ljava/util/List;

    .line 32
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 33
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 34
    .local v1, "messageChannels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/message/MessageChannel;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageChannels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-object v1
.end method

.method public blacklist removeMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
    .locals 2
    .param p1, "messageSubscriber"    # Lcom/samsung/android/sume/core/message/MessageSubscriber;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSubscriber"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->messageSubscribers:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/message/MessageChannelRouter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 65
    return-void
.end method
