.class public Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;
.super Ljava/lang/Object;
.source "MediaMuxerFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;
.implements Lcom/samsung/android/sume/core/filter/MediaInputStreamFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist cacheId:Ljava/lang/String;

.field private blacklist channelReady:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/ConditionVariable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist contentId:I

.field private blacklist contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

.field private blacklist cvPause:Landroid/os/ConditionVariable;

.field private final blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

.field private blacklist diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

.field private blacklist messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

.field private blacklist muxer:Landroid/media/MediaMuxer;

.field private blacklist outputFd:Ljava/io/FileDescriptor;

.field private final blacklist readyToStart:Ljava/util/concurrent/Semaphore;

.field private blacklist receiveChannelCount:I

.field private blacklist receiveChannelQuery:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist storeCache:Z

.field private final blacklist threadPool:Ljava/util/concurrent/ExecutorService;

.field private final blacklist trackIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/types/MediaType;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->trackIndexMap:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cvPause:Landroid/os/ConditionVariable;

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private blacklist feedExistFramesToBufferChannel(Ljava/io/FileDescriptor;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    const-string v1, "feedExistFramesToBufferChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Landroid/media/MediaExtractor;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    nop

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    throw v1
.end method


# virtual methods
.method public blacklist getConsumeMessage()[I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x4

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    return-object v0
.end method

.method public blacklist getReceiveChannelCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    return v0
.end method

.method public blacklist getReceiveChannelQuery()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    return-object v0
.end method

.method synthetic blacklist lambda$feedExistFramesToBufferChannel$0$com-samsung-android-sume-core-filter-MediaMuxerFilter(Landroid/media/MediaExtractor;I)V
    .locals 12

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->RAW_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->RAW_AUDIO:Lcom/samsung/android/sume/core/types/MediaType;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/channel/BufferChannel;

    if-nez v2, :cond_1

    sget-object v3, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no given buffer-channel for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v3

    long-to-int v3, v3

    if-gez v3, :cond_2

    sget-object v4, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    const-string v5, "parser reached EOS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    return-void

    :cond_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v3, v6, :cond_3

    move v5, v7

    :cond_3
    invoke-static {v5}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    invoke-static {v1, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v5

    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput v3, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    and-int/2addr v9, v7

    if-eqz v9, :cond_4

    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/2addr v7, v9

    iput v7, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :cond_4
    const-string v7, "buffer-info"

    invoke-interface {v5, v7, v8}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    sget-object v7, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "push to buffer-channel["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "[us]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v5}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method synthetic blacklist lambda$run$1$com-samsung-android-sume-core-filter-MediaMuxerFilter(Landroid/util/Pair;Lcom/samsung/android/sume/core/types/MediaType;)Ljava/lang/Boolean;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[enc: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/samsung/android/sume/core/channel/BufferChannel;

    const/4 v0, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move/from16 v18, v8

    move v8, v0

    move/from16 v0, v18

    :goto_0
    if-nez v0, :cond_4

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v12}, Landroid/os/ConditionVariable;->block()V

    invoke-interface {v7}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    const-string v13, "buffer-info"

    invoke-interface {v12, v13}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaCodec$BufferInfo;

    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v15, 0x2

    and-int/2addr v14, v15

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    iput v15, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_0
    iget v14, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_1

    sget-object v14, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "muxer reached EOS"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move v11, v0

    goto :goto_1

    :cond_1
    move v11, v0

    :goto_1
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_3

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-interface {v12, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/nio/ByteBuffer;

    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v15, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v15

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write data[#"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "] from "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ": "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v15, v6

    move-object/from16 v16, v7

    iget-wide v6, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "us"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v5, v14, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outputFd size: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Ljava/io/FileDescriptor;

    invoke-static {v6}, Lcom/samsung/android/sume/core/Def;->getFileSize(Ljava/io/FileDescriptor;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sume/core/descriptor/MediaMuxerDescriptor;->isMediaTypeToNotifyEvent(Lcom/samsung/android/sume/core/types/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/util/Pair;

    new-instance v9, Landroid/util/Pair;

    iget v10, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v17, v4

    const-string v4, "contents-id"

    invoke-direct {v9, v4, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v9, v2, v4

    new-instance v4, Landroid/util/Pair;

    const-string v9, "media-type"

    invoke-direct {v4, v9, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    aput-object v4, v2, v9

    new-instance v4, Landroid/util/Pair;

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "number-of-frames"

    invoke-direct {v4, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x2

    aput-object v4, v2, v9

    const/16 v4, 0x1fc

    invoke-interface {v0, v4, v2}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(I[Landroid/util/Pair;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    move-wide v9, v6

    goto :goto_3

    :cond_2
    move-object/from16 v17, v4

    move-wide v9, v6

    goto :goto_3

    :cond_3
    move-object/from16 v17, v4

    move-object v15, v6

    move-object/from16 v16, v7

    :goto_3
    invoke-interface {v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    move-object/from16 v2, p1

    move v0, v11

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    :cond_4
    move-object/from16 v17, v4

    move-object v15, v6

    move-object/from16 v16, v7

    iget-object v2, v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "video"

    goto :goto_4

    :cond_5
    const-string v6, "audio"

    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-timestamp-us"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method synthetic blacklist lambda$run$2$com-samsung-android-sume-core-filter-MediaMuxerFilter(Ljava/util/List;Lcom/samsung/android/sume/core/types/MediaType;Landroid/util/Pair;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3, p2}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Landroid/util/Pair;Lcom/samsung/android/sume/core/types/MediaType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic blacklist lambda$run$3$com-samsung-android-sume-core-filter-MediaMuxerFilter(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Ljava/io/FileDescriptor;

    new-instance v3, Landroid/system/Int64Ref;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Landroid/system/Int64Ref;-><init>(J)V

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lcom/samsung/android/sume/core/Def;->getFileSize(Ljava/io/FileDescriptor;)J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Landroid/system/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public blacklist onMessageReceived(Lcom/samsung/android/sume/core/message/Message;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/message/Message;->getCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_8

    :pswitch_1
    const-string v1, "cache"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/sume/core/cache/DiskCache;

    iput-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->storeCache:Z

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "store: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->storeCache:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disk-cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_2
    const-string v1, "output-file"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputFd size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Ljava/io/FileDescriptor;

    invoke-static {v4}, Lcom/samsung/android/sume/core/Def;->getFileSize(Ljava/io/FileDescriptor;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "cache-id"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->storeCache:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/cache/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restore from cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->feedExistFramesToBufferChannel(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    :goto_3
    goto :goto_6

    :goto_4
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    throw v3

    :cond_4
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no cache exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_6
    :try_start_5
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    const-string v1, "contents-id"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentId:I

    const-string v1, "track-count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    iget v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/Semaphore;->release(I)V

    goto :goto_8

    :pswitch_3
    const-string v1, "media-type"

    invoke-virtual {p1, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/types/MediaType;

    const-string v2, "media-format"

    invoke-virtual {p1, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    const-string v3, "rotation-degrees"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v5, v4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_6
    const-string v3, "width"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_7
    const-string v3, "height"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->trackIndexMap:Ljava/util/Map;

    new-instance v5, Landroid/util/Pair;

    const-string v6, "mime"

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "track-idx"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/sume/core/message/Message;->reply(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    nop

    :goto_8
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist pause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    return-void
.end method

.method public blacklist release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    const-string v1, "release...E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    iget v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    sget-object v0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    const-string v1, "release...X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist resume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 9

    const-string v0, "muxer released"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run: ibuf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", obuf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->readyToStart:Ljava/util/concurrent/Semaphore;

    iget v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->trackIndexMap:Ljava/util/Map;

    new-instance v4, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v5, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    sget-object v6, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "task canceled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total outputFd size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Ljava/io/FileDescriptor;

    invoke-static {v5}, Lcom/samsung/android/sume/core/Def;->getFileSize(Ljava/io/FileDescriptor;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->stop()V

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->storeCache:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    :cond_2
    sget-object v3, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache output file to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    new-instance v5, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;)V

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sume/core/cache/DiskCache;->put(Ljava/lang/String;Ljava/util/function/Function;)V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/cache/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    sget-object v5, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cache is consumed, remove it: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_5
    :try_start_3
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    new-instance v2, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;

    const-string v3, "no muxer is given, might be released"

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_6

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentsFormat:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->outputFd:Ljava/io/FileDescriptor;

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->contentId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contents-id"

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "cache-id"

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->cacheId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p2, v0}, Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;->put(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-object p2

    :goto_5
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->release()V

    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->muxer:Landroid/media/MediaMuxer;

    sget-object v1, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    throw v2
.end method

.method public blacklist setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    return-void
.end method

.method public blacklist setReceiveChannelQuery(Ljava/util/function/Function;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelQuery:Ljava/util/function/Function;

    iput p2, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->receiveChannelCount:I

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/MediaMuxerFilter;->channelReady:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_0
    return-void
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
