.class public interface abstract Lcom/samsung/android/sume/core/channel/SendChannelRouter;
.super Ljava/lang/Object;
.source "SendChannelRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist lambda$of$0(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 0
    .param p0, "oldValue"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p1, "newValue"    # Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 31
    return-object p0
.end method

.method public static blacklist of(Ljava/util/List;)Lcom/samsung/android/sume/core/channel/SendChannelRouter;
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
            ">;)",
            "Lcom/samsung/android/sume/core/channel/SendChannelRouter;"
        }
    .end annotation

    .line 50
    .local p0, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->newRouter()Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Ljava/util/Map;)Lcom/samsung/android/sume/core/channel/SendChannelRouter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evaluateChannelMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)",
            "Lcom/samsung/android/sume/core/channel/SendChannelRouter;"
        }
    .end annotation

    .line 46
    .local p0, "evaluateChannelMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    sget-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    invoke-static {p0, v0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->of(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/SendChannelRouter;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;
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
            "Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;",
            ")",
            "Lcom/samsung/android/sume/core/channel/SendChannelRouter;"
        }
    .end annotation

    .line 38
    .local p0, "evaluateChannelMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    new-instance v0, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;-><init>(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)V

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/channel/SendChannelRouterImpl;->newRouter()Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of([Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/channel/SendChannelRouter;
    .locals 1
    .param p0, "edges"    # [Lcom/samsung/android/sume/core/graph/GraphEdge;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edges"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;

    invoke-static {p0, v0}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->of([Lcom/samsung/android/sume/core/graph/GraphEdge;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of([Lcom/samsung/android/sume/core/graph/GraphEdge;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/SendChannelRouter;
    .locals 5
    .param p0, "edges"    # [Lcom/samsung/android/sume/core/graph/GraphEdge;
    .param p1, "type"    # Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "edges",
            "type"
        }
    .end annotation

    .line 27
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/channel/SendChannelRouter$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/channel/ChannelRouterBase$$ExternalSyntheticLambda3;-><init>()V

    .line 28
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 34
    .local v0, "evChannelMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/channel/SendChannelRouter;->of(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/SendChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/SendChannelRouter;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaBuffer"
        }
    .end annotation
.end method
