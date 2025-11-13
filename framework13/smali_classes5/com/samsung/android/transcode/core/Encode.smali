.class public abstract Lcom/samsung/android/transcode/core/Encode;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/Encode$ConfigType;,
        Lcom/samsung/android/transcode/core/Encode$CodecType;,
        Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;,
        Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;
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

.field private static final blacklist VERSION:Ljava/lang/String; = "4.45"


# instance fields
.field protected blacklist m2ndTimeEncoding:Z

.field protected blacklist mAudioTrackIndex:I

.field protected blacklist mConvert:Z

.field protected blacklist mConvertFull:Z

.field protected blacklist mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

.field protected blacklist mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

.field protected blacklist mFramesSkipInterval:I

.field protected blacklist mHDRType:I

.field protected blacklist mInputAudioDecoder:Landroid/media/MediaCodec;

.field protected blacklist mInputVideoDecoder:Landroid/media/MediaCodec;

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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    .line 35
    const-string/jumbo v1, "video/avc"

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    .line 37
    const/16 v2, 0x1e

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    .line 38
    const/4 v3, 0x1

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    .line 39
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoTargetFrameRate:I

    .line 42
    const-string v3, "audio/mp4a-latm"

    iput-object v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    .line 43
    const/4 v3, 0x2

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    .line 44
    const v4, 0x1f400

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    .line 45
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    .line 46
    const v3, 0xac44

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    .line 59
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 60
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mPrepared:Z

    .line 67
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    .line 68
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mRewritable:Z

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    .line 74
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mKeepSourceFrameRate:Z

    .line 78
    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mSourceFrameRate:I

    .line 80
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    .line 82
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mHDRType:I

    .line 86
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    .line 88
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mProgress:I

    return-void
.end method

.method public static blacklist getLibraryVersion()Ljava/lang/String;
    .locals 2

    .line 380
    const-string v0, "TranscodeLib"

    const-string v1, "getLibraryVersion  : Transcode Framework v.4.45"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "4.45"

    return-object v0
.end method

.method private blacklist prepareListener()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    .line 315
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 316
    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 317
    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mProgress:I

    .line 319
    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "starting to encode"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onStarted()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onStarted()V

    .line 326
    :cond_1
    return-void
.end method

.method private blacklist printVersionInfo()V
    .locals 2

    .line 376
    const-string v0, "TranscodeLib"

    const-string v1, "Transcode Framework v.4.45"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method private blacklist releaseListener()V
    .locals 5

    .line 329
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    const/4 v1, 0x0

    const-string v2, "calling onCompleted"

    const-string/jumbo v3, "user stopped. Not calling onCompleted"

    const-string v4, "TranscodeLib"

    if-eqz v0, :cond_1

    .line 330
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v0, :cond_0

    .line 331
    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_0

    .line 334
    :cond_0
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    if-eqz v0, :cond_3

    .line 339
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v0, :cond_2

    .line 340
    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    invoke-interface {v0}, Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;->onCompleted()V

    goto :goto_1

    .line 343
    :cond_2
    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_1
    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    .line 347
    :cond_3
    return-void
.end method


# virtual methods
.method protected blacklist computePresentationTimeNsec(I)J
    .locals 4
    .param p1, "frameIndex"    # I

    .line 236
    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist encode()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->setupAndExecuteEncode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 141
    nop

    .line 142
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 144
    .local v1, "size":J
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

    .line 145
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mConvert:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-nez v3, :cond_4

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    long-to-double v7, v1

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    div-double/2addr v7, v9

    long-to-double v5, v5

    cmpl-double v3, v7, v5

    if-lez v3, :cond_4

    instance-of v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;

    if-eqz v3, :cond_4

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
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

    .line 151
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

    .line 152
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

    .line 155
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    .line 156
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    .line 157
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 158
    iput v7, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto :goto_0

    .line 160
    :cond_1
    mul-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    .line 163
    :goto_0
    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v7, 0xb0

    if-ne v6, v7, :cond_2

    .line 164
    const/16 v6, 0x80

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    .line 165
    const/16 v6, 0x60

    iput v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    .line 169
    :cond_2
    :try_start_1
    const-string v6, "2nd time starting encoder preparation"

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    .line 172
    const-string v5, "2nd time encoder preparation done."

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v5, Landroid/media/MediaMuxer;

    iget-object v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v5, v6, v7}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    .line 175
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    .line 176
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    .line 177
    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    .line 179
    const-string v3, "2nd time starting to encode"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    if-eqz v3, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMEncoding()V

    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    .line 186
    :goto_1
    const-string v3, "2nd time encoding finished."

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 189
    nop

    .line 191
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

    .line 192
    iput-boolean v5, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    goto :goto_2

    .line 188
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 189
    throw v3

    .line 195
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->releaseListener()V

    .line 196
    return-void

    .line 140
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "size":J
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 141
    throw v0
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

    .line 202
    const-string v0, "TranscodeLib"

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    .line 205
    :try_start_0
    const-string/jumbo v1, "starting Rewrite prepartion"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareForRewrite()V

    .line 207
    const-string v1, "Rewrite preparation done."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareListener()V

    .line 211
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mRewritable:Z

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startRewriting()V

    .line 217
    const-string v1, "Rewrite finished."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 220
    nop

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->releaseListener()V

    .line 222
    return-void

    .line 212
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t rewirte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/transcode/core/Encode;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/Encode;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    .line 220
    throw v0
.end method

.method public blacklist setEncodeProgressListener(Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    .line 229
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeProgressListener:Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;

    .line 230
    return-void
.end method

.method public blacklist setProgressUpdateListener(Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;)V
    .locals 0
    .param p1, "updateListener"    # Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 225
    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    .line 226
    return-void
.end method

.method public blacklist setupAndExecuteEncode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "starting encoder preparation  - SlowMo"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareForRewrite()V

    goto :goto_0

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not prepare for   mConvertFull  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting encoder preparation  mSMEncode  : "

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

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    .line 113
    :goto_0
    const-string v0, "encoder preparation done."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->prepareListener()V

    .line 117
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMConvert:Z

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMRewriting()V

    goto :goto_1

    .line 119
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mConvertFull:Z

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startHDREncoding()V

    goto :goto_1

    .line 122
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSMEncode:Z

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startSMEncoding()V

    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    .line 128
    :goto_1
    const-string v0, "encoding finished."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected abstract blacklist startEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist startHDREncoding()V
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
