.class public Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;
.super Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;
.source "ParallelDNCFilter.java"


# instance fields
.field private final blacklist inChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private final blacklist outChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;


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

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->inChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->outChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-void
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

    new-instance v0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-ParallelDNCFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->inChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->outChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/filter/AsyncFilter;->addBufferChannels(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/filter/AsyncFilter;

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 5

    instance-of v0, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->inChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->size()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->outChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object p2
.end method
