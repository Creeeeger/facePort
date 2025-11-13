.class public Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;
.super Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;
.source "SequentialPickerFilter.java"


# instance fields
.field private final blacklist evaluateFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->evaluateFilters:Ljava/util/List;

    .line 26
    return-void
.end method

.method static synthetic blacklist lambda$run$1(Landroid/util/Pair;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p0, "evaluateFilter"    # Landroid/util/Pair;
    .param p1, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "e"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 48
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic blacklist lambda$prepare$0$com-samsung-android-sume-core-filter-collection-SequentialPickerFilter(I)V
    .locals 4
    .param p1, "idx"    # I

    .line 34
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 35
    .local v0, "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->prepare()V

    .line 36
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->evaluateFilters:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;

    invoke-virtual {v3}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->getEvaluators()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public blacklist prepare()V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->getEvaluators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "# of evaluator & filter are not matched"

    invoke-static {v0, v3, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;)V

    .line 33
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 38
    return-void
.end method

.method public blacklist release()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->release()V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->evaluateFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 5
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

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->evaluateFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 44
    .local v1, "evaluateFilter":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->getValueType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->of(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBufferReader;

    move-result-object v2

    .line 45
    .local v2, "reader":Lcom/samsung/android/sume/core/buffer/MediaBufferReader;, "Lcom/samsung/android/sume/core/buffer/MediaBufferReader<*>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    instance-of v0, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p2}, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter$$ExternalSyntheticLambda1;-><init>(Landroid/util/Pair;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 48
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 49
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    .local v0, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 52
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v3

    .line 54
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    return-object v3

    .line 56
    .end local v0    # "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0

    .line 59
    .end local v1    # "evaluateFilter":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/sume/core/evaluate/Evaluator;Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    .end local v2    # "reader":Lcom/samsung/android/sume/core/buffer/MediaBufferReader;, "Lcom/samsung/android/sume/core/buffer/MediaBufferReader<*>;"
    :cond_2
    goto :goto_0

    .line 60
    :cond_3
    return-object p1
.end method
