.class public Lcom/samsung/android/sume/core/functional/ImgProcessorMap;
.super Ljava/lang/Object;
.source "ImgProcessorMap.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/ImgProcessor;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist priorityCheckMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/types/ImgpType;",
            "Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist priorityCompute:Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

.field private blacklist processorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist processorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usePersistentFormat:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->priorityCheckMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processorMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "processorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Enum<*>;Lcom/samsung/android/sume/core/functional/ImgProcessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->usePersistentFormat:Z

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->processorMap:Ljava/util/Map;

    .line 99
    return-void
.end method

.method static synthetic blacklist lambda$config$1(Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 155
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;

    return-object v0
.end method

.method static synthetic blacklist lambda$process$0(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Ljava/util/Map;Lcom/samsung/android/sume/core/functional/ImgProcessor;)V
    .locals 2
    .param p0, "ifmt"    # Lcom/samsung/android/sume/core/format/MutableImageFormat;
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/ImageFormat;
    .param p2, "processorPriorityMap"    # Ljava/util/Map;
    .param p3, "processor"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 110
    move-object v0, p3

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;->compute(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;)F

    move-result v0

    .line 111
    .local v0, "priority":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist config(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V
    .locals 2
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->isUsePersistentFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->usePersistentFormat:Z

    .line 152
    new-instance v0, Lcom/samsung/android/sume/core/functional/ImgpPriorityByDataSize;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/ImgpPriorityByDataSize;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->priorityCompute:Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    .line 154
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->processorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda0;-><init>()V

    .line 155
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/functional/ImgProcessorMap;)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 157
    return-void
.end method

.method synthetic blacklist lambda$config$2$com-samsung-android-sume-core-functional-ImgProcessorMap(Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;)V
    .locals 2
    .param p1, "e"    # Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;

    .line 156
    sget-object v0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->priorityCheckMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;->getType()Ljava/lang/Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->priorityCompute:Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;->setComputeBridge(Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)V

    return-void
.end method

.method public blacklist process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 9
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

    .line 103
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 104
    .local v0, "ifmt":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    move-object v1, p1

    .line 106
    .local v1, "ibuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    iget-boolean v2, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->usePersistentFormat:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->processorList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 107
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v2, "processorPriorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Lcom/samsung/android/sume/core/functional/ImgProcessor;>;"
    iget-object v3, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->processorMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, p2, v2}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Ljava/util/Map;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 116
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    .line 117
    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda3;-><init>()V

    .line 118
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 119
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->processorList:Ljava/util/List;

    .line 122
    .end local v2    # "processorPriorityMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Lcom/samsung/android/sume/core/functional/ImgProcessor;>;"
    :cond_1
    const/4 v2, 0x0

    .line 123
    .local v2, "obuf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    iget-object v3, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->processorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 125
    .local v4, "proc":Lcom/samsung/android/sume/core/functional/ImgProcessor;
    :try_start_0
    invoke-interface {v4, v1, p2}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/ImageFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v5

    move-object v2, v5

    .line 126
    sget-object v5, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "output: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eq v1, p1, :cond_2

    if-eq v1, v2, :cond_2

    .line 129
    const-string v6, "current input is differ from first one"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/util/Map;)V

    .line 131
    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_2
    move-object v1, v2

    .line 142
    goto :goto_1

    .line 136
    :catch_0
    move-exception v5

    .line 139
    .local v5, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v6, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restore format:\nformat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nibuf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    instance-of v6, p2, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    if-eqz v6, :cond_3

    .line 141
    move-object v6, p2

    check-cast v6, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->with(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    .line 143
    .end local v4    # "proc":Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .end local v5    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_3
    :goto_1
    goto :goto_0

    .line 146
    :cond_4
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v3
.end method
