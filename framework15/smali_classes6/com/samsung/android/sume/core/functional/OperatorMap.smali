.class public Lcom/samsung/android/sume/core/functional/OperatorMap;
.super Ljava/lang/Object;
.source "OperatorMap.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/Operator;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist priorityCheckMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/types/ImgpType;",
            "Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist priorityCompute:Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

.field private blacklist processorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/functional/Operator;",
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
            "Lcom/samsung/android/sume/core/functional/Operator;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usePersistentFormat:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/functional/OperatorMap;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/functional/OperatorMap;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sume/core/functional/OperatorMap$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/OperatorMap$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/functional/OperatorMap;->priorityCheckMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/functional/Operator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->usePersistentFormat:Z

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->processorMap:Ljava/util/Map;

    return-void
.end method

.method public static blacklist inferOperations(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/format/MutableMediaFormat;",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/types/ImgpType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;-><init>()V

    sget-object v1, Lcom/samsung/android/sume/core/functional/OperatorMap;->priorityCheckMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;)V

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/Map$Entry;->comparingByValue()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method static synthetic blacklist lambda$config$1(Lcom/samsung/android/sume/core/functional/Operator;)Lcom/samsung/android/sume/core/functional/OpPriorityComputable;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;

    return-object v0
.end method

.method static synthetic blacklist lambda$inferOperations$3(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;Ljava/util/Map$Entry;)Ljava/lang/Float;
    .locals 1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;->compute(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$inferOperations$4(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$run$0(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Ljava/util/Map;Lcom/samsung/android/sume/core/functional/Operator;)V
    .locals 2

    move-object v0, p3

    check-cast v0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->compute(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist config(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->isUsePersistentFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->usePersistentFormat:Z

    new-instance v0, Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->priorityCompute:Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->processorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/functional/OperatorMap;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic blacklist lambda$config$2$com-samsung-android-sume-core-functional-OperatorMap(Lcom/samsung/android/sume/core/functional/OpPriorityComputable;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/functional/OperatorMap;->priorityCheckMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->getType()Ljava/lang/Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->priorityCompute:Lcom/samsung/android/sume/core/functional/OpPriorityCompute;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sume/core/functional/OpPriorityComputable;->setComputeBridge(Lcom/samsung/android/sume/core/functional/OpPriorityComputable$ComputeBridge;Lcom/samsung/android/sume/core/functional/OpPriorityCompute;)V

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->usePersistentFormat:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->processorList:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->processorMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, p2, v1}, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->processorList:Ljava/util/List;

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->mutableOf(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v1

    move-object v2, p2

    iget-object v3, p0, Lcom/samsung/android/sume/core/functional/OperatorMap;->processorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/functional/Operator;

    :try_start_0
    invoke-interface {v4, v1, v2}, Lcom/samsung/android/sume/core/functional/Operator;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->moveTo(Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v5

    if-eq v5, p1, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->get()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v6

    if-eq v5, v6, :cond_2

    invoke-interface {v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v5

    sget-object v6, Lcom/samsung/android/sume/core/functional/OperatorMap;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore format:\nformat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nibuf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :cond_4
    return-object p2
.end method
