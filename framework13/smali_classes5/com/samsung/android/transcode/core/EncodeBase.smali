.class public abstract Lcom/samsung/android/transcode/core/EncodeBase;
.super Lcom/samsung/android/transcode/core/Encode;
.source "EncodeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;
    }
.end annotation


# static fields
.field protected static final blacklist ENCODER_LOOP_COUNT:I = 0x3

.field protected static final blacklist HAL_PIXEL_FORMAT_EXYNOS_YCbCr_420_SP_M:I = 0x105

.field protected static final blacklist IMAGE_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final blacklist KEY_ERROR_TYPE:Ljava/lang/String; = "error-type"

.field protected static final blacklist KEY_MUXER_AUTHOR:Ljava/lang/String; = "param-meta-author"

.field protected static final blacklist KEY_MUXER_RECORDINGMODE:Ljava/lang/String; = "param-meta-recording-mode"

.field protected static final blacklist KEY_MUXER_TRANSCODING:Ljava/lang/String; = "param-meta-transcoding"

.field protected static final blacklist OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field protected static final blacklist REWRITE_AUDIO_BUFFER_SIZE:I = 0x20000

.field protected static final blacklist TEMP_AUDIO_BUF_SIZE:I = 0x1000

.field protected static final blacklist TIMEOUT_USEC:J = 0x2710L

.field protected static blacklist mCreationTime:[B

.field protected static blacklist mInputAudioinfo:Landroid/media/MediaFormat;

.field protected static blacklist mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

.field protected static blacklist mInputVideoinfo:Landroid/media/MediaFormat;

.field protected static volatile blacklist sNAACHandle:J

.field protected static volatile blacklist sSRCHandle:J

.field protected static volatile blacklist sVSPHandle:J


# instance fields
.field protected blacklist formatupdated:Z

.field protected blacklist mAsyncCodecReleased:[Z

.field protected blacklist mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

.field protected blacklist mAudioDecoderDone:Z

.field protected blacklist mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

.field protected blacklist mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected blacklist mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field protected blacklist mAudioEncoderDone:Z

.field protected blacklist mAudioEncoderInputBufferCount:I

.field protected blacklist mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

.field protected blacklist mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field protected blacklist mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field protected blacklist mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

.field protected blacklist mAudioExtractor:Landroid/media/MediaExtractor;

.field protected blacklist mAudioExtractorDone:Z

.field protected blacklist mAudioLoopCount:I

.field protected blacklist mAudioProgressTime:J

.field protected blacklist mAudioWaitFrame:Z

.field protected blacklist mAuthor:I

.field protected blacklist mContext:Landroid/content/Context;

.field protected blacklist mCopyAudio:Z

.field protected blacklist mDecAudio:Ljava/nio/ByteBuffer;

.field protected blacklist mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

.field protected blacklist mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

.field protected volatile blacklist mEncoding:Z

.field protected blacklist mExportRecordingMode:I

.field protected blacklist mFramesCount:I

.field protected blacklist mInputFilePath:Ljava/lang/String;

.field protected blacklist mInputOrientationDegrees:I

.field protected blacklist mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field protected blacklist mInputUri:Landroid/net/Uri;

.field protected blacklist mIs360Video:Z

.field protected blacklist mIsDrop:Z

.field protected blacklist mLastAudioSampleWrittenTime:J

.field protected blacklist mLayer2Count:I

.field protected blacklist mModifiedAudiotime:J

.field protected blacklist mModifiedVideotime:J

.field protected blacklist mNaccTime:J

.field protected blacklist mNumOfSVCLayers:I

.field protected blacklist mOriginTrimEndUs:J

.field protected blacklist mOriginTrimStartUs:J

.field protected blacklist mOriginalduration:J

.field protected blacklist mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

.field protected blacklist mPausedVideoUs:J

.field protected blacklist mPendingAudioDecoderOutputBufferIndex:I

.field protected blacklist mRecordingMode:I

.field protected blacklist mRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/util/SEFHelper$Region;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mRotation:I

.field protected blacklist mSEFVideo:Z

.field protected blacklist mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

.field protected blacklist mSkippedFramesCount:I

.field protected blacklist mTempAudioBuffer:[B

.field protected blacklist mTempAudioEncSize:I

.field protected blacklist mTempAudioLength:I

.field protected blacklist mTempAudioOffset:I

.field protected blacklist mTimescale:F

.field protected blacklist mTrimAudioEndUs:J

.field protected blacklist mTrimAudioStartUs:J

.field protected blacklist mTrimVideoEndUs:J

.field protected blacklist mTrimVideoStartUs:J

.field protected blacklist mUpdateCreationTime:Z

.field protected blacklist mUseUri:Z

.field protected blacklist mVideoDecoderDone:Z

.field protected blacklist mVideoEncoderDone:Z

.field protected blacklist mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

.field protected blacklist mVideoExtractor:Landroid/media/MediaExtractor;

.field protected blacklist mVideoFrameCount:I

.field protected blacklist mVideoFramesWritten:I

.field protected blacklist mVidioProgressTime:J

.field protected blacklist mkeepAudioFrame:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    .line 44
    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    .line 45
    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    .line 46
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    .line 60
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 61
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFrameCount:I

    .line 62
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRotation:I

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    .line 66
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 67
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIs360Video:Z

    .line 95
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    .line 100
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 101
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 106
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 107
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 119
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 123
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    .line 124
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 130
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z

    .line 132
    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    .line 144
    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    .line 146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    .line 147
    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/transcode/core/EncodeBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoEncoderAvailableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/MediaCodec$BufferInfo;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->sendVideoFramesToMuxer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/transcode/core/EncodeBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoDecoderAvailableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/MediaCodec$BufferInfo;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->getVideoDecoderOutput(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private blacklist checkAudioChannelCount()Z
    .locals 5

    .line 2623
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-lt v0, v1, :cond_0

    .line 2624
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    .line 2625
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2626
    return v2

    .line 2627
    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-le v0, v1, :cond_2

    .line 2628
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/4 v3, 0x6

    const-string v4, "TranscodeLib"

    if-ne v0, v3, :cond_1

    .line 2629
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    .line 2630
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2631
    const-string v0, "Audio need down mixing "

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    return v2

    .line 2634
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2636
    return v0

    .line 2639
    :cond_2
    return v2
.end method

.method private blacklist checkAudioDecoderBufferIndex(I[Ljava/nio/ByteBuffer;)Z
    .locals 14
    .param p1, "audioDecoderInputBufferIndex"    # I
    .param p2, "audioDecoderInputBuffers"    # [Ljava/nio/ByteBuffer;

    .line 2690
    move-object v0, p0

    move v8, p1

    const-string v1, "TranscodeLib"

    const/4 v2, -0x1

    const/4 v9, 0x0

    if-ne v8, v2, :cond_0

    .line 2691
    const-string v2, "audio decoder input try again later while preparing audio codec"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    return v9

    .line 2694
    :cond_0
    aget-object v10, p2, v8

    .line 2696
    .local v10, "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v10, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    .line 2697
    .local v11, "size":I
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    .line 2698
    .local v12, "presentationTimeUs":J
    if-lez v11, :cond_1

    .line 2699
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 2700
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v7

    .line 2699
    move v2, p1

    move v4, v11

    move-wide v5, v12

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 2701
    :cond_1
    if-ne v11, v2, :cond_2

    .line 2702
    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2703
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    .line 2704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio buffer is empty, size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    return v9

    .line 2707
    :cond_2
    :goto_0
    return v9
.end method

.method private blacklist checkAudioDecoderEOS(J)V
    .locals 12
    .param p1, "seektime"    # J

    .line 881
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->getRegionNumber(J)I

    move-result v0

    .line 882
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seekto region : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 883
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RegionList.size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 884
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 882
    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v6, 0x0

    const-string v7, "audio decoder: EOS"

    if-ge v0, v1, :cond_1

    .line 886
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v8, v8

    mul-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 888
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v10, v1

    mul-long/2addr v10, v4

    cmp-long v1, v8, v10

    if-gez v1, :cond_2

    .line 889
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 890
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid File!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    :cond_1
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 898
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v1, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 899
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 900
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 901
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 903
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 905
    :cond_3
    return-void
.end method

.method private blacklist checkAudioDecoderEOSNotWaitFrameCase(J)Z
    .locals 18
    .param p1, "presentationTime"    # J

    .line 1145
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio decoder: EOS  mTempAudioLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 1148
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    const-string v4, "audio encoder input buffer try again later"

    const/4 v5, -0x1

    const-wide/16 v6, 0x2710

    const/4 v8, 0x0

    if-lez v3, :cond_1

    .line 1149
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 1150
    .local v3, "audioEncoderInputBufferIndex":I
    if-ne v3, v5, :cond_0

    .line 1151
    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    return v8

    .line 1154
    :cond_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v15, v9, v3

    .line 1156
    .local v15, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v15, v9, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enc Last frame queueInputBuffer size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", presentationTime :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v13, p1

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    const/16 v16, 0x0

    move v10, v3

    move-object/from16 v17, v15

    .end local v15    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .local v17, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1162
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v9, v1

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1166
    .end local v3    # "audioEncoderInputBufferIndex":I
    .end local v17    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 1167
    .restart local v3    # "audioEncoderInputBufferIndex":I
    if-ne v3, v5, :cond_2

    .line 1168
    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    return v8

    .line 1171
    :cond_2
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    .line 1172
    .local v4, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    invoke-virtual {v4, v5, v6, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enc EOS queueInputBuffer  time :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v13, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v10, v3

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1180
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1182
    .end local v4    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    return v1
.end method

.method private blacklist checkAudioEncoderOutputBufferIndex()Z
    .locals 10

    .line 616
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 617
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 618
    .local v0, "audioEncoderOutputBufferIndex":I
    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 619
    const-string v3, "audio encoder output buffer try again later"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return v1

    .line 621
    :cond_0
    const/4 v3, -0x3

    if-ne v0, v3, :cond_1

    .line 622
    const-string v3, "audio encoder: output buffers changed"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 624
    return v1

    .line 625
    :cond_1
    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    .line 626
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio encoder: output format changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return v1

    .line 630
    :cond_2
    if-gez v0, :cond_3

    .line 631
    const-string v3, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    return v1

    .line 634
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v0

    .line 637
    .local v3, "audioEncoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 638
    const-string v4, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 641
    return v1

    .line 644
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio encoder writing sample data to muxer  time: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v6, v8

    if-gtz v4, :cond_5

    .line 650
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    .line 651
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v6, v3, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 653
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    invoke-virtual {p0, v6, v7, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 654
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    goto :goto_0

    .line 656
    :cond_5
    const-string v4, "Audio time stamps are not in increasing order."

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    .line 660
    const-string/jumbo v4, "saw input EOS: Audio"

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 663
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 664
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 665
    return v1
.end method

.method private blacklist checkAudioFollowHandle(J)V
    .locals 7
    .param p1, "seektime"    # J

    .line 1113
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->getTimescale(JI)F

    move-result v0

    .line 1114
    .local v0, "temptimescale":F
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    :cond_0
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 1117
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    .line 1118
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPSetPar(JF)V

    .line 1120
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    .line 1121
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    .line 1122
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initAudioSlowV2()V

    .line 1124
    :cond_2
    return-void
.end method

.method private blacklist checkAudioLoopCount(J)V
    .locals 4
    .param p1, "seektime"    # J

    .line 1186
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1188
    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seek to next frame\taudioLoopCount :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seektime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1194
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1195
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1196
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 1198
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1202
    :cond_2
    return-void
.end method

.method private blacklist checkBitrateMode()Z
    .locals 4

    .line 2961
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v0, v1

    const v1, 0x12c00

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v0, v1

    const v1, 0x4b000

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist checkCopyAudio(Landroid/media/MediaFormat;)Z
    .locals 5
    .param p1, "inputAudioFormat"    # Landroid/media/MediaFormat;

    .line 2659
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 2660
    const-string v0, "Audio mime type is unknown. Ignore audio track."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    return v1

    .line 2663
    :cond_0
    const-string v0, "error-type"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2664
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 2665
    .local v0, "error":I
    if-eqz v0, :cond_1

    .line 2666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio codec error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    return v1

    .line 2671
    .end local v0    # "error":I
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedCodecType(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2672
    const-string v0, "Audio codec type is unsupported. Ignore audio track."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    return v1

    .line 2675
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkDecoderOutputBufferIndex(ILandroid/media/MediaCodec$BufferInfo;)Z
    .locals 4
    .param p1, "decoderOutputBufferIndex"    # I
    .param p2, "videoDecoderOutputBufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1574
    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 1575
    const-string v2, "no video decoder output buffer"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    return v1

    .line 1578
    :cond_0
    const/4 v2, -0x3

    if-ne p1, v2, :cond_1

    .line 1579
    const-string/jumbo v2, "video decoder: output buffers changed"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    return v1

    .line 1582
    :cond_1
    const/4 v2, -0x2

    if-ne p1, v2, :cond_2

    .line 1583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video decoder: codec info format changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 1584
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1583
    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    return v1

    .line 1588
    :cond_2
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 1589
    const-string/jumbo v2, "video decoder: codec config buffer"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1591
    return v1

    .line 1593
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkEncoderOutputBufferIndex(I)Z
    .locals 5
    .param p1, "encoderOutputBufferIndex"    # I

    .line 1494
    const/4 v0, 0x0

    const-string v1, "TranscodeLib"

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 1495
    const-string v2, "no video encoder output buffer"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    goto :goto_0

    .line 1498
    :catch_0
    move-exception v2

    .line 1499
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sleep interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 1502
    :cond_0
    const/4 v2, -0x3

    if-ne p1, v2, :cond_1

    .line 1503
    const-string/jumbo v2, "video encoder: output buffers changed"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    return v0

    .line 1505
    :cond_1
    const/4 v2, -0x2

    if-ne p1, v2, :cond_3

    .line 1506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video encoder: output format changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 1507
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1506
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    if-gez v1, :cond_2

    .line 1513
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 1514
    return v0

    .line 1510
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Video encoder output format changed after muxer has started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1515
    :cond_3
    if-gez p1, :cond_4

    .line 1516
    const-string v2, "Unexpected result from video encoder dequeue output format."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    return v0

    .line 1519
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkLayerCondition(III)Z
    .locals 2
    .param p1, "layerNum"    # I
    .param p2, "maxLayerNum"    # I
    .param p3, "conditionNum"    # I

    .line 1676
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, p3, :cond_1

    .line 1677
    sub-int v1, p2, v0

    if-ne p1, v1, :cond_0

    .line 1678
    const/4 v1, 0x1

    return v1

    .line 1676
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1681
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkOutputVideoFrameRate()V
    .locals 5

    .line 2447
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    const-string v1, "TranscodeLib"

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 2448
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lt v0, v3, :cond_0

    .line 2449
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_0

    .line 2451
    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    int-to-float v0, v0

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2454
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_1

    .line 2455
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    .line 2458
    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2460
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSourceFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOutputVideoTargetFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mOutputVideoFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    return-void

    .line 2466
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-eqz v0, :cond_3

    .line 2467
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2470
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    if-lt v0, v3, :cond_8

    .line 2471
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-eq v0, v2, :cond_5

    if-ne v0, v4, :cond_4

    goto :goto_1

    .line 2484
    :cond_4
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2486
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_7

    .line 2487
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_2

    .line 2473
    :cond_5
    :goto_1
    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    const/16 v1, 0x82

    if-ge v0, v1, :cond_6

    .line 2475
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2476
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_2

    .line 2478
    :cond_6
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    .line 2479
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_7

    .line 2480
    const/16 v0, 0x1e

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2490
    :cond_7
    :goto_2
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_a

    .line 2491
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    goto :goto_3

    .line 2494
    :cond_8
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lez v0, :cond_a

    .line 2495
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->m2ndTimeEncoding:Z

    if-eqz v0, :cond_9

    .line 2496
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m2ndTimeEncoding case mOutputVideoFrameRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2500
    :cond_9
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2504
    :cond_a
    :goto_3
    return-void
.end method

.method private blacklist checkPendingAudioDecoderBufferIndex(ILjava/lang/String;)Z
    .locals 5
    .param p1, "audioDecoderOutputBufferIndex"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 2713
    const/4 v0, 0x0

    const-string v1, "TranscodeLib"

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 2714
    const-string v2, "audio decoder output buffer try again later while preparing audio codec"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    return v0

    .line 2717
    :cond_0
    const/4 v2, -0x3

    if-ne p1, v2, :cond_1

    .line 2718
    const-string v2, "audio decoder: output buffers changed "

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    return v0

    .line 2720
    :cond_1
    const/4 v2, -0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3

    .line 2721
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 2722
    const-string/jumbo v4, "sample-rate"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    .line 2723
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    .line 2724
    const-string v4, "channel-count"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2726
    invoke-direct {p0, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->isDolbyAudioCodec(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2727
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setStereoAudioChannelForDolbyAudioCodec()V

    .line 2730
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",ChannelCount"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    .line 2733
    return v0

    .line 2734
    :cond_3
    if-gez p1, :cond_4

    .line 2735
    const-string v2, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    return v0

    .line 2738
    :cond_4
    return v3
.end method

.method private blacklist checkRetDropFastMotion(ZIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z
    .locals 5
    .param p1, "retDrop"    # Z
    .param p2, "recordingmode"    # I
    .param p3, "layernum"    # I
    .param p4, "maxlayernum"    # I
    .param p5, "playSpeed"    # Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1706
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(I)Z

    move-result v0

    const-string v1, "ProcSVCLayerDrop Should not be here!!!"

    const-string v2, "TranscodeLib"

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 1707
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 1724
    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    goto :goto_0

    .line 1719
    :pswitch_0
    invoke-direct {p0, p3, p4, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1720
    const/4 p1, 0x1

    goto :goto_0

    .line 1713
    :pswitch_1
    add-int/lit8 v0, p4, -0x1

    if-ne p3, v0, :cond_1

    .line 1714
    const/4 p1, 0x1

    goto :goto_0

    .line 1710
    :pswitch_2
    goto :goto_0

    .line 1728
    :cond_0
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    .line 1762
    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1757
    :pswitch_3
    const/4 v0, 0x5

    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1758
    const/4 p1, 0x1

    goto :goto_0

    .line 1751
    :pswitch_4
    const/4 v0, 0x4

    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1752
    const/4 p1, 0x1

    goto :goto_0

    .line 1745
    :pswitch_5
    const/4 v0, 0x3

    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1746
    const/4 p1, 0x1

    goto :goto_0

    .line 1739
    :pswitch_6
    invoke-direct {p0, p3, p4, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1740
    const/4 p1, 0x1

    goto :goto_0

    .line 1733
    :pswitch_7
    add-int/lit8 v0, p4, -0x1

    if-ne p3, v0, :cond_1

    .line 1734
    const/4 p1, 0x1

    goto :goto_0

    .line 1730
    :pswitch_8
    nop

    .line 1766
    :cond_1
    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private blacklist checkRetDropSlowMotion(ZIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z
    .locals 4
    .param p1, "retDrop"    # Z
    .param p2, "recordingframerate"    # I
    .param p3, "layernum"    # I
    .param p4, "maxlayernum"    # I
    .param p5, "playSpeed"    # Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1773
    const-string v0, "TranscodeLib"

    const/16 v1, 0xe6

    if-lt p2, v1, :cond_2

    .line 1776
    const/4 v1, 0x3

    if-lez p3, :cond_0

    invoke-direct {p0, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1777
    const/4 p1, 0x1

    .line 1779
    :cond_0
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1798
    const-string v1, "ProcSVCLayerDrop Should not be here!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    goto :goto_0

    .line 1793
    :sswitch_0
    invoke-direct {p0, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1794
    const/4 p1, 0x0

    goto :goto_0

    .line 1788
    :sswitch_1
    add-int/lit8 v0, p4, -0x3

    if-eq p3, v0, :cond_1

    add-int/lit8 v0, p4, -0x2

    if-ne p3, v0, :cond_4

    .line 1789
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 1783
    :sswitch_2
    add-int/lit8 v0, p4, -0x3

    if-ne p3, v0, :cond_4

    .line 1784
    const/4 p1, 0x0

    goto :goto_0

    .line 1781
    :sswitch_3
    goto :goto_0

    .line 1801
    :cond_2
    const/16 v1, 0x6e

    if-lt p2, v1, :cond_4

    .line 1806
    const/4 v1, 0x2

    if-lez p3, :cond_3

    invoke-direct {p0, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1807
    const/4 p1, 0x1

    .line 1809
    :cond_3
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_1

    .line 1824
    const-string v1, "ProcSVCLayerDrop Should not be here!!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1819
    :sswitch_4
    invoke-direct {p0, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1820
    const/4 p1, 0x0

    goto :goto_0

    .line 1813
    :sswitch_5
    add-int/lit8 v0, p4, -0x2

    if-ne p3, v0, :cond_4

    .line 1814
    const/4 p1, 0x0

    nop

    .line 1828
    :cond_4
    :goto_0
    :sswitch_6
    return p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
    .end sparse-switch
.end method

.method private blacklist checkSendAudioFollowHandle(IJJJ)V
    .locals 4
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J
    .param p6, "temp_presentationTime"    # J

    .line 1294
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1295
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToMuxer(IJJ)V

    goto :goto_1

    .line 1296
    :cond_0
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1299
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToEncoder(IJJJ)V

    goto :goto_1

    .line 1297
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToEncoder_AudioSolution(IJJ)V

    .line 1301
    :goto_1
    return-void
.end method

.method private blacklist checkSilentRegion(J)I
    .locals 6
    .param p1, "timeUs"    # J

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSilentRegion  TimeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 404
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSilentRegion_SuperSlow Cancel Region:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return v0

    .line 402
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist checkSkipFrames(J)V
    .locals 3
    .param p1, "presentationTimeUs"    # J

    .line 1597
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input surface: skip this frame: presentationTimeUs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1601
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    .line 1602
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    .line 1603
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    .line 1604
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    .line 1606
    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    .line 1607
    return-void
.end method

.method private blacklist checkTempRadio(IIJ)V
    .locals 9
    .param p1, "audioEncInputBufIndex"    # I
    .param p2, "size"    # I
    .param p3, "tempPresentationTime"    # J

    .line 1127
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    .line 1128
    .local v0, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    if-lez v1, :cond_0

    .line 1129
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    div-int/2addr p2, v1

    .line 1132
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1133
    .local v8, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1134
    invoke-virtual {v8, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1135
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1136
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1137
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v2, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1139
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1140
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1141
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1142
    return-void
.end method

.method private blacklist checkTimeDelta(JFZZI)J
    .locals 8
    .param p1, "timedelta"    # J
    .param p3, "timescale"    # F
    .param p4, "isSEFSlowMotion"    # Z
    .param p5, "isSEFFastMotion"    # Z
    .param p6, "i"    # I

    .line 1686
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz p4, :cond_0

    .line 1687
    long-to-double v4, p1

    float-to-double v6, p3

    sub-double/2addr v6, v0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1688
    invoke-interface {v0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v6, v0

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-long p1, v4

    goto :goto_0

    .line 1689
    :cond_0
    if-eqz p5, :cond_1

    .line 1690
    long-to-double v4, p1

    float-to-double v6, p3

    sub-double/2addr v0, v6

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1691
    invoke-interface {v2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    sub-double/2addr v4, v0

    double-to-long p1, v4

    .line 1693
    :cond_1
    :goto_0
    return-wide p1
.end method

.method private blacklist createAudioHandle()V
    .locals 7

    .line 2867
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    if-eqz v0, :cond_4

    .line 2868
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2870
    :cond_0
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2871
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPCreate()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    .line 2873
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    const/16 v6, 0x10

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPInit(JII)V

    .line 2875
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2876
    const v0, 0xbb80

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    .line 2877
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 2878
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCCreate()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    .line 2881
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSMConvert:Z

    if-eqz v0, :cond_4

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 2882
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderInit(II)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    .line 2886
    :cond_4
    return-void
.end method

.method private blacklist createInputAudioDecoder(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "inputAudioFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2899
    const-string v0, "encoder-delay"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2900
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2902
    :cond_0
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2903
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 2904
    .local v0, "audioInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v0, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 2905
    .end local v0    # "audioInfo":Landroid/media/MediaCodecInfo;
    goto :goto_0

    .line 2906
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 2908
    :goto_0
    return-void
.end method

.method private blacklist getAudioDecoderOutput()V
    .locals 5

    .line 473
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_6

    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-gtz v0, :cond_6

    .line 477
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    .line 478
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 479
    .local v0, "audioDecoderOutputBufferIndex":I
    const-string v2, "TranscodeLib"

    if-ne v0, v1, :cond_1

    .line 480
    const-string v1, "audio decoder output buffer try again later while decoding"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_1
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 482
    const-string v1, "audio decoder: output buffers changed"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 484
    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 485
    const-string v1, "audio decoder: output format changed: "

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_3
    if-gez v0, :cond_4

    .line 487
    const-string v1, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 491
    const-string v1, "audio decoder: codec config buffer"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 494
    :cond_5
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 498
    .end local v0    # "audioDecoderOutputBufferIndex":I
    :cond_6
    :goto_0
    return-void
.end method

.method private blacklist getAudioDrop(JI)Z
    .locals 22
    .param p1, "sampleTime"    # J
    .param p3, "recordingMode"    # I

    .line 1030
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p1

    .line 1031
    .local v4, "tempSampleTime":J
    const-wide/16 v6, 0x0

    .line 1033
    .local v6, "timedelta":J
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 1034
    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    if-eq v3, v9, :cond_4

    if-ne v3, v8, :cond_0

    goto/16 :goto_1

    .line 1062
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 1063
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v12, v9

    mul-long/2addr v12, v10

    cmp-long v9, v1, v12

    if-lez v9, :cond_2

    .line 1064
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v12, 0x9

    if-ne v9, v12, :cond_1

    .line 1065
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1066
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    sub-int/2addr v9, v12

    int-to-long v12, v9

    mul-long/2addr v12, v10

    add-long/2addr v6, v12

    .line 1062
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1074
    .end local v8    # "i":I
    :cond_2
    cmp-long v8, v4, v6

    const-string v9, ",timeDelta :"

    const-string v10, "TranscodeLib"

    if-gez v8, :cond_3

    .line 1075
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getAudioDrop]SampleTime error tempSampleTime = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1078
    :cond_3
    sub-long/2addr v4, v6

    .line 1079
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getAudioDrop]SampleTime new tempSampleTime = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1037
    :cond_4
    :goto_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_9

    .line 1038
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    cmp-long v13, v1, v13

    if-ltz v13, :cond_6

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1039
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    cmp-long v13, v1, v13

    if-gez v13, :cond_5

    .line 1040
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1041
    .local v8, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v9

    .line 1042
    .local v9, "timescale":F
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1043
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    move-wide/from16 v16, v4

    .end local v4    # "tempSampleTime":J
    .local v16, "tempSampleTime":J
    int-to-long v4, v15

    mul-long/2addr v4, v10

    sub-long v4, v1, v4

    const v10, 0x49742400    # 1000000.0f

    mul-float/2addr v10, v9

    float-to-long v10, v10

    mul-long/2addr v4, v10

    const-wide/32 v10, 0xf4240

    div-long/2addr v4, v10

    add-long/2addr v13, v4

    .line 1045
    .end local v16    # "tempSampleTime":J
    .local v13, "tempSampleTime":J
    move-wide v4, v13

    goto/16 :goto_5

    .line 1039
    .end local v8    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v9    # "timescale":F
    .end local v13    # "tempSampleTime":J
    .restart local v4    # "tempSampleTime":J
    :cond_5
    move-wide/from16 v16, v4

    .end local v4    # "tempSampleTime":J
    .restart local v16    # "tempSampleTime":J
    goto :goto_3

    .line 1038
    .end local v16    # "tempSampleTime":J
    .restart local v4    # "tempSampleTime":J
    :cond_6
    move-wide/from16 v16, v4

    .line 1046
    .end local v4    # "tempSampleTime":J
    .restart local v16    # "tempSampleTime":J
    :goto_3
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v10

    cmp-long v4, v1, v4

    if-ltz v4, :cond_8

    .line 1047
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1048
    .local v4, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v5

    .line 1050
    .local v5, "timescale":F
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide v18, 0x408f400000000000L    # 1000.0

    if-ne v3, v9, :cond_7

    .line 1051
    long-to-double v9, v6

    move-wide/from16 v20, v9

    float-to-double v8, v5

    sub-double/2addr v8, v13

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1052
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v10, v13

    int-to-double v13, v10

    mul-double/2addr v8, v13

    mul-double v8, v8, v18

    add-double v9, v20, v8

    double-to-long v6, v9

    goto :goto_4

    .line 1054
    :cond_7
    const/4 v8, 0x2

    if-ne v3, v8, :cond_8

    .line 1055
    long-to-double v9, v6

    move-wide/from16 v20, v9

    float-to-double v8, v5

    sub-double/2addr v13, v8

    mul-double v13, v13, v18

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1056
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    mul-double/2addr v13, v8

    sub-double v9, v20, v13

    double-to-long v6, v9

    .line 1037
    .end local v4    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v5    # "timescale":F
    :cond_8
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v16

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    goto/16 :goto_2

    .end local v16    # "tempSampleTime":J
    .local v4, "tempSampleTime":J
    :cond_9
    move-wide/from16 v16, v4

    .end local v12    # "i":I
    :goto_5
    goto :goto_6

    .line 1033
    :cond_a
    move-wide/from16 v16, v4

    .line 1085
    .end local v4    # "tempSampleTime":J
    .restart local v16    # "tempSampleTime":J
    move-wide/from16 v4, v16

    .end local v16    # "tempSampleTime":J
    .restart local v4    # "tempSampleTime":J
    :goto_6
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v8, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFRegion(JI)Z

    move-result v8

    return v8
.end method

.method private blacklist getAudioFormat()V
    .locals 4

    .line 501
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    .line 503
    const-string v0, "TranscodeLib"

    const-string v1, "getAudioFormat"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    .line 505
    .local v1, "audioTrack":I
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioFormat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v1    # "audioTrack":I
    :cond_0
    return-void
.end method

.method private blacklist getAudioTime(JI)V
    .locals 17
    .param p1, "SampleTime"    # J
    .param p3, "recordingmode"    # I

    .line 343
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p1

    .line 344
    .local v2, "tempSampleTime":J
    const-wide/16 v4, 0x0

    .line 346
    .local v4, "timedelta":J
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 347
    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    if-eq v1, v6, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/16 v6, 0xc

    if-eq v1, v6, :cond_3

    const/16 v6, 0x15

    if-eq v1, v6, :cond_3

    const/16 v6, 0xd

    if-eq v1, v6, :cond_3

    const/16 v6, 0xf

    if-eq v1, v6, :cond_3

    const/16 v6, 0x13

    if-ne v1, v6, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 383
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-lez v9, :cond_2

    .line 384
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_1

    .line 385
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 386
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    mul-long/2addr v9, v7

    add-long/2addr v4, v9

    .line 382
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 393
    .end local v6    # "i":I
    :cond_2
    sub-long v6, v2, v4

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    goto/16 :goto_5

    .line 356
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 357
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-ltz v9, :cond_4

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 358
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-gez v9, :cond_4

    .line 359
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 360
    .local v9, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v9}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v10

    .line 361
    .local v10, "timescale":F
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v11, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v11, v11

    mul-long/2addr v11, v7

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 362
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v7

    sub-long v7, p1, v13

    const v13, 0x49742400    # 1000000.0f

    mul-float/2addr v13, v10

    float-to-long v13, v13

    mul-long/2addr v7, v13

    const-wide/32 v13, 0xf4240

    div-long/2addr v7, v13

    add-long v2, v11, v7

    .line 364
    goto :goto_4

    .line 365
    .end local v9    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v10    # "timescale":F
    :cond_4
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-ltz v9, :cond_6

    .line 366
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 367
    .restart local v9    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v9}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v10

    .line 369
    .restart local v10    # "timescale":F
    float-to-double v11, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    if-lez v11, :cond_5

    .line 370
    long-to-double v11, v4

    float-to-double v7, v10

    sub-double/2addr v7, v13

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 371
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v13, v14

    int-to-double v13, v13

    mul-double/2addr v7, v13

    mul-double/2addr v7, v15

    add-double/2addr v11, v7

    double-to-long v4, v11

    goto :goto_3

    .line 374
    :cond_5
    long-to-double v7, v4

    float-to-double v11, v10

    sub-double/2addr v13, v11

    mul-double/2addr v13, v15

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 375
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v11, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v11, v12

    int-to-double v11, v11

    mul-double/2addr v13, v11

    sub-double/2addr v7, v13

    double-to-long v4, v7

    .line 356
    .end local v9    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v10    # "timescale":F
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x3e8

    goto/16 :goto_2

    .line 380
    .end local v6    # "i":I
    :cond_7
    :goto_4
    add-long v6, v2, v4

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    .line 396
    :cond_8
    :goto_5
    return-void
.end method

.method private blacklist getLayerNumber([B)I
    .locals 8
    .param p1, "a"    # [B

    .line 2019
    const/4 v0, 0x1

    .line 2020
    .local v0, "layerNumber":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isNoneSVC()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "TranscodeLib"

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 2021
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v6, 0x12

    if-ne v1, v6, :cond_0

    .line 2022
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    rem-int/lit8 v0, v1, 0x10

    .line 2023
    add-int/2addr v1, v5

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    goto :goto_0

    .line 2025
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNumOfSVCLayers:I

    .line 2026
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    .line 2027
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    mul-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v2

    if-ne v7, v1, :cond_1

    .line 2028
    const/4 v0, 0x2

    .line 2029
    add-int/2addr v6, v5

    iput v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    goto :goto_0

    .line 2030
    :cond_1
    rem-int/lit8 v2, v1, 0x8

    if-ne v2, v5, :cond_2

    .line 2031
    const/4 v0, 0x0

    goto :goto_0

    .line 2032
    :cond_2
    rem-int/2addr v1, v3

    if-nez v1, :cond_3

    .line 2033
    const/4 v0, 0x3

    .line 2036
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get NONE SVC layerNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2038
    :cond_4
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    .line 2045
    aget-byte v1, p1, v7

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, v5

    or-int/2addr v1, v2

    .line 2046
    .local v1, "nalHeader":I
    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0x3f

    .line 2047
    .local v2, "nalType":I
    if-lt v2, v3, :cond_5

    if-gt v2, v6, :cond_5

    .line 2048
    and-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v5

    move v0, v3

    .end local v0    # "layerNumber":I
    .local v3, "layerNumber":I
    goto :goto_1

    .line 2050
    .end local v3    # "layerNumber":I
    .restart local v0    # "layerNumber":I
    :cond_5
    const/4 v0, 0x0

    .line 2052
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get SVC layerNumber of HEVC: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    .end local v1    # "nalHeader":I
    .end local v2    # "nalType":I
    goto :goto_2

    .line 2054
    :cond_6
    aget-byte v1, p1, v7

    and-int/lit8 v1, v1, 0x1f

    const/16 v3, 0xe

    if-ne v1, v3, :cond_7

    aget-byte v1, p1, v5

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    .line 2055
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xe0

    ushr-int/lit8 v0, v1, 0x5

    .line 2057
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get SVC layerNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :cond_7
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getlayernum] layerNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    return v0
.end method

.method private blacklist getMaxInputSize(Landroid/media/MediaFormat;)I
    .locals 3
    .param p1, "inputAudioFormat"    # Landroid/media/MediaFormat;

    .line 2890
    :try_start_0
    const-string v0, "max-input-size"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2891
    :catch_0
    move-exception v0

    .line 2892
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "TranscodeLib"

    const-string v2, "Audio max input size not defined"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getTimescale(JI)F
    .locals 6
    .param p1, "sampleTime"    # J
    .param p3, "recordingmode"    # I

    .line 1089
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1090
    .local v0, "timescale":F
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1091
    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/16 v1, 0xc

    if-eq p3, v1, :cond_0

    const/16 v1, 0x15

    if-eq p3, v1, :cond_0

    const/16 v1, 0xd

    if-eq p3, v1, :cond_0

    const/16 v1, 0xf

    if-eq p3, v1, :cond_0

    const/16 v1, 0x13

    if-ne p3, v1, :cond_2

    .line 1098
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1099
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1100
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1102
    .local v2, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    div-float v0, v3, v4

    .line 1103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getTimescale]timescale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    goto :goto_1

    .line 1098
    .end local v2    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1109
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private blacklist getVideoDecoderOutput(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "decoderOutputBufferIndex"    # I
    .param p2, "videoDecoderOutputBufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1611
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderOutputBufferIndex(ILandroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1613
    return-void

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    if-eqz v0, :cond_1

    .line 1617
    new-instance v0, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;-><init>(ILandroid/media/MediaCodec$BufferInfo;)V

    .line 1619
    .local v0, "decodedFrame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;->notifyFrameDecoded(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)V

    .line 1621
    .end local v0    # "decodedFrame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    :cond_1
    return-void
.end method

.method private blacklist getandsendAudioToMuxer()V
    .locals 8

    .line 511
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_1

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "offset":I
    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 515
    .local v1, "dstBufA":Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 516
    .local v2, "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio rewirte bufferInfoA.size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iput v0, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 520
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 521
    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-gez v3, :cond_0

    .line 522
    const-string/jumbo v3, "saw input EOS: Audio"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 524
    const/4 v3, 0x0

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_0

    .line 526
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 527
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 528
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    invoke-virtual {v3, v6, v1, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio writeSampleData bufferInfoA.size : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", bufferInfoA.presentationTimeUs :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 534
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    .line 539
    .end local v0    # "offset":I
    .end local v1    # "dstBufA":Ljava/nio/ByteBuffer;
    .end local v2    # "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist initAudioSlowV2()V
    .locals 18

    .line 552
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v3, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    mul-int/lit8 v5, v1, 0x2

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    float-to-int v1, v1

    mul-int/lit16 v6, v1, 0x2ee0

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCInit(JIIIII)I

    goto :goto_0

    .line 556
    :cond_0
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v11, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    float-to-int v1, v1

    mul-int/lit16 v14, v1, 0x2ee0

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/16 v16, 0x10

    const/16 v17, 0x10

    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCInit(JIIIII)I

    .line 559
    :goto_0
    return-void
.end method

.method private blacklist isDolbyAudioCodec(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 2854
    const-string v0, "audio/ac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/eac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2855
    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/ac4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2854
    :goto_1
    return v0
.end method

.method private blacklist isNoneSVC()Z
    .locals 2

    .line 2066
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isRegionListExist()Z
    .locals 1

    .line 1837
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isSlowFastExceptSlowV2120NoneSVC()Z
    .locals 3

    .line 2072
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private blacklist isVideoDecoderAvailableCondition()Z
    .locals 1

    .line 1563
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized blacklist isVideoEncoderAvailableCondition()Z
    .locals 1

    monitor-enter p0

    .line 1568
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeBase;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 1568
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist keepPrevPFrameForFastVideo(ZIJII)Z
    .locals 20
    .param p1, "keepFrame"    # Z
    .param p2, "i"    # I
    .param p3, "sampleTime"    # J
    .param p5, "recordingFramerate"    # I
    .param p6, "layerNum"    # I

    .line 1857
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    .line 1858
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v8, v2

    const-wide v10, 0x3ff7333333333333L    # 1.45

    div-double v8, v10, v8

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v12

    int-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v14, v16, v14

    mul-double/2addr v14, v12

    const-wide/high16 v18, 0x402c000000000000L    # 14.0

    mul-double v14, v14, v18

    add-double/2addr v8, v14

    cmpg-double v4, v4, v8

    if-gez v4, :cond_3

    .line 1861
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .local v4, "keepFrame":Z
    goto :goto_0

    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v8, v2

    div-double v8, v10, v8

    mul-double/2addr v8, v12

    int-to-double v14, v2

    div-double v14, v16, v14

    mul-double/2addr v14, v12

    const-wide/high16 v18, 0x4018000000000000L    # 6.0

    mul-double v14, v14, v18

    add-double/2addr v8, v14

    cmpg-double v4, v4, v8

    if-gez v4, :cond_1

    .line 1865
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_0

    .line 1866
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v8, v2

    div-double v8, v10, v8

    mul-double/2addr v8, v12

    int-to-double v14, v2

    div-double v16, v16, v14

    mul-double v16, v16, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v14

    add-double v8, v8, v16

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2

    .line 1869
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_0

    .line 1870
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_2
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    long-to-double v4, v4

    int-to-double v6, v2

    div-double/2addr v10, v6

    mul-double/2addr v10, v12

    cmpg-double v4, v4, v10

    if-gez v4, :cond_3

    .line 1872
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_0

    .line 1876
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_3
    move/from16 v4, p1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    :goto_0
    return v4
.end method

.method private blacklist keepPrevPFrameForSlowVideo(ZIJII)Z
    .locals 18
    .param p1, "keepFrame"    # Z
    .param p2, "i"    # I
    .param p3, "sampleTime"    # J
    .param p5, "recordingFramerate"    # I
    .param p6, "layerNum"    # I

    .line 1842
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    int-to-double v8, v2

    const-wide v10, 0x3ff7333333333333L    # 1.45

    div-double v8, v10, v8

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v12

    int-to-double v14, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v16, v16, v14

    mul-double v16, v16, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v14

    add-double v8, v8, v16

    double-to-long v8, v8

    cmp-long v4, v4, v8

    if-gez v4, :cond_1

    .line 1845
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1846
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .local v4, "keepFrame":Z
    goto :goto_0

    .line 1847
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v4

    mul-long/2addr v4, v6

    sub-long v4, v4, p3

    int-to-double v6, v2

    div-double/2addr v10, v6

    mul-double/2addr v10, v12

    double-to-long v6, v10

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1849
    const/4 v4, 0x1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    goto :goto_0

    .line 1852
    .end local v4    # "keepFrame":Z
    .restart local p1    # "keepFrame":Z
    :cond_1
    move/from16 v4, p1

    .end local p1    # "keepFrame":Z
    .restart local v4    # "keepFrame":Z
    :goto_0
    return v4
.end method

.method private blacklist preprocessAudioOutputFormat(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 10
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "inputAudioFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2807
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 2808
    .local v0, "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v0, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 2810
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2811
    .local v1, "inputBuffers":[Ljava/nio/ByteBuffer;
    :goto_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 2814
    .local v2, "outputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    const/4 v3, -0x1

    .line 2816
    .local v3, "pendingAudioDecoderOutputBufferIndex":I
    new-instance v4, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    .line 2817
    .local v4, "schedulerCallback":Ljava/lang/Runnable;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    const/4 v6, 0x0

    if-nez v5, :cond_6

    .line 2818
    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    const-wide/16 v7, 0x2710

    if-nez v5, :cond_3

    .line 2819
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 2821
    .local v5, "audioDecoderInputBufferIndex":I
    invoke-direct {p0, v5, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderBufferIndex(I[Ljava/nio/ByteBuffer;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2822
    goto :goto_3

    .line 2824
    .end local v5    # "audioDecoderInputBufferIndex":I
    :cond_2
    goto :goto_2

    .line 2825
    :cond_3
    :goto_3
    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    .line 2826
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    if-nez v5, :cond_1

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 2827
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v2, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 2830
    .local v5, "outputBufferIndex":I
    invoke-direct {p0, v5, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkPendingAudioDecoderBufferIndex(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2831
    goto :goto_1

    .line 2833
    :cond_4
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    .line 2835
    const-string v7, "TranscodeLib"

    const-string v8, "audio decoder: codec config buffer"

    invoke-static {v7, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2837
    goto :goto_1

    .line 2839
    :cond_5
    move v3, v5

    .line 2840
    goto :goto_1

    .line 2844
    .end local v5    # "outputBufferIndex":I
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseInputAudioDecoder()V

    .line 2845
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v5, :cond_7

    .line 2846
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2850
    .end local v0    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v1    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .end local v2    # "outputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v3    # "pendingAudioDecoderOutputBufferIndex":I
    .end local v4    # "schedulerCallback":Ljava/lang/Runnable;
    :cond_7
    goto :goto_4

    .line 2848
    :catch_0
    move-exception v0

    .line 2849
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2851
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private blacklist procSVCLayerDrop(JIIII)Z
    .locals 25
    .param p1, "sampleTime"    # J
    .param p3, "layerNum"    # I
    .param p4, "maxLayerNum"    # I
    .param p5, "recordingMode"    # I
    .param p6, "recordingFramerate"    # I

    .line 1942
    move-object/from16 v7, p0

    const/4 v0, 0x0

    .line 1943
    .local v0, "isSEFSlowMotion":Z
    const/4 v1, 0x0

    .line 1944
    .local v1, "isSEFFastMotion":Z
    const/4 v8, 0x0

    .line 1945
    .local v8, "retDrop":Z
    const/4 v2, 0x0

    .line 1946
    .local v2, "keepframe":Z
    const-wide/16 v3, 0x0

    .line 1947
    .local v3, "timedelta":J
    sget-object v5, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1949
    .local v5, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    move/from16 v9, p5

    invoke-virtual {v7, v9}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1950
    const-wide/16 v10, 0x2

    mul-long v10, v10, p1

    .end local p1    # "sampleTime":J
    .local v10, "sampleTime":J
    goto :goto_0

    .line 1949
    .end local v10    # "sampleTime":J
    .restart local p1    # "sampleTime":J
    :cond_0
    move-wide/from16 v10, p1

    .line 1953
    .end local p1    # "sampleTime":J
    .restart local v10    # "sampleTime":J
    :goto_0
    move-wide v12, v10

    .line 1954
    .local v12, "tempSampleTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[procSVCLayerDrop]SampleTime = tempSampleTime = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ",layernum :"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v14, p3

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ", maxlayernum : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v15, p4

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v16, v0

    .end local v0    # "isSEFSlowMotion":Z
    .local v16, "isSEFSlowMotion":Z
    const-string v0, "TranscodeLib"

    invoke-static {v0, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isRegionListExist()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1960
    const/4 v0, 0x0

    move v6, v0

    move/from16 v17, v2

    move-wide/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v0, v16

    move/from16 v16, p6

    .end local v2    # "keepframe":Z
    .end local v3    # "timedelta":J
    .end local v5    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local p6    # "recordingFramerate":I
    .restart local v0    # "isSEFSlowMotion":Z
    .local v6, "i":I
    .local v16, "recordingFramerate":I
    .local v17, "keepframe":Z
    .local v18, "timedelta":J
    .local v20, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :goto_1
    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_9

    .line 1961
    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1962
    const/4 v0, 0x1

    .line 1963
    const/4 v1, 0x0

    .line 1965
    :cond_1
    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1966
    const/4 v1, 0x1

    .line 1967
    const/4 v0, 0x0

    move/from16 v21, v0

    move/from16 v22, v1

    goto :goto_2

    .line 1965
    :cond_2
    move/from16 v21, v0

    move/from16 v22, v1

    .line 1971
    .end local v0    # "isSEFSlowMotion":Z
    .end local v1    # "isSEFFastMotion":Z
    .local v21, "isSEFSlowMotion":Z
    .local v22, "isSEFFastMotion":Z
    :goto_2
    const-wide/16 v23, 0x3e8

    if-eqz v21, :cond_4

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v0, v0

    mul-long v0, v0, v23

    cmp-long v0, v10, v0

    if-gez v0, :cond_4

    .line 1972
    if-nez v16, :cond_3

    const/16 v16, 0xf0

    .line 1973
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v6

    move-wide v3, v10

    move/from16 v5, v16

    move v9, v6

    .end local v6    # "i":I
    .local v9, "i":I
    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForSlowVideo(ZIJII)Z

    move-result v0

    move/from16 v17, v0

    .end local v17    # "keepframe":Z
    .local v0, "keepframe":Z
    goto/16 :goto_3

    .line 1971
    .end local v0    # "keepframe":Z
    .end local v9    # "i":I
    .restart local v6    # "i":I
    .restart local v17    # "keepframe":Z
    :cond_4
    move v9, v6

    .line 1975
    .end local v6    # "i":I
    .restart local v9    # "i":I
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v0, v0

    mul-long v0, v0, v23

    cmp-long v0, v10, v0

    if-ltz v0, :cond_7

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1976
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v0, v0

    mul-long v0, v0, v23

    cmp-long v0, v10, v0

    if-gez v0, :cond_7

    .line 1978
    if-eqz v22, :cond_6

    .line 1979
    if-nez v16, :cond_5

    const/16 v0, 0x1e

    move/from16 v16, v0

    .line 1980
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v9

    move-wide v3, v10

    move/from16 v5, v16

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForFastVideo(ZIJII)Z

    move-result v17

    .line 1983
    :cond_6
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1984
    .end local v20    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v0, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v1

    .line 1985
    .local v1, "timescale":F
    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v2, v2

    mul-long v2, v2, v23

    iget-object v4, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1986
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v4, v4

    mul-long v4, v4, v23

    sub-long v4, v10, v4

    const v6, 0x49742400    # 1000000.0f

    mul-float/2addr v6, v1

    move-object/from16 v20, v0

    move/from16 p1, v1

    .end local v0    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v1    # "timescale":F
    .restart local v20    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local p1, "timescale":F
    float-to-long v0, v6

    mul-long/2addr v4, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 1991
    .end local v12    # "tempSampleTime":J
    .local v2, "tempSampleTime":J
    move-wide v12, v2

    move/from16 v2, v17

    move-object/from16 v5, v20

    move/from16 v0, v21

    move/from16 v1, v22

    goto :goto_4

    .line 1992
    .end local v2    # "tempSampleTime":J
    .end local p1    # "timescale":F
    .restart local v12    # "tempSampleTime":J
    :cond_7
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v0, v0

    mul-long v0, v0, v23

    cmp-long v0, v10, v0

    if-ltz v0, :cond_8

    .line 1993
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v6, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1994
    .end local v20    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v6, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v20

    .line 1995
    .local v20, "timescale":F
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v23, v6

    .end local v6    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v23, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTimeDelta(JFZZI)J

    move-result-wide v18

    .line 1997
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-object/from16 v20, v0

    .line 1960
    .end local v23    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v20, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :cond_8
    :goto_3
    add-int/lit8 v6, v9, 0x1

    move/from16 v9, p5

    move/from16 v0, v21

    move/from16 v1, v22

    .end local v9    # "i":I
    .local v6, "i":I
    goto/16 :goto_1

    .end local v21    # "isSEFSlowMotion":Z
    .end local v22    # "isSEFFastMotion":Z
    .local v0, "isSEFSlowMotion":Z
    .local v1, "isSEFFastMotion":Z
    :cond_9
    move v9, v6

    .end local v6    # "i":I
    .restart local v9    # "i":I
    move/from16 v2, v17

    move-object/from16 v5, v20

    .line 2001
    .end local v9    # "i":I
    .end local v17    # "keepframe":Z
    .end local v20    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v2, "keepframe":Z
    .restart local v5    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    :goto_4
    add-long v3, v12, v18

    iput-wide v3, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    move v6, v0

    move v9, v1

    move-wide/from16 v20, v12

    move v12, v2

    move-object v13, v5

    goto :goto_5

    .line 1958
    .end local v0    # "isSEFSlowMotion":Z
    .end local v18    # "timedelta":J
    .restart local v3    # "timedelta":J
    .local v16, "isSEFSlowMotion":Z
    .restart local p6    # "recordingFramerate":I
    :cond_a
    move v9, v1

    move-wide/from16 v18, v3

    move-wide/from16 v20, v12

    move/from16 v6, v16

    move/from16 v16, p6

    move v12, v2

    move-object v13, v5

    .line 2004
    .end local v1    # "isSEFFastMotion":Z
    .end local v2    # "keepframe":Z
    .end local v3    # "timedelta":J
    .end local v5    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local p6    # "recordingFramerate":I
    .local v6, "isSEFSlowMotion":Z
    .local v9, "isSEFFastMotion":Z
    .local v12, "keepframe":Z
    .local v13, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v16, "recordingFramerate":I
    .restart local v18    # "timedelta":J
    .local v20, "tempSampleTime":J
    :goto_5
    if-eqz v6, :cond_b

    .line 2005
    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v16

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkRetDropSlowMotion(ZIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z

    move-result v8

    .line 2007
    if-eqz v12, :cond_b

    const/4 v8, 0x0

    .line 2010
    :cond_b
    if-eqz v9, :cond_c

    .line 2011
    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, p5

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkRetDropFastMotion(ZIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z

    move-result v8

    .line 2013
    if-eqz v12, :cond_c

    const/4 v8, 0x0

    .line 2015
    :cond_c
    return v8
.end method

.method private blacklist procSuperSlowVideo(JII)Z
    .locals 24
    .param p1, "sampleTime"    # J
    .param p3, "layernum"    # I
    .param p4, "recordingframerate"    # I

    .line 1880
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    const/4 v10, 0x0

    .line 1881
    .local v10, "isSEFSuperSlowCancel":Z
    const/4 v11, 0x0

    .line 1882
    .local v11, "retDrop":Z
    const/4 v12, 0x0

    .line 1883
    .local v12, "keepframe":Z
    const-wide/16 v0, 0x0

    .line 1884
    .local v0, "timedelta":J
    move-wide/from16 v13, p1

    .line 1885
    .local v13, "tempSampleTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[procSuperSlowVideo]SampleTime = tempSampleTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isRegionListExist()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1888
    const/4 v2, 0x0

    move-wide v5, v0

    move v15, v2

    .end local v0    # "timedelta":J
    .local v5, "timedelta":J
    .local v15, "i":I
    :goto_0
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_5

    .line 1889
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v0, v0

    const-wide/16 v16, 0x3e8

    mul-long v0, v0, v16

    cmp-long v0, v8, v0

    const/16 v1, 0x9

    if-ltz v0, :cond_3

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1890
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v0

    mul-long v2, v2, v16

    cmp-long v0, v8, v2

    if-gez v0, :cond_2

    .line 1891
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    if-ne v0, v1, :cond_1

    .line 1892
    if-nez p4, :cond_0

    const/16 v0, 0x1e

    move/from16 v18, v0

    .end local p4    # "recordingframerate":I
    .local v0, "recordingframerate":I
    goto :goto_1

    .end local v0    # "recordingframerate":I
    .restart local p4    # "recordingframerate":I
    :cond_0
    move/from16 v18, p4

    .line 1896
    .end local p4    # "recordingframerate":I
    .local v18, "recordingframerate":I
    :goto_1
    move-object/from16 v0, p0

    move v1, v12

    move v2, v15

    move-wide/from16 v3, p1

    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .local v19, "isSEFSuperSlowCancel":Z
    .local v20, "retDrop":Z
    move/from16 v5, v18

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForFastVideo(ZIJII)Z

    move-result v0

    .line 1898
    .end local v12    # "keepframe":Z
    .local v0, "keepframe":Z
    iget-object v1, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1899
    .local v1, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v1}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v2

    .line 1900
    .local v2, "timescale":F
    iget-object v3, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v3, v3

    mul-long v3, v3, v16

    iget-object v5, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1901
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v5

    mul-long v5, v5, v16

    sub-long v5, v8, v5

    const v12, 0x49742400    # 1000000.0f

    mul-float/2addr v12, v2

    move/from16 p4, v0

    move-object/from16 v21, v1

    .end local v0    # "keepframe":Z
    .end local v1    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v21, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local p4, "keepframe":Z
    float-to-long v0, v12

    mul-long/2addr v5, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v5, v0

    add-long/2addr v3, v5

    .line 1903
    .end local v13    # "tempSampleTime":J
    .local v3, "tempSampleTime":J
    const/4 v0, 0x1

    .line 1904
    .end local v2    # "timescale":F
    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local v21    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .local v0, "isSEFSuperSlowCancel":Z
    move/from16 v12, p4

    move-wide v13, v3

    goto/16 :goto_4

    .line 1905
    .end local v0    # "isSEFSuperSlowCancel":Z
    .end local v3    # "tempSampleTime":J
    .end local v18    # "recordingframerate":I
    .end local v20    # "retDrop":Z
    .restart local v5    # "timedelta":J
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    .restart local v12    # "keepframe":Z
    .restart local v13    # "tempSampleTime":J
    .local p4, "recordingframerate":I
    :cond_1
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    const/4 v0, 0x0

    .line 1907
    .end local v19    # "isSEFSuperSlowCancel":Z
    .restart local v0    # "isSEFSuperSlowCancel":Z
    move/from16 v18, p4

    goto/16 :goto_4

    .line 1890
    .end local v0    # "isSEFSuperSlowCancel":Z
    .end local v20    # "retDrop":Z
    .restart local v5    # "timedelta":J
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    :cond_2
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    goto :goto_2

    .line 1889
    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local v20    # "retDrop":Z
    .restart local v5    # "timedelta":J
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    :cond_3
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .line 1908
    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    :goto_2
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v0

    mul-long v2, v2, v16

    cmp-long v0, v8, v2

    if-ltz v0, :cond_4

    .line 1909
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    if-ne v0, v1, :cond_4

    .line 1910
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 1911
    .local v0, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v1

    .line 1912
    .local v1, "timescale":F
    long-to-double v2, v10

    const-wide v4, 0x408f400000000000L    # 1000.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v1

    sub-double v16, v16, v8

    mul-double v16, v16, v4

    iget-object v4, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 1913
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v5, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    mul-double v16, v16, v4

    sub-double v2, v2, v16

    double-to-long v5, v2

    .end local v10    # "timedelta":J
    .restart local v5    # "timedelta":J
    goto :goto_3

    .line 1888
    .end local v0    # "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .end local v1    # "timescale":F
    .end local v5    # "timedelta":J
    .restart local v10    # "timedelta":J
    :cond_4
    move-wide v5, v10

    .end local v10    # "timedelta":J
    .restart local v5    # "timedelta":J
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, p1

    move/from16 v10, v19

    move/from16 v11, v20

    goto/16 :goto_0

    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local v20    # "retDrop":Z
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    :cond_5
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    .end local v5    # "timedelta":J
    .end local v11    # "retDrop":Z
    .local v10, "timedelta":J
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    move/from16 v18, p4

    move/from16 v0, v19

    .line 1918
    .end local v15    # "i":I
    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local p4    # "recordingframerate":I
    .local v0, "isSEFSuperSlowCancel":Z
    .restart local v18    # "recordingframerate":I
    :goto_4
    add-long v5, v13, v10

    iput-wide v5, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    move-wide/from16 v22, v10

    move v10, v0

    move-wide/from16 v0, v22

    goto :goto_5

    .line 1887
    .end local v18    # "recordingframerate":I
    .end local v20    # "retDrop":Z
    .local v0, "timedelta":J
    .local v10, "isSEFSuperSlowCancel":Z
    .restart local v11    # "retDrop":Z
    .restart local p4    # "recordingframerate":I
    :cond_6
    move/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "isSEFSuperSlowCancel":Z
    .end local v11    # "retDrop":Z
    .restart local v19    # "isSEFSuperSlowCancel":Z
    .restart local v20    # "retDrop":Z
    move/from16 v18, p4

    .line 1921
    .end local v19    # "isSEFSuperSlowCancel":Z
    .end local p4    # "recordingframerate":I
    .restart local v10    # "isSEFSuperSlowCancel":Z
    .restart local v18    # "recordingframerate":I
    :goto_5
    if-eqz v10, :cond_8

    .line 1928
    if-eqz p3, :cond_7

    .line 1929
    const/4 v11, 0x1

    .end local v20    # "retDrop":Z
    .restart local v11    # "retDrop":Z
    goto :goto_6

    .line 1928
    .end local v11    # "retDrop":Z
    .restart local v20    # "retDrop":Z
    :cond_7
    move/from16 v11, v20

    .line 1932
    .end local v20    # "retDrop":Z
    .restart local v11    # "retDrop":Z
    :goto_6
    if-eqz v12, :cond_9

    .line 1933
    const/4 v11, 0x0

    goto :goto_7

    .line 1921
    .end local v11    # "retDrop":Z
    .restart local v20    # "retDrop":Z
    :cond_8
    move/from16 v11, v20

    .line 1937
    .end local v20    # "retDrop":Z
    .restart local v11    # "retDrop":Z
    :cond_9
    :goto_7
    return v11
.end method

.method private blacklist releaseInputAudioDecoder()V
    .locals 3

    .line 2747
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 2749
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2750
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 2751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2755
    goto :goto_0

    .line 2752
    :catch_0
    move-exception v0

    .line 2753
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing input audio decoder."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2757
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z
    .locals 5
    .param p1, "releaseFrame"    # Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    .line 1624
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget v1, p1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->bufferIndex:I

    iget v2, p1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->size:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1625
    iget v0, p1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->size:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method private blacklist sendAudioDecoderOutput()V
    .locals 15

    .line 1421
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    if-eqz v0, :cond_6

    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-gtz v0, :cond_6

    .line 1424
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1425
    .local v0, "size":I
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1426
    .local v9, "presentationTime":J
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    int-to-long v1, v1

    const-wide/16 v3, 0x5355

    mul-long/2addr v1, v3

    add-long v11, v9, v1

    .line 1427
    .local v11, "tempPresentationTime":J
    move-wide v1, v11

    .line 1428
    .local v1, "seektime":J
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v3, :cond_4

    .line 1429
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowFast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1430
    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->getSlowfastSeektime(J)J

    move-result-wide v1

    goto :goto_1

    .line 1431
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1432
    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->getSuperslowSeektime(J)J

    move-result-wide v1

    .line 1435
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    if-nez v3, :cond_3

    .line 1436
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioDrop(JI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1439
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioFollowHandle(J)V

    .line 1440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "presentationTime :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", temp_presentationTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seektime :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", audioWaitFrame:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timescale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v13, v1

    goto :goto_2

    .line 1428
    :cond_4
    move-wide v13, v1

    .line 1447
    .end local v1    # "seektime":J
    .local v13, "seektime":J
    :goto_2
    move-object v1, p0

    move v2, v0

    move-wide v3, v9

    move-wide v5, v13

    move-wide v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSendAudioFollowHandle(IJJJ)V

    .line 1448
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_5

    .line 1449
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 1452
    .end local v0    # "size":I
    .end local v9    # "presentationTime":J
    .end local v11    # "tempPresentationTime":J
    .end local v13    # "seektime":J
    :cond_5
    goto/16 :goto_0

    .line 1453
    :cond_6
    return-void
.end method

.method private blacklist sendAudioToDecoder()V
    .locals 17

    .line 418
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-gtz v1, :cond_7

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    if-nez v1, :cond_7

    .line 421
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    .line 422
    .local v1, "presentationTimeUs":J
    const/4 v3, -0x1

    .line 423
    .local v3, "jumpRegion":I
    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSilentRegion(J)I

    move-result v3

    .line 427
    :cond_1
    const/4 v4, 0x0

    const-string v5, "TranscodeLib"

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Seekto region End time :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 429
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v7, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 428
    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v6, v6

    mul-long/2addr v6, v9

    invoke-virtual {v5, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 432
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v6, v6

    mul-long/2addr v6, v9

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 434
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 437
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 435
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    :cond_3
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    .line 442
    .local v7, "audioDecoderInputBufferIndex":I
    if-eq v7, v6, :cond_7

    .line 443
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v7

    .line 445
    .local v6, "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v6, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 446
    .local v4, "size":I
    iput-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    .line 447
    iget-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v8, :cond_5

    .line 448
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-virtual {v0, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 449
    const-wide/16 v8, 0x2

    mul-long/2addr v8, v1

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {v0, v8, v9, v10}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioTime(JI)V

    goto :goto_1

    .line 451
    :cond_4
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioTime(JI)V

    .line 454
    :cond_5
    :goto_1
    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    cmp-long v8, v1, v8

    if-gtz v8, :cond_6

    if-ltz v4, :cond_6

    .line 455
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    iget-wide v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 456
    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    .line 455
    move v11, v7

    move v13, v4

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 457
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    .line 459
    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    .line 462
    :goto_2
    iget-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    if-eqz v8, :cond_7

    .line 463
    const-string v8, "audio decoder sending EOS"

    invoke-static {v5, v8}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x4

    move v11, v7

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 470
    .end local v1    # "presentationTimeUs":J
    .end local v3    # "jumpRegion":I
    .end local v4    # "size":I
    .end local v6    # "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "audioDecoderInputBufferIndex":I
    :cond_7
    return-void
.end method

.method private blacklist sendAudioToEncoder(IJJJ)V
    .locals 23
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J
    .param p6, "tempPresentationTime"    # J

    .line 1206
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    const-wide/16 v7, 0x2710

    const/4 v9, 0x1

    const-string v10, "TranscodeLib"

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-eqz v6, :cond_6

    .line 1207
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 1208
    .local v6, "audioEncoderInputBufferIndex":I
    if-ne v6, v11, :cond_0

    .line 1209
    const-string v7, "audio encoder input buffer try again later"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1211
    :cond_0
    if-ltz v1, :cond_1

    .line 1212
    invoke-direct {v0, v6, v1, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTempRadio(IIJ)V

    .line 1214
    :cond_1
    iget-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    .line 1215
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    if-eq v7, v11, :cond_2

    .line 1216
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v7, v8, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1219
    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1222
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forcely EOS  AudioLoopCount :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seek time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", temp_presentationTime :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1226
    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1227
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->flush()V

    .line 1228
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v2, v3, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1230
    :cond_3
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_5

    .line 1232
    const-string v7, "audio decoder: EOS"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    if-eq v7, v11, :cond_4

    .line 1234
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v7, v8, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1236
    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1238
    :cond_4
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 1239
    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 1240
    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 1243
    .end local v6    # "audioEncoderInputBufferIndex":I
    :cond_5
    :goto_0
    move-wide/from16 v6, p2

    goto/16 :goto_4

    .line 1244
    :cond_6
    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v6, :cond_7

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    if-lez v6, :cond_7

    .line 1245
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioLoopCount(J)V

    .line 1246
    return-void

    .line 1249
    :cond_7
    if-ltz v1, :cond_b

    const-wide/16 v13, 0x0

    cmp-long v6, p2, v13

    if-ltz v6, :cond_b

    .line 1250
    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    if-nez v6, :cond_8

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecAudio(IZ)I

    .line 1251
    :cond_8
    move-wide/from16 v20, p2

    .end local p2    # "presentationTime":J
    .local v20, "presentationTime":J
    :goto_1
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v13, :cond_a

    .line 1252
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 1254
    .restart local v6    # "audioEncoderInputBufferIndex":I
    if-ne v6, v11, :cond_9

    .line 1255
    const-string v7, " audio encoder input buffer try again later"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    goto :goto_2

    .line 1258
    :cond_9
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v15, v13, v6

    .line 1260
    .local v15, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v15, v13, v14, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1262
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 1263
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v14, v8

    invoke-static {v13, v7, v13, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1265
    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 1266
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 1267
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v14, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v19, v14

    move v14, v6

    move-object/from16 v22, v15

    .end local v15    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .local v22, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    move v15, v7

    move/from16 v16, v8

    move-wide/from16 v17, v20

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1270
    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1271
    const-wide/16 v7, 0x5355

    add-long v20, v20, v7

    .line 1273
    .end local v6    # "audioEncoderInputBufferIndex":I
    .end local v22    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    const-wide/16 v7, 0x2710

    goto :goto_1

    .line 1276
    :cond_a
    :goto_2
    move-wide/from16 v6, v20

    goto :goto_3

    .end local v20    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_b
    move-wide/from16 v6, p2

    .end local p2    # "presentationTime":J
    .local v6, "presentationTime":J
    :goto_3
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-ge v8, v13, :cond_c

    .line 1277
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v8, v9, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1279
    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1280
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    .line 1281
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_d

    .line 1283
    invoke-direct {v0, v6, v7}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderEOSNotWaitFrameCase(J)Z

    goto :goto_4

    .line 1286
    :cond_c
    const-string v8, "Not finished yet"

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    .line 1290
    :cond_d
    :goto_4
    return-void
.end method

.method private blacklist sendAudioToEncoder_AudioSolution(IJJ)V
    .locals 29
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J

    .line 908
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_a

    .line 909
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecAudio(IZ)I

    move-result v10

    .line 911
    .local v10, "encoderInputBufferSize":I
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const v6, 0x64000

    const/high16 v7, 0x41000000    # 8.0f

    const-wide/16 v8, 0x0

    const-string v11, "audio encoder input buffer try again later"

    const/4 v12, -0x1

    const-wide/16 v13, 0x2710

    const-string v15, "TranscodeLib"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    if-ne v3, v2, :cond_4

    :cond_0
    if-lez v1, :cond_4

    sget-wide v16, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v3, v16, v8

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v16, v3, v16

    if-eqz v16, :cond_4

    .line 914
    cmpl-float v3, v3, v7

    if-lez v3, :cond_1

    .line 915
    move-wide/from16 v7, p4

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderEOS(J)V

    .line 916
    return-void

    .line 918
    :cond_1
    move-wide/from16 v7, p4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 919
    .local v3, "tempAudio":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 920
    const-string v6, "VSPExe2 is called"

    invoke-static {v15, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v17, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v21, v10, v2

    move-object/from16 v16, v6

    move-object/from16 v19, v3

    move-object/from16 v20, v9

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 923
    .local v2, "newSize":I
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v6, v2

    mul-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 924
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v4, v2

    mul-int/2addr v4, v5

    invoke-virtual {v3, v6, v9, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 926
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v6, v2

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 927
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VSPExe2 original size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTempAudioLength :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v4, p2

    .line 930
    .end local p2    # "presentationTime":J
    .local v4, "presentationTime":J
    :goto_0
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v9, :cond_3

    .line 931
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 933
    .local v6, "audioEncoderInputBufferIndex":I
    if-ne v6, v12, :cond_2

    .line 934
    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    return-void

    .line 937
    :cond_2
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v9, v9, v6

    .line 939
    .local v9, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v9, v12, v13, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 941
    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 942
    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    move/from16 v20, v2

    .end local v2    # "newSize":I
    .local v20, "newSize":I
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v2, v13

    const/4 v13, 0x0

    invoke-static {v14, v12, v14, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 944
    iput v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 945
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v2, v12

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 946
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v24, 0x0

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v13, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v22, v2

    move/from16 v23, v6

    move/from16 v25, v12

    move-wide/from16 v26, v4

    move/from16 v28, v13

    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 949
    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v12, 0x1

    add-int/2addr v2, v12

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 950
    const-wide/16 v12, 0x5355

    add-long/2addr v4, v12

    .line 952
    .end local v6    # "audioEncoderInputBufferIndex":I
    .end local v9    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    move/from16 v2, v20

    const/4 v12, -0x1

    const-wide/16 v13, 0x2710

    goto :goto_0

    .line 930
    .end local v20    # "newSize":I
    .restart local v2    # "newSize":I
    :cond_3
    move/from16 v20, v2

    .line 953
    .end local v2    # "newSize":I
    .end local v3    # "tempAudio":Ljava/nio/ByteBuffer;
    goto/16 :goto_2

    .line 954
    .end local v4    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v2

    if-eqz v2, :cond_8

    if-lez v1, :cond_8

    sget-wide v2, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_8

    .line 955
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 956
    .local v2, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 957
    const-string v3, "SRCExe2 is called"

    invoke-static {v15, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v23, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v6, v10, v6

    div-int/lit8 v27, v6, 0x2

    move-object/from16 v22, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v2

    invoke-virtual/range {v22 .. v27}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 960
    .local v3, "newSize":I
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v4, v3

    mul-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 961
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_5

    .line 962
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v4, v3

    mul-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/transcode/core/EncodeBase;->audioVolume(Ljava/nio/ByteBuffer;I)V

    .line 964
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 965
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v7, v3

    mul-int/2addr v7, v5

    invoke-virtual {v2, v4, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 967
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v6, v3

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 968
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-wide/from16 v4, p2

    .line 969
    .end local p2    # "presentationTime":J
    .restart local v4    # "presentationTime":J
    :goto_1
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v7, :cond_7

    .line 970
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 972
    .restart local v6    # "audioEncoderInputBufferIndex":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    .line 973
    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void

    .line 976
    :cond_6
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v6

    .line 978
    .local v7, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v7, v8, v9, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 980
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 981
    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v13, v9

    const/4 v9, 0x0

    invoke-static {v12, v8, v12, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 983
    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 984
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 985
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v24, 0x0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v22, v8

    move/from16 v23, v6

    move/from16 v25, v9

    move-wide/from16 v26, v4

    move/from16 v28, v12

    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 988
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 989
    const-wide/16 v8, 0x5355

    add-long/2addr v4, v8

    .line 991
    .end local v6    # "audioEncoderInputBufferIndex":I
    .end local v7    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 992
    .end local v2    # "tempAudio":Ljava/nio/ByteBuffer;
    .end local v3    # "newSize":I
    :cond_7
    goto :goto_2

    .line 993
    .end local v4    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_8
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 995
    .local v2, "audioEncoderInputBufferIndex":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 996
    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void

    .line 999
    :cond_9
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v11, v3, v2

    .line 1001
    .local v11, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1002
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1003
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v4, v2

    move v6, v10

    move-wide/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1006
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 1010
    .end local v2    # "audioEncoderInputBufferIndex":I
    .end local v10    # "encoderInputBufferSize":I
    .end local v11    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    :cond_a
    move-wide/from16 v4, p2

    .end local p2    # "presentationTime":J
    .restart local v4    # "presentationTime":J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderFinish()Z

    .line 1011
    return-void
.end method

.method private blacklist sendAudioToMuxer()V
    .locals 4

    .line 670
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_4

    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    if-ltz v0, :cond_4

    .line 673
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 674
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 675
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 677
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-eqz v0, :cond_4

    .line 678
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saw input EOS: Audio audioEncoderDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioEncoderOutputBufferIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist sendAudioToMuxer(IJJ)V
    .locals 27
    .param p1, "size"    # I
    .param p2, "presentationTime"    # J
    .param p4, "seektime"    # J

    .line 691
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-wide/from16 v2, p2

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p2

    .line 693
    :goto_0
    const/4 v6, 0x1

    if-ltz v1, :cond_d

    .line 694
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    aget-object v7, v7, v8

    .line 695
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 696
    .local v7, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 697
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 698
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const-string v14, " Enc NAACEncoderExe encoded_size: "

    const/high16 v15, 0x41000000    # 8.0f

    const-wide/16 v10, 0x0

    const-string v13, " naac_time : "

    const/16 v16, 0x1000

    const-wide/16 v17, 0x5355

    const/4 v12, 0x2

    const-string v9, "TranscodeLib"

    const/4 v4, 0x0

    if-eq v8, v12, :cond_2

    if-ne v8, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v20, v7

    move-object v4, v9

    move v5, v12

    move-object v6, v13

    goto/16 :goto_4

    :cond_2
    :goto_1
    if-lez v1, :cond_9

    sget-wide v19, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v5, v19, v10

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v8

    if-eqz v8, :cond_9

    .line 701
    cmpl-float v5, v5, v15

    if-lez v5, :cond_7

    .line 702
    move-wide/from16 v10, p4

    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/transcode/core/EncodeBase;->getRegionNumber(J)I

    move-result v5

    .line 703
    .local v5, "i":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Seekto region : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", end time :"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 704
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v12, v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", RegionList.size() : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 705
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 703
    invoke-static {v9, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    const-string v12, "audio decoder: EOS"

    if-ge v5, v8, :cond_4

    .line 707
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    move-object/from16 v20, v7

    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v20, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    int-to-long v6, v13

    mul-long/2addr v6, v14

    invoke-virtual {v8, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 709
    :goto_2
    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    move v13, v5

    .end local v5    # "i":I
    .local v13, "i":I
    int-to-long v4, v8

    mul-long/2addr v4, v14

    cmp-long v4, v6, v4

    if-gez v4, :cond_5

    .line 711
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 714
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move v5, v13

    const/4 v4, 0x0

    goto :goto_2

    .line 712
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 717
    .end local v13    # "i":I
    .end local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "i":I
    .restart local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    :cond_4
    move v13, v5

    move-object/from16 v20, v7

    .end local v5    # "i":I
    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "i":I
    .restart local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    invoke-static {v9, v12}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 720
    :cond_5
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "releaseOutputBuffer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v4, -0x1

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 725
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    .line 727
    invoke-static {v9, v12}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 729
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 731
    :cond_6
    return-void

    .line 733
    .end local v13    # "i":I
    .end local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    :cond_7
    move-wide/from16 v10, p4

    move-object/from16 v20, v7

    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    const v4, 0x64000

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 734
    .local v4, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 735
    const-string v5, "VSPExe2 is called"

    invoke-static {v9, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v5, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v7, v1, v7

    move-object v15, v9

    move-wide v9, v5

    move-object v11, v4

    move v5, v12

    move-object/from16 v12, v20

    move-object v6, v13

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 738
    .local v7, "newSize":I
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v8, v7

    mul-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 739
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v10, v7

    mul-int/2addr v10, v5

    invoke-virtual {v4, v8, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 741
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v7

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 742
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 743
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VSPExe2 original size :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mTempAudioLength :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mTempAudioEncSize :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .end local p2    # "presentationTime":J
    .local v2, "presentationTime":J
    :goto_3
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v5, v8, :cond_8

    .line 747
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 749
    .local v5, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v5, v8, v9, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 751
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 752
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v11, v9

    const/4 v9, 0x0

    invoke-static {v10, v8, v10, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 755
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 756
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 757
    add-long v2, v2, v17

    .line 758
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 760
    .local v8, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v22, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v21, v9

    move-object/from16 v24, v5

    move-object/from16 v25, v8

    move/from16 v26, v10

    invoke-virtual/range {v21 .. v26}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v9

    .line 762
    .local v9, "encodedSize":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v9, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 765
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v11, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 766
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 767
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v10, v11, v8, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 769
    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 770
    add-long v10, v10, v17

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 771
    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    iput v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 772
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 773
    .end local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "encodedSize":I
    goto/16 :goto_3

    .line 774
    .end local v4    # "tempAudio":Ljava/nio/ByteBuffer;
    .end local v7    # "newSize":I
    :cond_8
    goto/16 :goto_6

    .line 698
    .end local v2    # "presentationTime":J
    .end local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v7, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local p2    # "presentationTime":J
    :cond_9
    move-object/from16 v20, v7

    move-object v4, v9

    move v5, v12

    move-object v6, v13

    .line 775
    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .restart local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v7

    if-eqz v7, :cond_c

    if-lez v1, :cond_c

    sget-wide v7, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_c

    .line 776
    const v7, 0x64000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 777
    .local v7, "tempAudio":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 778
    const-string v8, "SRCExe2 is called"

    invoke-static {v4, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v9, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v11, v1, v11

    div-int/lit8 v13, v11, 0x2

    move-object/from16 v11, v20

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 781
    .local v8, "newSize":I
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v8

    mul-int/2addr v9, v5

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 782
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v9, v9, v15

    if-eqz v9, :cond_a

    .line 783
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v8

    mul-int/2addr v9, v5

    invoke-virtual {v0, v7, v9}, Lcom/samsung/android/transcode/core/EncodeBase;->audioVolume(Ljava/nio/ByteBuffer;I)V

    .line 785
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 786
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v11, v8

    mul-int/2addr v11, v5

    invoke-virtual {v7, v9, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 788
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v10, v8

    mul-int/2addr v10, v5

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 789
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 790
    .end local p2    # "presentationTime":J
    .restart local v2    # "presentationTime":J
    :goto_5
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v5, v9, :cond_b

    .line 791
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 792
    .restart local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v5, v9, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 793
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 794
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    sub-int/2addr v12, v10

    const/4 v10, 0x0

    invoke-static {v11, v9, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    iput v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 797
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 798
    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 799
    add-long v2, v2, v17

    .line 800
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 801
    .local v9, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v22, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v21, v10

    move-object/from16 v24, v5

    move-object/from16 v25, v9

    move/from16 v26, v11

    invoke-virtual/range {v21 .. v26}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v10

    .line 803
    .local v10, "encodedSize":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v10, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 806
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v12, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 807
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 808
    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v11, v12, v9, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 810
    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 811
    add-long v11, v11, v17

    iput-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 812
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 813
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 814
    .end local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "encodedSize":I
    goto/16 :goto_5

    .line 815
    .end local v7    # "tempAudio":Ljava/nio/ByteBuffer;
    .end local v8    # "newSize":I
    :cond_b
    goto :goto_6

    .line 816
    .end local v2    # "presentationTime":J
    .restart local p2    # "presentationTime":J
    :cond_c
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 817
    .restart local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 818
    move-object/from16 v7, v20

    .end local v20    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .local v7, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 819
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 820
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 821
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 822
    .local v8, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v22, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v21, v9

    move-object/from16 v24, v5

    move-object/from16 v25, v8

    move/from16 v26, v10

    invoke-virtual/range {v21 .. v26}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v9

    .line 824
    .local v9, "encodedSize":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Enc NAACEncoderExe2 encoded_size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v9, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 827
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v10, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 828
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 829
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v6, v8, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 831
    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    .line 832
    add-long v10, v10, v17

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 833
    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 834
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 837
    .end local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v9    # "encodedSize":I
    .end local p2    # "presentationTime":J
    .restart local v2    # "presentationTime":J
    :cond_d
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderFinish()Z

    move-result v4

    if-eqz v4, :cond_e

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    goto :goto_7

    :cond_e
    const/4 v5, 0x1

    .line 839
    :goto_7
    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    invoke-virtual {v0, v6, v7, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 840
    return-void
.end method

.method private blacklist sendVideoFramesToMuxer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 6
    .param p1, "encoderOutputBufferIndex"    # I
    .param p2, "videoEncoderOutputBufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 1524
    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkEncoderOutputBufferIndex(I)Z

    move-result v0

    const-string v1, "TranscodeLib"

    if-nez v0, :cond_0

    .line 1525
    const-string/jumbo v0, "video encoder: sendVideoFramesToMuxer condition error"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    return-void

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1530
    .local v0, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1531
    const-string/jumbo v2, "video encoder: codec config buffer"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1534
    return-void

    .line 1537
    :cond_1
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_2

    .line 1538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video encoder: writing sample data timestamp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    invoke-virtual {v2, v4, v0, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    goto :goto_0

    .line 1543
    :catch_0
    move-exception v2

    .line 1544
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to writeSampleData videoEncoderDone? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v4, v5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    .line 1549
    :cond_2
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 1550
    const-string/jumbo v2, "video encoder: EOS"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    .line 1554
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1558
    goto :goto_1

    .line 1555
    :catch_1
    move-exception v2

    .line 1556
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to release output buffer of encoder videoEncoderDone? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    return-void
.end method

.method private blacklist setOrientation(I)V
    .locals 1
    .param p1, "degree"    # I

    .line 2351
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRotation:I

    add-int/2addr p1, v0

    .line 2352
    rem-int/lit16 p1, p1, 0x168

    .line 2353
    sparse-switch p1, :sswitch_data_0

    .line 2367
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    goto :goto_0

    .line 2363
    :sswitch_0
    const/16 v0, 0x10e

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 2364
    goto :goto_0

    .line 2359
    :sswitch_1
    const/16 v0, 0xb4

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 2360
    goto :goto_0

    .line 2355
    :sswitch_2
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    .line 2356
    nop

    .line 2370
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist setStereoAudioChannelForDolbyAudioCodec()V
    .locals 2

    .line 2742
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2743
    const-string v0, "TranscodeLib"

    const-string v1, "Audio ac3 type :  mOutputAudioChannelCount is changed."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    return-void
.end method

.method protected static blacklist unsignedIntToLong([B)J
    .locals 5
    .param p0, "b"    # [B

    .line 220
    const-wide/16 v0, 0x0

    .line 221
    .local v0, "l":J
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 222
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 223
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 224
    shl-long/2addr v0, v2

    .line 225
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 226
    shl-long/2addr v0, v2

    .line 227
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 229
    return-wide v0
.end method


# virtual methods
.method protected blacklist audioVolume(Ljava/nio/ByteBuffer;I)V
    .locals 10
    .param p1, "pcmData"    # Ljava/nio/ByteBuffer;
    .param p2, "dataLength"    # I

    .line 562
    const v0, 0x3dcccccd    # 0.1f

    .line 563
    .local v0, "fadeSampleRateConvFactor":F
    div-int/lit8 v1, p2, 0x4

    .line 564
    .local v1, "buflen":I
    const/4 v2, 0x0

    .line 565
    .local v2, "cnt":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioVolume  fade_sampleRateConvFactor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data_length; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 570
    .local v3, "outBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 571
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 573
    :goto_0
    if-lez v1, :cond_0

    .line 574
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    int-to-short v5, v5

    .line 575
    .local v5, "temp":S
    const v6, 0xffff

    and-int v7, v5, v6

    int-to-short v5, v7

    .line 576
    int-to-float v7, v5

    mul-float/2addr v7, v0

    float-to-int v7, v7

    int-to-short v5, v7

    .line 577
    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 578
    const v7, 0xff00

    and-int v8, v5, v7

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 579
    add-int/lit8 v2, v2, 0x2

    .line 581
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    int-to-short v5, v8

    .line 582
    and-int/2addr v6, v5

    int-to-short v5, v6

    .line 583
    int-to-float v6, v5

    mul-float/2addr v6, v0

    float-to-int v6, v6

    int-to-short v5, v6

    .line 584
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 585
    and-int v6, v5, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 586
    add-int/lit8 v2, v2, 0x2

    .line 587
    nop

    .end local v5    # "temp":S
    add-int/lit8 v1, v1, -0x1

    .line 588
    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 590
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 591
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 593
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 596
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 597
    return-void
.end method

.method protected blacklist calculateIsDrop([BJ)V
    .locals 9
    .param p1, "a"    # [B
    .param p2, "presentationTimeUs"    # J

    .line 2088
    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->getLayerNumber([B)I

    move-result v7

    .line 2089
    .local v7, "layerNumber":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowFastExceptSlowV2120NoneSVC()Z

    move-result v0

    const-string v8, "TranscodeLib"

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2097
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2098
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {p0, p2, p3, v7, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->procSuperSlowVideo(JII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDrop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mModifiedVideotime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2102
    :cond_1
    const-string v0, "Need to check recording mode and SEF data"

    invoke-static {v8, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2092
    :cond_2
    :goto_0
    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNumOfSVCLayers:I

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    move-object v0, p0

    move-wide v1, p2

    move v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->procSVCLayerDrop(JIIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layerNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDrop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModifiedVideotime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    :goto_1
    return-void
.end method

.method protected blacklist checkDecAudio(IZ)I
    .locals 11
    .param p1, "size"    # I
    .param p2, "isAudioSolution"    # Z

    .line 843
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    aget-object v0, v0, v1

    .line 844
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 845
    .local v0, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 846
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 847
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 849
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 850
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    div-int v1, p1, v1

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v1, v3

    .line 852
    .local v1, "encoderInputBufferSize":I
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/lit8 v3, v3, 0x2

    .line 853
    .local v3, "outputBitStreamSize":I
    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    mul-int/lit8 v4, v4, 0x2

    .line 855
    .local v4, "inputBitStreamSize":I
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 856
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 857
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    div-int v6, p1, v4

    if-ge v5, v6, :cond_1

    .line 858
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-ge v6, v7, :cond_0

    .line 859
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    mul-int v8, v5, v3

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    mul-int v9, v5, v4

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    .line 860
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 859
    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 861
    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    mul-int v8, v5, v3

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    mul-int v9, v5, v4

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    .line 862
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 861
    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 858
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 857
    .end local v6    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 865
    .end local v3    # "outputBitStreamSize":I
    .end local v4    # "inputBitStreamSize":I
    .end local v5    # "i":I
    :cond_1
    goto :goto_2

    .line 866
    .end local v1    # "encoderInputBufferSize":I
    :cond_2
    move v1, p1

    .line 868
    .restart local v1    # "encoderInputBufferSize":I
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 869
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 870
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 872
    :goto_2
    if-nez p2, :cond_3

    .line 873
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 874
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 875
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 877
    :cond_3
    return v1
.end method

.method protected blacklist checkDecoderFinish()Z
    .locals 4

    .line 1014
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    const/4 v2, 0x0

    const-string v3, "TranscodeLib"

    if-ge v0, v1, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1016
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 1017
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio decoder: EOS  mTempAudioLength : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 1022
    :cond_0
    return v1

    .line 1024
    :cond_1
    const-string v0, "Not finished yet"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    return v2
.end method

.method protected blacklist checkMuxerStart()V
    .locals 5

    .line 316
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_5

    .line 318
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    :goto_0
    nop

    .line 320
    .local v0, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const/16 v3, 0x8

    const-string/jumbo v4, "param-meta-author"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 322
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v3, "param-meta-transcoding"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 323
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 324
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v4, "param-meta-recording-mode"

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set recording mode for NDE : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TranscodeLib"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    .line 330
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 334
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    if-eqz v1, :cond_4

    .line 335
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 337
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 338
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    .line 340
    .end local v0    # "filepath":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method protected blacklist checkOutputVideoBitRate()V
    .locals 11

    .line 2518
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    .line 2519
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->m2ndTimeEncoding:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v2, "video/avc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2521
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSizeFraction:F

    .line 2524
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-eqz v0, :cond_1

    .line 2525
    const/16 v0, 0x7d00

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    .line 2528
    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    if-ne v0, v1, :cond_4

    .line 2529
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSizeFraction:F

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    div-long v5, v0, v5

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    div-int/lit16 v7, v0, 0x3e8

    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v9, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    goto :goto_1

    .line 2534
    :cond_2
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    if-ne v0, v1, :cond_4

    .line 2535
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 2536
    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mHDRType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    iget-boolean v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIs360Video:Z

    iget v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v9, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 2535
    invoke-static/range {v2 .. v10}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(IILjava/lang/String;Ljava/lang/String;ZZIII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    .line 2541
    :cond_4
    :goto_1
    return-void
.end method

.method protected blacklist checkSourceFrameRate(Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;

    .line 2507
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    .line 2509
    :try_start_0
    const-string v0, "frame-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2511
    goto :goto_0

    .line 2510
    :catch_0
    move-exception v0

    .line 2512
    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    .line 2513
    :cond_0
    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfo;->getVideoFramerate()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    .line 2515
    :cond_1
    return-void
.end method

.method protected blacklist checkTrimAudioEndUs(Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "inputAudioFormat"    # Landroid/media/MediaFormat;

    .line 2679
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2680
    if-eqz p1, :cond_0

    .line 2681
    const-string v0, "durationUs"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    .line 2683
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrimAudioEndUs was 0 but updated mTrimAudioEndUs :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginTrimEndUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    :cond_1
    return-void
.end method

.method protected blacklist createAudioExtractor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2643
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    .line 2644
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2648
    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    goto :goto_0

    .line 2645
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2650
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2654
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 2656
    :goto_0
    return-void

    .line 2651
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist createVideoEncoder()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2391
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkOutputVideoFrameRate()V

    .line 2392
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkOutputVideoBitRate()V

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOutputVideoBitRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputAudioBitRate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSourceFrameRate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputVideoFrameRate :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFramesSkipInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeepSourceFrameRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputVideoTargetFrameRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 2403
    .local v0, "outputVideoFormat":Landroid/media/MediaFormat;
    const-string v2, "color-format"

    const v3, 0x7f000789

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2405
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    const-string v3, "bitrate"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2406
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    const-string v3, "frame-rate"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2407
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoIFrameInterval:I

    const-string v3, "i-frame-interval"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2408
    const-string/jumbo v2, "priority"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2409
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkBitrateMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2410
    const/4 v2, 0x2

    const-string v4, "bitrate-mode"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2413
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-nez v2, :cond_1

    .line 2414
    const-string v2, "color-standard"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2417
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "output video format "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 2421
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setVideoEncoderAsyncCallback()V

    .line 2422
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2425
    new-instance v1, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    .line 2426
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 2427
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    .line 2428
    return-void
.end method

.method protected blacklist createVideoExtractor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2373
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    .line 2374
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2375
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2378
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2380
    :goto_0
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->setOrientation(I)V

    .line 2381
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 2383
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_2

    .line 2384
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_1

    .line 2386
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2388
    :goto_1
    return-void

    .line 2378
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getRegionNumber(J)I
    .locals 6
    .param p1, "timeUs"    # J

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegionNumber timeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    .line 605
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegionNumber number :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return v0

    .line 603
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected blacklist getSlowfastSeektime(J)J
    .locals 15
    .param p1, "seekTimeUs"    # J

    .line 1304
    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 1305
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1308
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1310
    const-wide/16 v1, 0x0

    .line 1314
    .local v1, "timeDelta":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1315
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    .line 1316
    .local v4, "timescale":F
    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 1317
    .local v5, "regStartTime":J
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    .line 1318
    .local v9, "regEndTime":J
    sub-long v7, v9, v5

    .line 1320
    .local v7, "regDuration":J
    const v11, 0x49742400    # 1000000.0f

    mul-float/2addr v11, v4

    float-to-long v11, v11

    mul-long/2addr v11, v7

    const-wide/32 v13, 0xf4240

    div-long/2addr v11, v13

    .line 1322
    .local v11, "regScaledDuration":J
    add-long v13, v5, v1

    cmp-long v13, p1, v13

    if-ltz v13, :cond_1

    add-long v13, v11, v5

    add-long/2addr v13, v1

    cmp-long v13, p1, v13

    if-gtz v13, :cond_1

    .line 1324
    sub-long v13, p1, v5

    sub-long/2addr v13, v1

    long-to-float v13, v13

    div-float/2addr v13, v4

    float-to-long v13, v13

    add-long/2addr v13, v5

    .line 1326
    .end local p1    # "seekTimeUs":J
    .local v13, "seekTimeUs":J
    goto :goto_2

    .line 1327
    .end local v13    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_1
    add-long v13, v11, v5

    add-long/2addr v13, v1

    cmp-long v13, p1, v13

    if-lez v13, :cond_2

    .line 1328
    sub-long v13, v11, v7

    add-long/2addr v1, v13

    .line 1329
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v3, v13, :cond_4

    .line 1330
    sub-long v13, p1, v1

    .line 1331
    .end local p1    # "seekTimeUs":J
    .restart local v13    # "seekTimeUs":J
    goto :goto_2

    .line 1333
    .end local v13    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_2
    add-long v13, v5, v1

    cmp-long v13, p1, v13

    if-gez v13, :cond_4

    .line 1334
    if-nez v3, :cond_3

    .line 1335
    goto :goto_1

    .line 1337
    :cond_3
    sub-long v13, p1, v1

    .line 1338
    .end local p1    # "seekTimeUs":J
    .restart local v13    # "seekTimeUs":J
    goto :goto_2

    .line 1314
    .end local v11    # "regScaledDuration":J
    .end local v13    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1342
    .end local v1    # "timeDelta":J
    .end local v3    # "i":I
    .end local v4    # "timescale":F
    .end local v5    # "regStartTime":J
    .end local v7    # "regDuration":J
    .end local v9    # "regEndTime":J
    :cond_5
    :goto_1
    move-wide/from16 v13, p1

    .end local p1    # "seekTimeUs":J
    .restart local v13    # "seekTimeUs":J
    :goto_2
    nop

    .line 1347
    return-wide v13

    .line 1343
    .end local v13    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_6
    const-string v1, "TranscodeLib"

    const-string v2, "There is no region info."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    return-wide p1
.end method

.method protected blacklist getSuperslowSeektime(J)J
    .locals 20
    .param p1, "seekTimeUs"    # J

    .line 1351
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 1352
    const-wide/16 v3, -0x1

    return-wide v3

    .line 1355
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    const-string v4, "TranscodeLib"

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1356
    const-wide/16 v5, 0x0

    .line 1361
    .local v5, "timeDelta":J
    move-wide/from16 v7, p1

    .line 1363
    .local v7, "tmpSeekTimeUs":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 1364
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    .line 1365
    .local v9, "regStartTime":J
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v11

    .line 1366
    .local v13, "regEndTime":J
    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v1, v15

    mul-long/2addr v1, v11

    .line 1367
    .local v1, "regAudioEndTime":J
    sub-long v11, v13, v1

    .line 1368
    .local v11, "regDuration":J
    const/4 v15, 0x0

    .line 1370
    .local v15, "isCancel":Z
    move/from16 v16, v15

    .end local v15    # "isCancel":Z
    .local v16, "isCancel":Z
    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v0, 0x9

    if-ne v15, v0, :cond_1

    .line 1371
    const/4 v15, 0x1

    .end local v16    # "isCancel":Z
    .restart local v15    # "isCancel":Z
    goto :goto_1

    .line 1370
    .end local v15    # "isCancel":Z
    .restart local v16    # "isCancel":Z
    :cond_1
    move/from16 v15, v16

    .line 1374
    .end local v16    # "isCancel":Z
    .restart local v15    # "isCancel":Z
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v11

    .end local v11    # "regDuration":J
    .local v16, "regDuration":J
    const-string v11, "[getSuperslowSeektime] regStartTime = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",regEndTime : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",regAudioEndTime: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", isCancel ="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",tmpSeekTimeUs: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", timeDelta:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", seekTimeUs:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v11, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v18, v9

    .end local v9    # "regStartTime":J
    .local v18, "regStartTime":J
    const-string v9, ", i :"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    cmp-long v0, v7, v1

    if-ltz v0, :cond_3

    cmp-long v0, v7, v13

    if-gtz v0, :cond_3

    .line 1381
    if-eqz v15, :cond_2

    .line 1382
    add-long v5, v5, v16

    .line 1383
    add-long v7, v7, v16

    .line 1385
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_7

    .line 1386
    add-long v9, v11, v5

    .line 1387
    .end local p1    # "seekTimeUs":J
    .local v9, "seekTimeUs":J
    goto :goto_3

    .line 1380
    .end local v9    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_3
    move-object/from16 v0, p0

    .line 1391
    cmp-long v9, v7, v13

    if-lez v9, :cond_5

    .line 1392
    if-eqz v15, :cond_4

    .line 1393
    add-long v5, v5, v16

    .line 1394
    add-long v7, v7, v16

    .line 1396
    :cond_4
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_7

    .line 1397
    add-long v9, v11, v5

    .line 1398
    .end local p1    # "seekTimeUs":J
    .restart local v9    # "seekTimeUs":J
    goto :goto_3

    .line 1402
    .end local v9    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_5
    cmp-long v9, v7, v1

    if-gez v9, :cond_7

    .line 1403
    if-nez v3, :cond_6

    .line 1404
    goto :goto_2

    .line 1406
    :cond_6
    add-long v9, v11, v5

    .line 1407
    .end local p1    # "seekTimeUs":J
    .restart local v9    # "seekTimeUs":J
    goto :goto_3

    .line 1363
    .end local v9    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_7
    add-int/lit8 v3, v3, 0x1

    move-wide v1, v11

    goto/16 :goto_0

    .end local v1    # "regAudioEndTime":J
    .end local v13    # "regEndTime":J
    .end local v15    # "isCancel":Z
    .end local v16    # "regDuration":J
    .end local v18    # "regStartTime":J
    :cond_8
    move-wide v11, v1

    .line 1411
    .end local v3    # "i":I
    .end local v5    # "timeDelta":J
    .end local v7    # "tmpSeekTimeUs":J
    :goto_2
    move-wide v9, v11

    .end local p1    # "seekTimeUs":J
    .restart local v9    # "seekTimeUs":J
    :goto_3
    nop

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSuperslowSeektime] seekTimeUs= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    return-wide v9

    .line 1355
    .end local v9    # "seekTimeUs":J
    .restart local p1    # "seekTimeUs":J
    :cond_9
    move-wide v11, v1

    .line 1412
    const-string v1, "There is no region info."

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    return-wide v11
.end method

.method protected blacklist initialize_audio()V
    .locals 4

    .line 2242
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 2243
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 2245
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 2246
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 2248
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2249
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 2251
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2254
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    .line 2255
    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    .line 2256
    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    .line 2258
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    .line 2261
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    .line 2262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    .line 2263
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    .line 2265
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    .line 2266
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    .line 2267
    const v2, 0x64000

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    .line 2268
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    .line 2269
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    .line 2270
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    .line 2272
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    .line 2273
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    .line 2274
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    .line 2275
    return-void
.end method

.method protected blacklist initialize_video()V
    .locals 3

    .line 2151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    .line 2153
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    .line 2155
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    .line 2156
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    .line 2157
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2158
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    .line 2160
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    .line 2161
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    .line 2163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 2165
    new-instance v0, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-direct {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    .line 2166
    return-void
.end method

.method protected blacklist isSlow120(I)Z
    .locals 1
    .param p1, "recordingMode"    # I

    .line 1832
    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected blacklist isSlowFast()Z
    .locals 3

    .line 542
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected blacklist isSlowV2()Z
    .locals 2

    .line 2859
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected blacklist isSuperSlow()Z
    .locals 2

    .line 2080
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic blacklist lambda$preprocessAudioOutputFormat$0$com-samsung-android-transcode-core-EncodeBase()V
    .locals 1

    .line 2816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    return-void
.end method

.method protected blacklist prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "prepare video and audio codec"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aput-boolean v2, v0, v1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareVideoCodec()V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareAudioCodec()V

    .line 163
    return-void
.end method

.method protected blacklist prepareAudioCodec()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2760
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createAudioExtractor()V

    .line 2761
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 2762
    .local v0, "audioInputTrack":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2763
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2764
    return-void

    .line 2766
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 2767
    .local v2, "inputAudioFormat":Landroid/media/MediaFormat;
    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkCopyAudio(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2768
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2769
    return-void

    .line 2772
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    .line 2773
    invoke-virtual {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTrimAudioEndUs(Landroid/media/MediaFormat;)V

    .line 2775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio input format "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TranscodeLib"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    .line 2777
    const-string v1, "channel-count"

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    .line 2779
    const-string v1, "mime"

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2780
    .local v1, "mimeType":Ljava/lang/String;
    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->isDolbyAudioCodec(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2781
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->preprocessAudioOutputFormat(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 2784
    :cond_3
    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->getMaxInputSize(Landroid/media/MediaFormat;)I

    move-result v4

    .line 2785
    .local v4, "maxInputSize":I
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioChannelCount()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2786
    return-void

    .line 2788
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createAudioHandle()V

    .line 2790
    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMimeType:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-static {v5, v6, v7}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    .line 2792
    .local v5, "outputAudioFormat":Landroid/media/MediaFormat;
    if-eqz v4, :cond_5

    .line 2793
    const-string v6, "max-input-size"

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2795
    :cond_5
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    const-string v7, "bitrate"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2796
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioAACProfile:I

    const-string v7, "aac-profile"

    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2797
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio output format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 2799
    .local v3, "audioCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    .line 2801
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->createInputAudioDecoder(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 2802
    return-void
.end method

.method protected blacklist prepareForRewrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareVideoCodecNeo()V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareAudioCodec()V

    .line 171
    return-void
.end method

.method protected blacklist prepareVideoCodec()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2544
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createVideoExtractor()V

    .line 2546
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    .line 2547
    .local v2, "videoTrack":I
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 2548
    .local v3, "inputFormat":Landroid/media/MediaFormat;
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mConvert:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 2552
    const-string/jumbo v0, "ro.hardware.chipname"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2553
    .local v0, "chipName":Ljava/lang/String;
    const-string/jumbo v6, "ro.product.board"

    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2554
    .local v6, "boardName":Ljava/lang/String;
    const-string/jumbo v7, "ro.soc.model"

    invoke-static {v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 2555
    .local v7, "socModelName":Ljava/lang/String;
    move-object v8, v0

    .line 2557
    .local v8, "chipset":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v8, v6

    .line 2559
    :cond_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v8, v7

    .line 2561
    :cond_1
    const-string v9, "exynos"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "s5e"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    .line 2567
    :cond_2
    const-string/jumbo v9, "vendor.qti-ext-dec-forceNonUBWC.value"

    invoke-virtual {v3, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2568
    const-string/jumbo v9, "vendor.qti-ext-imageformat-filter-enabled.value"

    invoke-virtual {v3, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2569
    const-string/jumbo v9, "vendor.qti-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v3, v9, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2570
    const v9, 0x7fa30c04

    const-string/jumbo v10, "vendor.qti-ext-imageformat-filter-clientcolorformat.value"

    invoke-virtual {v3, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 2562
    :cond_3
    :goto_0
    const-string/jumbo v9, "vendor.sec-dec-output.image-convert.value"

    invoke-virtual {v3, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2563
    const-string/jumbo v9, "vendor.sec-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v3, v9, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2564
    const/16 v9, 0x105

    const-string/jumbo v10, "vendor.sec-dec-output.image-convert-pixel-format.value"

    invoke-virtual {v3, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2574
    .end local v0    # "chipName":Ljava/lang/String;
    .end local v6    # "boardName":Ljava/lang/String;
    .end local v7    # "socModelName":Ljava/lang/String;
    .end local v8    # "chipset":Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input video format: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "TranscodeLib"

    invoke-static {v6, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    iget-wide v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_5

    .line 2577
    const-string v0, "durationUs"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2578
    .local v7, "duration":J
    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->setOriginalTrimTime(J)V

    .line 2580
    .end local v7    # "duration":J
    :cond_5
    invoke-virtual {v1, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSourceFrameRate(Landroid/media/MediaFormat;)V

    .line 2582
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createVideoEncoder()V

    .line 2585
    :try_start_0
    const-string/jumbo v0, "width"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 2586
    .local v0, "originWidth":I
    const-string v7, "height"

    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    move v15, v7

    .line 2589
    .local v15, "originHeight":I
    int-to-float v7, v0

    int-to-float v8, v15

    div-float v16, v7, v8

    .line 2590
    .local v16, "originAspectRatio":F
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    int-to-float v7, v7

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    int-to-float v8, v8

    div-float v17, v7, v8

    .line 2591
    .local v17, "targetAspectRatio":F
    cmpl-float v7, v16, v17

    if-lez v7, :cond_6

    .line 2592
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    .line 2593
    .local v7, "width":I
    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    mul-int/2addr v8, v15

    div-int/2addr v8, v0

    .line 2594
    .local v8, "height":I
    const/4 v9, 0x0

    .line 2595
    .local v9, "x":I
    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    sub-int/2addr v10, v8

    div-int/lit8 v10, v10, 0x2

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .local v10, "y":I
    goto :goto_2

    .line 2597
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_6
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    move v8, v7

    .line 2598
    .restart local v8    # "height":I
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v7, v0

    div-int/2addr v7, v15

    .line 2599
    .restart local v7    # "width":I
    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    sub-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x2

    .line 2600
    .restart local v9    # "x":I
    const/4 v10, 0x0

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 2603
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "x":I
    .local v18, "width":I
    .local v19, "height":I
    .local v20, "x":I
    .local v21, "y":I
    :goto_2
    new-instance v14, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    sget-object v7, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v8, v7, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    iget-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    move-object v7, v14

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v22, v13

    move v13, v0

    move-object v4, v14

    move v14, v15

    move/from16 v23, v15

    .end local v15    # "originHeight":I
    .local v23, "originHeight":I
    move/from16 v15, v22

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(IIIIIIIZ)V

    iput-object v4, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2608
    .end local v0    # "originWidth":I
    .end local v16    # "originAspectRatio":F
    .end local v17    # "targetAspectRatio":F
    .end local v18    # "width":I
    .end local v19    # "height":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    .end local v23    # "originHeight":I
    goto :goto_3

    .line 2605
    :catch_0
    move-exception v0

    .line 2606
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Can\'t get input video resolution"

    invoke-static {v6, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    new-instance v4, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    sget-object v6, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v6, v6, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {v4, v6}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v4, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    .line 2610
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-nez v0, :cond_7

    .line 2612
    const-string/jumbo v0, "priority"

    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2614
    :cond_7
    nop

    .line 2615
    const-string v0, "mime"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2614
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 2618
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setVideoDecoderAsyncCallback()V

    .line 2619
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 2620
    return-void
.end method

.method protected blacklist prepareVideoCodecNeo()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2285
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    .line 2286
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2287
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2290
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2294
    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2295
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    .line 2297
    :cond_2
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIs360Video:Z

    .line 2299
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->setOrientation(I)V

    .line 2300
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    .line 2301
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input video auth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordingMode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_3

    .line 2307
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_1

    .line 2309
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2311
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 2313
    .local v0, "videoTrack":I
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 2314
    .local v2, "inputFormat":Landroid/media/MediaFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input video format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 2317
    const-string v3, "durationUs"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2318
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSMConvert:Z

    if-eqz v3, :cond_5

    .line 2319
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v3

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_4

    .line 2320
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    mul-long/2addr v9, v7

    invoke-virtual {v3, v9, v10}, Lcom/samsung/android/transcode/util/SEFHelper;->getEditedDuration(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    goto :goto_2

    .line 2323
    :cond_4
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v3, v7

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2326
    :cond_5
    :goto_2
    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    .line 2327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOriginTrimEndUs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    :cond_6
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    .line 2333
    :try_start_0
    const-string v3, "frame-rate"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2335
    goto :goto_3

    .line 2334
    :catch_0
    move-exception v3

    .line 2336
    :goto_3
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lez v3, :cond_7

    .line 2337
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    .line 2340
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOutputVideoFrameRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioinfo:Landroid/media/MediaFormat;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isRewritable(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    .line 2343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "askRewritable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    if-eqz v1, :cond_8

    .line 2348
    return-void

    .line 2346
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unable to handle input file"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2291
    .end local v0    # "videoTrack":I
    .end local v2    # "inputFormat":Landroid/media/MediaFormat;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist pushSampleDataToDecoderInputBuffer(IIJZ)V
    .locals 17
    .param p1, "inputBufferIndex"    # I
    .param p2, "size"    # I
    .param p3, "time"    # J
    .param p5, "isDrop"    # Z

    .line 2133
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    cmp-long v1, p3, v1

    if-gtz v1, :cond_1

    if-ltz p2, :cond_1

    .line 2134
    if-nez p5, :cond_0

    .line 2135
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2136
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    .line 2135
    move/from16 v4, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 2138
    :cond_0
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 2139
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    .line 2138
    move/from16 v11, p1

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 2141
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    .line 2143
    :cond_1
    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "video extractor: EOS "

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 2147
    :goto_1
    return-void
.end method

.method protected blacklist releaseFramemanager()V
    .locals 2

    .line 2943
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    if-eqz v0, :cond_2

    .line 2944
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->queSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 2945
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->dequeueFrame()Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    move-result-object v0

    .line 2946
    .local v0, "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    if-nez v0, :cond_0

    .line 2947
    return-void

    .line 2949
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 2950
    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z

    .line 2952
    .end local v0    # "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    :cond_1
    goto :goto_0

    .line 2954
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    .line 2955
    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    .line 2956
    return-void
.end method

.method protected blacklist sendFrametoEncoder()V
    .locals 8

    .line 1629
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoEncoderAvailableCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1630
    return-void

    .line 1633
    :cond_0
    const/4 v0, 0x0

    .line 1634
    .local v0, "count":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->queSize()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v1, :cond_7

    .line 1636
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->dequeueFrame()Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    move-result-object v1

    .line 1637
    .local v1, "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    if-nez v1, :cond_1

    .line 1638
    return-void

    .line 1641
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1642
    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z

    move-result v2

    const-string v3, "TranscodeLib"

    if-eqz v2, :cond_5

    .line 1644
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    :cond_2
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1652
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    .line 1653
    iget-wide v4, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->presentationTimeUs:J

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 1654
    iget-wide v4, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->presentationTimeUs:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSkipFrames(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1664
    :cond_3
    goto :goto_1

    .line 1656
    :catch_0
    move-exception v2

    .line 1657
    .local v2, "r":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 1658
    .local v4, "msg":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    const-string v5, "Surface frame wait timed out"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 1662
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1666
    .end local v2    # "r":Ljava/lang/RuntimeException;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_5
    :goto_1
    iget v2, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 1667
    const-string/jumbo v2, "video decoder: EOS"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    .line 1669
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 1670
    goto :goto_2

    .line 1672
    .end local v1    # "frame":Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;
    :cond_6
    goto/16 :goto_0

    .line 1673
    :cond_7
    :goto_2
    return-void
.end method

.method protected blacklist sendVideoToDecoder(I)V
    .locals 11
    .param p1, "decoderInputBufferIndex"    # I

    .line 2107
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2108
    .local v0, "decoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 2109
    .local v1, "size":I
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    .line 2110
    .local v9, "presentationTime":J
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    .line 2112
    iput-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    .line 2114
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v3, :cond_0

    .line 2116
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 2117
    .local v3, "a":[B
    const/4 v4, 0x4

    .line 2118
    .local v4, "offset":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2119
    array-length v5, v3

    invoke-virtual {v0, v3, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2120
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2121
    invoke-virtual {p0, v3, v9, v10}, Lcom/samsung/android/transcode/core/EncodeBase;->calculateIsDrop([BJ)V

    .line 2123
    .end local v3    # "a":[B
    .end local v4    # "offset":I
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    if-eqz v2, :cond_1

    .line 2124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2127
    :cond_1
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    iget-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    move-object v3, p0

    move v4, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/transcode/core/EncodeBase;->pushSampleDataToDecoderInputBuffer(IIJZ)V

    .line 2129
    return-void
.end method

.method protected blacklist setOriginalTrimTime(J)V
    .locals 5
    .param p1, "duration"    # J

    .line 2432
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2433
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v0, :cond_1

    .line 2434
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getEditedDuration(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    goto :goto_0

    .line 2437
    :cond_0
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    .line 2440
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    .line 2441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginTrimEndUs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    return-void
.end method

.method protected blacklist setVideoDecoderAsyncCallback()V
    .locals 2

    .line 2206
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/samsung/android/transcode/core/EncodeBase$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/core/EncodeBase$2;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 2239
    return-void
.end method

.method protected blacklist setVideoEncoderAsyncCallback()V
    .locals 2

    .line 2170
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/samsung/android/transcode/core/EncodeBase$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/core/EncodeBase$1;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 2203
    return-void
.end method

.method protected blacklist startAudioEncoding()V
    .locals 0

    .line 1462
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToDecoder()V

    .line 1471
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioDecoderOutput()V

    .line 1477
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioDecoderOutput()V

    .line 1484
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToMuxer()V

    .line 1486
    return-void
.end method

.method protected blacklist startAudioRewriting()V
    .locals 0

    .line 1489
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioFormat()V

    .line 1490
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getandsendAudioToMuxer()V

    .line 1491
    return-void
.end method

.method protected blacklist startEncoding()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 179
    :cond_0
    const-string/jumbo v0, "startEncoding"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initialize_video()V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initialize_audio()V

    .line 184
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v3, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 188
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v3, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_8

    .line 199
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_6

    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mConvert:Z

    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startAudioRewriting()V

    goto :goto_2

    .line 203
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startAudioEncoding()V

    .line 207
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-nez v0, :cond_7

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startVideoDecoding()V

    .line 211
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendFrametoEncoder()V

    .line 212
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-eqz v0, :cond_9

    .line 213
    const-string v0, "Encoding abruptly stopped."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    nop

    .line 217
    :cond_8
    return-void

    .line 212
    :cond_9
    goto :goto_1
.end method

.method protected blacklist startVideoDecoding()V
    .locals 2

    .line 2278
    const-string v0, "TranscodeLib"

    const-string v1, " starts transcoding"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    .line 2280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    .line 2281
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 2282
    return-void
.end method

.method public blacklist updateCreationTime(Ljava/lang/String;Z)Z
    .locals 26
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "mode"    # Z

    .line 236
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCreationTime mode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", filepath : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TranscodeLib"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    .line 239
    const-string v0, "Do not update CreationTime"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return v5

    .line 243
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 245
    .local v6, "file":Ljava/io/File;
    const/4 v0, 0x4

    new-array v7, v0, [B

    .line 246
    .local v7, "atomSizeBuf":[B
    new-array v8, v0, [B

    .line 247
    .local v8, "atomNameBuf":[B
    new-array v9, v0, [B

    .line 249
    .local v9, "temp":[B
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 251
    .local v10, "fileSize":J
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-gtz v0, :cond_1

    .line 252
    const-string v0, "file size is same or less than 0"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return v5

    .line 255
    :cond_1
    const-string v0, "mdia"

    const-string v14, "minf"

    const-string v15, "moov"

    const-string/jumbo v12, "stbl"

    const-string/jumbo v13, "trak"

    filled-new-array {v0, v14, v15, v12, v13}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 257
    .local v12, "parentContainer":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 258
    .local v13, "ret":Z
    if-eqz v3, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "rw"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    move-object/from16 v20, v6

    goto/16 :goto_8

    .line 259
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "r"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    move-object v14, v0

    .line 260
    .local v14, "fileObj":Ljava/io/RandomAccessFile;
    const-wide/16 v18, 0x0

    move-object/from16 v20, v6

    move-wide/from16 v5, v18

    .line 262
    .end local v6    # "file":Ljava/io/File;
    .local v5, "filePointer":J
    .local v20, "file":Ljava/io/File;
    :goto_1
    cmp-long v0, v5, v10

    if-gez v0, :cond_8

    .line 264
    :try_start_2
    invoke-virtual {v14, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    goto :goto_2

    .line 258
    .end local v5    # "filePointer":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    .line 265
    .restart local v5    # "filePointer":J
    :catch_1
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 266
    .local v0, "e1":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_2
    array-length v0, v7

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 269
    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeBase;->unsignedIntToLong([B)J

    move-result-wide v18

    .line 272
    .local v18, "atomSize":J
    array-length v0, v8

    invoke-virtual {v14, v8, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 274
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 276
    .local v0, "atomName":Ljava/lang/String;
    invoke-static {v12, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v21

    .line 277
    .local v21, "tmpAtomPosition":I
    const-wide/16 v22, 0x8

    if-ltz v21, :cond_3

    .line 278
    add-long v5, v5, v22

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    goto/16 :goto_4

    .line 280
    :cond_3
    const-string v15, "mvhd"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_5

    .line 281
    const/4 v4, 0x1

    .line 282
    .end local v13    # "ret":Z
    .local v4, "ret":Z
    if-eqz v3, :cond_4

    .line 283
    :try_start_4
    array-length v13, v9

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 284
    sget-object v13, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v15, v13

    const/4 v2, 0x0

    invoke-virtual {v14, v13, v2, v15}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_3

    .line 286
    :cond_4
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v13, v2

    const/4 v15, 0x0

    invoke-virtual {v14, v2, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 287
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v13, v2

    invoke-virtual {v14, v2, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 288
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    nop

    .line 309
    .end local v0    # "atomName":Ljava/lang/String;
    .end local v5    # "filePointer":J
    .end local v18    # "atomSize":J
    .end local v21    # "tmpAtomPosition":I
    :goto_3
    move v13, v4

    goto :goto_7

    .line 258
    :catchall_1
    move-exception v0

    move-object v1, v0

    move v13, v4

    goto :goto_5

    .line 292
    .end local v4    # "ret":Z
    .restart local v0    # "atomName":Ljava/lang/String;
    .restart local v5    # "filePointer":J
    .restart local v13    # "ret":Z
    .restart local v18    # "atomSize":J
    .restart local v21    # "tmpAtomPosition":I
    :cond_5
    const-wide/16 v24, 0x1

    cmp-long v2, v18, v24

    if-nez v2, :cond_6

    .line 293
    move-object v2, v0

    .end local v0    # "atomName":Ljava/lang/String;
    .local v2, "atomName":Ljava/lang/String;
    add-long v0, v5, v22

    :try_start_5
    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 294
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 295
    .local v0, "atomLargeSizeBuf":[B
    array-length v1, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v0, v15, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 296
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 297
    .local v1, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    .line 298
    .local v22, "atomLargeSize":J
    add-long v5, v5, v22

    .line 299
    .end local v0    # "atomLargeSizeBuf":[B
    .end local v1    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v22    # "atomLargeSize":J
    const-wide/16 v16, 0x0

    goto :goto_4

    .end local v2    # "atomName":Ljava/lang/String;
    .local v0, "atomName":Ljava/lang/String;
    :cond_6
    move-object v2, v0

    const/4 v15, 0x0

    .end local v0    # "atomName":Ljava/lang/String;
    .restart local v2    # "atomName":Ljava/lang/String;
    const-wide/16 v16, 0x0

    cmp-long v0, v18, v16

    if-nez v0, :cond_7

    .line 300
    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 301
    const/4 v0, 0x0

    .line 302
    .end local v13    # "ret":Z
    .local v0, "ret":Z
    move v13, v0

    goto :goto_7

    .line 304
    .end local v0    # "ret":Z
    .restart local v13    # "ret":Z
    :cond_7
    add-long v5, v5, v18

    .line 308
    .end local v2    # "atomName":Ljava/lang/String;
    .end local v18    # "atomSize":J
    .end local v21    # "tmpAtomPosition":I
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_1

    .line 258
    .end local v5    # "filePointer":J
    :goto_5
    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "atomSizeBuf":[B
    .end local v8    # "atomNameBuf":[B
    .end local v9    # "temp":[B
    .end local v10    # "fileSize":J
    .end local v12    # "parentContainer":[Ljava/lang/String;
    .end local v13    # "ret":Z
    .end local v20    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeBase;
    .end local p1    # "filepath":Ljava/lang/String;
    .end local p2    # "mode":Z
    :goto_6
    throw v1

    .line 309
    .restart local v7    # "atomSizeBuf":[B
    .restart local v8    # "atomNameBuf":[B
    .restart local v9    # "temp":[B
    .restart local v10    # "fileSize":J
    .restart local v12    # "parentContainer":[Ljava/lang/String;
    .restart local v13    # "ret":Z
    .restart local v20    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/EncodeBase;
    .restart local p1    # "filepath":Ljava/lang/String;
    .restart local p2    # "mode":Z
    :cond_8
    :goto_7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 311
    .end local v14    # "fileObj":Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 309
    :catch_2
    move-exception v0

    goto :goto_8

    .end local v20    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_3
    move-exception v0

    move-object/from16 v20, v6

    .line 310
    .end local v6    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v20    # "file":Ljava/io/File;
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    :goto_9
    return v13
.end method

.method protected blacklist updateProgress(JZ)V
    .locals 8
    .param p1, "frametime"    # J
    .param p3, "isAudio"    # Z

    .line 2911
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2912
    return-void

    .line 2914
    :cond_0
    if-eqz p3, :cond_1

    .line 2915
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    goto :goto_0

    .line 2917
    :cond_1
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 2920
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mConvertFull:Z

    if-nez v0, :cond_2

    .line 2921
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .local v0, "time":J
    goto :goto_1

    .line 2923
    .end local v0    # "time":J
    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    .line 2926
    .restart local v0    # "time":J
    :goto_1
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    sub-long/2addr v6, v2

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 2930
    .local v2, "progress":I
    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2931
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2933
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mProgress:I

    if-le v2, v3, :cond_3

    .line 2934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateProgress: audioProgressTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vidioProgressTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onProgressChanged(I)V

    .line 2938
    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mProgress:I

    .line 2940
    :cond_3
    return-void
.end method
