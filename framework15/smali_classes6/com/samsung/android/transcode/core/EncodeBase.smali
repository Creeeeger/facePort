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

.field protected static final blacklist KEY_MUXER_MODEL_NAME:Ljava/lang/String; = "param-meta-brand-model-name"

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

.field protected blacklist mRecordingFps:I

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

.field protected blacklist mVideoFramesWritten:I

.field protected blacklist mVidioProgressTime:J

.field protected blacklist mkeepAudioFrame:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRotation:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIs360Video:Z

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    iput v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

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

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoEncoderAvailableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->sendVideoFramesToMuxer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/transcode/core/EncodeBase;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoDecoderAvailableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/transcode/core/EncodeBase;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->getVideoDecoderOutput(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private blacklist checkAudioChannelCount()Z
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    return v2

    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const/4 v3, 0x6

    const-string v4, "TranscodeLib"

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const-string v0, "Audio need down mixing "

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    return v0

    :cond_2
    return v2
.end method

.method private blacklist checkAudioDecoderBufferIndex(I[Ljava/nio/ByteBuffer;)Z
    .locals 14

    move-object v0, p0

    move v8, p1

    const-string v1, "TranscodeLib"

    const/4 v9, 0x0

    const/4 v2, -0x1

    if-ne v8, v2, :cond_0

    const-string v2, "audio decoder input try again later while preparing audio codec"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    aget-object v10, p2, v8

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v10, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v11

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    if-lez v11, :cond_1

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v7

    const/4 v3, 0x0

    move v2, p1

    move v4, v11

    move-wide v5, v12

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_1
    if-ne v11, v2, :cond_2

    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

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

    return v9

    :cond_2
    :goto_0
    return v9
.end method

.method private blacklist checkAudioDecoderEOS(J)V
    .locals 12

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->getRegionNumber(J)I

    move-result v0

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

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v6, 0x0

    const-string v7, "audio decoder: EOS"

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v8, v8

    mul-long/2addr v8, v4

    invoke-virtual {v1, v8, v9, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

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

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid File!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v1, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    :cond_3
    return-void
.end method

.method private blacklist checkAudioDecoderEOSNotWaitFrameCase(J)Z
    .locals 18

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

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    const-string v4, "audio encoder input buffer try again later"

    const/4 v5, -0x1

    const-wide/16 v6, 0x2710

    const/4 v8, 0x0

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v15, v9, v3

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v15, v9, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

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

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    const/16 v16, 0x0

    const/4 v11, 0x0

    move v10, v3

    move-object/from16 v17, v15

    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v9, v1

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    :cond_1
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    invoke-virtual {v4, v5, v6, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

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

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v13, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v11, 0x0

    move v10, v3

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    return v1
.end method

.method private blacklist checkAudioEncoderOutputBufferIndex()Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "TranscodeLib"

    if-ne v0, v1, :cond_0

    const-string v1, "audio encoder output buffer try again later"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    const-string v1, "audio encoder: output buffers changed"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    return v2

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio encoder: output format changed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    if-gez v0, :cond_3

    const-string v1, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    const-string v4, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v2

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-eqz v4, :cond_6

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

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v6, v8

    if-gtz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v6, v1, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    invoke-virtual {p0, v6, v7, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    goto :goto_0

    :cond_5
    const-string v4, "Audio time stamps are not in increasing order."

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    const-string v4, "saw input EOS: Audio"

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    return v2
.end method

.method private blacklist checkAudioFollowHandle(J)V
    .locals 7

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->getTimescale(JI)F

    move-result v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    sget-wide v1, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v5, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    invoke-virtual {v1, v5, v6, v2}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPSetPar(JF)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-wide v1, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initAudioSlowV2()V

    :cond_2
    return-void
.end method

.method private blacklist checkAudioLoopCount(J)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek to next frame\taudioLoopCount :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", seektime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TranscodeLib"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private blacklist checkBitrateMode()Z
    .locals 4

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

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    const-string v0, "Audio mime type is unknown. Ignore audio track."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "error-type"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

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

    return v1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedCodecType(Landroid/media/MediaFormat;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Audio codec type is unsupported. Ignore audio track."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkDecoderOutputBufferIndex(ILandroid/media/MediaCodec$BufferInfo;)Z
    .locals 4

    const/4 v0, -0x1

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const-string v0, "no video decoder output buffer"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    const-string v0, "video decoder: output buffers changed"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video decoder: codec info format changed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const-string v0, "video decoder: codec config buffer"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkEncoderOutputBufferIndex(I)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-ne p1, v0, :cond_0

    const-string v0, "no video encoder output buffer"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xa

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sleep interrupted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    const-string v0, "video encoder: output buffers changed"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video encoder: output format changed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    return v1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Video encoder output format changed after muxer has started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gez p1, :cond_4

    const-string v0, "Unexpected result from video encoder dequeue output format."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkLayerCondition(III)Z
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p3, :cond_1

    sub-int v1, p2, v0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkOutputVideoFrameRate()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    const-string v1, "TranscodeLib"

    const/4 v2, 0x1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoTargetFrameRate:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lt v0, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_0

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

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

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

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mKeepSourceFrameRate:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    if-lt v0, v3, :cond_8

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-ne v0, v4, :cond_4

    goto :goto_1

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

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_7

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_2

    :cond_5
    :goto_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    const/16 v1, 0x82

    if-ge v0, v1, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_7

    const/16 v0, 0x1e

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    :cond_7
    :goto_2
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    if-le v0, v2, :cond_a

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->m2ndTimeEncoding:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

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

    :cond_9
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    :cond_a
    :goto_3
    return-void
.end method

.method private blacklist checkPendingAudioDecoderBufferIndex(ILjava/lang/String;)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-ne p1, v0, :cond_0

    const-string v0, "audio decoder output buffer try again later while preparing audio codec"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    const-string v0, "audio decoder: output buffers changed "

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, -0x2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v4, "sample-rate"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v4, "channel-count"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-direct {p0, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->isDolbyAudioCodec(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setStereoAudioChannelForDolbyAudioCodec()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",ChannelCount"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    return v1

    :cond_3
    if-gez p1, :cond_4

    const-string v0, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return v3
.end method

.method private blacklist checkRetDropFastMotion(ZIIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z
    .locals 5

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v0

    const-string v1, "ProcSVCLayerDrop Should not be here!!!"

    const-string v2, "TranscodeLib"

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p6}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p4, p5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_2
    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p6}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    invoke-direct {p0, p4, p5, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    invoke-direct {p0, p4, p5, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x3

    invoke-direct {p0, p4, p5, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p4, p5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_7
    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_8
    nop

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

    const/16 v0, 0xe6

    const-string v1, "TranscodeLib"

    if-lt p2, v0, :cond_2

    const/4 v0, 0x3

    if-lez p3, :cond_0

    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    :cond_0
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    const-string v0, "ProcSVCLayerDrop Should not be here!"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_1
    add-int/lit8 v0, p4, -0x3

    if-eq p3, v0, :cond_1

    add-int/lit8 v0, p4, -0x2

    if-ne p3, v0, :cond_4

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, p4, -0x3

    if-ne p3, v0, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_3
    goto :goto_0

    :cond_2
    const/16 v0, 0x6e

    if-lt p2, v0, :cond_4

    const/4 v0, 0x2

    if-lez p3, :cond_3

    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    :cond_3
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$3;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p5}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_1

    const-string v0, "ProcSVCLayerDrop Should not be here!!"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkLayerCondition(III)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_5
    add-int/lit8 v0, p4, -0x2

    if-ne p3, v0, :cond_4

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_6
    nop

    :cond_4
    :goto_0
    return p1

    nop

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

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToMuxer(IJJ)V

    goto :goto_1

    :cond_0
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToEncoder(IJJJ)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToEncoder_AudioSolution(IJJ)V

    :goto_1
    return-void
.end method

.method private blacklist checkSilentRegion(J)I
    .locals 6

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

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

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

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

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

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist checkSkipFrames(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkipFrames:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesSkipInterval:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

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

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    return-void
.end method

.method private blacklist checkTempRadio(IIJ)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    div-int/2addr p2, v1

    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v8, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x0

    move v2, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    return-void
.end method

.method private blacklist checkTimeDelta(JFZZI)J
    .locals 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz p4, :cond_0

    long-to-double v4, p1

    float-to-double v6, p3

    sub-double/2addr v6, v0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    :cond_0
    if-eqz p5, :cond_1

    long-to-double v4, p1

    float-to-double v6, p3

    sub-double/2addr v0, v6

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    :cond_1
    :goto_0
    return-wide p1
.end method

.method private blacklist createAudioHandle()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPCreate()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    const/16 v6, 0x10

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPInit(JII)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0xbb80

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCCreate()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSMConvert:Z

    if-eqz v0, :cond_4

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderInit(II)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    :cond_4
    return-void
.end method

.method private blacklist createInputAudioDecoder(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "encoder-delay"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    :goto_0
    return-void
.end method

.method private blacklist getAudioDecoderOutput()V
    .locals 5

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

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const-string v2, "TranscodeLib"

    if-ne v0, v1, :cond_1

    const-string v1, "audio decoder output buffer try again later while decoding"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    const-string v1, "audio decoder: output buffers changed"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    const-string v1, "audio decoder: output format changed: "

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-gez v0, :cond_4

    const-string v1, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const-string v1, "audio decoder: codec config buffer"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    :cond_5
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    :cond_6
    :goto_0
    return-void
.end method

.method private blacklist getAudioDrop(JI)Z
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p1

    const-wide/16 v6, 0x0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    if-eq v3, v9, :cond_4

    if-ne v3, v8, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v12, v9

    mul-long/2addr v12, v10

    cmp-long v9, v1, v12

    if-lez v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v12, 0x9

    if-ne v9, v12, :cond_1

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    sub-int/2addr v9, v12

    int-to-long v12, v9

    mul-long/2addr v12, v10

    add-long/2addr v6, v12

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    cmp-long v8, v4, v6

    const-string v9, ",timeDelta :"

    const-string v10, "TranscodeLib"

    if-gez v8, :cond_3

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

    :cond_3
    sub-long/2addr v4, v6

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

    :cond_4
    :goto_1
    const/4 v12, 0x0

    :goto_2
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_9

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

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    cmp-long v13, v1, v13

    if-gez v13, :cond_5

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v9

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v10

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    move-wide/from16 v16, v4

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

    move-wide v4, v13

    goto/16 :goto_5

    :cond_5
    move-wide/from16 v16, v4

    goto :goto_3

    :cond_6
    move-wide/from16 v16, v4

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

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide v18, 0x408f400000000000L    # 1000.0

    if-ne v3, v9, :cond_7

    long-to-double v9, v6

    move-wide/from16 v20, v9

    float-to-double v8, v5

    sub-double/2addr v8, v13

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    :cond_7
    const/4 v8, 0x2

    if-ne v3, v8, :cond_8

    long-to-double v9, v6

    move-wide/from16 v20, v9

    float-to-double v8, v5

    sub-double/2addr v13, v8

    mul-double v13, v13, v18

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    :cond_8
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v16

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x3e8

    goto/16 :goto_2

    :cond_9
    move-wide/from16 v16, v4

    :goto_5
    goto :goto_6

    :cond_a
    move-wide/from16 v16, v4

    move-wide/from16 v4, v16

    :goto_6
    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v8, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFRegion(JI)Z

    move-result v8

    return v8
.end method

.method private blacklist getAudioFormat()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    const-string v0, "getAudioFormat"

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

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

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist getAudioTime(JI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p1

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

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

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-lez v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_1

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    mul-long/2addr v9, v7

    add-long/2addr v4, v9

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sub-long v6, v2, v4

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    goto/16 :goto_5

    :cond_3
    :goto_1
    const/4 v6, 0x0

    :goto_2
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

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

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    cmp-long v9, p1, v9

    if-gez v9, :cond_4

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v9}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v10

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v11, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v11, v11

    mul-long/2addr v11, v7

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    goto :goto_4

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

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v9}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v10

    float-to-double v11, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v11, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    if-lez v11, :cond_5

    long-to-double v11, v4

    float-to-double v7, v10

    sub-double/2addr v7, v13

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    :cond_5
    long-to-double v7, v4

    float-to-double v11, v10

    sub-double/2addr v13, v11

    mul-double/2addr v13, v15

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x3e8

    goto/16 :goto_2

    :cond_7
    :goto_4
    add-long v6, v2, v4

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    :cond_8
    :goto_5
    return-void
.end method

.method private blacklist getLayerNumber([B)I
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isNoneSVC()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "TranscodeLib"

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v6, 0x12

    if-ne v1, v6, :cond_0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    rem-int/lit8 v1, v1, 0x10

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNumOfSVCLayers:I

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    if-ne v6, v1, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    rem-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_3

    const/4 v0, 0x3

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

    :cond_4
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v1, :cond_6

    aget-byte v1, p1, v7

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0x3f

    if-lt v2, v3, :cond_5

    if-gt v2, v6, :cond_5

    and-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v5

    move v0, v3

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

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

    goto :goto_2

    :cond_6
    aget-byte v1, p1, v7

    and-int/lit8 v1, v1, 0x1f

    const/16 v3, 0xe

    if-ne v1, v3, :cond_7

    aget-byte v1, p1, v5

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xe0

    ushr-int/lit8 v0, v1, 0x5

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

    return v0
.end method

.method private blacklist getMaxInputSize(Landroid/media/MediaFormat;)I
    .locals 3

    :try_start_0
    const-string v0, "max-input-size"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "TranscodeLib"

    const-string v2, "Audio max input size not defined"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getTimescale(JI)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

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

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

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

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    div-float v0, v3, v4

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

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private blacklist getVideoDecoderOutput(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderOutputBufferIndex(ILandroid/media/MediaCodec$BufferInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;-><init>(ILandroid/media/MediaCodec$BufferInfo;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist getandsendAudioToMuxer()V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

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

    iput v0, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-gez v3, :cond_0

    const-string v3, "saw input EOS: Audio"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    const/4 v3, 0x0

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    invoke-virtual {v3, v6, v1, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

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

    iget-wide v3, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist initAudioSlowV2()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v1

    if-eqz v1, :cond_0

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

    :goto_0
    return-void
.end method

.method private blacklist isDolbyAudioCodec(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audio/ac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/eac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

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

    :goto_1
    return v0
.end method

.method private blacklist isNoneSVC()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

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

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private blacklist isVideoDecoderAvailableCondition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-nez v0, :cond_1

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

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-nez v0, :cond_1

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

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist keepPrevPFrameForFastVideo(ZIJII)Z
    .locals 20

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

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

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

    const/4 v4, 0x1

    goto :goto_0

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

    const/4 v4, 0x1

    goto :goto_0

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

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move/from16 v4, p1

    :goto_0
    return v4
.end method

.method private blacklist keepPrevPFrameForSlowVideo(ZIJII)Z
    .locals 16

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

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v2

    div-double/2addr v14, v10

    mul-double/2addr v14, v12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v10

    add-double/2addr v8, v14

    double-to-long v8, v8

    cmp-long v4, v4, v8

    if-gez v4, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

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

    const-wide v8, 0x3ff7333333333333L    # 1.45

    div-double v10, v8, v6

    mul-double/2addr v10, v12

    double-to-long v6, v10

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move/from16 v4, p1

    :goto_0
    return v4
.end method

.method static synthetic blacklist lambda$getVideoDecoderOutput$0(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;->notifyFrameDecoded(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)V

    return-void
.end method

.method private blacklist preprocessAudioOutputFormat(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v3, -0x1

    new-instance v4, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    const/4 v6, 0x0

    if-nez v5, :cond_6

    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    const-wide/16 v7, 0x2710

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    invoke-direct {p0, v5, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderBufferIndex(I[Ljava/nio/ByteBuffer;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_2

    :cond_3
    :goto_3
    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->formatupdated:Z

    if-nez v5, :cond_1

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v2, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    invoke-direct {p0, v5, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkPendingAudioDecoderBufferIndex(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    const-string v7, "TranscodeLib"

    const-string v8, "audio decoder: codec config buffer"

    invoke-static {v7, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseInputAudioDecoder()V

    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private blacklist procSVCLayerDrop(JIIII)Z
    .locals 26

    move-object/from16 v7, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    sget-object v5, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move/from16 v9, p5

    move/from16 v6, p6

    invoke-virtual {v7, v9, v6}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x2

    mul-long v10, v10, p1

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p1

    :goto_0
    move-wide v12, v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[procSVCLayerDrop]SampleTime = tempSampleTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",layernum :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v15, p3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v16, v0

    const-string v0, ", maxlayernum : "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v17, v1

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isRegionListExist()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    move-wide/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v1, v17

    move/from16 v17, v2

    move/from16 v25, v6

    move v6, v0

    move/from16 v0, v16

    move/from16 v16, v25

    :goto_1
    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_9

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

    const/4 v0, 0x1

    const/4 v1, 0x0

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    move/from16 v21, v0

    move/from16 v22, v1

    goto :goto_2

    :cond_2
    move/from16 v21, v0

    move/from16 v22, v1

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

    if-nez v16, :cond_3

    const/16 v16, 0xf0

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v6

    move-wide v3, v10

    move/from16 v5, v16

    move v9, v6

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForSlowVideo(ZIJII)Z

    move-result v0

    move/from16 v17, v0

    goto/16 :goto_3

    :cond_4
    move v9, v6

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

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v0, v0

    mul-long v0, v0, v23

    cmp-long v0, v10, v0

    if-gez v0, :cond_7

    if-eqz v22, :cond_6

    if-nez v16, :cond_5

    const/16 v0, 0x1e

    move/from16 v16, v0

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v9

    move-wide v3, v10

    move/from16 v5, v16

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForFastVideo(ZIJII)Z

    move-result v17

    :cond_6
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v1

    iget-object v2, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v2, v2

    mul-long v2, v2, v23

    iget-object v4, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    float-to-long v0, v6

    mul-long/2addr v4, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    move-wide v12, v2

    move/from16 v2, v17

    move-object/from16 v5, v20

    move/from16 v0, v21

    move/from16 v1, v22

    goto :goto_4

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

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v6, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v23, v6

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTimeDelta(JFZZI)J

    move-result-wide v18

    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-object/from16 v20, v0

    :cond_8
    :goto_3
    add-int/lit8 v6, v9, 0x1

    move/from16 v9, p5

    move/from16 v0, v21

    move/from16 v1, v22

    goto/16 :goto_1

    :cond_9
    move v9, v6

    move/from16 v2, v17

    move-object/from16 v5, v20

    :goto_4
    add-long v3, v12, v18

    iput-wide v3, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    move v9, v0

    move/from16 v17, v1

    move-wide/from16 v20, v12

    move v12, v2

    move-object v13, v5

    goto :goto_5

    :cond_a
    move-wide/from16 v18, v3

    move-wide/from16 v20, v12

    move/from16 v9, v16

    move v12, v2

    move-object v13, v5

    move/from16 v16, v6

    :goto_5
    const/16 v22, 0x0

    const/16 v23, 0x1

    if-eqz v9, :cond_c

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v16

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkRetDropSlowMotion(ZIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z

    move-result v0

    if-eqz v0, :cond_b

    move/from16 v0, v23

    goto :goto_6

    :cond_b
    move/from16 v0, v22

    :goto_6
    move v8, v0

    :cond_c
    if-eqz v17, :cond_e

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, p5

    move/from16 v3, v16

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->checkRetDropFastMotion(ZIIIILcom/samsung/android/transcode/util/SEFHelper$Speed;)Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v22, v23

    :cond_d
    move/from16 v8, v22

    :cond_e
    return v8
.end method

.method private blacklist procSuperSlowVideo(JII)Z
    .locals 24

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v0, 0x0

    move-wide/from16 v13, p1

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

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isRegionListExist()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move-wide v5, v0

    move v15, v2

    :goto_0
    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_5

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

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v0

    mul-long v2, v2, v16

    cmp-long v0, v8, v2

    if-gez v0, :cond_2

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    if-ne v0, v1, :cond_1

    if-nez p4, :cond_0

    const/16 v0, 0x1e

    move/from16 v18, v0

    goto :goto_1

    :cond_0
    move/from16 v18, p4

    :goto_1
    move-object/from16 v0, p0

    move v1, v12

    move v2, v15

    move-wide/from16 v3, p1

    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    move/from16 v5, v18

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/transcode/core/EncodeBase;->keepPrevPFrameForFastVideo(ZIJII)Z

    move-result v0

    iget-object v1, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v2

    iget-object v3, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v3, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v3, v3

    mul-long v3, v3, v16

    iget-object v5, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    float-to-long v0, v12

    mul-long/2addr v5, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v5, v0

    add-long/2addr v3, v5

    const/4 v0, 0x1

    move/from16 v12, p4

    move-wide v13, v3

    goto/16 :goto_4

    :cond_1
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    const/4 v0, 0x0

    move/from16 v18, p4

    goto/16 :goto_4

    :cond_2
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    goto :goto_2

    :cond_3
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

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

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    if-ne v0, v1, :cond_4

    iget-object v0, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v0, v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v1

    long-to-double v2, v10

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v1

    sub-double/2addr v4, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    iget-object v6, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v8, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v6, v8

    int-to-double v8, v6

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    double-to-long v5, v2

    goto :goto_3

    :cond_4
    move-wide v5, v10

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v8, p1

    move/from16 v10, v19

    move/from16 v11, v20

    goto/16 :goto_0

    :cond_5
    move/from16 v19, v10

    move/from16 v20, v11

    move-wide v10, v5

    move/from16 v18, p4

    move/from16 v0, v19

    :goto_4
    add-long v5, v13, v10

    iput-wide v5, v7, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    move-wide/from16 v22, v10

    move v10, v0

    move-wide/from16 v0, v22

    goto :goto_5

    :cond_6
    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v18, p4

    :goto_5
    if-eqz v10, :cond_8

    if-eqz p3, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    move/from16 v11, v20

    :goto_6
    if-eqz v12, :cond_9

    const/4 v11, 0x0

    goto :goto_7

    :cond_8
    move/from16 v11, v20

    :cond_9
    :goto_7
    return v11
.end method

.method private blacklist releaseInputAudioDecoder()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing input audio decoder."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z
    .locals 5

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

    nop

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

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    int-to-long v1, v1

    const-wide/16 v3, 0x5355

    mul-long/2addr v1, v3

    add-long v11, v9, v1

    move-wide v1, v11

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowFast()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->getSlowfastSeektime(J)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v11, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->getSuperslowSeektime(J)J

    move-result-wide v1

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    if-nez v3, :cond_3

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioDrop(JI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioFollowHandle(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "presentationTime :"

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

    :cond_4
    move-wide v13, v1

    :goto_2
    move-object v1, p0

    move v2, v0

    move-wide v3, v9

    move-wide v5, v13

    move-wide v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSendAudioFollowHandle(IJJJ)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    :cond_5
    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private blacklist sendAudioToDecoder()V
    .locals 17

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

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    const/4 v3, -0x1

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSilentRegion(J)I

    move-result v3

    :cond_1
    const/4 v4, 0x0

    const-string v5, "TranscodeLib"

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Seekto region End time :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

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

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v6, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v6, v6

    mul-long/2addr v6, v9

    invoke-virtual {v5, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

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

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-eq v7, v6, :cond_7

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v6, v6, v7

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v6, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    iget-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlow120(II)Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/16 v8, 0x2

    mul-long/2addr v8, v1

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {v0, v8, v9, v10}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioTime(JI)V

    goto :goto_1

    :cond_4
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioTime(JI)V

    :cond_5
    :goto_1
    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    cmp-long v8, v1, v8

    if-gtz v8, :cond_6

    if-ltz v4, :cond_6

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-wide v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedAudiotime:J

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    const/4 v12, 0x0

    move v11, v7

    move v13, v4

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_2

    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    :goto_2
    iget-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    if-eqz v8, :cond_7

    const-string v8, "audio decoder sending EOS"

    invoke-static {v5, v8}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v14, 0x0

    const/16 v16, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v11, v7

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_7
    return-void
.end method

.method private blacklist sendAudioToEncoder(IJJJ)V
    .locals 23

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

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-ne v6, v11, :cond_0

    const-string v7, "audio encoder input buffer try again later"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_1

    invoke-direct {v0, v6, v1, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTempRadio(IIJ)V

    :cond_1
    iget-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    cmp-long v7, v4, v7

    if-lez v7, :cond_3

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    if-eq v7, v11, :cond_2

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v7, v8, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

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

    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->flush()V

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v2, v3, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_3
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_5

    const-string v7, "audio decoder: EOS"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    if-eq v7, v11, :cond_4

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v7, v8, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    :cond_4
    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    :cond_5
    :goto_0
    move-wide/from16 v6, p2

    goto/16 :goto_4

    :cond_6
    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v6, :cond_7

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    if-lez v6, :cond_7

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioLoopCount(J)V

    return-void

    :cond_7
    if-ltz v1, :cond_b

    const-wide/16 v13, 0x0

    cmp-long v6, p2, v13

    if-ltz v6, :cond_b

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    if-nez v6, :cond_8

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecAudio(IZ)I

    :cond_8
    move-wide/from16 v20, p2

    :goto_1
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v13, :cond_a

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-ne v6, v11, :cond_9

    const-string v7, " audio encoder input buffer try again later"

    invoke-static {v10, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v15, v13, v6

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v15, v13, v14, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v14, v11

    invoke-static {v7, v8, v13, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v11, 0x0

    move v14, v6

    move-object/from16 v22, v15

    move v15, v11

    move/from16 v16, v7

    move-wide/from16 v17, v20

    move/from16 v19, v8

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const-wide/16 v7, 0x5355

    add-long v20, v20, v7

    const-wide/16 v7, 0x2710

    const/4 v11, -0x1

    goto :goto_1

    :cond_a
    :goto_2
    move-wide/from16 v6, v20

    goto :goto_3

    :cond_b
    move-wide/from16 v6, p2

    :goto_3
    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-ge v8, v11, :cond_c

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v8, v9, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v8, -0x1

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    iput-boolean v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_d

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderEOSNotWaitFrameCase(J)Z

    goto :goto_4

    :cond_c
    const-string v8, "Not finished yet"

    invoke-static {v10, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    :cond_d
    :goto_4
    return-void
.end method

.method private blacklist sendAudioToEncoder_AudioSolution(IJJ)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecAudio(IZ)I

    move-result v10

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

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-ne v3, v2, :cond_4

    :cond_0
    if-lez v1, :cond_4

    sget-wide v16, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v3, v16, v8

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v16

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_1

    move-wide/from16 v7, p4

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioDecoderEOS(J)V

    return-void

    :cond_1
    move-wide/from16 v7, p4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v6, "VSPExe2 is called"

    invoke-static {v15, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v6, v2

    mul-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v4, v2

    mul-int/2addr v4, v5

    invoke-virtual {v3, v6, v9, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v6, v2

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

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

    :goto_0
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v9, :cond_3

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-ne v6, v12, :cond_2

    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v9, v9, v6

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v9, v12, v13, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    move/from16 v20, v2

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    move-object/from16 v21, v3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v12, v13, v14, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v24, 0x0

    move-object/from16 v22, v2

    move/from16 v23, v6

    move/from16 v25, v3

    move-wide/from16 v26, v4

    move/from16 v28, v12

    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const-wide/16 v2, 0x5355

    add-long/2addr v4, v2

    move/from16 v2, v20

    move-object/from16 v3, v21

    const/4 v12, -0x1

    const-wide/16 v13, 0x2710

    goto :goto_0

    :cond_3
    move/from16 v20, v2

    move-object/from16 v21, v3

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v2

    if-eqz v2, :cond_8

    if-lez v1, :cond_8

    sget-wide v2, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_8

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v3, "SRCExe2 is called"

    invoke-static {v15, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v4, v3

    mul-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_5

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v4, v3

    mul-int/2addr v4, v5

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/transcode/core/EncodeBase;->audioVolume(Ljava/nio/ByteBuffer;I)V

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v7, v3

    mul-int/2addr v7, v5

    invoke-virtual {v2, v4, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v6, v3

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-wide/from16 v4, p2

    :goto_1
    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v6, v7, :cond_7

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v6

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v7, v8, v9, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-static {v8, v9, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v14, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v24, 0x0

    move-object/from16 v22, v8

    move/from16 v23, v6

    move/from16 v25, v9

    move-wide/from16 v26, v4

    move/from16 v28, v12

    invoke-virtual/range {v22 .. v28}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const-wide/16 v8, 0x5355

    add-long/2addr v4, v8

    goto :goto_1

    :cond_7
    goto :goto_2

    :cond_8
    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    invoke-static {v15, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v11, v3, v2

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x0

    move v4, v2

    move v6, v10

    move-wide/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    :cond_a
    move-wide/from16 v4, p2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkDecoderFinish()Z

    return-void
.end method

.method private blacklist sendAudioToMuxer()V
    .locals 4

    nop

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

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saw input EOS: Audio audioEncoderDone: "

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

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioEncoderOutputBufferIndex()Z

    move-result v0

    if-nez v0, :cond_0

    nop

    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist sendAudioToMuxer(IJJ)V
    .locals 28

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

    :goto_0
    const/4 v6, 0x1

    if-ltz v1, :cond_d

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

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

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v21, v7

    move-object v4, v9

    move v5, v12

    move-object v6, v13

    goto/16 :goto_4

    :cond_2
    :goto_1
    if-lez v1, :cond_9

    sget-wide v20, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    cmp-long v5, v20, v10

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v5, v5, v15

    if-lez v5, :cond_7

    move-wide/from16 v10, p4

    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/transcode/core/EncodeBase;->getRegionNumber(J)I

    move-result v5

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

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    const-string v12, "audio decoder: EOS"

    if-ge v5, v8, :cond_4

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    move-object/from16 v21, v7

    int-to-long v6, v13

    mul-long/2addr v6, v14

    invoke-virtual {v8, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

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

    int-to-long v4, v8

    mul-long/2addr v4, v14

    cmp-long v4, v6, v4

    if-gez v4, :cond_5

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move v5, v13

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move v13, v5

    move-object/from16 v21, v7

    invoke-static {v9, v12}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    :cond_5
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseOutputBuffer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    invoke-static {v9, v12}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    :cond_6
    return-void

    :cond_7
    move-wide/from16 v10, p4

    move-object/from16 v21, v7

    const v4, 0x64000

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v5, "VSPExe2 is called"

    invoke-static {v9, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v5, Lcom/samsung/android/transcode/core/EncodeBase;->sVSPHandle:J

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v7, v1, v7

    move-object v15, v9

    move-wide v9, v5

    move-object v11, v4

    move v5, v12

    move-object/from16 v12, v21

    move-object v6, v13

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v7

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v8, v7

    mul-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v10, v7

    mul-int/2addr v10, v5

    invoke-virtual {v4, v8, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v7

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

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

    :goto_3
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v5, v8, :cond_8

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v5, v8, v9, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-long v2, v2, v17

    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v9, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object v11, v5

    move/from16 v19, v12

    move-object v12, v13

    move-wide/from16 p2, v2

    move-object v2, v13

    move/from16 v13, v19

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v3, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v8, v9, v2, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    add-long v8, v8, v17

    iput-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-wide/from16 v2, p2

    goto/16 :goto_3

    :cond_8
    goto/16 :goto_6

    :cond_9
    move-object/from16 v21, v7

    move-object v4, v9

    move v5, v12

    move-object v6, v13

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v7

    if-eqz v7, :cond_c

    if-lez v1, :cond_c

    sget-wide v7, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_c

    const v7, 0x64000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v8, "SRCExe2 is called"

    invoke-static {v4, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v9, Lcom/samsung/android/transcode/core/EncodeBase;->sSRCHandle:J

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    div-int v11, v1, v11

    div-int/lit8 v13, v11, 0x2

    move-object/from16 v11, v21

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v8

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v8

    mul-int/2addr v9, v5

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    cmpl-float v9, v9, v15

    if-eqz v9, :cond_a

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v9, v8

    mul-int/2addr v9, v5

    invoke-virtual {v0, v7, v9}, Lcom/samsung/android/transcode/core/EncodeBase;->audioVolume(Ljava/nio/ByteBuffer;I)V

    :cond_a
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v11, v8

    mul-int/2addr v11, v5

    invoke-virtual {v7, v9, v10, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v10, v8

    mul-int/2addr v10, v5

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_5
    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    if-lt v5, v9, :cond_b

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    invoke-virtual {v5, v9, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    add-long v2, v2, v17

    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v23, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v22, v10

    move-object/from16 v25, v5

    move-object/from16 v26, v9

    move/from16 v27, v11

    invoke-virtual/range {v22 .. v27}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v10

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

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v10, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v12, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v11, v12, v9, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    add-long v11, v11, v17

    iput-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_5

    :cond_b
    goto :goto_6

    :cond_c
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v7, v21

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v23, Lcom/samsung/android/transcode/core/EncodeBase;->sNAACHandle:J

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    move-object/from16 v22, v9

    move-object/from16 v25, v5

    move-object/from16 v26, v8

    move/from16 v27, v10

    invoke-virtual/range {v22 .. v27}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v9

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

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v9, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v10, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v6, v8, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    add-long v10, v10, v17

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

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

    :goto_7
    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mPausedVideoUs:J

    invoke-virtual {v0, v6, v7, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    return-void
.end method

.method private blacklist sendVideoFramesToMuxer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkEncoderOutputBufferIndex(I)Z

    move-result v0

    const-string v1, "TranscodeLib"

    if-nez v0, :cond_0

    const-string v0, "video encoder: sendVideoFramesToMuxer condition error"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "video encoder: codec config buffer"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    :cond_1
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video encoder: writing sample data timestamp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    invoke-virtual {v2, v4, v0, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

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

    :goto_0
    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v4, v5, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->updateProgress(JZ)V

    :cond_2
    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    const-string v2, "video encoder: EOS"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

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

    :goto_1
    return-void
.end method

.method private blacklist setDecodeMaxInputSize(Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "max-input-size"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v1, "width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v3, "height"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    mul-int v4, v1, v3

    const v5, 0x7e9000

    if-le v4, v5, :cond_0

    const/high16 v2, 0xf00000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x800000

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private blacklist setOrientation(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRotation:I

    add-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x168

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x10e

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xb4

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    nop

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

    const/4 v0, 0x2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const-string v0, "TranscodeLib"

    const-string v1, "Audio ac3 type :  mOutputAudioChannelCount is changed."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static blacklist unsignedIntToLong([B)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    shl-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected blacklist audioVolume(Ljava/nio/ByteBuffer;I)V
    .locals 10

    const v0, 0x3dcccccd    # 0.1f

    div-int/lit8 v1, p2, 0x4

    const/4 v2, 0x0

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

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    int-to-short v5, v5

    const v6, 0xffff

    and-int v7, v5, v6

    int-to-short v5, v7

    int-to-float v7, v5

    mul-float/2addr v7, v0

    float-to-int v7, v7

    int-to-short v5, v7

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const v7, 0xff00

    and-int v8, v5, v7

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    int-to-short v5, v8

    and-int/2addr v6, v5

    int-to-short v5, v6

    int-to-float v6, v5

    mul-float/2addr v6, v0

    float-to-int v6, v6

    int-to-short v5, v6

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int v6, v5, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x2

    nop

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method protected blacklist calculateIsDrop([BJ)Z
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->getLayerNumber([B)I

    move-result v8

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowFastExceptSlowV2120NoneSVC()Z

    move-result v1

    const-string v9, "TranscodeLib"

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSuperSlow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    invoke-direct {p0, p2, p3, v8, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->procSuperSlowVideo(JII)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,mModifiedVideotime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "Need to check recording mode and SEF data"

    invoke-static {v9, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNumOfSVCLayers:I

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

    move-object v1, p0

    move-wide v2, p2

    move v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/transcode/core/EncodeBase;->procSVCLayerDrop(JIIII)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layerNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDrop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mModifiedVideotime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0
.end method

.method protected blacklist checkDecAudio(IZ)I
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    div-int v1, p1, v1

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginalAudioChannelCount:I

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v5, 0x0

    :goto_0
    div-int v6, p1, v4

    if-ge v5, v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    if-ge v6, v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    mul-int v8, v5, v3

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    mul-int v9, v5, v4

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    mul-int v8, v5, v3

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    mul-int v9, v5, v4

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    goto :goto_2

    :cond_2
    move v1, p1

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_2
    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    :cond_3
    return v1
.end method

.method protected blacklist checkDecoderFinish()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    const/4 v2, 0x0

    const-string v3, "TranscodeLib"

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

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

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    :cond_0
    return v1

    :cond_1
    const-string v0, "Not finished yet"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method protected blacklist checkMuxerStart()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_6

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    :goto_0
    nop

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "param-meta-author"

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "param-meta-transcoding"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "param-meta-recording-mode"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set recording mode for NDE : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mExportRecordingMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TranscodeLib"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v4, "param-meta-brand-model-name"

    invoke-virtual {v1, v4, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoTrackIndex:I

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioTrackIndex:I

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputOrientationDegrees:I

    invoke-virtual {v1, v3}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMuxerStarted:Z

    :cond_6
    return-void
.end method

.method protected blacklist checkOutputVideoBitRate()V
    .locals 10

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputMaxSizeKB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->m2ndTimeEncoding:Z

    if-nez v0, :cond_0

    const-string v0, "video/avc"

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSizeFraction:F

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7d00

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    if-ne v0, v1, :cond_3

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

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/samsung/android/transcode/info/ExportMediaInfo;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    iget v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isHDR10Plus()Z

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/transcode/info/ExportMediaInfo;-><init>(IIILjava/lang/String;Z)V

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    :cond_3
    :goto_0
    return-void
.end method

.method protected blacklist checkSourceFrameRate(Landroid/media/MediaFormat;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    :try_start_0
    const-string v0, "frame-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfo;->getVideoFramerate()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    :cond_1
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v1, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    return-void
.end method

.method protected blacklist checkTrimAudioEndUs(Landroid/media/MediaFormat;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "durationUs"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioEndUs:J

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

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist createVideoEncoder()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkOutputVideoFrameRate()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkOutputVideoBitRate()V

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

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->supportHierB()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    const-string v4, "video/hevc"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isHLG()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v4, 0x2

    const-string v5, "ro.hardware"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "qcom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x3

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.generic."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ts-schema"

    invoke-virtual {v0, v7, v6}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "max-bframes"

    invoke-virtual {v0, v6, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const-string v2, "color-format"

    const v4, 0x7f000789

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "priority"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkBitrateMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "bitrate-mode"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-nez v2, :cond_3

    const-string v2, "color-standard"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "output video format "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setVideoEncoderAsyncCallback()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v1, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    return-void
.end method

.method protected blacklist createVideoExtractor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    :goto_0
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->setOrientation(I)V

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist getRegionNumber(J)I
    .locals 6

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

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

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

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

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

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected blacklist getSlowfastSeektime(J)J
    .locals 15

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    const-wide/16 v1, -0x1

    return-wide v1

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v9, v9

    mul-long/2addr v9, v7

    sub-long v7, v9, v5

    const v11, 0x49742400    # 1000000.0f

    mul-float/2addr v11, v4

    float-to-long v11, v11

    mul-long/2addr v11, v7

    const-wide/32 v13, 0xf4240

    div-long/2addr v11, v13

    add-long v13, v5, v1

    cmp-long v13, p1, v13

    if-ltz v13, :cond_1

    add-long v13, v11, v5

    add-long/2addr v13, v1

    cmp-long v13, p1, v13

    if-gtz v13, :cond_1

    sub-long v13, p1, v5

    sub-long/2addr v13, v1

    long-to-float v13, v13

    div-float/2addr v13, v4

    float-to-long v13, v13

    add-long/2addr v13, v5

    goto :goto_2

    :cond_1
    add-long v13, v11, v5

    add-long/2addr v13, v1

    cmp-long v13, p1, v13

    if-lez v13, :cond_2

    sub-long v13, v11, v7

    add-long/2addr v1, v13

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v3, v13, :cond_4

    sub-long v13, p1, v1

    goto :goto_2

    :cond_2
    add-long v13, v5, v1

    cmp-long v13, p1, v13

    if-gez v13, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    sub-long v13, p1, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    move-wide/from16 v13, p1

    :goto_2
    nop

    return-wide v13

    :cond_6
    const-string v1, "TranscodeLib"

    const-string v2, "There is no region info."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p1
.end method

.method protected blacklist getSuperslowSeektime(J)J
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-wide/16 v3, -0x1

    return-wide v3

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    const-string v4, "TranscodeLib"

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    const-wide/16 v5, 0x0

    move-wide/from16 v7, p1

    const/4 v3, 0x0

    :goto_0
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v9, v9, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v13, v13

    mul-long/2addr v13, v11

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v1, v15

    mul-long/2addr v1, v11

    sub-long v11, v13, v1

    const/4 v15, 0x0

    move/from16 v16, v15

    iget-object v15, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    const/16 v0, 0x9

    if-ne v15, v0, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, v16

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v11

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

    const-string v9, ", i :"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v7, v1

    if-ltz v0, :cond_3

    cmp-long v0, v7, v13

    if-gtz v0, :cond_3

    if-eqz v15, :cond_2

    add-long v5, v5, v16

    add-long v7, v7, v16

    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_7

    add-long v9, v11, v5

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    cmp-long v9, v7, v13

    if-lez v9, :cond_5

    if-eqz v15, :cond_4

    add-long v5, v5, v16

    add-long v7, v7, v16

    :cond_4
    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mRegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_7

    add-long v9, v11, v5

    goto :goto_3

    :cond_5
    cmp-long v9, v7, v1

    if-gez v9, :cond_7

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    add-long v9, v11, v5

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    move-wide v1, v11

    goto/16 :goto_0

    :cond_8
    move-wide v11, v1

    :goto_2
    move-wide v9, v11

    :goto_3
    nop

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

    return-wide v9

    :cond_9
    move-wide v11, v1

    const-string v1, "There is no region info."

    invoke-static {v4, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v11
.end method

.method protected blacklist initialize_audio()V
    .locals 4

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

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderOutputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractorDone:Z

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioDecoderDone:Z

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLastAudioSampleWrittenTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPendingAudioDecoderOutputBufferIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioWaitFrame:Z

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioLoopCount:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTimescale:F

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderInputBufferCount:I

    const v2, 0x64000

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioBuffer:[B

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioLength:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioOffset:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    mul-int/lit16 v2, v2, 0x800

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTempAudioEncSize:I

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecAudio:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mkeepAudioFrame:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    return-void
.end method

.method protected blacklist initialize_video()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoFramesWritten:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSkippedFramesCount:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mNaccTime:J

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mFramesCount:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mLayer2Count:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    new-instance v0, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-direct {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    return-void
.end method

.method protected blacklist isSlow120(II)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    const/16 v0, 0x78

    if-ne p2, v0, :cond_0

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

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method protected blacklist isSlowV2()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

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

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

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

.method synthetic blacklist lambda$preprocessAudioOutputFormat$1$com-samsung-android-transcode-core-EncodeBase()V
    .locals 1

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

    const-string v0, "TranscodeLib"

    const-string v1, "prepare video and audio codec"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAsyncCodecReleased:[Z

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v1

    aput-boolean v2, v0, v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareVideoCodec()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareAudioCodec()V

    return-void
.end method

.method protected blacklist prepareAudioCodec()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createAudioExtractor()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMute:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkCopyAudio(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->checkTrimAudioEndUs(Landroid/media/MediaFormat;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio input format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sample-rate"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    const-string v2, "channel-count"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/transcode/core/EncodeBase;->isDolbyAudioCodec(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->preprocessAudioOutputFormat(Ljava/lang/String;Landroid/media/MediaFormat;)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->getMaxInputSize(Landroid/media/MediaFormat;)I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->checkAudioChannelCount()Z

    move-result v5

    if-nez v5, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createAudioHandle()V

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMimeType:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioSampleRateHZ:I

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioChannelCount:I

    invoke-static {v5, v6, v7}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    if-eqz v4, :cond_5

    const-string v6, "max-input-size"

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_5
    const-string v6, "bitrate"

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioBitRate:I

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "aac-profile"

    iget v7, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioAACProfile:I

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

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

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->createInputAudioDecoder(Ljava/lang/String;Landroid/media/MediaFormat;)V

    return-void

    :cond_6
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    return-void
.end method

.method protected blacklist prepareForRewrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncoding:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareVideoCodecNeo()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->prepareAudioCodec()V

    return-void
.end method

.method protected blacklist prepareVideoCodec()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createVideoExtractor()V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->supportConverter()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mConvert:Z

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isHDR10()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isHLG()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "ro.hardware.chipname"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "exynos2100"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "vendor.sec-dec-output.image-convert.value"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "vendor.sec-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "vendor.sec-dec-output.buffers.usage.value"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v5, "sm8350"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "vendor.qti-ext-dec-forceNonUBWC.value"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "vendor.qti-ext-imageformat-filter-enabled.value"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "vendor.qti-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v5, "color-transfer-request"

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_0
    invoke-direct {v1, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->setDecodeMaxInputSize(Landroid/media/MediaFormat;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input video format: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "TranscodeLib"

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_4

    const-string v0, "durationUs"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/transcode/core/EncodeBase;->setOriginalTrimTime(J)V

    :cond_4
    invoke-virtual {v1, v3}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSourceFrameRate(Landroid/media/MediaFormat;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->createVideoEncoder()V

    :try_start_0
    const-string v0, "width"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v6, "height"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    move v15, v6

    int-to-float v6, v0

    int-to-float v7, v15

    div-float v16, v6, v7

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    int-to-float v6, v6

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    int-to-float v7, v7

    div-float v17, v6, v7

    cmpl-float v6, v16, v17

    if-lez v6, :cond_5

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    mul-int/2addr v7, v15

    div-int/2addr v7, v0

    const/4 v8, 0x0

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    sub-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    goto :goto_1

    :cond_5
    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    move v7, v6

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputHeight:I

    mul-int/2addr v6, v0

    div-int/2addr v6, v15

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputWidth:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    const/4 v9, 0x0

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    :goto_1
    new-instance v14, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    sget-object v6, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v7, v6, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    iget-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    move-object v6, v14

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v18

    move/from16 v11, v19

    move v12, v0

    move/from16 v22, v13

    move v13, v15

    move-object v4, v14

    move/from16 v14, v22

    invoke-direct/range {v6 .. v14}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(IIIIIIIZ)V

    iput-object v4, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v4, "Can\'t get input video resolution"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {v4, v5}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v4, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    :goto_2
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mMMSMode:Z

    if-nez v0, :cond_6

    const-string v0, "priority"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_6
    nop

    const-string v0, "mime"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeBase;->setVideoDecoderAsyncCallback()V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected blacklist prepareVideoCodecNeo()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputUri or mContext  is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_9

    :goto_0
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoBitRate:I

    :cond_2
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIs360Video:Z

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->setOrientation(I)V

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAuthor:I

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingMode:I

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRecordingFps:I

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

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUseUri:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

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

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    const-string v3, "durationUs"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSMConvert:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v3

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    mul-long/2addr v9, v7

    invoke-virtual {v3, v9, v10}, Lcom/samsung/android/transcode/util/SEFHelper;->getEditedDuration(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v3, v7

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    :cond_5
    :goto_2
    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

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

    :cond_6
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    :try_start_0
    const-string v3, "frame-rate"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    :goto_3
    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    if-lez v3, :cond_7

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSourceFrameRate:I

    iput v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoFrameRate:I

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

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputAudioinfo:Landroid/media/MediaFormat;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isRewritable(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

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

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mRewritable:Z

    if-eqz v1, :cond_8

    return-void

    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Unable to handle input file"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist pushSampleDataToDecoderInputBuffer(IIJZ)V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    cmp-long v1, p3, v1

    if-gtz v1, :cond_1

    if-ltz p2, :cond_1

    if-nez p5, :cond_0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    const/4 v5, 0x0

    move/from16 v4, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move/from16 v11, p1

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    :cond_1
    const-string v1, "TranscodeLib"

    const-string v2, "video extractor: EOS "

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_1
    return-void
.end method

.method protected blacklist releaseFramemanager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->queSize()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->dequeueFrame()Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    return-void
.end method

.method protected blacklist sendFrametoEncoder()V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isVideoEncoderAvailableCondition()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->queSize()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;->dequeueFrame()Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeBase;->releaseOutputBufferOfVideoDecoder(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)Z

    move-result v2

    const-string v3, "TranscodeLib"

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    iget-wide v4, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->presentationTimeUs:J

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    iget-wide v4, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->presentationTimeUs:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/transcode/core/EncodeBase;->checkSkipFrames(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    const-string v5, "Surface frame wait timed out"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_5
    :goto_1
    iget v2, v1, Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    const-string v2, "video decoder: EOS"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoDecoderDone:Z

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_2

    :cond_6
    goto/16 :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method protected blacklist sendVideoToDecoder(I)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    iput-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v5, v3

    invoke-virtual {v0, v3, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v3, v9, v10}, Lcom/samsung/android/transcode/core/EncodeBase;->calculateIsDrop([BJ)Z

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mModifiedVideotime:J

    iget-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mIsDrop:Z

    move-object v3, p0

    move v4, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/transcode/core/EncodeBase;->pushSampleDataToDecoderInputBuffer(IIJZ)V

    return-void
.end method

.method protected blacklist setOriginalTrimTime(J)V
    .locals 5

    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoEndUs:J

    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSEFVideo:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->isSlowV2()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getEditedDuration(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v3, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

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

    return-void
.end method

.method protected blacklist setVideoDecoderAsyncCallback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/samsung/android/transcode/core/EncodeBase$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/core/EncodeBase$2;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    return-void
.end method

.method protected blacklist setVideoEncoderAsyncCallback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/samsung/android/transcode/core/EncodeBase$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/transcode/core/EncodeBase$1;-><init>(Lcom/samsung/android/transcode/core/EncodeBase;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    return-void
.end method

.method protected blacklist startAudioEncoding()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToDecoder()V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioDecoderOutput()V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioDecoderOutput()V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendAudioToMuxer()V

    return-void
.end method

.method protected blacklist startAudioRewriting()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getAudioFormat()V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->getandsendAudioToMuxer()V

    return-void
.end method

.method protected blacklist startEncoding()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "startEncoding"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initialize_video()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->initialize_audio()V

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimVideoStartUs:J

    invoke-virtual {v0, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVideoEncoderDone:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioEncoderDone:Z

    if-nez v0, :cond_9

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mConvert:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startAudioRewriting()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startAudioEncoding()V

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->startVideoDecoding()V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeBase;->sendFrametoEncoder()V

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    if-eqz v0, :cond_3

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding abruptly stopped mUserStop ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mUserStop:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCodecError? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCodecError:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_9
    return-void
.end method

.method protected blacklist startVideoDecoding()V
    .locals 2

    const-string v0, "TranscodeLib"

    const-string v1, " starts transcoding"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderFrameManager:Lcom/samsung/android/transcode/unit/decoder/DecoderFrameManager;

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mDecoderReleaseListener:Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mPrepared:Z

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method protected blacklist supportConverter()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HDR2SDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateCreationTime(Ljava/lang/String;Z)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCreationTime mode : "

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

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    const-string v0, "Do not update CreationTime"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    const/4 v0, 0x4

    new-array v7, v0, [B

    new-array v8, v0, [B

    new-array v9, v0, [B

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-gtz v0, :cond_1

    const-string v0, "file size is same or less than 0"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    const-string v0, "stbl"

    const-string v14, "trak"

    const-string v15, "mdia"

    const-string v12, "minf"

    const-string v13, "moov"

    filled-new-array {v15, v12, v13, v0, v14}, [Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const/4 v13, 0x0

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v14, "rw"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v20, v6

    goto/16 :goto_8

    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v14, "r"

    invoke-direct {v0, v6, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    move-object v14, v0

    const-wide/16 v18, 0x0

    move-object/from16 v20, v6

    move-wide/from16 v5, v18

    :goto_1
    cmp-long v0, v5, v10

    if-gez v0, :cond_8

    :try_start_2
    invoke-virtual {v14, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    array-length v0, v7

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeBase;->unsignedIntToLong([B)J

    move-result-wide v18

    array-length v0, v8

    invoke-virtual {v14, v8, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v0, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v8, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v12, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15

    move/from16 v21, v15

    const-wide/16 v22, 0x8

    if-ltz v21, :cond_3

    add-long v5, v5, v22

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    goto/16 :goto_4

    :cond_3
    const-string v15, "mvhd"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_5

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    :try_start_4
    array-length v13, v9

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    sget-object v13, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    sget-object v15, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v15, v15

    const/4 v2, 0x0

    invoke-virtual {v14, v13, v2, v15}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    sget-object v13, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v13, v13

    const/4 v15, 0x0

    invoke-virtual {v14, v2, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    sget-object v13, Lcom/samsung/android/transcode/core/EncodeBase;->mCreationTime:[B

    array-length v13, v13

    const/4 v15, 0x0

    invoke-virtual {v14, v2, v15, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeBase;->mUpdateCreationTime:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    nop

    :goto_3
    move v13, v4

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    move v13, v4

    goto :goto_5

    :cond_5
    const-wide/16 v24, 0x1

    cmp-long v2, v18, v24

    if-nez v2, :cond_6

    move-object v2, v0

    add-long v0, v5, v22

    :try_start_5
    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v0, v15, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    add-long v5, v5, v22

    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_6
    move-object v2, v0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    cmp-long v0, v18, v16

    if-nez v0, :cond_7

    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    move v13, v0

    goto :goto_7

    :cond_7
    add-long v5, v5, v18

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_1

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

    :goto_6
    throw v1

    :cond_8
    :goto_7
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v20, v6

    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_9
    return v13
.end method

.method protected blacklist updateProgress(JZ)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mCopyAudio:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mAudioProgressTime:J

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mVidioProgressTime:J

    :goto_1
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimEndUs:J

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mOriginTrimStartUs:J

    sub-long/2addr v4, v6

    div-long/2addr v2, v4

    long-to-int v2, v2

    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mProgress:I

    if-le v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProgress: audioProgressTime: "

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

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onProgressChanged(I)V

    iput v2, p0, Lcom/samsung/android/transcode/core/EncodeBase;->mProgress:I

    :cond_3
    return-void
.end method
