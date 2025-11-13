.class public interface abstract Lcom/samsung/android/sume/core/buffer/MediaBufferReader;
.super Ljava/lang/Object;
.source "MediaBufferReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist lambda$of$0(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;
    .locals 1
    .param p0, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 18
    invoke-interface {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBufferReader;
    .locals 1
    .param p0, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ")",
            "Lcom/samsung/android/sume/core/buffer/MediaBufferReader<",
            "*>;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/samsung/android/sume/core/buffer/RawDataReader;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/RawDataReader;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object v0
.end method

.method public static blacklist of(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBufferReader;
    .locals 2
    .param p0, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBufferReader<",
            "TV;>;"
        }
    .end annotation

    .line 17
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const-class v0, Lcom/samsung/android/sume/core/format/Shape;

    if-ne p1, v0, :cond_0

    .line 18
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object v0

    .line 19
    :cond_0
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->of(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBufferReader;

    move-result-object v0

    return-object v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract blacklist get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
