.class public interface abstract Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
.super Ljava/lang/Object;
.source "ReceiveChannelRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static blacklist of(Ljava/util/List;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
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
            ")",
            "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;"
        }
    .end annotation

    .line 25
    .local p0, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    new-instance v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;-><init>(Ljava/util/List;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)V

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->newRouter()Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;
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
            ")",
            "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;"
        }
    .end annotation

    .line 21
    .local p0, "evaluateChannelMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    new-instance v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;-><init>(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)V

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl;->newRouter()Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofAll(Ljava/util/List;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
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
            "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;"
        }
    .end annotation

    .line 41
    .local p0, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    sget-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    invoke-static {p0, v0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->of(Ljava/util/List;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofAll(Ljava/util/Map;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
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
            "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;"
        }
    .end annotation

    .line 37
    .local p0, "evaluateChannelMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    sget-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ALL:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    invoke-static {p0, v0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->of(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofAny(Ljava/util/List;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
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
            "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;"
        }
    .end annotation

    .line 33
    .local p0, "channels":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    sget-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    invoke-static {p0, v0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->of(Ljava/util/List;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ofAny(Ljava/util/Map;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
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
            "Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;"
        }
    .end annotation

    .line 29
    .local p0, "evaluateChannelMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    sget-object v0, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;->ANY:Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;

    invoke-static {p0, v0}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;->of(Ljava/util/Map;Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$Type;)Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method
