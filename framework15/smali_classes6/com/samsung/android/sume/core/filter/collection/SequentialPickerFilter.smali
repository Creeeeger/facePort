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

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->evaluateFilters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$prepare$0$com-samsung-android-sume-core-filter-collection-SequentialPickerFilter(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->prepare()V

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

    return-void
.end method

.method public blacklist prepare()V
    .locals 4

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
    const-string v1, "# of evaluator & filter are not matched"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public blacklist release()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->release()V

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter;->evaluateFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 6

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

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->getValueType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->of(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBufferReader;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/sume/core/evaluate/Evaluator;

    invoke-interface {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferReader;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/evaluate/Evaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/samsung/android/sume/core/filter/collection/SequentialPickerFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p2, v4}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :goto_1
    goto :goto_2

    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_2
    goto :goto_0

    :cond_3
    return-object p2
.end method
