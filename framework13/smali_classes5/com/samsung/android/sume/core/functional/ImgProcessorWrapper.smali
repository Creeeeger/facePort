.class public Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;
.super Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;
.source "ImgProcessorWrapper.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/ImgProcessor;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist formatUpdaterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/types/ImgpType;",
            "Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist formatUpdater:Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;

.field protected blacklist processor:Lcom/samsung/android/sume/core/functional/ImgProcessor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->formatUpdaterMap:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)V
    .locals 2
    .param p2, "processor"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "processor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "type":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;-><init>(Ljava/lang/Enum;)V

    .line 64
    iput-object p2, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->processor:Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 65
    sget-object v0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->formatUpdaterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda0;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;

    iput-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->formatUpdater:Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;

    .line 67
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;)V
    .locals 0
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p1, "ofmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 66
    return-void
.end method

.method static synthetic blacklist lambda$new$1()Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;
    .locals 1

    .line 66
    new-instance v0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda5;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$of$2(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;
    .locals 1
    .param p0, "type"    # Ljava/lang/Enum;
    .param p1, "e"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 79
    new-instance v0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$of$3(Ljava/util/Map$Entry;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 2
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 89
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->of(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 3
    .param p1, "processor"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "processor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ")",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;"
        }
    .end annotation

    .line 77
    .local p0, "type":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    instance-of v0, p1, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Enum;)V

    .line 79
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 80
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;-><init>(Ljava/lang/Enum;Ljava/util/List;)V

    .line 78
    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;-><init>(Ljava/lang/Enum;Lcom/samsung/android/sume/core/functional/ImgProcessor;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/util/Map;)Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;)",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;"
        }
    .end annotation

    .line 86
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/functional/ImgProcessor;>;"
    new-instance v0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda1;-><init>()V

    new-instance v3, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda2;-><init>()V

    .line 87
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;-><init>(Ljava/util/Map;)V

    .line 86
    return-object v0
.end method


# virtual methods
.method public blacklist process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3
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

    .line 71
    instance-of v0, p2, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->formatUpdater:Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->setUpdater(Ljava/util/function/BiConsumer;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper;->processor:Lcom/samsung/android/sume/core/functional/ImgProcessor;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method
