.class public Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;
.super Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;
.source "ParallelSharedFilter.java"


# instance fields
.field blacklist inChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field blacklist outChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;Ljava/util/function/Supplier;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->inChannels:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->outChannels:Ljava/util/List;

    return-void
.end method

.method static synthetic blacklist lambda$run$1(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$run$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 1

    const-string v0, "composer"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$run$3(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;
    .locals 1

    const-string v0, "composer"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/MediaFilterGroup;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-ParallelSharedFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->channelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->channelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->inChannels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->outChannels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sume/core/filter/AsyncFilter;->addBufferChannels(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/filter/AsyncFilter;

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->inChannels:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->outChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouter$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->getUseExternalBufferComposer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/functional/BufferComposer;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/sume/core/functional/BufferComposer;->compose(Ljava/util/List;Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    :goto_0
    return-object p2
.end method
