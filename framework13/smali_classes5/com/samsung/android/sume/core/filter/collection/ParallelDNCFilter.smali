.class public Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;
.super Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;
.source "ParallelDNCFilter.java"


# instance fields
.field private final blacklist inChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private final blacklist outChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;


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

    .line 24
    .local p2, "channelSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;Ljava/util/function/Supplier;)V

    .line 26
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->inChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 27
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->outChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 28
    return-void
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

    .line 32
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    new-instance v0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-ParallelDNCFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 3
    .param p1, "it"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->inChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->outChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/filter/AsyncFilter;->addBufferChannels(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/filter/AsyncFilter;

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

    .line 39
    instance-of v0, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 40
    if-eqz p2, :cond_0

    .line 41
    instance-of v0, p2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 43
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->inChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "bufferList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->size()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelDNCFilter;->outChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 62
    .local v1, "received":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v1    # "received":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_0

    .line 65
    :cond_1
    instance-of v1, p2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v1, :cond_2

    .line 66
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->addBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    move-result-object v1

    return-object v1

    .line 68
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    return-object v1
.end method
