.class public Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;
.super Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;
.source "BufferedConveyorFilter.java"


# instance fields
.field private final blacklist done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist firstInChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private blacklist lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private final blacklist threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->getDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public blacklist addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;)",
            "Lcom/samsung/android/sume/core/filter/MediaFilterGroup;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-BufferedConveyorFilter(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 2

    nop

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$addFilter$1$com-samsung-android-sume-core-filter-collection-BufferedConveyorFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->firstInChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->firstInChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    :cond_0
    new-instance v1, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-void
.end method

.method public blacklist release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->release()V

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->firstInChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object p2
.end method
