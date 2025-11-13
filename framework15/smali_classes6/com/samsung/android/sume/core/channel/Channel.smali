.class public interface abstract Lcom/samsung/android/sume/core/channel/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


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
.method public abstract blacklist cancel()V
.end method

.method public abstract blacklist close()V
.end method

.method public abstract blacklist isClosedForReceive()Z
.end method

.method public abstract blacklist isClosedForSend()Z
.end method

.method public abstract blacklist receive()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract blacklist send(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
