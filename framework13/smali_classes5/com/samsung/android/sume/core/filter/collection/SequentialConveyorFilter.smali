.class public Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;
.super Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;
.source "SequentialConveyorFilter.java"


# instance fields
.field private blacklist lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;Ljava/util/function/Supplier;)V
    .locals 0
    .param p1, "sequentialDescriptor"    # Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sequentialDescriptor",
            "channelSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p2, "channelSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/samsung/android/sume/core/channel/BufferChannel;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;Ljava/util/function/Supplier;)V

    .line 23
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

    .line 27
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    new-instance v0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-SequentialConveyorFilter()Lcom/samsung/android/sume/core/channel/BufferChannel;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;->channelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-object v0
.end method

.method synthetic blacklist lambda$addFilter$1$com-samsung-android-sume-core-filter-collection-SequentialConveyorFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 3
    .param p1, "it"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 28
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;->lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 29
    .local v0, "inChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;->channelSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 30
    .local v1, "outChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sume/core/filter/AsyncFilter;->addBufferChannels(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/channel/BufferChannel;)Lcom/samsung/android/sume/core/filter/AsyncFilter;

    .line 31
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;->lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 32
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 2
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
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;->filters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/filter/AsyncFilter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/AsyncFilter;->getInputChannel()Lcom/samsung/android/sume/core/channel/BufferChannel;

    move-result-object v0

    .line 40
    .local v0, "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;->lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v1
.end method
