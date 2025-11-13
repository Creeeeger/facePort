.class public interface abstract Lcom/samsung/android/sume/core/graph/Graph;
.super Ljava/lang/Object;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/graph/Graph$Option;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist pause()V
.end method

.method public abstract blacklist release()V
.end method

.method public abstract blacklist resume()V
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/sume/core/graph/Graph$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/core/graph/Graph$1;-><init>(Lcom/samsung/android/sume/core/graph/Graph;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/Graph;->run(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v1
.end method

.method public blacklist run(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sume/core/graph/Graph;->run(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/graph/Graph$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sume/core/graph/Graph$2;-><init>(Lcom/samsung/android/sume/core/graph/Graph;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    new-instance v1, Lcom/samsung/android/sume/core/graph/Graph$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/core/graph/Graph$3;-><init>(Lcom/samsung/android/sume/core/graph/Graph;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/Graph;->run(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    return-void
.end method

.method public abstract blacklist run(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist setMessageSubscriber(Lcom/samsung/android/sume/core/message/MessageSubscriber;)V
.end method
