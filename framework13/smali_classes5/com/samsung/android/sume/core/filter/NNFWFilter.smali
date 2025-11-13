.class public abstract Lcom/samsung/android/sume/core/filter/NNFWFilter;
.super Ljava/lang/Object;
.source "NNFWFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

.field protected blacklist executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;)V
    .locals 0
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 8
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ibuf",
            "obuf"
        }
    .end annotation

    .line 48
    move-object v0, p2

    .line 49
    .local v0, "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    if-nez v0, :cond_5

    .line 50
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    .line 52
    .local v1, "iFmt":Lcom/samsung/android/sume/core/format/MediaFormat;
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda0;-><init>()V

    .line 53
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 56
    .local v2, "oFmt":Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 58
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 59
    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/Shape;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    :cond_2
    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_2

    .line 62
    :cond_3
    if-nez v2, :cond_4

    .line 63
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    .line 66
    :cond_4
    :goto_2
    invoke-static {v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 69
    .end local v1    # "iFmt":Lcom/samsung/android/sume/core/format/MediaFormat;
    .end local v2    # "oFmt":Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 73
    .local v1, "triggerTs":J
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    if-eqz v3, :cond_6

    .line 74
    new-instance v4, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/NNFWFilter;)V

    invoke-interface {v3, p1, v0, v4}, Lcom/samsung/android/sume/core/functional/ExecuteDelegator;->execute(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/functional/BiBufferProcessor;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    .local v3, "ret":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_3

    .line 76
    .end local v3    # "ret":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->runAdapter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .restart local v3    # "ret":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_3
    nop

    .line 81
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 83
    if-eqz p2, :cond_7

    if-eq v3, p2, :cond_7

    .line 84
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 86
    :cond_7
    instance-of v4, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v4, :cond_9

    .line 87
    move-object v4, p1

    .line 88
    .local v4, "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_4
    instance-of v5, v4, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v5, :cond_8

    .line 89
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v4

    goto :goto_4

    .line 91
    :cond_8
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 94
    .end local v4    # "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_9
    sget-object v4, Lcom/samsung/android/sume/core/filter/NNFWFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] processing nn ts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v3

    .line 77
    .end local v3    # "ret":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {v3, p0}, Lcom/samsung/android/sume/core/Def;->makeExceptionTag(Ljava/lang/Exception;Lcom/samsung/android/sume/core/filter/MediaFilter;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public abstract blacklist runAdapter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ibuf",
            "obuf"
        }
    .end annotation
.end method

.method public blacklist setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V
    .locals 0
    .param p1, "delegator"    # Lcom/samsung/android/sume/core/functional/ExecuteDelegator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegator"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    .line 43
    return-void
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
