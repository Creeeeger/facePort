.class public Lcom/samsung/android/transcode/core/EncodeVideo;
.super Lcom/samsung/android/transcode/core/EncodeBase;
.source "EncodeVideo.java"


# static fields
.field private static final blacklist NAL_START_CODE:[B

.field private static final blacklist UNKNOWN_AUDIO:Ljava/lang/String; = "audio/unknown"


# instance fields
.field private final blacklist mStopLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist checkAudioTranscodeSection()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-gez v0, :cond_1

    const-string v0, "Advance audio..."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Transcode section: Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimAudioStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private blacklist checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 8

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "param-meta-author"

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "param-meta-transcoding"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "param-meta-recording-mode"

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set recording mode for NDE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v2, v2, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v2, v2, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v3, "param-meta-brand-model-name"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v2

    const-string v3, "level"

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    const-string v4, "video/hevc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    nop

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v4, 0x500

    if-ne v2, v4, :cond_5

    const/16 v2, 0x200

    goto :goto_1

    :cond_5
    const/16 v2, 0x1000

    :goto_1
    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "csd-0"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    array-length v6, v5

    invoke-virtual {v3, v5, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/4 v7, 0x7

    if-ne v6, v4, :cond_6

    const/16 v4, 0x1f

    aput-byte v4, v5, v7

    goto :goto_2

    :cond_6
    const/16 v4, 0x29

    aput-byte v4, v5, v7

    :goto_2
    array-length v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v6, v5

    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_7
    :goto_3
    return-object p1
.end method

.method private blacklist checkTrimAudioStartPos()V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    iget-wide v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v7, v8, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    :cond_0
    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    const-string v7, "TranscodeLib"

    if-eqz v3, :cond_5

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v3, v8, v1

    if-eqz v3, :cond_5

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v3, v8, v5

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkTrimAudfioStartPos prev : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " ~ "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v9

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v11

    sub-long/2addr v9, v11

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    sub-long/2addr v11, v9

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v15, 0x1

    if-eq v3, v15, :cond_3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v15, 0x2

    if-eq v3, v15, :cond_3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v15, 0xc

    if-eq v3, v15, :cond_3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v15, 0x15

    if-eq v3, v15, :cond_3

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v15, 0x13

    if-ne v3, v15, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSuperSlow()Z

    move-result v3

    if-eqz v3, :cond_2

    mul-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    :cond_2
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {v0, v3, v15}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v3

    if-eqz v3, :cond_4

    mul-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v13

    const-wide/16 v15, 0x2

    div-long/2addr v13, v15

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    :cond_3
    :goto_0
    mul-long/2addr v13, v11

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkTrimAudfioStartPos after : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video  section: Current position: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v3, :cond_8

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v3, v8, v5

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v3, v5, v6, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_3
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid File!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Transcode section: Current position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mTrimAudioStartUs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private blacklist checkTrimVideoStartPointChanged()V
    .locals 11

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRewritable:Z

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    iget-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    iget-wide v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v9, v3, v9

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change end time for rewrite mode prev : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " new : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v7, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    const-string v0, "Abandon Rewrite. Switch to Rewrite mode."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    const-string v0, "Start point has not been updated!"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkVideoCodec(IIZ)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-nez p3, :cond_1

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-static {v3, v4, v5, p1, p2}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedResolution(Landroid/media/MediaFormat;IIII)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportedResolution  Error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v3}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedCodecType(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportedCodecType video  Error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-lez v3, :cond_5

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-gtz v3, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowFast()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-ne v1, p1, :cond_3

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    const-string v1, "Slowmotion Converting case  mSMConvert"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    const-string v1, "Slowmotion V2 transcoding case mSMEncode"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v3

    :cond_5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolution Error appear : width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private blacklist createAudiosolution()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/AudioSolution;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a valid audio solution."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "TranscodeLib"

    if-nez v1, :cond_0

    const-string v0, "findAtom : filepath is null"

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    const/4 v0, 0x4

    new-array v7, v0, [B

    new-array v8, v0, [B

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file size: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stbl"

    const-string v11, "trak"

    const-string v12, "mdia"

    const-string v13, "minf"

    const-string v14, "moov"

    filled-new-array {v12, v13, v14, v0, v11}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v12, "r"

    invoke-direct {v0, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    const-wide/16 v13, 0x0

    :goto_0
    cmp-long v0, v13, v9

    if-gez v0, :cond_8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filePointer: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    array-length v0, v7

    invoke-virtual {v12, v7, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v15, "file read is reached to end of the file"

    if-gez v0, :cond_1

    :try_start_2
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v16

    move-wide/from16 v18, v16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Atom Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v17, v3

    move-wide/from16 v3, v18

    :try_start_4
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v8

    const/4 v1, 0x0

    invoke-virtual {v12, v8, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-gez v0, :cond_2

    :try_start_5
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v6

    goto/16 :goto_4

    :cond_2
    :goto_2
    :try_start_6
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v8, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v18, v6

    :try_start_7
    const-string v6, "Atom Box: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const-wide/16 v19, 0x8

    if-ltz v1, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found parent: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " move to : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-long v13, v13, v19

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    move v3, v5

    goto/16 :goto_6

    :cond_4
    const-wide/16 v21, 0x1

    cmp-long v6, v3, v21

    if-nez v6, :cond_6

    move-object v6, v0

    move/from16 v21, v1

    add-long v0, v13, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_5

    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    move-wide/from16 v19, v15

    move-wide v15, v3

    move-wide/from16 v2, v19

    add-long/2addr v13, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    const-string v0, "64bit: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v6, v0

    move/from16 v21, v1

    move-wide v15, v3

    const-wide/16 v0, 0x0

    cmp-long v0, v15, v0

    if-nez v0, :cond_7

    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    add-long/2addr v13, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " atomsize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v18, v6

    move-object v1, v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    move-object v1, v0

    :goto_4
    :try_start_8
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    :cond_8
    move/from16 v17, v3

    move-object/from16 v18, v6

    :goto_6
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    return v3
.end method

.method private static blacklist findNalStartCode([BI)I
    .locals 3

    array-length v0, p0

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    move v1, p1

    :goto_0
    if-gt v1, v0, :cond_1

    invoke-static {p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getMaxEncodingDuration(IIII)I
    .locals 8

    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoMinBitrate(II)I

    move-result v0

    int-to-float v1, p0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :cond_0
    const/16 v3, 0x3e8

    if-lt p0, v3, :cond_2

    const/16 v3, 0xc8

    if-ge p1, v3, :cond_1

    if-ge p2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x80

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v3, 0x40

    :goto_1
    const-wide/16 v4, 0x8

    mul-long/2addr v4, v1

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    add-int v6, v0, v3

    int-to-long v6, v6

    div-long/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " minBitRate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " audiocodec "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxdur "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TranscodeLib"

    invoke-static {v7, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    return v6
.end method

.method private blacklist getVideoSampleSize(Landroid/media/MediaFormat;)I
    .locals 4

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    int-to-float v3, v0

    mul-float/2addr v3, v2

    int-to-float v2, v1

    mul-float/2addr v3, v2

    float-to-int v2, v3

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    .locals 48

    const-string v0, "uuid"

    const-string v1, "trak"

    const-string v2, "moov"

    const-string v3, "insertUuidFor360Video"

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    move-object/from16 v5, p0

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v11, "r"

    invoke-direct {v10, v3, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v12, "rws"

    invoke-direct {v11, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const-wide/16 v12, 0x0

    :try_start_2
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v15, 0x4

    move-object/from16 v16, v3

    :try_start_3
    new-array v3, v15, [B

    new-array v5, v15, [B

    :goto_0
    cmp-long v17, v12, v8

    if-gez v17, :cond_13

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v15, v3

    const/4 v7, 0x0

    invoke-virtual {v10, v3, v7, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v7, "inputfile read is reached to end of the file"

    if-gez v15, :cond_0

    :try_start_4
    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    goto/16 :goto_9

    :cond_0
    :goto_1
    :try_start_5
    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v18

    move-wide/from16 v20, v18

    array-length v15, v5

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-virtual {v10, v5, v3, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-gez v15, :cond_1

    :try_start_6
    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :try_start_7
    new-instance v3, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v5, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v14, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v19, v5

    const-string v5, "64bit: "

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x1

    move-wide/from16 v26, v8

    const-wide/16 v28, 0x8

    if-ltz v15, :cond_f

    :try_start_8
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v9

    move-object/from16 v34, v0

    const/4 v8, 0x4

    new-array v0, v8, [B

    move-object/from16 v35, v1

    new-array v1, v8, [B

    move-object v8, v14

    move/from16 v36, v15

    move-wide/from16 v14, v32

    :goto_2
    cmp-long v32, v14, v30

    if-gez v32, :cond_d

    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v32, v3

    array-length v3, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v33, v6

    const/4 v6, 0x0

    :try_start_9
    invoke-virtual {v11, v0, v6, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-string v6, "outputFile read is reached to end of the file"

    if-gez v3, :cond_2

    :try_start_a
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v37

    array-length v3, v1

    move-object/from16 v39, v0

    const/4 v0, 0x0

    invoke-virtual {v11, v1, v0, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-gez v3, :cond_3

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const-string v6, "outputfile read is reached to end of the file"

    if-ltz v3, :cond_9

    :try_start_b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    const-wide/16 v41, 0xff

    if-eqz v40, :cond_5

    move-object/from16 v43, v0

    move-object/from16 v40, v1

    move-wide/from16 v0, v20

    add-long v20, v37, v0

    move-object/from16 v44, v2

    const/4 v6, 0x4

    new-array v2, v6, [B

    const/4 v6, 0x3

    :goto_3
    if-ltz v6, :cond_4

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    and-long v8, v20, v41

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    const/16 v8, 0x8

    shr-long v20, v20, v8

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v9, v45

    move-object/from16 v8, v46

    goto :goto_3

    :cond_4
    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide v8, v14

    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v6, v2

    move/from16 v47, v3

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    add-long v14, v14, v28

    goto/16 :goto_5

    :cond_5
    move-object/from16 v43, v0

    move-object/from16 v40, v1

    move-object/from16 v44, v2

    move/from16 v47, v3

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide/from16 v0, v20

    add-long v20, v37, v0

    const/4 v2, 0x4

    new-array v3, v2, [B

    const/4 v5, 0x3

    :goto_4
    if-ltz v5, :cond_6

    and-long v8, v20, v41

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    const/16 v8, 0x8

    shr-long v20, v20, v8

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v5, v3

    const/4 v8, 0x0

    invoke-virtual {v11, v3, v8, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    add-long v8, v14, v37

    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object v5, v3

    sub-long v2, v30, v8

    move-object/from16 v22, v5

    long-to-int v5, v2

    new-array v5, v5, [B

    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide/from16 v23, v2

    array-length v2, v5

    const/4 v3, 0x0

    invoke-virtual {v11, v5, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_7

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v2, v0

    new-array v2, v2, [B

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v3, v2

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-gez v3, :cond_8

    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    array-length v3, v2

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    array-length v3, v5

    invoke-virtual {v11, v5, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto/16 :goto_6

    :cond_9
    move-object/from16 v43, v0

    move-object/from16 v40, v1

    move-object/from16 v44, v2

    move/from16 v47, v3

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide/from16 v0, v20

    cmp-long v2, v37, v24

    if-nez v2, :cond_b

    add-long v2, v14, v28

    invoke-virtual {v11, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x8

    new-array v3, v2, [B

    move-object v2, v3

    array-length v3, v2

    const/4 v8, 0x0

    invoke-virtual {v11, v2, v8, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-gez v3, :cond_a

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    add-long/2addr v14, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    cmp-long v2, v37, v22

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    add-long v14, v14, v37

    :goto_5
    move-wide/from16 v20, v0

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v44

    move-object/from16 v9, v45

    move-object/from16 v8, v46

    goto/16 :goto_2

    :cond_d
    move-object/from16 v39, v0

    move-object/from16 v40, v1

    move-object/from16 v44, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v6

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide/from16 v0, v20

    goto :goto_6

    :cond_e
    move-object/from16 v34, v0

    move-object/from16 v35, v1

    move-object/from16 v44, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v6

    move-object/from16 v46, v14

    move/from16 v36, v15

    move-wide/from16 v0, v20

    :goto_6
    add-long v12, v12, v28

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v33, v6

    move-object v1, v0

    goto/16 :goto_9

    :cond_f
    move-object/from16 v34, v0

    move-object/from16 v35, v1

    move-object/from16 v44, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v6

    move-object/from16 v46, v14

    move/from16 v36, v15

    move-wide/from16 v0, v20

    cmp-long v2, v0, v24

    if-nez v2, :cond_11

    add-long v2, v12, v28

    invoke-virtual {v10, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x8

    new-array v2, v2, [B

    array-length v3, v2

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-gez v3, :cond_10

    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    add-long/2addr v12, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :cond_11
    cmp-long v2, v0, v22

    if-nez v2, :cond_12

    goto :goto_8

    :cond_12
    add-long/2addr v12, v0

    :goto_7
    move-object/from16 v7, p1

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    move-wide/from16 v8, v26

    move-object/from16 v6, v33

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v44

    move-object/from16 v14, v46

    const/4 v15, 0x4

    goto/16 :goto_0

    :cond_13
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object/from16 v46, v14

    :goto_8
    :try_start_c
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object v1, v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object v1, v0

    :goto_9
    :try_start_e
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object v1, v0

    :goto_b
    :try_start_10
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    :goto_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    return-void
.end method

.method private static blacklist isNalStartCode([BI)Z
    .locals 4

    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedFormat(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist releaseAudioObjects()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Exception in releasing output audio encoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Exception in releasing input audio decoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "Exception in releasing audio extractor."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private blacklist releaseHandleObjects()V
    .locals 6

    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCDestroy(J)V

    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    const-string v0, " SRC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPDestroy(J)V

    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    const-string v0, " VSP release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderDeInit(J)Z

    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    const-string v0, " NAAC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private blacklist releaseMuxer()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing muxer."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist releaseSurfaceObjects()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Exception in releasing outputSurface."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Exception in releasing input surface."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist releaseVideoObjects()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "Exception in releasing output video encoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    :goto_0
    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    throw v0

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_3
    const-string v4, "Exception in releasing input video decoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    :goto_3
    goto :goto_5

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    throw v0

    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v2, "Exception in releasing video extractor."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_6
    return-void
.end method

.method private blacklist rewriteAudio(J)V
    .locals 8

    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v5, "TranscodeLib"

    if-gez v4, :cond_0

    const-string v4, "saw input EOS: Audio"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, -0x1

    cmp-long v4, p1, v6

    if-eqz v4, :cond_1

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v6, p1

    if-lez v4, :cond_1

    const/4 v2, 0x1

    const-string v4, "sawEOS: true: A"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v4, v6, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to writeSampleData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    iget-object v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist rewriteVideo(JLcom/samsung/android/transcode/util/NalUnitParser;I)V
    .locals 20

    move-object/from16 v1, p0

    invoke-static/range {p4 .. p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v3, v0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    const/4 v0, 0x0

    move-object/from16 v7, p3

    move v8, v0

    :goto_0
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_7

    if-nez v8, :cond_7

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string v9, "TranscodeLib"

    if-gez v0, :cond_0

    const-string v0, "saw input EOS: Video"

    invoke-static {v9, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    const-wide/16 v14, 0x0

    if-eqz v0, :cond_1

    move-wide/from16 v16, v5

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v4, v10, v4

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_2

    :cond_1
    move-wide/from16 v16, v5

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v4, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v4, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    :goto_1
    const-wide/16 v18, 0x3e8

    mul-long v4, v4, v18

    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide v4, v12

    :goto_2
    const-wide/16 v12, -0x1

    cmp-long v0, p1, v12

    if-eqz v0, :cond_3

    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v12, v4

    cmp-long v0, v12, p1

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    const-string v6, "sawEOS: true: V"

    invoke-static {v9, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v0

    const/4 v6, 0x0

    goto :goto_6

    :cond_3
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v12, v16

    if-ltz v0, :cond_6

    if-eqz v7, :cond_5

    :try_start_0
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/transcode/util/NalUnitParser;

    invoke-direct {v0, v2}, Lcom/samsung/android/transcode/util/NalUnitParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findHDRStaticMeta()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    sget-object v6, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v6

    invoke-virtual {v7, v2, v0, v6}, Lcom/samsung/android/transcode/util/NalUnitParser;->insertHDRStaticMeta(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v6, "add HDR static info"

    invoke-static {v9, v6}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v6, v12, v0, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_3

    :cond_4
    const-string v0, "has already static info"

    invoke-static {v9, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v6, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_3
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v6, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to writeSampleData "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v6, 0x0

    invoke-virtual {v1, v12, v13, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    move v4, v6

    move-wide/from16 v5, v16

    goto/16 :goto_0

    :cond_7
    move-wide/from16 v16, v5

    return-void
.end method


# virtual methods
.method blacklist checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_b

    if-lez p3, :cond_b

    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_1

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t use uri uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p4, :cond_9

    :goto_0
    :try_start_0
    invoke-static {p4, p5, p6}, Lcom/samsung/android/transcode/info/MediaInfo;->getFileInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    invoke-static {p4, p5, p6, v0}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    invoke-static {p4, p5, p6, v1}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioinfo:Landroid/media/MediaFormat;

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v1}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfo;->getVideoFramerate()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    if-eqz v1, :cond_2

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v0}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->getHDRMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v1, v1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->colorTransfer:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsHLG:Z

    :cond_3
    :goto_1
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mNumOfSVCLayers:I

    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0, p4, p5, p6}, Lcom/samsung/android/transcode/util/SEFHelper;->initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->checkSEFData(IIJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSEFData mSEFVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getRegionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRegionList:Ljava/util/List;

    :cond_5
    invoke-direct {p0, p2, p3, p7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkVideoCodec(IIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_6

    iput-object p6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    goto :goto_2

    :cond_6
    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    :goto_2
    return-void

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid input file - can\'t get file info"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid output size width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getOutputFileSize()I
    .locals 19

    move-object/from16 v1, p0

    :try_start_0
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x3e8

    if-nez v8, :cond_2

    iget-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v11, v8, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v11, v9

    move-wide v4, v11

    goto :goto_1

    :cond_1
    const-string v8, "durationUs"

    invoke-virtual {v3, v8}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide v4, v11

    :goto_1
    const-string v8, "TranscodeLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOutputFileSize  trimEndTime was 0 but updated trimEndTime : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    cmp-long v8, v11, v6

    if-ltz v8, :cond_4

    const-string v8, "video/avc"

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x3f666666    # 0.9f

    iput v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    :cond_3
    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    iget-wide v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v14, v4, v14

    div-long/2addr v14, v9

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v8, v8, 0x3e8

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    goto :goto_2

    :cond_4
    new-instance v8, Lcom/samsung/android/transcode/info/ExportMediaInfo;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iget v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10Plus()Z

    move-result v14

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/transcode/info/ExportMediaInfo;-><init>(IIILjava/lang/String;Z)V

    sget-object v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v8, v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v8

    :goto_2
    iget-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v9, v4, v9

    long-to-double v9, v9

    const-wide v11, 0x415e848000000000L    # 8000000.0

    div-double/2addr v9, v11

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    add-int/2addr v11, v8

    int-to-double v11, v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    mul-double/2addr v9, v11

    double-to-int v9, v9

    iget-wide v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v10, v6

    if-nez v6, :cond_5

    int-to-double v6, v9

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v10

    double-to-int v6, v6

    return v6

    :cond_5
    return v9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v2, -0x1

    return v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    move-object v9, p0

    iput-boolean v0, v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v8, p0

    move/from16 v9, p8

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    if-nez p7, :cond_0

    if-lez v9, :cond_0

    iput v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    :cond_0
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v0, :cond_1

    if-nez p6, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not support rewrite for Photoring case mSMConvert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSMEncode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILjava/lang/String;ZZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v8, p0

    move/from16 v9, p7

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    const/4 v0, 0x1

    if-nez p6, :cond_0

    if-lez v9, :cond_0

    iput v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    :cond_0
    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v1, :cond_1

    if-nez p5, :cond_1

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do not support rewrite for Photoring case mSMConvert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSMEncode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    return-void
.end method

.method protected declared-synchronized blacklist release()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TranscodeLib"

    const-string v2, "releasing encoder objects"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseFramemanager()V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseVideoObjects()V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseSurfaceObjects()V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseAudioObjects()V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseMuxer()V

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseHandleObjects()V

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_0

    :try_start_1
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUpdateCreationTime:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mIs360Video:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_2

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    nop

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_1
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist setAudioCodecs(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setEncodingCodecs(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    return-void
.end method

.method public blacklist setExportRecordingMode(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExportRecordingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setMaxOutputSize(I)V
    .locals 6

    if-lez p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max output size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMMSMode is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setOutputAudioMute(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set audio mute : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMute:Z

    return-void
.end method

.method public blacklist setOutputBitdepth(I)Z
    .locals 5

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOutputBitdepth  bitdepth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", InputBitdepth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHDRType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isHLG : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHLG()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v1, :cond_4

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHLG()Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->supportConverter()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHLG()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    return v3

    :cond_3
    return v2

    :cond_4
    return v2
.end method

.method public blacklist setOutputConfig(II)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid config Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputAudioMute(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoTargetFrameRate(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoOutputBitRate(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputBitdepth(I)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setMaxOutputSize(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setRotation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRotation:I

    return-void
.end method

.method public blacklist setTrimTime(JJ)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    cmp-long v0, p3, v0

    if-ltz v0, :cond_7

    cmp-long v0, p1, p3

    if-gtz v0, :cond_6

    cmp-long v0, p1, p3

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSuperSlow()Z

    move-result v2

    if-eqz v2, :cond_1

    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingFps:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(II)Z

    move-result v2

    if-eqz v2, :cond_4

    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    :cond_2
    :goto_0
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    :cond_3
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim startUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OriginstartUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OriginendUS :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endUs cannot be equal to startUs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start time cannot be more than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setVideoCodecs(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoCodecType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "video/hevc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "video/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setVideoOutputBitRate(I)V
    .locals 2

    if-lez p1, :cond_0

    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitRate should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setVideoTargetFrameRate(I)V
    .locals 2

    if-lez p1, :cond_0

    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoTargetFrameRate:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fps should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startRewriting()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-eqz v1, :cond_0

    const-string v1, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "startRewriting"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPendingAudioDecoderOutputBufferIndex:I

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v5

    if-eq v5, v3, :cond_14

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isHDR10()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_2

    iget-wide v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v8, v11, v9

    if-eqz v8, :cond_2

    invoke-direct {v0, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iget-object v12, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v11, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    if-lez v12, :cond_2

    new-instance v12, Lcom/samsung/android/transcode/util/NalUnitParser;

    invoke-direct {v12, v11}, Lcom/samsung/android/transcode/util/NalUnitParser;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v7, v12

    invoke-virtual {v7}, Lcom/samsung/android/transcode/util/NalUnitParser;->findHDRStaticMeta()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v7}, Lcom/samsung/android/transcode/util/NalUnitParser;->getHdrStaticMeta()Ljava/nio/ByteBuffer;

    move-result-object v12

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "has hdr static meta : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to find hdr static meta "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimVideoStartPointChanged()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkAudioTranscodeSection()V

    const-string v8, "Rewriting starts"

    invoke-static {v2, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    iput-wide v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v8

    const/4 v9, 0x0

    if-eq v8, v3, :cond_3

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v9

    :cond_3
    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v10, :cond_10

    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_4
    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filepath :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "param-meta-author"

    const/16 v12, 0x8

    invoke-virtual {v6, v11, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v11, "param-meta-transcoding"

    invoke-virtual {v6, v11, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_5
    sget-object v11, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v11, v11, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    sget-object v11, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-object v11, v11, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    const-string v12, "param-meta-brand-model-name"

    invoke-virtual {v6, v12, v11}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const-string v12, "mime"

    const-string v13, "param-meta-recording-mode"

    if-eq v11, v3, :cond_7

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v6, v13, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set recording mode for NDE : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0xa

    if-eq v11, v14, :cond_c

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0x19

    if-ne v11, v14, :cond_8

    goto/16 :goto_3

    :cond_8
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0x1a

    if-eq v11, v14, :cond_b

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0x1b

    if-ne v11, v14, :cond_9

    goto :goto_2

    :cond_9
    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v14, 0x1d

    if-ne v11, v14, :cond_d

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v6, v13, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set recording mode for MV_HEVC : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "video/hevc"

    invoke-virtual {v6, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v11, "video/x-mvhevc"

    invoke-virtual {v6, v12, v11}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v11, "csd-mvhevc-ext"

    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v13

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v14, v14, [B

    array-length v15, v14

    invoke-virtual {v13, v14, v1, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    array-length v15, v14

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    array-length v3, v14

    invoke-virtual {v15, v14, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string v3, "csd-1"

    invoke-virtual {v6, v3, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v6, v11}, Landroid/media/MediaFormat;->removeKey(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    :goto_2
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v6, v13, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set recording mode for Log video : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    :goto_3
    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v6, v13, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set recording mode for HDR 10 PLUS : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_4
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-eqz v9, :cond_e

    const-string v3, "audio/unknown"

    invoke-virtual {v9, v12}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v9}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_5

    :cond_e
    const/4 v3, -0x1

    move v8, v3

    :goto_5
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v3, v11}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v11, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v11, v11, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    sget-object v12, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v12, v12, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    invoke-virtual {v3, v11, v12}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_f
    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    :cond_10
    invoke-direct {v0, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v3

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-direct {v0, v10, v11, v7, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->rewriteVideo(JLcom/samsung/android/transcode/util/NalUnitParser;I)V

    const/4 v4, -0x1

    if-eq v8, v4, :cond_12

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMute:Z

    if-eqz v4, :cond_11

    goto :goto_6

    :cond_11
    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/transcode/core/EncodeVideo;->rewriteAudio(J)V

    goto :goto_7

    :cond_12
    :goto_6
    iput-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    :goto_7
    iget-boolean v1, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v1, :cond_13

    const-string v1, "Rewriting finished"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void

    :cond_14
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Absent valid video track"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist startSMEncoding()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    const-string v0, "Not starting Slowmotion encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "startSMEncoding"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_video()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transcode section - Audio : Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimAudioStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Video: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mTrimVideoStartUs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v0, :cond_9

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startVideoDecoding()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->sendFrametoEncoder()V

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    if-eqz v0, :cond_4

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding abruptly stopped mUserStop ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mCodecError? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCodecError:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_9
    return-void
.end method

.method public blacklist startSMRewriting()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "startSMRewriting"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimAudioStartPos()V

    const-string v0, "Rewriting starts"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    :cond_1
    const/4 v0, 0x0

    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    const/4 v7, -0x1

    iget-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v7

    :cond_2
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    const/4 v11, -0x1

    if-eq v6, v11, :cond_15

    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    if-eq v7, v11, :cond_3

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    :cond_3
    iget-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    const/4 v14, 0x1

    if-nez v13, :cond_6

    invoke-direct {v1, v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "video format "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v13, v12}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v13

    iput v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-eqz v8, :cond_5

    const-string v13, "mime"

    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "audio/unknown"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "csd-0"

    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v8, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    new-array v9, v9, [B

    array-length v10, v9

    invoke-virtual {v15, v9, v3, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/16 v10, 0x11

    aput-byte v10, v9, v3

    const/16 v10, -0x70

    aput-byte v10, v9, v14

    array-length v10, v9

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    array-length v11, v9

    invoke-virtual {v10, v9, v3, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v8, v13, v10}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio format "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v9

    iput v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_0

    :cond_5
    const/4 v7, -0x1

    :goto_0
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v9, v10}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    :cond_6
    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v7, v10, :cond_7

    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMute:Z

    if-eqz v10, :cond_8

    :cond_7
    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractorDone:Z

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    :cond_8
    const/4 v10, -0x1

    if-eq v7, v10, :cond_9

    :goto_1
    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v10, :cond_9

    iget-boolean v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    goto :goto_1

    :cond_9
    invoke-direct {v1, v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v11, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iput v14, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v12}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v14

    const-wide/16 v16, 0x0

    move v15, v0

    :goto_2
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_13

    if-nez v15, :cond_13

    iput v9, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v11, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_a

    const-string v0, "saw input EOS: Video"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    iput v3, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-wide/from16 v18, v4

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModifiedVideotime = presentationTime = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v20, v6

    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v5, 0x4

    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v6, v0

    move/from16 v21, v5

    const/4 v5, 0x0

    invoke-virtual {v11, v0, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0, v3, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->calculateIsDrop([BJ)Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    :cond_b
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v16, v5

    if-eqz v0, :cond_c

    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    sub-long v5, v5, v16

    goto :goto_3

    :cond_c
    const-wide/16 v5, 0x0

    :goto_3
    const-wide/16 v21, -0x1

    cmp-long v0, v18, v21

    if-eqz v0, :cond_d

    move-wide/from16 v21, v3

    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v3, v5

    move-wide/from16 v23, v5

    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_e

    const/4 v0, 0x1

    const-string v3, "sawEOS: true: V"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v0

    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_d
    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    :cond_e
    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    iput-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    if-nez v0, :cond_12

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    move/from16 v16, v0

    array-length v0, v6

    move-wide/from16 v25, v3

    const/4 v3, 0x0

    invoke-virtual {v11, v6, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeSampleData time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v14, :cond_10

    move/from16 v0, v16

    :cond_f
    move v5, v0

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v3, v3

    add-int/2addr v3, v0

    invoke-static {v6, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->findNalStartCode([BI)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findNalStartCode. i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-ne v0, v3, :cond_f

    move/from16 v16, v0

    :cond_10
    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v5, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v3, v11, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to writeSampleData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v3, -0x1

    if-ne v7, v3, :cond_11

    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    :cond_11
    iget-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 v17, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    goto :goto_5

    :cond_12
    move-wide/from16 v25, v3

    const/4 v5, 0x0

    :goto_5
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-wide/from16 v16, v25

    :goto_6
    move v3, v5

    move-wide/from16 v4, v18

    move/from16 v6, v20

    goto/16 :goto_2

    :cond_13
    move-wide/from16 v18, v4

    move/from16 v20, v6

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_14

    const-string v0, "Rewriting finished"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void

    :cond_15
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Absent valid video track"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist stop()V
    .locals 5

    const-string v0, "TranscodeLib"

    const-string v1, "Stop method called "

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    const-string v2, "mUserStop - true"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_1
    :try_start_1
    const-string v1, "TranscodeLib"

    const-string v2, "Calling wait on stop lock."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "TranscodeLib"

    const-string v3, "Stop lock interrupted."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop method finally  mEncoding :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    const-string v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mEncoding :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V

    :cond_3
    nop

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
