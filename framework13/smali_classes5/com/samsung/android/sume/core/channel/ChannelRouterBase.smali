.class abstract Lcom/samsung/android/sume/core/channel/ChannelRouterBase;
.super Ljava/lang/Object;
.source "ChannelRouterBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected blacklist channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist evChannelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;)V
    .locals 0
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

    .line 41
    .local p0, "this":Lcom/samsung/android/sume/core/channel/ChannelRouterBase;, "Lcom/samsung/android/sume/core/channel/ChannelRouterBase<TT;>;"
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;->channels:Ljava/util/List;

    .line 43
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evChannelMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/samsung/android/sume/core/channel/ChannelRouterBase;, "Lcom/samsung/android/sume/core/channel/ChannelRouterBase<TT;>;"
    .local p1, "evChannelMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "no edge given"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda4;-><init>()V

    .line 21
    invoke-static {v3}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 23
    .local v0, "partitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Boolean;Ljava/util/List<Ljava/util/Map$Entry<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;>;>;"
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda5;-><init>()V

    .line 24
    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/sume/Result$$ExternalSyntheticLambda0;-><init>()V

    .line 25
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;->channels:Ljava/util/List;

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda6;-><init>()V

    .line 28
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda3;-><init>()V

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/samsung/android/sume/core/channel/ChannelRouterBase;->evChannelMap:Ljava/util/Map;

    .line 39
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 21
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sume/core/evaluate/EvalNone;

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

.method static synthetic blacklist lambda$new$1(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "e"    # Ljava/util/List;

    .line 24
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$2(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 0
    .param p0, "oldValue"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p1, "newValue"    # Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 33
    return-object p0
.end method

.method static synthetic blacklist lambda$new$3(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 5
    .param p0, "e"    # Ljava/util/List;

    .line 30
    nop

    .line 28
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 29
    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda3;-><init>()V

    .line 30
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist newRouter()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
