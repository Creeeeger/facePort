.class Lcom/samsung/android/transcode/core/EncodeVideo$3;
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

    .line 1800
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "e"    # Landroid/media/MediaCodec$CodecException;

    .line 1852
    const-string v0, "TranscodeLib"

    const-string v1, "[enc]onError"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    return-void
.end method

.method public whitelist onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I

    .line 1803
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1804
    :cond_0
    const-string v0, "TranscodeLib"

    const-string v1, "[enc]onInputBufferAvailable : mUserStop or mError "

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 1806
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1807
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1808
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1811
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 7
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1816
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_4

    .line 1817
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$100(Lcom/samsung/android/transcode/core/EncodeVideo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1824
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$500(Lcom/samsung/android/transcode/core/EncodeVideo;)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 1826
    const-string v1, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video encoder: writing sample data timestamp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v1, v3, v0, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    goto :goto_0

    .line 1830
    :catch_0
    move-exception v1

    .line 1831
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to writeSampleData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    .line 1834
    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 1835
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    .line 1839
    :cond_1
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1840
    const-string v1, "TranscodeLib"

    const-string v3, "[enc]reached EOS"

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v1

    .line 1842
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v3, v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1843
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1846
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_3

    .line 1818
    .end local v0    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_2
    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enc]onInputBufferAvailable : mUserStop or mError or HDR_videoDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 1819
    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$100(Lcom/samsung/android/transcode/core/EncodeVideo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1818
    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    return-void

    .line 1848
    :cond_4
    :goto_3
    return-void
.end method

.method public whitelist onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[enc]onOutputFormatChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo$3;->this$0:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->access$300(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;[Ljava/lang/Object;)V

    .line 1860
    return-void
.end method
