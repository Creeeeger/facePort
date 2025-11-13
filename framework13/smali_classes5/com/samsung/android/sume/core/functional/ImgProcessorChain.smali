.class public Lcom/samsung/android/sume/core/functional/ImgProcessorChain;
.super Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;
.source "ImgProcessorChain.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/ImgProcessor;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ImgProcessorChain"


# instance fields
.field blacklist processors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usePersistentFormat:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Enum;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "processors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "type":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .local p2, "processors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/functional/ImgProcessor;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;-><init>(Ljava/lang/Enum;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->usePersistentFormat:Z

    .line 37
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorChain$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain$$ExternalSyntheticLambda0;-><init>()V

    .line 38
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 42
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "processors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/functional/ImgProcessor;>;"
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;-><init>(Ljava/lang/Enum;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->usePersistentFormat:Z

    .line 27
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorChain$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain$$ExternalSyntheticLambda1;-><init>()V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 32
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    .line 33
    return-void
.end method

.method public varargs constructor blacklist <init>([Lcom/samsung/android/sume/core/functional/ImgProcessor;)V
    .locals 1
    .param p1, "processors"    # [Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processors"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;-><init>(Ljava/util/List;)V

    .line 23
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/functional/ImgProcessor;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 29
    instance-of v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Lcom/samsung/android/sume/core/functional/ImgProcessor;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 39
    instance-of v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addImgProcessor(Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessorChain;
    .locals 1
    .param p1, "processor"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processor"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-object p0
.end method

.method public blacklist config(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->isUsePersistentFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->usePersistentFormat:Z

    .line 75
    return-void
.end method

.method public blacklist process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 5
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "format"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 63
    .local v1, "processor":Lcom/samsung/android/sume/core/functional/ImgProcessor;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    iget-boolean v3, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->usePersistentFormat:Z

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    const-string v3, "ImgProcessorChain"

    const-string v4, "not support, try to next image processor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v1    # "processor":Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "none of image processors to handle this"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeImgProcessor(Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessorChain;
    .locals 1
    .param p1, "processor"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processor"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    return-object p0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
