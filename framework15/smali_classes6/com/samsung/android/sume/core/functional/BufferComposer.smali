.class public interface abstract Lcom/samsung/android/sume/core/functional/BufferComposer;
.super Ljava/lang/Object;
.source "BufferComposer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist compose(Ljava/util/List;Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;",
            "Lcom/samsung/android/sume/core/filter/MediaFilter$Option;",
            ")",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation
.end method
