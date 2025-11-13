.class public abstract Lcom/samsung/android/sume/core/message/MessageSubscriberBase;
.super Ljava/lang/Object;
.source "MessageSubscriberBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/message/MessageSubscriber;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist errorListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist eventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

.field protected blacklist messageConsumers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/message/MessageConsumer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/message/MessageChannel;)V
    .locals 1
    .param p1, "messageChannel"    # Lcom/samsung/android/sume/core/message/MessageChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageChannel"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->errorListener:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->eventListener:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

    .line 23
    return-void
.end method

.method static synthetic blacklist lambda$onMessageReceived$0(Lcom/samsung/android/sume/core/message/Message;Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 0
    .param p0, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .param p1, "it"    # Lcom/samsung/android/sume/core/message/MessageConsumer;

    .line 50
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/message/MessageConsumer;->onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z

    return-void
.end method

.method static synthetic blacklist lambda$onMessageReceived$1()Ljava/util/stream/Stream;
    .locals 1

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/sume/core/message/MessageConsumer;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$onMessageReceived$2(Lcom/samsung/android/sume/core/message/Message;Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 0
    .param p0, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .param p1, "it"    # Lcom/samsung/android/sume/core/message/MessageConsumer;

    .line 57
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/message/MessageConsumer;->onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z

    return-void
.end method

.method static synthetic blacklist lambda$removeMessageConsumer$3(Lcom/samsung/android/sume/core/message/MessageConsumer;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .param p0, "messageConsumer"    # Lcom/samsung/android/sume/core/message/MessageConsumer;
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/util/List;

    .line 87
    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist addMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 7
    .param p1, "messageConsumer"    # Lcom/samsung/android/sume/core/message/MessageConsumer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageConsumer"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMessageConsumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {p1}, Lcom/samsung/android/sume/core/message/MessageConsumer;->getConsumeMessage()[I

    move-result-object v1

    .line 66
    .local v1, "codes":[I
    if-eqz v1, :cond_6

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_3

    .line 71
    :cond_0
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget v3, v1, v2

    .line 73
    .local v3, "code":I
    const/16 v4, 0x3e1

    if-eq v3, v4, :cond_4

    invoke-static {v3}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    const/16 v4, 0x3de

    if-ne v3, v4, :cond_2

    .line 76
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->eventListener:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 79
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->errorListener:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v3    # "code":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_5
    return-void

    .line 67
    :cond_6
    :goto_3
    const-string v2, "no consume code given"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public blacklist bindToMessageChannelRouter(Lcom/samsung/android/sume/core/message/MessageChannelRouter;)V
    .locals 0
    .param p1, "messageChannelRouter"    # Lcom/samsung/android/sume/core/message/MessageChannelRouter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageChannelRouter"
        }
    .end annotation

    .line 33
    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/message/MessageChannelRouter;->addMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V

    .line 34
    return-void
.end method

.method public blacklist getMessageChannel()Lcom/samsung/android/sume/core/message/MessageChannel;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

    return-object v0
.end method

.method public blacklist getSubscribeMessages()[Ljava/lang/Integer;
    .locals 2

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->eventListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const/16 v1, 0x3de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->errorListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    const/16 v1, 0x3e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    return-object v1
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 3
    .param p1, "message"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v0

    .line 49
    .local v0, "code":I
    invoke-static {v0}, Lcom/samsung/android/sume/core/message/Message;->isError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->errorListener:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda3;-><init>()V

    .line 54
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda2;-><init>()V

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/stream/Stream;

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->eventListener:Ljava/util/List;

    .line 56
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    .line 57
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 59
    :goto_0
    return-void
.end method

.method protected blacklist release()V
    .locals 3

    .line 91
    sget-object v0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close message channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageChannel:Lcom/samsung/android/sume/core/message/MessageChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/message/MessageChannel;->cancel()V

    .line 93
    return-void
.end method

.method public blacklist removeMessageConsumer(Lcom/samsung/android/sume/core/message/MessageConsumer;)V
    .locals 2
    .param p1, "messageConsumer"    # Lcom/samsung/android/sume/core/message/MessageConsumer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageConsumer"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/MessageSubscriberBase;->messageConsumers:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/message/MessageSubscriberBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/message/MessageConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 88
    return-void
.end method
