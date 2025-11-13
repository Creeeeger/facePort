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

.field private blacklist targetFormat:Lcom/samsung/android/sume/core/format/MediaFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    return-void
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    return-object v0
.end method

.method public blacklist prepare()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->targetFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    :cond_0
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 6

    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/Shape;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->setFormat(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    new-instance v3, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/NNFWFilter;)V

    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/sume/core/functional/ExecuteDelegator;->execute(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Lcom/samsung/android/sume/core/functional/BiBufferProcessor;)Lcom/samsung/android/sume/core/types/Status;

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->runAdapter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/types/Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    nop

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->addExtra(Ljava/util/Map;)V

    instance-of v2, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v2, :cond_8

    move-object v2, p1

    :goto_4
    instance-of v3, v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v3, :cond_7

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->addExtra(Ljava/util/Map;)V

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->targetFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/samsung/android/sume/core/filter/NNFWFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convert to target-format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->targetFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sume/solution/filter/UniImgp;->ofCvtData()Lcom/samsung/android/sume/core/functional/Operator;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->targetFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lcom/samsung/android/sume/core/functional/Operator;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_9
    sget-object v2, Lcom/samsung/android/sume/core/filter/NNFWFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v4}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] processing nn ts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v2, p0}, Lcom/samsung/android/sume/core/Def;->makeExceptionTag(Ljava/lang/Exception;Lcom/samsung/android/sume/core/filter/MediaFilter;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public abstract blacklist runAdapter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/types/Status;
.end method

.method public blacklist setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

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

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
