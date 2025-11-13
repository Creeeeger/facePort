.class public abstract Lcom/samsung/android/transcode/core/Encode;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;,
        Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;,
        Lcom/samsung/android/transcode/core/Encode$ConfigType;,
        Lcom/samsung/android/transcode/core/Encode$CodecType;
    }
.end annotation


# static fields
.field protected static final blacklist INVALID_OUTPUT_BIT_RATE:I = -0x1

.field private static final blacklist ONE_BILLION:J = 0x3b9aca00L

.field protected static final blacklist ORIENTATION_0:I = 0x0

.field protected static final blacklist ORIENTATION_180:I = 0xb4

.field protected static final blacklist ORIENTATION_270:I = 0x10e

.field protected static final blacklist ORIENTATION_90:I = 0x5a

.field protected static final blacklist SUPER_SLOW_SPEED_CANCEL:I = 0x9

.field private static final blacklist VERSION:Ljava/lang/String; = "4.72"


# instance fields
.field protected blacklist m2ndTimeEncoding:Z

.field protected blacklist mAudioTrackIndex:I

.field protected blacklist mCodecError:Z

.field protected blacklist mConvert:Z

.field protected blacklist mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

.field protected blacklist mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

.field protected blacklist mFramesSkipInterval:I

.field protected blacklist mHDRType:I

.field protected blacklist mInputAudioDecoder:Landroid/media/MediaCodec;

.field protected blacklist mInputVideoDecoder:Landroid/media/MediaCodec;

.field protected blacklist mIsHLG:Z

.field protected blacklist mKeepSourceFrameRate:Z

.field protected blacklist mMMSMode:Z

.field protected blacklist mMuxer:Landroid/media/MediaMuxer;

.field protected blacklist mMuxerStarted:Z

.field protected blacklist mOriginalAudioChannelCount:I

.field protected blacklist mOutputAudioAACProfile:I

.field protected blacklist mOutputAudioBitRate:I

.field protected blacklist mOutputAudioChannelCount:I

.field protected blacklist mOutputAudioEncoder:Landroid/media/MediaCodec;

.field protected blacklist mOutputAudioMimeType:Ljava/lang/String;

.field protected blacklist mOutputAudioMute:Z

.field protected blacklist mOutputAudioSampleRateHZ:I

.field protected blacklist mOutputFilePath:Ljava/lang/String;

.field protected blacklist mOutputFormat:I

.field protected blacklist mOutputHeight:I

.field protected blacklist mOutputMaxSizeKB:J

.field protected blacklist mOutputVideoBitRate:I

.field protected blacklist mOutputVideoEncoder:Landroid/media/MediaCodec;

.field protected blacklist mOutputVideoFrameRate:I

.field protected blacklist mOutputVideoIFrameInterval:I

.field protected blacklist mOutputVideoMimeType:Ljava/lang/String;

.field protected blacklist mOutputVideoTargetFrameRate:I

.field protected blacklist mOutputWidth:I

.field protected volatile blacklist mPrepared:Z

.field protected blacklist mProgress:I

.field protected blacklist mRewritable:Z

.field protected blacklist mSMConvert:Z

.field protected blacklist mSMEncode:Z

.field protected blacklist mSizeFraction:F

.field protected blacklist mSkipFrames:Z

.field protected blacklist mSourceFrameRate:I

.field protected volatile blacklist mUserStop:Z

.field protected blacklist mVideoTrackIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    const-string v1, "video/avc"

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    const/16 v2, 0x1e

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoTargetFrameRate:I

    const-string v3, "audio/mp4a-latm"

    iput-object v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const v4, 0x1f400

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    const v3, 0xac44

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMute:Z

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mPrepared:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mCodecError:Z

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mRewritable:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mKeepSourceFrameRate:Z

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mSourceFrameRate:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mIsHLG:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mProgress:I

    return-void
.end method

.method public static blacklist getLibraryVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "TranscodeLib"

    const-string v1, "getLibraryVersion  : Transcode Framework v.4.72"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "4.72"

    return-object v0
.end method

.method private blacklist prepareListener()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mProgress:I

    const-string v0, "TranscodeLib"

    const-string v1, "starting to encode"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onStarted()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onStarted()V

    :cond_1
    return-void
.end method

.method private blacklist printVersionInfo()V
    .locals 2

    const-string v0, "TranscodeLib"

    const-string v1, "Transcode Framework v.4.72"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist releaseListener()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    const/4 v1, 0x0

    const-string v2, "calling onCompleted"

    const-string v3, "user stopped. Not calling onCompleted"

    const-string v4, "TranscodeLib"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v0, :cond_0

    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_0

    :cond_0
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v0, :cond_2

    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onCompleted()V

    goto :goto_1

    :cond_2
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    :cond_3
    return-void
.end method


# virtual methods
.method protected blacklist computePresentationTimeNsec(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist encode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->setupAndExecuteEncode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    nop

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generated output file size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v3, :cond_4

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    long-to-double v5, v1

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    div-double/2addr v5, v7

    iget-wide v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    long-to-double v7, v7

    cmpl-double v3, v5, v7

    if-lez v3, :cond_4

    instance-of v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not clean up file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    long-to-float v5, v5

    mul-float/2addr v3, v5

    const/high16 v5, 0x44800000    # 1024.0f

    mul-float/2addr v3, v5

    long-to-float v5, v1

    div-float/2addr v3, v5

    const v5, 0x3d4ccccd    # 0.05f

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file size("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") exceeded the expected("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") size limit. new fraction :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    iput v7, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    mul-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    :goto_0
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v7, 0xb0

    if-ne v6, v7, :cond_2

    const/16 v6, 0x80

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v6, 0x60

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    :cond_2
    :try_start_1
    const-string v6, "2nd time starting encoder preparation"

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    const-string v5, "2nd time encoder preparation done."

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/media/MediaMuxer;

    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v5, v6, v7}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    const-string v3, "2nd time starting to encode"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMEncoding()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    :goto_1
    const-string v3, "2nd time encoding finished."

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2nd generated output size : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v3

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->releaseListener()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v0
.end method

.method protected blacklist isHDR10()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected blacklist isHDR10Plus()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected blacklist isHLG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mIsHLG:Z

    return v0
.end method

.method protected abstract blacklist prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract blacklist prepareForRewrite()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract blacklist release()V
.end method

.method public blacklist rewrite()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "TranscodeLib"

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    :try_start_0
    const-string v1, "starting Rewrite prepartion"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareForRewrite()V

    const-string v1, "Rewrite preparation done."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareListener()V

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mRewritable:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startRewriting()V

    const-string v1, "Rewrite finished."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    nop

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->releaseListener()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t rewirte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v0
.end method

.method public blacklist setEncodeProgressListener(Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    return-void
.end method

.method public blacklist setProgressUpdateListener(Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    return-void
.end method

.method public blacklist setupAndExecuteEncode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareListener()V

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    const-string v0, "starting encoder preparation  - SlowMo"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareForRewrite()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting encoder preparation  mSMEncode  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mConvert : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    :goto_0
    const-string v0, "encoder preparation done."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mCodecError:Z

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMRewriting()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMEncoding()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    :goto_1
    const-string v0, "encoding finished."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract blacklist startEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist startRewriting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist startSMEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist startSMRewriting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist stop()V
.end method
