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
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "channelSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p2, "channelSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;Ljava/util/function/Supplier;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->inChannels:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->outChannels:Ljava/util/List;

    .line 30
    return-void
.end method

.method static synthetic blacklist lambda$run$1(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 0
    .param p0, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p1, "e"    # Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 49
    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$run$2(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Z
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 61
    const-string v0, "composer"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$run$3(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Ljava/lang/Object;
    .locals 1
    .param p0, "e"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 63
    const-string v0, "composer"

    invoke-interface {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/MediaFilterGroup;"
        }
    .end annotation

    .line 34
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    new-instance v0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 43
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-ParallelSharedFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 3
    .param p1, "it"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->channelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 36
    .local v0, "inChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->channelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 38
    .local v1, "outChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->inChannels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->outChannels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sume/core/filter/AsyncFilter;->addBufferChannels(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/filter/AsyncFilter;

    .line 42
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 3
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

    .line 49
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->inChannels:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->outChannels:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/ReceiveChannelRouterImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 59
    .local v0, "bufferList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->getUseExternalBufferComposer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda1;-><init>()V

    .line 61
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/collection/ParallelSharedFilter$$ExternalSyntheticLambda2;-><init>()V

    .line 63
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/RawDataReader$$ExternalSyntheticLambda1;-><init>()V

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/functional/BufferComposer;

    .line 65
    .local v1, "composer":Lcom/samsung/android/sume/core/functional/BufferComposer;
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/sume/core/functional/BufferComposer;->compose(Ljava/util/List;Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    return-object v2

    .line 67
    .end local v1    # "composer":Lcom/samsung/android/sume/core/functional/BufferComposer;
    :cond_0
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->addBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    move-result-object v1

    return-object v1
.end method
