.class public interface abstract Lcom/samsung/android/sume/core/graph/GraphNode;
.super Ljava/lang/Object;
.source "GraphNode.java"

# interfaces
.implements Lcom/samsung/android/sume/core/message/MessageSubscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/message/MessageSubscriber;"
    }
.end annotation


# virtual methods
.method public abstract blacklist addInputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphEdge;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract blacklist addOutputEdge(Lcom/samsung/android/sume/core/graph/GraphEdge;)Lcom/samsung/android/sume/core/graph/GraphNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/graph/GraphEdge;",
            ")",
            "Lcom/samsung/android/sume/core/graph/GraphNode<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract blacklist containsOption(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public abstract blacklist get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
.end method

.method public abstract blacklist getExceptionHandler()Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getNodeId()Ljava/lang/String;
.end method

.method public abstract blacklist getOption(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)TV;"
        }
    .end annotation
.end method

.method public abstract blacklist getOption(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "option",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(ITV;)TV;"
        }
    .end annotation
.end method

.method public abstract blacklist getReceiveChannelRouter()Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter;
.end method

.method public abstract blacklist getSendChannelRouter()Lcom/samsung/android/sume/core/channel/SendChannelRouter;
.end method

.method public abstract blacklist hasInputEdge()Z
.end method

.method public abstract blacklist hasOutputEdge()Z
.end method

.method public abstract blacklist pause()V
.end method

.method public abstract blacklist prepare()V
.end method

.method public abstract blacklist release()V
.end method

.method public abstract blacklist resume()V
.end method

.method public abstract blacklist setExceptionHandler(Ljava/util/function/Function;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exceptionHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist setMessagePublisher(Lcom/samsung/android/sume/core/message/MessagePublisher;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messagePublisher"
        }
    .end annotation
.end method

.method public abstract blacklist setOption(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public abstract blacklist setOption(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "option",
            "data"
        }
    .end annotation
.end method
