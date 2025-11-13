.class public interface abstract Lcom/samsung/android/sume/core/graph/GraphBuilder;
.super Ljava/lang/Object;
.source "GraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;)Lcom/samsung/android/sume/core/graph/GraphBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+TT;>;",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+TT;>;)",
            "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract blacklist addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;I)Lcom/samsung/android/sume/core/graph/GraphBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "channelType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+TT;>;",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+TT;>;I)",
            "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract blacklist addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/evaluate/Evaluator;)Lcom/samsung/android/sume/core/graph/GraphBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "evaluator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+TT;>;",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+TT;>;",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract blacklist addNode(Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/graph/GraphNode;Lcom/samsung/android/sume/core/evaluate/Evaluator;I)Lcom/samsung/android/sume/core/graph/GraphBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "evaluator",
            "channelType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+TT;>;",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "+TT;>;",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "I)",
            "Lcom/samsung/android/sume/core/graph/GraphBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract blacklist addNode([Lcom/samsung/android/sume/core/graph/GraphNode;)Lcom/samsung/android/sume/core/graph/GraphBuilder;
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
.end method

.method public abstract blacklist build()Lcom/samsung/android/sume/core/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sume/core/graph/Graph<",
            "TT;>;"
        }
    .end annotation
.end method
