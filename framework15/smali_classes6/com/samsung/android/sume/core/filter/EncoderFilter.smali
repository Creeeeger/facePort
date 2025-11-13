.class public Lcom/samsung/android/sume/core/filter/EncoderFilter;
.super Lcom/samsung/android/sume/core/filter/MediaCodecFilter;
.source "EncoderFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist orientation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    return-void
.end method

.method private blacklist isReachedLastFrame(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isReachedLastTimestamp(J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$configCodec$0(Lcom/samsung/android/sume/core/message/Message;)Landroid/util/Pair;
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-string v1, "width"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist configCodec(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "i-frame-interval"

    const-string v3, "frame-rate"

    const-string v4, "rotation-degrees"

    sget-object v5, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configCodec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    const-string v6, "mime"

    invoke-virtual {v2, v6}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getBitrate()I

    move-result v7

    const/4 v8, 0x0

    const-string v9, "bitrate"

    if-nez v7, :cond_1

    invoke-virtual {v2, v9}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v10

    cmpl-float v10, v10, v8

    if-eqz v10, :cond_1

    int-to-double v10, v7

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-double v12, v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v7, v10

    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v10

    :try_start_0
    invoke-virtual {v10}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getRectSize()Landroid/util/Pair;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v11

    new-instance v13, Lcom/samsung/android/sume/core/filter/EncoderFilter$$ExternalSyntheticLambda0;

    invoke-direct {v13, v2}, Lcom/samsung/android/sume/core/filter/EncoderFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    invoke-virtual {v11, v13}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v15

    cmpl-float v8, v15, v8

    if-eqz v8, :cond_2

    int-to-float v8, v13

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v15

    mul-float/2addr v8, v15

    float-to-int v13, v8

    int-to-float v8, v14

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v15

    mul-float/2addr v8, v15

    float-to-int v14, v8

    :cond_2
    invoke-static {v6, v13, v14}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v8

    const-string v15, "color-format"

    const v12, 0x7f000789

    invoke-virtual {v8, v15, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v3, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "vendor.qti-ext-enc-linear-color-format.value"

    const/4 v3, 0x1

    invoke-virtual {v8, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    iget v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    invoke-virtual {v8, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "sample-rate"

    invoke-virtual {v2, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "channel-count"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v6, v0, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    move-object v8, v4

    nop

    :goto_0
    invoke-virtual {v8, v9, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media-format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v8, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    instance-of v3, v0, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    iget-object v4, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/channel/SurfaceChannel;->configure(Landroid/view/Surface;)V

    :cond_5
    iget-object v3, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->signalCodecFromReady()V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not supported type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;)Lcom/samsung/android/sume/core/buffer/MutableMediaBuffer;
    .locals 25

    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    const-string v2, "run"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->awaitCodecToReady()V

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v3

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sume/core/channel/BufferChannel;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object v6, v0

    const/4 v0, 0x0

    instance-of v7, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    iput-boolean v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    iput v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[enc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move v10, v0

    :goto_0
    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->isRunInstant()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->release()V

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    const-wide/16 v11, 0x2710

    const/4 v13, 0x1

    if-nez v0, :cond_6

    if-eqz v10, :cond_6

    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[bhko] buffer="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v11, "dequeue input buffer: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v7, :cond_5

    const-string v0, "reached-eos"

    invoke-interface {v14, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v20, 0x0

    const/16 v22, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput-boolean v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    goto :goto_3

    :cond_3
    const-wide/16 v11, 0x1e

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForReceive()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-class v11, Ljava/nio/ByteBuffer;

    invoke-interface {v14, v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v15, "timestampUs"

    invoke-interface {v14, v15, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    const/16 v22, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v12

    move/from16 v17, v7

    move-wide/from16 v20, v23

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v11, "input channel is already closed"

    invoke-direct {v0, v11}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    invoke-interface {v14}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    :cond_6
    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "dequeue output buffer"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v11, 0x2710

    invoke-virtual {v0, v9, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    sget-object v7, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "buffer st="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", info="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_7

    sget-object v7, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "retry dequeue output buffer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v2

    move-object/from16 v16, v3

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_7
    const/4 v7, -0x2

    if-ne v0, v7, :cond_9

    sget-object v7, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "track format = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v11, "media-type"

    invoke-interface {v7, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v11}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v11

    iget v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    if-eqz v12, :cond_8

    const-string v12, "rotation-degrees"

    iget v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    invoke-virtual {v11, v12, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    const-string v12, "media-format"

    invoke-interface {v7, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v13, 0x3

    invoke-interface {v12, v13, v7}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    sget-object v12, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "now ready to start encode"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v2

    move-object/from16 v16, v3

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_9
    if-ltz v0, :cond_f

    iget-object v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v11

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v14, "track-idx"

    invoke-interface {v11, v14, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v12, "buffer-info"

    invoke-interface {v11, v12, v9}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v12, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "flag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_a

    const/4 v10, 0x1

    const/4 v12, 0x0

    iput v12, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-interface {v11}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    :cond_a
    sget-object v12, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v12, :cond_d

    iget v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    add-int/2addr v12, v13

    iput v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    sget-object v12, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "# of encoded frames: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    move-object/from16 v16, v3

    iget-wide v2, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "total # :"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", last ts: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v2, :cond_c

    iget v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    invoke-direct {v1, v2}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->isReachedLastFrame(I)Z

    move-result v2

    if-nez v2, :cond_b

    iget-wide v2, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->isReachedLastTimestamp(J)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v12, 0x7fffffffffffffffL

    invoke-virtual {v2, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_c
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-interface {v5, v11}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    move-object v15, v2

    move-object/from16 v16, v3

    :goto_4
    iget v2, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e

    sget-object v2, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "encoder reached eos"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    instance-of v2, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-nez v2, :cond_e

    invoke-interface {v5, v11}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    :cond_e
    iget-object v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_5

    :cond_f
    move-object v15, v2

    move-object/from16 v16, v3

    const/4 v3, 0x0

    :goto_5
    move v7, v3

    move-object v2, v15

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_10
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    new-instance v0, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;

    const-string v2, "no media-codec given, might be released"

    invoke-direct {v0, v2}, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
