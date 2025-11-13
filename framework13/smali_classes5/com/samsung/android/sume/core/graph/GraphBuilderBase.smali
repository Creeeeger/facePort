.class public abstract Lcom/samsung/android/sume/core/graph/GraphBuilderBase;
.super Ljava/lang/Object;
.source "GraphBuilderBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/graph/GraphBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected blacklist graphNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 8
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBuilderBase;, "Lcom/samsung/android/sume/core/graph/GraphBuilderBase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBuilderBase;->graphNodes:Ljava/util/List;

    return-void
.end method

.method static synthetic blacklist lambda$addNode$0(Lcom/samsung/android/sume/core/graph/GraphNode;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .locals 0
    .param p0, "e"    # Lcom/samsung/android/sume/core/graph/GraphNode;

    .line 15
    return-object p0
.end method


# virtual methods
.method public varargs blacklist addNode([Lcom/samsung/android/sume/core/graph/GraphNode;)Lcom/samsung/android/sume/core/graph/GraphBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+TT;>;)",
            "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 14
    .local p0, "this":Lcom/samsung/android/sume/core/graph/GraphBuilderBase;, "Lcom/samsung/android/sume/core/graph/GraphBuilderBase<TT;>;"
    .local p1, "nodes":[Lcom/samsung/android/sume/core/graph/GraphNode;, "[Lcom/samsung/android/sume/core/graph/GraphNode<+TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/GraphBuilderBase;->graphNodes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/graph/GraphBuilderBase$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/graph/GraphBuilderBase$$ExternalSyntheticLambda0;-><init>()V

    .line 15
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 16
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    return-object p0
.end method
