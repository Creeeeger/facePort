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

    .line 31
    const-class v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V
    .locals 1
    .param p1, "codecDescriptor"    # Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecDescriptor"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaCodecFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    .line 37
    return-void
.end method

.method private blacklist isReachedLastFrame(I)Z
    .locals 1
    .param p1, "processedFrames"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "processedFrames"
        }
    .end annotation

    .line 249
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
    .param p1, "timestampUs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestampUs"
        }
    .end annotation

    .line 253
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
    .param p0, "configData"    # Lcom/samsung/android/sume/core/message/Message;

    .line 62
    new-instance v0, Landroid/util/Pair;

    .line 63
    const-string/jumbo v1, "width"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 64
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    return-object v0
.end method


# virtual methods
.method protected blacklist configCodec(Lcom/samsung/android/sume/core/message/Message;)V
    .locals 17
    .param p1, "configData"    # Lcom/samsung/android/sume/core/message/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configData"
        }
    .end annotation

    .line 41
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "i-frame-interval"

    const-string v3, "frame-rate"

    const-string/jumbo v4, "rotation-degrees"

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

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 45
    .local v6, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    const-string v7, "mime"

    invoke-virtual {v2, v7}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 46
    .local v7, "mimeType":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 47
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v7

    .line 50
    :cond_0
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getBitrate()I

    move-result v8

    .line 51
    .local v8, "bitrate":I
    const/4 v9, 0x0

    const-string v10, "bitrate"

    if-nez v8, :cond_2

    .line 52
    invoke-virtual {v2, v10}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 53
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v11

    cmpl-float v11, v11, v9

    if-eqz v11, :cond_1

    .line 54
    int-to-double v11, v8

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v15

    move-object/from16 v16, v10

    float-to-double v9, v15

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    double-to-int v9, v9

    int-to-double v9, v9

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v11, v9

    double-to-int v8, v11

    goto :goto_0

    .line 53
    :cond_1
    move-object/from16 v16, v10

    goto :goto_0

    .line 51
    :cond_2
    move-object/from16 v16, v10

    .line 57
    :goto_0
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v9

    .line 60
    .local v9, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    :try_start_0
    invoke-virtual {v9}, Lcom/samsung/android/sume/core/types/MediaType;->isVideo()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 61
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getRectSize()Landroid/util/Pair;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/sume/core/filter/EncoderFilter$$ExternalSyntheticLambda0;

    invoke-direct {v11, v2}, Lcom/samsung/android/sume/core/filter/EncoderFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/message/Message;)V

    .line 62
    invoke-virtual {v10, v11}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 67
    .local v10, "dimension":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 68
    .local v11, "width":I
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 70
    .local v12, "height":I
    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_3

    .line 71
    int-to-float v13, v11

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 72
    int-to-float v13, v12

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getScale()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v12, v13

    .line 75
    :cond_3
    invoke-static {v7, v11, v12}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v13

    .line 76
    .local v13, "mediaFormat":Landroid/media/MediaFormat;
    const-string v14, "color-format"

    const v15, 0x7f000789

    invoke-virtual {v13, v14, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 78
    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v3, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {v2, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v13, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/core/message/Message;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v2, v4}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    .line 83
    invoke-virtual {v13, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 85
    .end local v10    # "dimension":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11    # "width":I
    .end local v12    # "height":I
    :cond_4
    goto :goto_1

    .end local v13    # "mediaFormat":Landroid/media/MediaFormat;
    :cond_5
    invoke-virtual {v9}, Lcom/samsung/android/sume/core/types/MediaType;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    const-string/jumbo v0, "sample-rate"

    invoke-virtual {v2, v0}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, "sampleRate":I
    const-string v3, "channel-count"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/core/message/Message;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 88
    .local v3, "channelCount":I
    invoke-static {v7, v0, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    move-object v13, v4

    .line 89
    .end local v0    # "sampleRate":I
    .end local v3    # "channelCount":I
    .restart local v13    # "mediaFormat":Landroid/media/MediaFormat;
    nop

    .line 93
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media-format="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v7}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    .line 98
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v13, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 100
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 101
    .local v0, "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    instance-of v3, v0, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v3, :cond_6

    .line 102
    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    iget-object v4, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/channel/SurfaceChannel;->configure(Landroid/view/Surface;)V

    .line 105
    :cond_6
    iget-object v3, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->signalCodecFromReady()V

    .line 110
    .end local v0    # "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v13    # "mediaFormat":Landroid/media/MediaFormat;
    goto :goto_2

    .line 90
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not supported type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v6    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "bitrate":I
    .end local v9    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .end local p0    # "this":Lcom/samsung/android/sume/core/filter/EncoderFilter;
    .end local p1    # "configData":Lcom/samsung/android/sume/core/message/Message;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .restart local v6    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "bitrate":I
    .restart local v9    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .restart local p0    # "this":Lcom/samsung/android/sume/core/filter/EncoderFilter;
    .restart local p1    # "configData":Lcom/samsung/android/sume/core/message/Message;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 24
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

    .line 116
    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "run"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->awaitCodecToReady()V

    .line 119
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_10

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;

    .line 125
    .local v2, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v3

    .line 127
    .local v3, "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->receiveChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 128
    .local v4, "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->sendChannelQuery:Ljava/util/function/Function;

    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sume/core/channel/BufferChannel;

    .line 130
    .local v5, "outputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object v6, v0

    .line 131
    .local v6, "trackIndex":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v0, 0x0

    .line 132
    .local v0, "ready":Z
    instance-of v7, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    iput-boolean v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    .line 133
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    .line 134
    iput v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    .line 136
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

    .line 138
    .local v8, "tag":Ljava/lang/String;
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move v11, v0

    .line 140
    .end local v0    # "ready":Z
    .local v10, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v11, "ready":Z
    :goto_0
    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;->isRunInstant()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->release()V

    .line 245
    :cond_1
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0

    .line 141
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->cvPause:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 142
    iget-boolean v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    const-wide/16 v12, 0x2710

    if-nez v0, :cond_6

    if-eqz v11, :cond_6

    .line 144
    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->receive()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 145
    .local v15, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[bhko] buffer="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    .line 148
    .local v7, "bufferIdx":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v12, "dequeue input buffer: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-ltz v7, :cond_5

    .line 151
    const-string/jumbo v0, "reached-eos"

    invoke-interface {v15, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->containsExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x4

    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 153
    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedInputEos:Z

    move-object/from16 v23, v2

    goto :goto_3

    .line 157
    :cond_3
    const-wide/16 v12, 0x1e

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_2

    .line 158
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 159
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 162
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    invoke-interface {v4}, Lcom/samsung/android/sume/core/channel/BufferChannel;->isClosedForReceive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 165
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 167
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    const-class v12, Ljava/nio/ByteBuffer;

    invoke-interface {v15, v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    .line 168
    .local v12, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 169
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 171
    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string/jumbo v14, "timestampUs"

    invoke-interface {v15, v14, v13}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 172
    .local v13, "timeUs":J
    move-object/from16 v23, v2

    .end local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .local v23, "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    iget-object v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/16 v18, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v17, v7

    move-wide/from16 v20, v13

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_3

    .line 163
    .end local v0    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "data":Ljava/nio/ByteBuffer;
    .end local v13    # "timeUs":J
    .end local v23    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    :cond_4
    move-object/from16 v23, v2

    .end local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v23    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v2, "input channel is already closed"

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    .end local v23    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    :cond_5
    move-object/from16 v23, v2

    .line 175
    .end local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v23    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    :goto_3
    invoke-interface {v15}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    goto :goto_4

    .line 142
    .end local v7    # "bufferIdx":I
    .end local v15    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v23    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    :cond_6
    move-object/from16 v23, v2

    .line 178
    .end local v2    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    .restart local v23    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    :goto_4
    sget-object v0, Lcom/samsung/android/sume/core/filter/EncoderFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "dequeue output buffer"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x2710

    invoke-virtual {v2, v10, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 180
    .local v2, "status":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "buffer st="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", info="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v7, -0x1

    if-ne v2, v7, :cond_7

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, "retry dequeue output buffer"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_5

    .line 184
    :cond_7
    const/4 v7, -0x2

    if-ne v2, v7, :cond_9

    .line 185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, "track format = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v7, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v12, "media-type"

    invoke-interface {v7, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v12, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    .line 191
    .local v12, "mediaFormat":Landroid/media/MediaFormat;
    iget v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->orientation:I

    if-eqz v13, :cond_8

    .line 192
    const-string/jumbo v14, "rotation-degrees"

    invoke-virtual {v12, v14, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 193
    :cond_8
    const-string v13, "media-format"

    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->messageProducer:Lcom/samsung/android/sume/core/message/MessageProducer;

    const/4 v14, 0x3

    invoke-interface {v13, v14, v7}, Lcom/samsung/android/sume/core/message/MessageProducer;->newMessage(ILjava/util/Map;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sume/core/message/Message;->post()Lcom/samsung/android/sume/core/message/Message;

    .line 196
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "now ready to start encode"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "mediaFormat":Landroid/media/MediaFormat;
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_9
    if-ltz v2, :cond_f

    .line 198
    iget-object v7, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 200
    .local v7, "outputBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v3, v7}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/types/MediaType;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v12

    .line 201
    .local v12, "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v14, "track-idx"

    invoke-interface {v12, v14, v13}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const-string v13, "buffer-info"

    invoke-interface {v12, v13, v10}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "flag="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget v13, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_a

    .line 206
    const/4 v11, 0x1

    .line 207
    const/4 v13, 0x0

    iput v13, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 208
    invoke-interface {v12}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 211
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v13, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v13, :cond_d

    .line 213
    iget v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    const/4 v14, 0x1

    add-int/2addr v13, v14

    iput v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    .line 215
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "# of encoded frames: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "total # :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->numWholeFrames:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", last ts: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    instance-of v13, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-eqz v13, :cond_c

    .line 218
    iget v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->processedFrames:I

    invoke-direct {v1, v13}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->isReachedLastFrame(I)Z

    move-result v13

    if-nez v13, :cond_b

    iget-wide v13, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v1, v13, v14}, Lcom/samsung/android/sume/core/filter/EncoderFilter;->isReachedLastTimestamp(J)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 219
    :cond_b
    iget v13, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 220
    iget-object v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->lastTimestampUs:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v14, 0x7fffffffffffffffL

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 224
    :cond_c
    iget v13, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    iget v13, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v14, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v13, v14

    invoke-virtual {v7, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 227
    invoke-interface {v5, v12}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 230
    :cond_d
    iget v13, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_e

    .line 231
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "encoder reached eos"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->reachedOutputEos:Z

    .line 233
    instance-of v0, v4, Lcom/samsung/android/sume/core/channel/SurfaceChannel;

    if-nez v0, :cond_e

    .line 234
    invoke-interface {v5, v12}, Lcom/samsung/android/sume/core/channel/BufferChannel;->send(Ljava/lang/Object;)V

    .line 238
    :cond_e
    iget-object v0, v1, Lcom/samsung/android/sume/core/filter/EncoderFilter;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_5

    .line 197
    .end local v7    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "mediaBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_f
    const/4 v13, 0x0

    .line 240
    .end local v2    # "status":I
    :goto_5
    move v7, v13

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 120
    .end local v3    # "mediaType":Lcom/samsung/android/sume/core/types/MediaType;
    .end local v4    # "inputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v5    # "outputChannel":Lcom/samsung/android/sume/core/channel/BufferChannel;
    .end local v6    # "trackIndex":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v10    # "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v11    # "ready":Z
    .end local v23    # "descriptor":Lcom/samsung/android/sume/core/descriptor/CodecDescriptor;
    :cond_10
    invoke-interface/range {p1 .. p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 121
    new-instance v0, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;

    const-string v2, "no media-codec given, might be released"

    invoke-direct {v0, v2}, Lcom/samsung/android/sume/core/exception/StreamFilterExitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
