.class public Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;
.super Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;
.source "SequentialConveyorFilter2.java"


# instance fields
.field private final blacklist done:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist firstInChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private blacklist lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field private final blacklist threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V
    .locals 2
    .param p1, "sequentialDescriptor"    # Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequentialDescriptor"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;->getDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;
    .locals 2
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

    .line 31
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->addFilter(Ljava/util/List;)Lcom/samsung/android/sume/core/filter/MediaFilterGroup;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-SequentialConveyorFilter2(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 2
    .param p1, "inChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;
    .param p2, "it"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .param p3, "outChannel"    # Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-interface {p1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 41
    .local v0, "inBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-interface {p2, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    .line 42
    .local v1, "outBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-interface {p3, v1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 43
    .end local v0    # "inBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v1    # "outBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$addFilter$1$com-samsung-android-sume-core-filter-collection-SequentialConveyorFilter2(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 4
    .param p1, "it"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 33
    .local v0, "inChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->firstInChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-nez v1, :cond_0

    .line 34
    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->firstInChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 36
    :cond_0
    new-instance v1, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;-><init>()V

    .line 38
    .local v1, "outChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 46
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 47
    return-void
.end method

.method public blacklist release()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->done:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    invoke-super {p0}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;->release()V

    .line 62
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
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

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->firstInChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0, p1}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter2;->lastOutChannel:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method
