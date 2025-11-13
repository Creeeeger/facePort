.class public interface abstract Lcom/samsung/android/sume/core/functional/ExecuteDelegator;
.super Ljava/lang/Object;
.source "ExecuteDelegator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist execute(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/functional/BiBufferProcessor;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ibuf",
            "obuf",
            "delegate"
        }
    .end annotation
.end method
