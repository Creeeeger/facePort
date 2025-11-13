.class public interface abstract Lcom/samsung/android/sume/core/filter/MediaOutputStreamFilter;
.super Ljava/lang/Object;
.source "MediaOutputStreamFilter.java"


# virtual methods
.method public abstract blacklist getSendChannelCount()I
.end method

.method public abstract blacklist getSendChannelQuery()Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist setSendChannelQuery(Ljava/util/function/Function;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;I)V"
        }
    .end annotation
.end method
