.class public interface abstract Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;
.super Ljava/lang/Object;
.source "MediaInputStreamFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;


# virtual methods
.method public abstract blacklist getReceiveChannelCount()I
.end method

.method public abstract blacklist getReceiveChannelQuery()Ljava/util/function/Function;
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

.method public abstract blacklist setReceiveChannelQuery(Ljava/util/function/Function;I)V
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
