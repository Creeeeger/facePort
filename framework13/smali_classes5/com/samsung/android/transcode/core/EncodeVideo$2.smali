.class Lcom/samsung/android/transcode/core/EncodeVideo$2;
.super Landroid/media/MediaCodec$Callback;
.source "EncodeVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/transcode/core/EncodeVideo;->prepareHDRConverter(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/transcode/core/EncodeVideo;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 1663
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "e"    # Landroid/media/MediaCodec$CodecException;

    .line 1782
    const-string v0, "TranscodeLib"

    const-string v1, "[dec]onError"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    return-void
.end method

.method public whitelist onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 22
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I

    .line 1666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_c

    .line 1667
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v10, p2

    goto/16 :goto_8

    .line 1673
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move/from16 v10, p2

    invoke-virtual {v1, v10}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1674
    .local v1, "inputBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    .line 1675
    .local v11, "sampleSize":I
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    .line 1676
    .local v12, "timeUs":J
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v14

    .line 1677
    .local v14, "flags":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flags: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", timeUs : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sampleSize : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    and-int/lit8 v3, v14, 0x4

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 1681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "int : detect eos frame from videoExtractor mVideoFrameCount = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget v6, v6, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoFrameCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$300(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v2

    const/4 v3, 0x5

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget v7, v7, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoFrameCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1685
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget v3, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoFrameCount:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoFrameCount:I

    .line 1688
    :goto_0
    if-ltz v11, :cond_a

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-wide v2, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v2, v12, v2

    if-gtz v2, :cond_a

    .line 1689
    const/4 v2, 0x0

    .line 1690
    .local v2, "offset":I
    const/16 v3, 0x1f4

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1691
    .local v15, "headerSize":I
    new-array v9, v15, [B

    .line 1692
    .local v9, "header":[B
    invoke-virtual {v1, v9, v4, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1694
    :goto_1
    if-ge v2, v15, :cond_9

    .line 1695
    :goto_2
    add-int/lit8 v3, v15, -0x3

    if-ge v2, v3, :cond_3

    .line 1697
    aget-byte v3, v9, v2

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v9, v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v9, v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v9, v3

    if-ne v3, v5, :cond_2

    .line 1701
    goto :goto_3

    .line 1703
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1706
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x4

    .line 1708
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1709
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 1710
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    int-to-short v3, v3

    .line 1711
    .local v3, "data":S
    const/4 v6, 0x2

    add-int/2addr v2, v6

    .line 1712
    shr-int/lit8 v7, v3, 0xf

    and-int/2addr v7, v5

    if-nez v7, :cond_8

    .line 1713
    shr-int/lit8 v7, v3, 0x9

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x27

    if-ne v7, v8, :cond_7

    .line 1714
    const/4 v7, 0x0

    .line 1717
    .local v7, "payload_type":I
    :goto_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 1718
    .local v8, "code":B
    add-int/2addr v7, v8

    .line 1719
    add-int/2addr v2, v5

    .line 1720
    const/4 v6, -0x1

    if-eq v8, v6, :cond_6

    .line 1723
    const/16 v17, 0x0

    .line 1725
    .local v17, "payloadSize":I
    :goto_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 1726
    add-int v4, v17, v8

    .line 1727
    .end local v17    # "payloadSize":I
    .local v4, "payloadSize":I
    add-int/2addr v2, v5

    .line 1728
    if-eq v8, v6, :cond_5

    .line 1730
    add-int/2addr v2, v4

    .line 1732
    const/4 v6, 0x4

    if-ne v7, v6, :cond_4

    .line 1733
    new-array v6, v4, [B

    .line 1734
    .local v6, "decoderOut":[B
    const/4 v5, 0x0

    invoke-virtual {v1, v6, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1735
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$400(Lcom/samsung/android/transcode/core/EncodeVideo;)Ljava/util/HashMap;

    move-result-object v5

    move/from16 v19, v2

    .end local v2    # "offset":I
    .local v19, "offset":I
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$300(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    move/from16 v20, v3

    const/4 v3, 0x2

    .end local v3    # "data":S
    .local v20, "data":S
    new-array v3, v3, [Ljava/lang/Object;

    .line 1737
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v18, 0x0

    aput-object v16, v3, v18

    move/from16 v16, v4

    .end local v4    # "payloadSize":I
    .local v16, "payloadSize":I
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 1738
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$400(Lcom/samsung/android/transcode/core/EncodeVideo;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v21, v6

    .end local v6    # "decoderOut":[B
    .local v21, "decoderOut":[B
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1736
    invoke-virtual {v2, v6, v5, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    .line 1739
    move/from16 v2, v19

    goto :goto_7

    .line 1732
    .end local v16    # "payloadSize":I
    .end local v19    # "offset":I
    .end local v20    # "data":S
    .end local v21    # "decoderOut":[B
    .restart local v2    # "offset":I
    .restart local v3    # "data":S
    .restart local v4    # "payloadSize":I
    :cond_4
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v16, v4

    move v6, v5

    .end local v2    # "offset":I
    .end local v3    # "data":S
    .end local v4    # "payloadSize":I
    .restart local v16    # "payloadSize":I
    .restart local v19    # "offset":I
    .restart local v20    # "data":S
    move v4, v6

    goto :goto_6

    .line 1728
    .end local v16    # "payloadSize":I
    .end local v19    # "offset":I
    .end local v20    # "data":S
    .restart local v2    # "offset":I
    .restart local v3    # "data":S
    .restart local v4    # "payloadSize":I
    :cond_5
    move/from16 v20, v3

    move/from16 v16, v4

    move v4, v5

    const/4 v3, 0x2

    .end local v3    # "data":S
    .end local v4    # "payloadSize":I
    .restart local v16    # "payloadSize":I
    .restart local v20    # "data":S
    move/from16 v17, v16

    move/from16 v3, v20

    const/4 v4, 0x0

    goto :goto_5

    .line 1720
    .end local v16    # "payloadSize":I
    .end local v20    # "data":S
    .restart local v3    # "data":S
    :cond_6
    move/from16 v20, v3

    move v4, v5

    const/4 v3, 0x2

    .end local v3    # "data":S
    .restart local v20    # "data":S
    move v6, v3

    move/from16 v3, v20

    const/4 v4, 0x0

    goto :goto_4

    .line 1713
    .end local v7    # "payload_type":I
    .end local v8    # "code":B
    .end local v20    # "data":S
    .restart local v3    # "data":S
    :cond_7
    move/from16 v20, v3

    move v4, v5

    .end local v3    # "data":S
    .restart local v20    # "data":S
    goto :goto_6

    .line 1712
    .end local v20    # "data":S
    .restart local v3    # "data":S
    :cond_8
    move/from16 v20, v3

    move v4, v5

    .line 1743
    .end local v3    # "data":S
    :goto_6
    move v5, v4

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1744
    :cond_9
    :goto_7
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1745
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    move/from16 v4, p2

    move v6, v11

    move-wide v7, v12

    move-object/from16 v16, v9

    .end local v9    # "header":[B
    .local v16, "header":[B
    move v9, v14

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1746
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    .line 1747
    .end local v2    # "offset":I
    .end local v15    # "headerSize":I
    .end local v16    # "header":[B
    goto :goto_9

    .line 1748
    :cond_a
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_9

    .line 1667
    .end local v1    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "sampleSize":I
    .end local v12    # "timeUs":J
    .end local v14    # "flags":I
    :cond_b
    move/from16 v10, p2

    .line 1668
    :goto_8
    const-string v1, "[dec]onInputBufferAvailable :mUserStop or mError"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    return-void

    .line 1666
    :cond_c
    move/from16 v10, p2

    .line 1751
    :goto_9
    return-void
.end method

.method public whitelist onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1756
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_4

    .line 1757
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1766
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1768
    :cond_2
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 1769
    const-string v0, "TranscodeLib"

    const-string/jumbo v2, "reached EOS"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z

    .line 1771
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 1772
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1773
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1774
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1758
    :cond_3
    :goto_1
    const-string v0, "TranscodeLib"

    const-string v1, "[dec]onOutputBufferAvailable : :mUserStop or mError"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1761
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1762
    monitor-exit v0

    .line 1763
    return-void

    .line 1762
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1778
    :cond_4
    :goto_2
    return-void
.end method

.method public whitelist onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 5
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 1787
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1791
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dec]onOutputFormatChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$2;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$300(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->INPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    .line 1794
    return-void

    .line 1788
    :cond_1
    :goto_0
    const-string v0, "[dec]onOutputFormatChanged : mUserStop or mError "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    return-void
.end method
