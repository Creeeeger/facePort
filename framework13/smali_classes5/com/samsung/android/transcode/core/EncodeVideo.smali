.class public Lcom/samsung/android/transcode/core/EncodeVideo;
.super Lcom/samsung/android/transcode/core/EncodeBase;
.source "EncodeVideo.java"


# static fields
.field private static final blacklist HEADER_SIZE:I = 0x1f4

.field private static final blacklist NAL_START_CODE:[B

.field private static final blacklist UNKNOWN_AUDIO:Ljava/lang/String; = "audio/unknown"


# instance fields
.field private blacklist mError:Z

.field private blacklist mHDRAudioDone:Z

.field private blacklist mHDRVideoDone:Z

.field private blacklist mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

.field private blacklist mInputReachedEOS:Z

.field private final blacklist mSEIdataHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mSeektime:J

.field private final blacklist mStopLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
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
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeBase;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEIdataHash:Ljava/util/HashMap;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/transcode/core/EncodeVideo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    return v0
.end method

.method static synthetic blacklist access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputReachedEOS:Z

    return p1
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/transcode/core/EncodeVideo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    return v0
.end method

.method static synthetic blacklist access$102(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    return p1
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/transcode/core/EncodeVideo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    return v0
.end method

.method static synthetic blacklist access$202(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    return p1
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/transcode/core/EncodeVideo;)Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/samsung/android/transcode/core/EncodeVideo;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 38
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEIdataHash:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/samsung/android/transcode/core/EncodeVideo;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 38
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSeektime:J

    return-wide v0
.end method

.method private blacklist checkAudioTranscodeSection()V
    .locals 4

    .line 351
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

    .line 352
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-gez v0, :cond_1

    .line 354
    const-string v0, "Advance audio..."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 357
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Transcode section: Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 358
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

    .line 357
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_2
    return-void
.end method

.method private blacklist checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;
    .locals 8
    .param p1, "formatV"    # Landroid/media/MediaFormat;

    .line 586
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 587
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

    .line 588
    .local v0, "filepath":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    const/16 v2, 0x8

    const-string/jumbo v3, "param-meta-author"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 590
    const/4 v2, 0x1

    const-string/jumbo v3, "param-meta-transcoding"

    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 591
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 592
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderOutputMediaFormat:Landroid/media/MediaFormat;

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const-string/jumbo v4, "param-meta-recording-mode"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set recording mode for NDE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_2
    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v2

    const-string v3, "level"

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 598
    const-string/jumbo v4, "video/hevc"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 599
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 600
    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 599
    invoke-virtual {p1, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    .line 602
    :cond_3
    nop

    .line 603
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/16 v4, 0x500

    if-ne v2, v4, :cond_4

    const/16 v2, 0x200

    goto :goto_1

    .line 604
    :cond_4
    const/16 v2, 0x1000

    .line 602
    :goto_1
    invoke-virtual {p1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 605
    const-string v2, "csd-0"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 606
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 607
    .local v3, "csd":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_6

    .line 608
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 609
    .local v5, "buffer":[B
    array-length v6, v5

    invoke-virtual {v3, v5, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 610
    iget v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    const/4 v7, 0x7

    if-ne v6, v4, :cond_5

    .line 611
    const/16 v4, 0x1f

    aput-byte v4, v5, v7

    goto :goto_2

    .line 613
    :cond_5
    const/16 v4, 0x29

    aput-byte v4, v5, v7

    .line 615
    :goto_2
    array-length v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 616
    .local v4, "csdTemp":Ljava/nio/ByteBuffer;
    array-length v6, v5

    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 617
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 618
    invoke-virtual {p1, v2, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 622
    .end local v3    # "csd":Ljava/nio/ByteBuffer;
    .end local v4    # "csdTemp":Ljava/nio/ByteBuffer;
    .end local v5    # "buffer":[B
    :cond_6
    :goto_3
    return-object p1
.end method

.method private blacklist checkTrimAudioStartPos()V
    .locals 7

    .line 566
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v5, v6, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video  section: Current position: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_3

    iget-wide v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 574
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 576
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Transcode section: Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 581
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

    .line 580
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_3
    return-void
.end method

.method private blacklist checkTrimVideoStartPointChanged()V
    .locals 6

    .line 332
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 333
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRewritable:Z

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 336
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    .line 339
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 340
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 341
    const-string v0, "Abandon Rewrite. Switch to Rewrite mode."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 345
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 346
    const-string v0, "Start point has not been updated!"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist checkVideoCodec(IIZ)Z
    .locals 6
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "isRewrite"    # Z

    .line 1086
    const/4 v0, 0x0

    .line 1088
    .local v0, "error":I
    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-nez p3, :cond_1

    .line 1089
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v4, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v5, v5, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-static {v3, v4, v5, p1, p2}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedResolution(Landroid/media/MediaFormat;IIII)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1091
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

    .line 1092
    return v1

    .line 1095
    :cond_0
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    invoke-static {v3}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedCodecType(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1096
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

    .line 1097
    return v1

    .line 1101
    :cond_1
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-lez v3, :cond_5

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1107
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 1108
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 1109
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

    .line 1111
    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1112
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 1113
    const-string v1, "Slowmotion Converting case  mSMConvert"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return v3

    .line 1116
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1117
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 1118
    const-string v1, "Slowmotion V2 transcoding case mSMEncode"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_4
    return v3

    .line 1102
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

    .line 1104
    return v1
.end method

.method private blacklist createAudiosolution()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1464
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v0, :cond_1

    .line 1466
    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/transcode/util/AudioSolution;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/AudioSolution;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    nop

    .line 1471
    :cond_1
    return-void

    .line 1467
    :catch_0
    move-exception v0

    .line 1468
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not a valid audio solution."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 23
    .param p0, "srcMediaPath"    # Ljava/lang/String;
    .param p1, "atomToHunt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1135
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1136
    .local v3, "ret":Z
    const/4 v4, 0x0

    const-string v5, "TranscodeLib"

    if-nez v1, :cond_0

    .line 1137
    const-string v0, "findAtom : filepath is null"

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return v4

    .line 1140
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1141
    .local v6, "file":Ljava/io/File;
    const/4 v0, 0x4

    new-array v7, v0, [B

    .line 1142
    .local v7, "atomSizeBuf":[B
    new-array v8, v0, [B

    .line 1143
    .local v8, "atomNameBuf":[B
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 1144
    .local v9, "fileSize":J
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

    .line 1146
    const-string v0, "mdia"

    const-string v11, "minf"

    const-string v12, "moov"

    const-string/jumbo v13, "stbl"

    const-string/jumbo v14, "trak"

    filled-new-array {v0, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1148
    .local v11, "parentContainer":[Ljava/lang/String;
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v12, "r"

    invoke-direct {v0, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 1149
    .local v12, "fileObj":Ljava/io/RandomAccessFile;
    const-wide/16 v13, 0x0

    .line 1151
    .local v13, "filePointer":J
    :goto_0
    cmp-long v0, v13, v9

    if-gez v0, :cond_8

    .line 1153
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

    .line 1154
    invoke-virtual {v12, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    goto :goto_1

    .line 1148
    .end local v13    # "filePointer":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    goto/16 :goto_4

    .line 1155
    .restart local v13    # "filePointer":J
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e1":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1158
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_1
    array-length v0, v7

    invoke-virtual {v12, v7, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v15, "file read is reached to end of the file"

    if-gez v0, :cond_1

    .line 1159
    :try_start_2
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1161
    :cond_1
    :try_start_3
    invoke-static {v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 1164
    .local v18, "atomSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Atom Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move/from16 v17, v3

    move-wide/from16 v3, v18

    .end local v18    # "atomSize":J
    .local v3, "atomSize":J
    .local v17, "ret":Z
    :try_start_4
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    array-length v0, v8

    const/4 v1, 0x0

    invoke-virtual {v12, v8, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-gez v0, :cond_2

    .line 1166
    :try_start_5
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1148
    .end local v3    # "atomSize":J
    .end local v13    # "filePointer":J
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v6

    goto/16 :goto_4

    .line 1169
    .restart local v3    # "atomSize":J
    .restart local v13    # "filePointer":J
    :cond_2
    :goto_2
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    .line 1170
    .local v0, "atomName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v18, v6

    .end local v6    # "file":Ljava/io/File;
    .local v18, "file":Ljava/io/File;
    :try_start_7
    const-string v6, "Atom Box: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-static {v11, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1173
    .local v1, "tmpAtomPosition":I
    const-wide/16 v19, 0x8

    if-ltz v1, :cond_3

    .line 1174
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

    .line 1175
    add-long v13, v13, v19

    goto/16 :goto_3

    .line 1177
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1178
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

    .line 1179
    const/4 v5, 0x1

    .line 1180
    .end local v17    # "ret":Z
    .local v5, "ret":Z
    move v3, v5

    goto/16 :goto_6

    .line 1182
    .end local v5    # "ret":Z
    .restart local v17    # "ret":Z
    :cond_4
    const-wide/16 v21, 0x1

    cmp-long v6, v3, v21

    if-nez v6, :cond_6

    .line 1183
    move-object v6, v0

    move/from16 v21, v1

    .end local v0    # "atomName":Ljava/lang/String;
    .end local v1    # "tmpAtomPosition":I
    .local v6, "atomName":Ljava/lang/String;
    .local v21, "tmpAtomPosition":I
    add-long v0, v13, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1184
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 1185
    .local v0, "atomLargeSizeBuf":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-gez v1, :cond_5

    .line 1186
    invoke-static {v5, v15}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_5
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 1189
    .local v1, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    move-wide/from16 v19, v15

    .line 1190
    .local v19, "atomLargeSize":J
    move-wide v15, v3

    move-wide/from16 v2, v19

    .end local v3    # "atomSize":J
    .end local v19    # "atomLargeSize":J
    .local v2, "atomLargeSize":J
    .local v15, "atomSize":J
    add-long/2addr v13, v2

    .line 1191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    .end local v0    # "atomLargeSizeBuf":[B
    .local v20, "atomLargeSizeBuf":[B
    const-string v0, "64bit: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    .end local v1    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v2    # "atomLargeSize":J
    .end local v20    # "atomLargeSizeBuf":[B
    goto :goto_3

    .end local v6    # "atomName":Ljava/lang/String;
    .end local v15    # "atomSize":J
    .end local v21    # "tmpAtomPosition":I
    .local v0, "atomName":Ljava/lang/String;
    .local v1, "tmpAtomPosition":I
    .restart local v3    # "atomSize":J
    :cond_6
    move-object v6, v0

    move/from16 v21, v1

    move-wide v15, v3

    .end local v0    # "atomName":Ljava/lang/String;
    .end local v1    # "tmpAtomPosition":I
    .end local v3    # "atomSize":J
    .restart local v6    # "atomName":Ljava/lang/String;
    .restart local v15    # "atomSize":J
    .restart local v21    # "tmpAtomPosition":I
    const-wide/16 v0, 0x0

    cmp-long v0, v15, v0

    if-nez v0, :cond_7

    .line 1193
    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const/4 v3, 0x0

    .line 1195
    .end local v17    # "ret":Z
    .local v3, "ret":Z
    goto :goto_6

    .line 1197
    .end local v3    # "ret":Z
    .restart local v17    # "ret":Z
    :cond_7
    add-long/2addr v13, v15

    .line 1198
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

    .end local v15    # "atomSize":J
    .local v1, "atomSize":J
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1202
    .end local v1    # "atomSize":J
    .end local v6    # "atomName":Ljava/lang/String;
    .end local v21    # "tmpAtomPosition":I
    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1148
    .end local v13    # "filePointer":J
    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .end local v18    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v6

    move-object v1, v0

    .end local v6    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    goto :goto_4

    .end local v17    # "ret":Z
    .end local v18    # "file":Ljava/io/File;
    .restart local v3    # "ret":Z
    .restart local v6    # "file":Ljava/io/File;
    :catchall_4
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v18, v6

    move-object v1, v0

    .end local v3    # "ret":Z
    .end local v6    # "file":Ljava/io/File;
    .restart local v17    # "ret":Z
    .restart local v18    # "file":Ljava/io/File;
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

    .line 1151
    .end local v17    # "ret":Z
    .end local v18    # "file":Ljava/io/File;
    .restart local v3    # "ret":Z
    .restart local v6    # "file":Ljava/io/File;
    .restart local v13    # "filePointer":J
    :cond_8
    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 1203
    .end local v6    # "file":Ljava/io/File;
    .end local v13    # "filePointer":J
    .restart local v18    # "file":Ljava/io/File;
    :goto_6
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 1204
    .end local v12    # "fileObj":Ljava/io/RandomAccessFile;
    return v3
.end method

.method private static blacklist findNalStartCode([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 1390
    array-length v0, p0

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 1391
    .local v0, "endIndex":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1392
    invoke-static {p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1393
    return v1

    .line 1391
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1396
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getMaxEncodingDuration(IIII)I
    .locals 8
    .param p0, "maxSizeKB"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "audioCodecType"    # I

    .line 996
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoMinBitrate(II)I

    move-result v0

    .line 1002
    .local v0, "minBitRate":I
    int-to-float v1, p0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    .line 1004
    .local v1, "outFileSize":J
    const-wide/16 v3, 0x400

    const-wide/16 v5, 0x8

    const/4 v7, 0x1

    if-ne p3, v7, :cond_0

    .line 1005
    mul-long/2addr v5, v1

    mul-long/2addr v5, v3

    add-int/lit8 v3, v0, 0x8

    int-to-long v3, v3

    div-long/2addr v5, v3

    .local v5, "timeExpectedFromAppMs":J
    goto :goto_0

    .line 1008
    .end local v5    # "timeExpectedFromAppMs":J
    :cond_0
    mul-long/2addr v5, v1

    mul-long/2addr v5, v3

    add-int/lit16 v3, v0, 0x80

    int-to-long v3, v3

    div-long/2addr v5, v3

    .line 1012
    .restart local v5    # "timeExpectedFromAppMs":J
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minBitRate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " audiocodec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxdur "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    long-to-int v3, v5

    .line 1017
    .local v3, "finalTime":I
    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    return v4
.end method

.method private blacklist getVideoSampleSize(Landroid/media/MediaFormat;)I
    .locals 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1474
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 1476
    .local v0, "width":I
    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 1477
    .local v1, "height":I
    mul-int v2, v0, v1

    return v2

    .line 1479
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    .locals 48
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .param p1, "outputFilePath"    # Ljava/lang/String;

    .line 1216
    const-string/jumbo v0, "uuid"

    const-string/jumbo v1, "trak"

    const-string v2, "moov"

    const-string v3, "TranscodeLib"

    const-string v4, "insertUuidFor360Video"

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    new-instance v4, Ljava/io/File;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v4, "inputFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v6, "outputFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1220
    .local v8, "size":J
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string/jumbo v11, "r"

    invoke-direct {v10, v4, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1221
    .local v10, "inputRAF":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string/jumbo v12, "rws"

    invoke-direct {v11, v6, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1222
    .local v11, "outputRAF":Ljava/io/RandomAccessFile;
    const-wide/16 v12, 0x0

    .line 1223
    .local v12, "filePointer":J
    :try_start_2
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1224
    .local v14, "parentContainer":[Ljava/lang/String;
    const/4 v15, 0x4

    move-object/from16 v16, v4

    .end local v4    # "inputFile":Ljava/io/File;
    .local v16, "inputFile":Ljava/io/File;
    :try_start_3
    new-array v4, v15, [B

    .line 1225
    .local v4, "atomSizeBuf":[B
    new-array v5, v15, [B

    .line 1226
    .local v5, "atomNameBuf":[B
    :goto_0
    cmp-long v17, v12, v8

    if-gez v17, :cond_13

    .line 1227
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1228
    array-length v15, v4

    const/4 v7, 0x0

    invoke-virtual {v10, v4, v7, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v7, "inputfile read is reached to end of the file"

    if-gez v15, :cond_0

    .line 1229
    :try_start_4
    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1220
    .end local v4    # "atomSizeBuf":[B
    .end local v5    # "atomNameBuf":[B
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    goto/16 :goto_a

    .line 1231
    .restart local v4    # "atomSizeBuf":[B
    .restart local v5    # "atomNameBuf":[B
    .restart local v12    # "filePointer":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_5
    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v18

    move-wide/from16 v20, v18

    .line 1234
    .local v20, "atomSize":J
    array-length v15, v5

    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "atomSizeBuf":[B
    .local v18, "atomSizeBuf":[B
    invoke-virtual {v10, v5, v4, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-gez v15, :cond_1

    .line 1235
    :try_start_6
    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1238
    :cond_1
    :try_start_7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 1239
    .local v4, "atomName":Ljava/lang/String;
    invoke-static {v14, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1240
    .local v15, "tmpAtomPosition":I
    move-object/from16 v19, v5

    .end local v5    # "atomNameBuf":[B
    .local v19, "atomNameBuf":[B
    const-string v5, "64bit: "

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x1

    move-wide/from16 v26, v8

    .end local v8    # "size":J
    .local v26, "size":J
    const-wide/16 v28, 0x8

    if-ltz v15, :cond_f

    .line 1241
    :try_start_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1242
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v30

    .line 1243
    .local v30, "outputFileSize":J
    const-wide/16 v32, 0x0

    .line 1244
    .local v32, "outputFilePointer":J
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v9

    .line 1245
    .local v9, "outParentContainer":[Ljava/lang/String;
    move-object/from16 v34, v0

    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1246
    .local v0, "outputAtomSizeBuf":[B
    move-object/from16 v35, v1

    new-array v1, v8, [B

    move-object v8, v14

    move/from16 v36, v15

    move-wide/from16 v14, v32

    .line 1247
    .end local v15    # "tmpAtomPosition":I
    .end local v32    # "outputFilePointer":J
    .local v1, "outputAtomNameBuf":[B
    .local v8, "parentContainer":[Ljava/lang/String;
    .local v14, "outputFilePointer":J
    .local v36, "tmpAtomPosition":I
    :goto_2
    cmp-long v32, v14, v30

    if-gez v32, :cond_d

    .line 1248
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1250
    move-object/from16 v32, v4

    .end local v4    # "atomName":Ljava/lang/String;
    .local v32, "atomName":Ljava/lang/String;
    array-length v4, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v33, v6

    const/4 v6, 0x0

    .end local v6    # "outputFile":Ljava/io/File;
    .local v33, "outputFile":Ljava/io/File;
    :try_start_9
    invoke-virtual {v11, v0, v6, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-string/jumbo v6, "outputFile read is reached to end of the file"

    if-gez v4, :cond_2

    .line 1251
    :try_start_a
    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v37

    .line 1254
    .local v37, "outputAtomSize":J
    array-length v4, v1

    move-object/from16 v39, v0

    const/4 v0, 0x0

    .end local v0    # "outputAtomSizeBuf":[B
    .local v39, "outputAtomSizeBuf":[B
    invoke-virtual {v11, v1, v0, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    if-gez v4, :cond_3

    .line 1255
    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1259
    .local v0, "outputAtomName":Ljava/lang/String;
    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1260
    .local v4, "tmp":I
    const-string/jumbo v6, "outputfile read is reached to end of the file"

    if-ltz v4, :cond_9

    .line 1261
    :try_start_b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    const-wide/16 v41, 0xff

    if-eqz v40, :cond_5

    .line 1262
    move-object/from16 v43, v0

    move-object/from16 v40, v1

    move-wide/from16 v0, v20

    .end local v1    # "outputAtomNameBuf":[B
    .end local v20    # "atomSize":J
    .local v0, "atomSize":J
    .local v40, "outputAtomNameBuf":[B
    .local v43, "outputAtomName":Ljava/lang/String;
    add-long v20, v37, v0

    .line 1264
    .local v20, "l":J
    move-object/from16 v44, v2

    const/4 v6, 0x4

    new-array v2, v6, [B

    .line 1265
    .local v2, "b":[B
    const/4 v6, 0x3

    .local v6, "i":I
    :goto_3
    if-ltz v6, :cond_4

    .line 1266
    move-object/from16 v46, v8

    move-object/from16 v45, v9

    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .local v45, "outParentContainer":[Ljava/lang/String;
    .local v46, "parentContainer":[Ljava/lang/String;
    and-long v8, v20, v41

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 1267
    const/16 v8, 0x8

    shr-long v20, v20, v8

    .line 1265
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v9, v45

    move-object/from16 v8, v46

    goto :goto_3

    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v8    # "parentContainer":[Ljava/lang/String;
    .restart local v9    # "outParentContainer":[Ljava/lang/String;
    :cond_4
    move-object/from16 v46, v8

    move-object/from16 v45, v9

    .line 1269
    .end local v6    # "i":I
    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .restart local v45    # "outParentContainer":[Ljava/lang/String;
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    move-wide v8, v14

    .line 1270
    .local v8, "position":J
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1271
    array-length v6, v2

    move/from16 v47, v4

    const/4 v4, 0x0

    .end local v4    # "tmp":I
    .local v47, "tmp":I
    invoke-virtual {v11, v2, v4, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1272
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1273
    add-long v14, v14, v28

    .line 1274
    .end local v2    # "b":[B
    .end local v8    # "position":J
    .end local v20    # "l":J
    move-object v2, v3

    goto/16 :goto_6

    .line 1275
    .end local v40    # "outputAtomNameBuf":[B
    .end local v43    # "outputAtomName":Ljava/lang/String;
    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .end local v47    # "tmp":I
    .local v0, "outputAtomName":Ljava/lang/String;
    .restart local v1    # "outputAtomNameBuf":[B
    .restart local v4    # "tmp":I
    .local v8, "parentContainer":[Ljava/lang/String;
    .restart local v9    # "outParentContainer":[Ljava/lang/String;
    .local v20, "atomSize":J
    :cond_5
    move-object/from16 v43, v0

    move-object/from16 v40, v1

    move-object/from16 v44, v2

    move/from16 v47, v4

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide/from16 v0, v20

    .end local v1    # "outputAtomNameBuf":[B
    .end local v4    # "tmp":I
    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .end local v20    # "atomSize":J
    .local v0, "atomSize":J
    .restart local v40    # "outputAtomNameBuf":[B
    .restart local v43    # "outputAtomName":Ljava/lang/String;
    .restart local v45    # "outParentContainer":[Ljava/lang/String;
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v47    # "tmp":I
    add-long v20, v37, v0

    .line 1277
    .local v20, "l":J
    const/4 v2, 0x4

    new-array v4, v2, [B

    .line 1278
    .local v4, "b":[B
    const/4 v5, 0x3

    .local v5, "i":I
    :goto_4
    if-ltz v5, :cond_6

    .line 1279
    and-long v8, v20, v41

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v4, v5

    .line 1280
    const/16 v8, 0x8

    shr-long v20, v20, v8

    .line 1278
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 1282
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1283
    array-length v5, v4

    const/4 v8, 0x0

    invoke-virtual {v11, v4, v8, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1284
    add-long v8, v14, v37

    .line 1285
    .local v8, "positionAudio":J
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1286
    move-object/from16 v17, v3

    sub-long v2, v30, v8

    .line 1287
    .local v2, "audioSize":J
    long-to-int v5, v2

    new-array v5, v5, [B

    .line 1288
    .local v5, "dataAudio":[B
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1289
    move-wide/from16 v22, v2

    .end local v2    # "audioSize":J
    .local v22, "audioSize":J
    array-length v2, v5

    const/4 v3, 0x0

    invoke-virtual {v11, v5, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_7

    .line 1290
    move-object/from16 v2, v17

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1289
    :cond_7
    move-object/from16 v2, v17

    .line 1292
    :goto_5
    invoke-virtual {v11, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1293
    long-to-int v3, v0

    new-array v3, v3, [B

    .line 1294
    .local v3, "dataUuid":[B
    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1295
    array-length v6, v3

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "b":[B
    .local v17, "b":[B
    invoke-virtual {v10, v3, v4, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    if-gez v6, :cond_8

    .line 1296
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    :cond_8
    array-length v4, v3

    const/4 v6, 0x0

    invoke-virtual {v11, v3, v6, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1299
    array-length v4, v5

    invoke-virtual {v11, v5, v6, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1300
    goto/16 :goto_7

    .line 1303
    .end local v3    # "dataUuid":[B
    .end local v5    # "dataAudio":[B
    .end local v17    # "b":[B
    .end local v22    # "audioSize":J
    .end local v40    # "outputAtomNameBuf":[B
    .end local v43    # "outputAtomName":Ljava/lang/String;
    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .end local v47    # "tmp":I
    .local v0, "outputAtomName":Ljava/lang/String;
    .restart local v1    # "outputAtomNameBuf":[B
    .local v4, "tmp":I
    .local v8, "parentContainer":[Ljava/lang/String;
    .restart local v9    # "outParentContainer":[Ljava/lang/String;
    .local v20, "atomSize":J
    :cond_9
    move-object/from16 v43, v0

    move-object/from16 v40, v1

    move-object/from16 v44, v2

    move-object v2, v3

    move/from16 v47, v4

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide/from16 v0, v20

    .end local v1    # "outputAtomNameBuf":[B
    .end local v4    # "tmp":I
    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .end local v20    # "atomSize":J
    .local v0, "atomSize":J
    .restart local v40    # "outputAtomNameBuf":[B
    .restart local v43    # "outputAtomName":Ljava/lang/String;
    .restart local v45    # "outParentContainer":[Ljava/lang/String;
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v47    # "tmp":I
    cmp-long v3, v37, v24

    if-nez v3, :cond_b

    .line 1304
    add-long v3, v14, v28

    invoke-virtual {v11, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1305
    const/16 v3, 0x8

    new-array v4, v3, [B

    move-object v3, v4

    .line 1306
    .local v3, "outputAtomLargeSizeBuf":[B
    array-length v4, v3

    const/4 v8, 0x0

    invoke-virtual {v11, v3, v8, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    if-gez v4, :cond_a

    .line 1308
    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_a
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 1312
    .local v4, "outputAtomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    .line 1313
    .local v8, "outputAtomLargeSize":J
    add-long/2addr v14, v8

    .line 1314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    .end local v3    # "outputAtomLargeSizeBuf":[B
    .end local v4    # "outputAtomTmpLargeSize":Ljava/math/BigInteger;
    .end local v8    # "outputAtomLargeSize":J
    goto :goto_6

    :cond_b
    cmp-long v3, v37, v22

    if-nez v3, :cond_c

    .line 1316
    goto :goto_7

    .line 1318
    :cond_c
    add-long v14, v14, v37

    .line 1321
    .end local v37    # "outputAtomSize":J
    .end local v43    # "outputAtomName":Ljava/lang/String;
    .end local v47    # "tmp":I
    :goto_6
    move-wide/from16 v20, v0

    move-object v3, v2

    move-object/from16 v4, v32

    move-object/from16 v6, v33

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v44

    move-object/from16 v9, v45

    move-object/from16 v8, v46

    goto/16 :goto_2

    .line 1247
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v33    # "outputFile":Ljava/io/File;
    .end local v39    # "outputAtomSizeBuf":[B
    .end local v40    # "outputAtomNameBuf":[B
    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .local v0, "outputAtomSizeBuf":[B
    .restart local v1    # "outputAtomNameBuf":[B
    .local v4, "atomName":Ljava/lang/String;
    .local v6, "outputFile":Ljava/io/File;
    .local v8, "parentContainer":[Ljava/lang/String;
    .restart local v9    # "outParentContainer":[Ljava/lang/String;
    .restart local v20    # "atomSize":J
    :cond_d
    move-object/from16 v39, v0

    move-object/from16 v40, v1

    move-object/from16 v44, v2

    move-object v2, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move-object/from16 v46, v8

    move-object/from16 v45, v9

    move-wide/from16 v0, v20

    .end local v1    # "outputAtomNameBuf":[B
    .end local v4    # "atomName":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "outParentContainer":[Ljava/lang/String;
    .end local v20    # "atomSize":J
    .local v0, "atomSize":J
    .restart local v32    # "atomName":Ljava/lang/String;
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local v39    # "outputAtomSizeBuf":[B
    .restart local v40    # "outputAtomNameBuf":[B
    .restart local v45    # "outParentContainer":[Ljava/lang/String;
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    goto :goto_7

    .line 1241
    .end local v0    # "atomSize":J
    .end local v30    # "outputFileSize":J
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v33    # "outputFile":Ljava/io/File;
    .end local v36    # "tmpAtomPosition":I
    .end local v39    # "outputAtomSizeBuf":[B
    .end local v40    # "outputAtomNameBuf":[B
    .end local v45    # "outParentContainer":[Ljava/lang/String;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v4    # "atomName":Ljava/lang/String;
    .restart local v6    # "outputFile":Ljava/io/File;
    .local v14, "parentContainer":[Ljava/lang/String;
    .restart local v15    # "tmpAtomPosition":I
    .restart local v20    # "atomSize":J
    :cond_e
    move-object/from16 v34, v0

    move-object/from16 v35, v1

    move-object/from16 v44, v2

    move-object v2, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move-object/from16 v46, v14

    move/from16 v36, v15

    move-wide/from16 v0, v20

    .line 1323
    .end local v4    # "atomName":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .end local v15    # "tmpAtomPosition":I
    .end local v20    # "atomSize":J
    .restart local v0    # "atomSize":J
    .restart local v32    # "atomName":Ljava/lang/String;
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local v36    # "tmpAtomPosition":I
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    :goto_7
    add-long v12, v12, v28

    goto :goto_8

    .line 1220
    .end local v0    # "atomSize":J
    .end local v12    # "filePointer":J
    .end local v18    # "atomSizeBuf":[B
    .end local v19    # "atomNameBuf":[B
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v33    # "outputFile":Ljava/io/File;
    .end local v36    # "tmpAtomPosition":I
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "outputFile":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v33, v6

    move-object v1, v0

    .end local v6    # "outputFile":Ljava/io/File;
    .restart local v33    # "outputFile":Ljava/io/File;
    goto/16 :goto_a

    .line 1325
    .end local v33    # "outputFile":Ljava/io/File;
    .restart local v4    # "atomName":Ljava/lang/String;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v12    # "filePointer":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    .restart local v15    # "tmpAtomPosition":I
    .restart local v18    # "atomSizeBuf":[B
    .restart local v19    # "atomNameBuf":[B
    .restart local v20    # "atomSize":J
    :cond_f
    move-object/from16 v34, v0

    move-object/from16 v35, v1

    move-object/from16 v44, v2

    move-object v2, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v6

    move-object/from16 v46, v14

    move/from16 v36, v15

    move-wide/from16 v0, v20

    .end local v4    # "atomName":Ljava/lang/String;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .end local v15    # "tmpAtomPosition":I
    .end local v20    # "atomSize":J
    .restart local v0    # "atomSize":J
    .restart local v32    # "atomName":Ljava/lang/String;
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local v36    # "tmpAtomPosition":I
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    cmp-long v3, v0, v24

    if-nez v3, :cond_11

    .line 1326
    add-long v3, v12, v28

    invoke-virtual {v10, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1327
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 1328
    .local v3, "atomLargeSizeBuf":[B
    array-length v4, v3

    const/4 v6, 0x0

    invoke-virtual {v10, v3, v6, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    if-gez v4, :cond_10

    .line 1329
    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    :cond_10
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 1332
    .local v4, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 1333
    .local v6, "atomLargeSize":J
    add-long/2addr v12, v6

    .line 1334
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1335
    .end local v3    # "atomLargeSizeBuf":[B
    .end local v4    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v6    # "atomLargeSize":J
    goto :goto_8

    .line 1220
    .end local v0    # "atomSize":J
    .end local v12    # "filePointer":J
    .end local v18    # "atomSizeBuf":[B
    .end local v19    # "atomNameBuf":[B
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v36    # "tmpAtomPosition":I
    .end local v46    # "parentContainer":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_a

    .line 1335
    .restart local v0    # "atomSize":J
    .restart local v12    # "filePointer":J
    .restart local v18    # "atomSizeBuf":[B
    .restart local v19    # "atomNameBuf":[B
    .restart local v32    # "atomName":Ljava/lang/String;
    .restart local v36    # "tmpAtomPosition":I
    .restart local v46    # "parentContainer":[Ljava/lang/String;
    :cond_11
    cmp-long v3, v0, v22

    if-nez v3, :cond_12

    .line 1336
    goto :goto_9

    .line 1338
    :cond_12
    add-long/2addr v12, v0

    .line 1341
    .end local v0    # "atomSize":J
    .end local v32    # "atomName":Ljava/lang/String;
    .end local v36    # "tmpAtomPosition":I
    :goto_8
    move-object/from16 v7, p1

    move-object v3, v2

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-wide/from16 v8, v26

    move-object/from16 v6, v33

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v44

    move-object/from16 v14, v46

    const/4 v15, 0x4

    goto/16 :goto_0

    .line 1226
    .end local v18    # "atomSizeBuf":[B
    .end local v19    # "atomNameBuf":[B
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .end local v46    # "parentContainer":[Ljava/lang/String;
    .local v4, "atomSizeBuf":[B
    .local v5, "atomNameBuf":[B
    .local v6, "outputFile":Ljava/io/File;
    .local v8, "size":J
    .restart local v14    # "parentContainer":[Ljava/lang/String;
    :cond_13
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object/from16 v46, v14

    .line 1342
    .end local v4    # "atomSizeBuf":[B
    .end local v5    # "atomNameBuf":[B
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .end local v12    # "filePointer":J
    .end local v14    # "parentContainer":[Ljava/lang/String;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    :goto_9
    :try_start_c
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .end local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    :try_start_d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 1344
    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    goto :goto_f

    .line 1220
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    .restart local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v0

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object v1, v0

    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    goto :goto_a

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .local v4, "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catchall_4
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object v1, v0

    .end local v4    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    :goto_a
    :try_start_e
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .end local p0    # "inputFilePath":Ljava/lang/String;
    .end local p1    # "outputFilePath":Ljava/lang/String;
    :goto_b
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .end local v11    # "outputRAF":Ljava/io/RandomAccessFile;
    .restart local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local p0    # "inputFilePath":Ljava/lang/String;
    .restart local p1    # "outputFilePath":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_c

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .restart local v4    # "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catchall_7
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    move-object v1, v0

    .end local v4    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    :goto_c
    :try_start_10
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_d

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .end local p0    # "inputFilePath":Ljava/lang/String;
    .end local p1    # "outputFilePath":Ljava/lang/String;
    :goto_d
    throw v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1342
    .end local v10    # "inputRAF":Ljava/io/RandomAccessFile;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    .restart local p0    # "inputFilePath":Ljava/lang/String;
    .restart local p1    # "outputFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_e

    .end local v16    # "inputFile":Ljava/io/File;
    .end local v26    # "size":J
    .end local v33    # "outputFile":Ljava/io/File;
    .restart local v4    # "inputFile":Ljava/io/File;
    .restart local v6    # "outputFile":Ljava/io/File;
    .restart local v8    # "size":J
    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v33, v6

    move-wide/from16 v26, v8

    .line 1343
    .end local v4    # "inputFile":Ljava/io/File;
    .end local v6    # "outputFile":Ljava/io/File;
    .end local v8    # "size":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "inputFile":Ljava/io/File;
    .restart local v26    # "size":J
    .restart local v33    # "outputFile":Ljava/io/File;
    :goto_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1345
    .end local v0    # "e":Ljava/io/IOException;
    :goto_f
    return-void
.end method

.method private static blacklist isNalStartCode([BI)Z
    .locals 4
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 1378
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 1379
    return v2

    .line 1381
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    sget-object v1, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1382
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_1

    .line 1383
    return v2

    .line 1381
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    .end local v0    # "j":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1212
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedFormat(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1208
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist releaseAudioObjects()V
    .locals 4

    .line 841
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 844
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 845
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing output audio encoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 853
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 854
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 855
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 858
    goto :goto_1

    .line 856
    :catch_1
    move-exception v0

    .line 857
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing input audio decoder."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 863
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 864
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 867
    goto :goto_2

    .line 865
    :catch_2
    move-exception v0

    .line 866
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Exception in releasing audio extractor."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method

.method private blacklist releaseHDRObjects()V
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEIdataHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 907
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    if-eqz v0, :cond_0

    .line 909
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->release()V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    goto :goto_0

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing image converter."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist releaseHandleObjects()V
    .locals 6

    .line 886
    sget-wide v0, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->SRCDestroy(J)V

    .line 888
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sSRCHandle:J

    .line 889
    const-string v0, " SRC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_0
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->VSPDestroy(J)V

    .line 894
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sVSPHandle:J

    .line 895
    const-string v0, " VSP release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_1
    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 899
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudio:Lcom/samsung/android/transcode/util/AudioSolution;

    sget-wide v4, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/transcode/util/AudioSolution;->NAACEncoderDeInit(J)Z

    .line 900
    sput-wide v2, Lcom/samsung/android/transcode/core/EncodeVideo;->sNAACHandle:J

    .line 901
    const-string v0, " NAAC release end "

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_2
    return-void
.end method

.method private blacklist releaseMuxer()V
    .locals 3

    .line 872
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 874
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 878
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    goto :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TranscodeLib"

    const-string v2, "Exception in releasing muxer."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist releaseSurfaceObjects()V
    .locals 4

    .line 821
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    .line 824
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Exception in releasing outputSurface."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-eqz v0, :cond_1

    .line 832
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    .line 833
    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 836
    goto :goto_1

    .line 834
    :catch_1
    move-exception v0

    .line 835
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Exception in releasing input surface."

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist releaseVideoObjects()V
    .locals 5

    .line 786
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 789
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 790
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 791
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Exception in releasing output video encoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    .line 796
    :goto_0
    goto :goto_2

    .line 795
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 796
    throw v0

    .line 798
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 800
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 801
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 802
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 803
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 807
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 804
    :catch_1
    move-exception v0

    .line 805
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Exception in releasing input video decoder."

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v4, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v4

    aput-boolean v3, v0, v4

    .line 808
    :goto_3
    goto :goto_5

    .line 807
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAsyncCodecReleased:[Z

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 808
    throw v0

    .line 810
    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 812
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 813
    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 816
    goto :goto_6

    .line 814
    :catch_2
    move-exception v0

    .line 815
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Exception in releasing video extractor."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_6
    return-void
.end method

.method private blacklist supportConverter()Z
    .locals 2

    .line 1373
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HDR2SDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method blacklist checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "inputUri"    # Landroid/net/Uri;
    .param p7, "rewrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1401
    if-lez p2, :cond_a

    if-lez p3, :cond_a

    .line 1405
    if-eqz p1, :cond_9

    .line 1409
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_1

    .line 1410
    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_0

    .line 1411
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

    .line 1415
    :cond_1
    if-eqz p4, :cond_8

    .line 1420
    :goto_0
    :try_start_0
    invoke-static {p4, p5, p6}, Lcom/samsung/android/transcode/info/MediaInfo;->getFileInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    nop

    .line 1424
    const/4 v0, 0x1

    invoke-static {p4, p5, p6, v0}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    .line 1425
    const/4 v0, 0x0

    invoke-static {p4, p5, p6, v0}, Lcom/samsung/android/transcode/info/MediaInfo;->getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioinfo:Landroid/media/MediaFormat;

    .line 1427
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v0}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->isSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1431
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    .line 1432
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    if-eqz v0, :cond_2

    .line 1433
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-static {v0}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->getHDRMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    .line 1436
    :cond_2
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1437
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mNumOfSVCLayers:I

    .line 1438
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    .line 1439
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0, p4, p5, p6}, Lcom/samsung/android/transcode/util/SEFHelper;->initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    .line 1440
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    .line 1441
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1442
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    .line 1444
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->checkSEFData(IJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    .line 1445
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

    .line 1446
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSefhelper:Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getRegionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRegionList:Ljava/util/List;

    .line 1448
    :cond_4
    invoke-direct {p0, p2, p3, p7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkVideoCodec(IIZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1452
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    .line 1453
    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    .line 1454
    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    .line 1455
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_5

    .line 1456
    iput-object p6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    .line 1457
    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    goto :goto_1

    .line 1459
    :cond_5
    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 1461
    :goto_1
    return-void

    .line 1449
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1428
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1421
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid input file - can\'t get file info"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1416
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1406
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_a
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
    .locals 21

    move-object/from16 v1, p0

    .line 1030
    :try_start_0
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    .local v0, "extractor":Landroid/media/MediaExtractor;
    goto :goto_0

    .line 1033
    .end local v0    # "extractor":Landroid/media/MediaExtractor;
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    .line 1035
    .restart local v0    # "extractor":Landroid/media/MediaExtractor;
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v3

    .line 1037
    .local v3, "videoTrack":I
    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 1038
    .local v4, "inputFormat":Landroid/media/MediaFormat;
    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 1039
    .local v5, "trimEndTime":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const-wide/16 v10, 0x3e8

    if-nez v9, :cond_2

    .line 1040
    iget-boolean v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v9, :cond_1

    .line 1041
    sget-object v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-wide v12, v9, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    mul-long/2addr v12, v10

    move-wide v5, v12

    .end local v5    # "trimEndTime":J
    .local v12, "trimEndTime":J
    goto :goto_1

    .line 1043
    .end local v12    # "trimEndTime":J
    .restart local v5    # "trimEndTime":J
    :cond_1
    const-string v9, "durationUs"

    invoke-virtual {v4, v9}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v5, v12

    .line 1045
    :goto_1
    const-string v9, "TranscodeLib"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getOutputFileSize  trimEndTime was 0 but updated trimEndTime : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1052
    iget-wide v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    cmp-long v9, v12, v7

    if-ltz v9, :cond_4

    .line 1053
    const-string/jumbo v9, "video/avc"

    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1054
    const v9, 0x3f666666    # 0.9f

    iput v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    .line 1057
    :cond_3
    iget v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    iget-wide v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    move/from16 v20, v3

    .end local v3    # "videoTrack":I
    .local v20, "videoTrack":I
    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v2, v5, v2

    div-long v15, v2, v10

    iget v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v2, v2, 0x3e8

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v10

    invoke-static/range {v12 .. v19}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    .local v2, "outputVideBitRate":I
    goto :goto_3

    .line 1061
    .end local v2    # "outputVideBitRate":I
    .end local v20    # "videoTrack":I
    .restart local v3    # "videoTrack":I
    :cond_4
    move/from16 v20, v3

    .end local v3    # "videoTrack":I
    .restart local v20    # "videoTrack":I
    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoinfo:Landroid/media/MediaFormat;

    const-string v3, "mime"

    .line 1062
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    move v14, v2

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    iget-boolean v15, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIs360Video:Z

    iget v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    sget-object v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v9, v9, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    .line 1061
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(IILjava/lang/String;Ljava/lang/String;ZZIII)I

    move-result v2

    .line 1067
    .restart local v2    # "outputVideBitRate":I
    :goto_3
    iget-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v9, v5, v9

    long-to-double v9, v9

    const-wide v11, 0x415e848000000000L    # 8000000.0

    div-double/2addr v9, v11

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    add-int/2addr v3, v2

    int-to-double v11, v3

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    mul-double/2addr v9, v11

    double-to-int v3, v9

    .line 1070
    .local v3, "size":I
    iget-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v9, v7

    if-nez v7, :cond_6

    .line 1071
    int-to-double v7, v3

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    return v7

    .line 1073
    :cond_6
    return v3

    .line 1077
    .end local v0    # "extractor":Landroid/media/MediaExtractor;
    .end local v2    # "outputVideBitRate":I
    .end local v3    # "size":I
    .end local v4    # "inputFormat":Landroid/media/MediaFormat;
    .end local v5    # "trimEndTime":J
    .end local v20    # "videoTrack":I
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1079
    const/4 v2, -0x1

    return v2

    .line 1075
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1076
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1080
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 1082
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 124
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 126
    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 10
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .param p6, "isRewrite"    # Z
    .param p7, "isSEFVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x1

    move-object v9, p0

    iput-boolean v0, v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 139
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 140
    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZI)V
    .locals 11
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .param p6, "isRewrite"    # Z
    .param p7, "isSEFVideo"    # Z
    .param p8, "inputFPS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    move-object v8, p0

    move/from16 v9, p8

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 153
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 155
    if-nez p7, :cond_0

    if-lez v9, :cond_0

    .line 156
    iput v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    .line 157
    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    .line 159
    :cond_0
    iget-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v0, :cond_1

    if-nez p6, :cond_1

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 161
    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 162
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

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 166
    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 68
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 70
    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 9
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "isRewrite"    # Z
    .param p6, "isSEFVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 83
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 84
    return-void
.end method

.method public blacklist initialize(Ljava/lang/String;IILjava/lang/String;ZZI)V
    .locals 11
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .param p5, "isRewrite"    # Z
    .param p6, "isSEFVideo"    # Z
    .param p7, "inputFPS"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    move-object v8, p0

    move/from16 v9, p7

    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    .line 97
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkInitialize(Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 99
    const/4 v0, 0x1

    if-nez p6, :cond_0

    if-lez v9, :cond_0

    .line 100
    iput v9, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    .line 101
    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mKeepSourceFrameRate:Z

    .line 103
    :cond_0
    iget-boolean v1, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    if-eqz v1, :cond_1

    if-nez p5, :cond_1

    .line 104
    iput-boolean v10, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMConvert:Z

    .line 105
    iput-boolean v0, v8, Lcom/samsung/android/transcode/core/EncodeVideo;->mSMEncode:Z

    .line 106
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

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudiosolution()V

    .line 111
    return-void
.end method

.method protected blacklist prepareHDRConverter(J)V
    .locals 25
    .param p1, "seektime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1483
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareHDRConverter  seektime : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TranscodeLib"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    iput-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSeektime:J

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createVideoExtractor()V

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->createAudioExtractor()V

    .line 1488
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v5

    .line 1489
    .local v5, "videoTrack":I
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 1491
    .local v0, "audioTrack":I
    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    .line 1492
    .local v6, "inputVideoFormat":Landroid/media/MediaFormat;
    const-string v7, "HDR-OFF"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input video format: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v1, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkSourceFrameRate(Landroid/media/MediaFormat;)V

    .line 1496
    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-lez v7, :cond_0

    iget v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iput v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    .line 1497
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkOutputVideoBitRate()V

    .line 1499
    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v7, v9, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    .line 1500
    .local v7, "outputVideoFormat":Landroid/media/MediaFormat;
    const v9, 0x7f000789

    const-string v10, "color-format"

    invoke-virtual {v7, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1502
    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    const-string v10, "bitrate"

    invoke-virtual {v7, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1503
    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    const-string v10, "frame-rate"

    invoke-virtual {v7, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1504
    iget v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    const-string v10, "i-frame-interval"

    invoke-virtual {v7, v10, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1505
    const-string/jumbo v9, "priority"

    invoke-virtual {v7, v9, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1507
    const/4 v10, 0x0

    .line 1508
    .local v10, "inputAudioFormat":Landroid/media/MediaFormat;
    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    .line 1509
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can\'t get audio format : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1511
    :cond_1
    iget-object v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 1512
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Audio input format "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :goto_0
    new-instance v12, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    invoke-direct {v12, v6}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    .line 1517
    .local v12, "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    iget v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 1518
    const-string v13, "HDR_TYPE_HDR10_PULS"

    invoke-static {v4, v13}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setHdrType(I)V

    goto :goto_1

    .line 1521
    :cond_2
    const-string v13, "HDR_TYPE ? "

    invoke-static {v4, v13}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    :goto_1
    new-instance v13, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;

    invoke-direct {v13, v7}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;-><init>(Landroid/media/MediaFormat;)V

    .line 1525
    .local v13, "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    invoke-virtual {v13, v8}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(I)V

    .line 1527
    new-instance v15, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;

    invoke-direct {v15}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;-><init>()V

    .line 1528
    .local v15, "option":Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;
    iput-boolean v8, v15, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->preferHw:Z

    .line 1530
    new-instance v11, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-direct {v11, v12, v13, v15}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;-><init>(Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImageFormat;Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;)V

    iput-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    .line 1531
    new-instance v8, Lcom/samsung/android/transcode/core/EncodeVideo$1;

    invoke-direct {v8, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$1;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    invoke-virtual {v11, v8}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->setEventListener(Lcom/samsung/android/media/vidsol/simgp/ImgConverter$OnEventListener;)V

    .line 1559
    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    sget-object v11, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;->OUTPUT:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;

    invoke-virtual {v8, v14, v11}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->queryMetadata(ILcom/samsung/android/media/vidsol/simgp/ImgConverter$PortType;)Landroid/os/Bundle;

    move-result-object v8

    .line 1562
    .local v8, "data":Landroid/os/Bundle;
    nop

    .line 1563
    const-string v11, "color-standard"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1562
    invoke-virtual {v7, v11, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1564
    nop

    .line 1565
    const-string v11, "color-range"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1564
    invoke-virtual {v7, v11, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1566
    nop

    .line 1567
    const-string v11, "color-transfer"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1566
    invoke-virtual {v7, v11, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1569
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "output video format : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v11, :cond_7

    .line 1572
    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v11, :cond_3

    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v11, v14}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_3
    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 1573
    .local v11, "filepath":Ljava/lang/String;
    :goto_2
    const/4 v14, 0x0

    invoke-virtual {v1, v11, v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1574
    const/16 v14, 0x8

    move/from16 v18, v0

    .end local v0    # "audioTrack":I
    .local v18, "audioTrack":I
    const-string/jumbo v0, "param-meta-author"

    invoke-virtual {v7, v0, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1575
    const-string/jumbo v0, "param-meta-transcoding"

    const/4 v14, 0x1

    invoke-virtual {v7, v0, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1576
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const/4 v14, -0x1

    if-eq v0, v14, :cond_5

    .line 1577
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const-string/jumbo v14, "param-meta-recording-mode"

    invoke-virtual {v7, v14, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "set recording mode for NDE : "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1573
    .end local v18    # "audioTrack":I
    .restart local v0    # "audioTrack":I
    :cond_4
    move/from16 v18, v0

    .line 1582
    .end local v0    # "audioTrack":I
    .restart local v18    # "audioTrack":I
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 1583
    if-eqz v10, :cond_6

    .line 1584
    const-string v0, "mime"

    invoke-virtual {v10, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1583
    const-string v14, "audio/unknown"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1585
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    .line 1586
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    move/from16 v0, v18

    goto :goto_4

    .line 1583
    :cond_6
    const/4 v14, 0x1

    .line 1588
    const/4 v0, -0x1

    .line 1589
    .end local v18    # "audioTrack":I
    .restart local v0    # "audioTrack":I
    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    .line 1590
    const/4 v14, 0x0

    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 1593
    :goto_4
    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move/from16 v16, v0

    .end local v0    # "audioTrack":I
    .local v16, "audioTrack":I
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v14, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 1594
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 1595
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    .line 1596
    const-string v0, "Muxer start "

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1571
    .end local v11    # "filepath":Ljava/lang/String;
    .end local v16    # "audioTrack":I
    .restart local v0    # "audioTrack":I
    :cond_7
    move/from16 v18, v0

    .end local v0    # "audioTrack":I
    .restart local v18    # "audioTrack":I
    move/from16 v16, v18

    .line 1599
    .end local v18    # "audioTrack":I
    .restart local v16    # "audioTrack":I
    :goto_5
    move-object v14, v12

    .end local v12    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .local v14, "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    iget-wide v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v18, 0x0

    cmp-long v0, v11, v18

    if-nez v0, :cond_8

    if-eqz v10, :cond_8

    .line 1600
    const-string v0, "durationUs"

    invoke-virtual {v10, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1601
    .local v11, "duration":J
    invoke-virtual {v1, v11, v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOriginalTrimTime(J)V

    .line 1603
    .end local v11    # "duration":J
    :cond_8
    invoke-virtual {v1, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimAudioEndUs(Landroid/media/MediaFormat;)V

    .line 1605
    cmp-long v0, v2, v18

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v3, v11}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1607
    :cond_9
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_b

    cmp-long v0, v2, v18

    if-eqz v0, :cond_b

    .line 1608
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v3, v11}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 1609
    :goto_6
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    cmp-long v0, v11, v2

    if-gez v0, :cond_b

    .line 1610
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    const-wide/16 v18, -0x1

    cmp-long v0, v11, v18

    if-eqz v0, :cond_a

    .line 1613
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_6

    .line 1611
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "Invalid File!"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1618
    :cond_b
    iget v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    int-to-long v11, v0

    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    mul-long/2addr v11, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v11, v2

    long-to-int v2, v11

    .line 1619
    .local v2, "framecount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excepted frame count :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    const/4 v3, 0x5

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x0

    aput-object v11, v12, v17

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->sendMetadata(I[Ljava/lang/Object;)V

    .line 1622
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_10

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    if-nez v0, :cond_10

    .line 1623
    const/4 v3, 0x0

    .line 1624
    .local v3, "offset":I
    const/4 v0, 0x0

    .line 1625
    .local v0, "sawEOSA":Z
    const/high16 v11, 0x20000

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 1627
    .local v11, "dstBufA":Ljava/nio/ByteBuffer;
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1628
    .local v12, "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    move/from16 v20, v0

    .end local v0    # "sawEOSA":Z
    .local v20, "sawEOSA":Z
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v11, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1629
    const-string v0, "Audio rewirte"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    :goto_7
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_f

    if-nez v20, :cond_f

    .line 1631
    iput v3, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1632
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v11, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1633
    iget v0, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_c

    .line 1634
    const-string/jumbo v0, "saw input EOS: Audio"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const/16 v20, 0x1

    .line 1636
    move/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "framecount":I
    .local v21, "framecount":I
    iput v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v2, v21

    goto :goto_7

    .line 1638
    .end local v21    # "framecount":I
    .restart local v2    # "framecount":I
    :cond_c
    move/from16 v21, v2

    .end local v2    # "framecount":I
    .restart local v21    # "framecount":I
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move/from16 v22, v3

    .end local v3    # "offset":I
    .local v22, "offset":I
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1639
    iget-wide v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    const-wide/16 v18, -0x1

    cmp-long v0, v2, v18

    if-eqz v0, :cond_d

    iget-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .end local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .local v23, "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .local v24, "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    iget-wide v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    cmp-long v0, v2, v13

    if-lez v0, :cond_e

    .line 1640
    const/16 v20, 0x1

    .line 1641
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    .line 1642
    const-string/jumbo v0, "sawEOS: true: A"

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    goto :goto_7

    .line 1639
    .end local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :cond_d
    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .line 1644
    .end local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :cond_e
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1646
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v0, v2, v11, v12}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1649
    goto :goto_8

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to writeSampleData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_8
    iget-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v3, v13}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    .line 1651
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    goto/16 :goto_7

    .line 1630
    .end local v21    # "framecount":I
    .end local v22    # "offset":I
    .end local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v2    # "framecount":I
    .restart local v3    # "offset":I
    .restart local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :cond_f
    move/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .end local v2    # "framecount":I
    .end local v3    # "offset":I
    .end local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v21    # "framecount":I
    .restart local v22    # "offset":I
    .restart local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    goto :goto_9

    .line 1622
    .end local v11    # "dstBufA":Ljava/nio/ByteBuffer;
    .end local v12    # "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    .end local v20    # "sawEOSA":Z
    .end local v21    # "framecount":I
    .end local v22    # "offset":I
    .end local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v2    # "framecount":I
    .restart local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :cond_10
    move/from16 v21, v2

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .line 1658
    .end local v2    # "framecount":I
    .end local v13    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .end local v14    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v21    # "framecount":I
    .restart local v23    # "outImageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    .restart local v24    # "imageFormat":Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
    :goto_9
    const/4 v2, 0x1

    invoke-virtual {v6, v9, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1659
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v6, v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Z)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 1660
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_11

    .line 1663
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    new-instance v2, Lcom/samsung/android/transcode/core/EncodeVideo$2;

    invoke-direct {v2, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$2;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 1797
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 1798
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v7, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1800
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    new-instance v2, Lcom/samsung/android/transcode/core/EncodeVideo$3;

    invoke-direct {v2, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$3;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 1862
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    iget-object v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->setOutputSurface(Landroid/view/Surface;)V

    .line 1863
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 1864
    return-void

    .line 1661
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v2, "can\'t set VideoDecoder"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized blacklist release()V
    .locals 3

    monitor-enter p0

    .line 920
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TranscodeLib"

    const-string/jumbo v2, "releasing encoder objects"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseFramemanager()V

    .line 922
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseVideoObjects()V

    .line 923
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseSurfaceObjects()V

    .line 924
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseAudioObjects()V

    .line 925
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseMuxer()V

    .line 926
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseHandleObjects()V

    .line 928
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvertFull:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->releaseHDRObjects()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 941
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 930
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_1

    :try_start_3
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUpdateCreationTime:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 932
    :cond_1
    :try_start_4
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mIs360Video:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_2

    .line 933
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->insertUuidFor360Video(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 936
    :cond_2
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_3

    .line 937
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 938
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mDecAudio:Ljava/nio/ByteBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 941
    :cond_3
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 942
    :try_start_9
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 943
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 944
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 945
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 946
    nop

    .line 947
    monitor-exit p0

    return-void

    .line 945
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 941
    :catchall_3
    move-exception v1

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 942
    :try_start_c
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 943
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 944
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 945
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 946
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 945
    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 919
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist setAudioCodecs(I)V
    .locals 2
    .param p1, "audioCodecType"    # I

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :pswitch_0
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    .line 249
    goto :goto_0

    .line 245
    :pswitch_1
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    .line 246
    nop

    .line 253
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
    .param p1, "videoCodecType"    # I
    .param p2, "audioCodecType"    # I

    .line 222
    invoke-virtual {p0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    .line 223
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    .line 224
    return-void
.end method

.method public blacklist setExportRecordingMode(I)V
    .locals 2
    .param p1, "exportrecordingmode"    # I

    .line 1924
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExportRecordingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    return-void
.end method

.method public blacklist setMaxOutputSize(I)V
    .locals 6
    .param p1, "kilobytes"    # I

    .line 279
    if-lez p1, :cond_2

    .line 282
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

    .line 283
    int-to-long v2, p1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    .line 289
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

    .line 291
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

    .line 292
    return-void

    .line 280
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setOutputBitdepth(I)Z
    .locals 5
    .param p1, "bitDepth"    # I

    .line 1348
    sget-object v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v0, v0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1349
    .local v0, "inputBitDepth":I
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvertFull:Z

    .line 1350
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    .line 1352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOutputBitdepth  bitdepth : "

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

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TranscodeLib"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    if-ne p1, v1, :cond_4

    .line 1356
    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1357
    return v3

    .line 1358
    :cond_1
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->supportConverter()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1359
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportOMX()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1360
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvertFull:Z

    goto :goto_1

    .line 1362
    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvert:Z

    .line 1364
    :goto_1
    return v3

    .line 1366
    :cond_3
    return v2

    .line 1369
    :cond_4
    return v2
.end method

.method public blacklist setOutputConfig(II)V
    .locals 2
    .param p1, "configType"    # I
    .param p2, "value"    # I

    .line 295
    packed-switch p1, :pswitch_data_0

    .line 316
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

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid config Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVieoTargetFrameRate(I)V

    .line 313
    goto :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoOutputBitRate(I)V

    .line 310
    goto :goto_0

    .line 306
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputBitdepth(I)Z

    .line 307
    goto :goto_0

    .line 303
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setMaxOutputSize(I)V

    .line 304
    goto :goto_0

    .line 300
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setAudioCodecs(I)V

    .line 301
    goto :goto_0

    .line 297
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setVideoCodecs(I)V

    .line 298
    nop

    .line 319
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
    .param p1, "rotation"    # I

    .line 227
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRotation:I

    .line 228
    return-void
.end method

.method public blacklist setTrimTime(JJ)V
    .locals 6
    .param p1, "startMs"    # J
    .param p3, "endMs"    # J

    .line 174
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_8

    .line 177
    cmp-long v0, p3, v0

    if-ltz v0, :cond_7

    .line 180
    cmp-long v0, p1, p3

    if-gtz v0, :cond_6

    .line 183
    cmp-long v0, p1, p3

    if-eqz v0, :cond_5

    .line 187
    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    .line 188
    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 189
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v2, :cond_3

    .line 190
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

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSuperSlow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 199
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    .line 200
    :cond_1
    iget v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlow120(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    .line 202
    mul-long v2, p3, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 203
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 204
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    .line 195
    :cond_2
    :goto_0
    mul-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 196
    mul-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_1

    .line 207
    :cond_3
    mul-long v2, p1, v0

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 208
    mul-long/2addr v0, p3

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 210
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

    .line 213
    return-void

    .line 184
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endUs cannot be equal to startUs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be more than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setVideoCodecs(I)V
    .locals 2
    .param p1, "videoCodecType"    # I

    .line 256
    packed-switch p1, :pswitch_data_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videoCodecType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :pswitch_0
    const-string/jumbo v0, "video/hevc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 265
    goto :goto_0

    .line 261
    :pswitch_1
    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 262
    goto :goto_0

    .line 258
    :pswitch_2
    const-string/jumbo v0, "video/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    .line 259
    nop

    .line 270
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
    .param p1, "bitRate"    # I

    .line 231
    if-lez p1, :cond_0

    .line 233
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    .line 234
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitRate should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setVieoTargetFrameRate(I)V
    .locals 2
    .param p1, "fps"    # I

    .line 237
    if-lez p1, :cond_0

    .line 239
    iput p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoTargetFrameRate:I

    .line 240
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fps should be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startHDREncoding()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1868
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 1873
    :cond_0
    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "startHDREncoding"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    .line 1876
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    .line 1878
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareHDRConverter(J)V

    .line 1879
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 1880
    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 1882
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    if-nez v0, :cond_5

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    if-nez v0, :cond_5

    .line 1883
    :cond_2
    const-string v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR_audioDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRAudioDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HDR_videoDone :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mHDRVideoDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserStop :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mError :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    if-eqz v0, :cond_3

    .line 1886
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 1887
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 1888
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mImgConverter:Lcom/samsung/android/media/vidsol/simgp/ImgConverter;

    invoke-virtual {v0}, Lcom/samsung/android/media/vidsol/simgp/ImgConverter;->convert()I

    .line 1889
    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "waiting eos......"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1893
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1896
    goto :goto_0

    .line 1897
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1894
    :catch_0
    move-exception v1

    .line 1895
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1897
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1898
    const-string v0, "TranscodeLib"

    const-string v1, "decoder waiting done!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mError:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_3

    .line 1901
    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "waiting encoder eos......"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    monitor-enter v0

    .line 1904
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1907
    goto :goto_1

    .line 1908
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 1905
    :catch_1
    move-exception v1

    .line 1906
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1908
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1909
    const-string v0, "TranscodeLib"

    const-string v1, "encoder waiting done!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1908
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 1897
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 1913
    :cond_3
    :goto_4
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_4

    .line 1914
    const-string v0, "TranscodeLib"

    const-string/jumbo v1, "user stop"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    goto :goto_5

    .line 1917
    :cond_4
    const-string v0, "TranscodeLib"

    const-string v1, "finish convert"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    :cond_5
    :goto_5
    return-void

    .line 1869
    :cond_6
    :goto_6
    const-string v0, "TranscodeLib"

    const-string v1, "Not starting encoding because it is stopped by user."

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    return-void
.end method

.method public blacklist startRewriting()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void

    .line 368
    :cond_0
    const-string/jumbo v0, "startRewriting"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    .line 371
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    iput-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 374
    const/4 v5, -0x1

    iput v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPendingAudioDecoderOutputBufferIndex:I

    .line 375
    iget-wide v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    .line 376
    .local v6, "mTrimRewriteEndTime":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimVideoStartPointChanged()V

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkAudioTranscodeSection()V

    .line 381
    const-string v0, "Rewriting starts"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "sawEOSV":Z
    const/4 v8, 0x0

    .line 385
    .local v8, "sawEOSA":Z
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 386
    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 388
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v9

    .line 390
    .local v9, "videoTrack":I
    if-eq v9, v5, :cond_13

    .line 391
    iget-object v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 396
    .local v10, "formatV":Landroid/media/MediaFormat;
    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v11

    .line 397
    .local v11, "audioTrack":I
    const/4 v12, 0x0

    .line 398
    .local v12, "formatA":Landroid/media/MediaFormat;
    if-eq v11, v5, :cond_1

    .line 399
    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    .line 402
    :cond_1
    iget-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v13, :cond_8

    .line 403
    iget-boolean v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-eqz v13, :cond_2

    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v13, v14}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    :cond_2
    iget-object v13, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    .line 404
    .local v13, "filepath":Ljava/lang/String;
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filepath :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1, v13, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 406
    const/16 v14, 0x8

    const-string/jumbo v15, "param-meta-author"

    invoke-virtual {v10, v15, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 407
    const-string/jumbo v14, "param-meta-transcoding"

    invoke-virtual {v10, v14, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 409
    :cond_3
    iget v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    const-string/jumbo v15, "param-meta-recording-mode"

    if-eq v14, v5, :cond_4

    .line 410
    iget v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v10, v15, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 411
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set recording mode for NDE : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mExportRecordingMode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :cond_4
    iget v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v3, 0xa

    if-ne v14, v3, :cond_5

    .line 413
    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v10, v15, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "set recording mode for HDR 10 PLUS : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_5
    :goto_1
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 418
    if-eqz v12, :cond_6

    const-string v3, "mime"

    invoke-virtual {v12, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v14, "audio/unknown"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 419
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v12}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_2

    .line 423
    :cond_6
    const/4 v3, -0x1

    move v11, v3

    .line 425
    :goto_2
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v3, v14}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 426
    sget-object v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget-boolean v3, v3, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    if-eqz v3, :cond_7

    .line 427
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    sget-object v14, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v14, v14, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    sget-object v15, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFileinfo:Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    iget v15, v15, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    invoke-virtual {v3, v14, v15}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 429
    :cond_7
    iget-object v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 430
    iput-boolean v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    .line 433
    .end local v13    # "filepath":Ljava/lang/String;
    :cond_8
    invoke-direct {v1, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v3

    .line 434
    .local v3, "bufferSizeV":I
    const/4 v13, 0x0

    .line 436
    .local v13, "offset":I
    if-ne v11, v5, :cond_9

    .line 437
    const/4 v8, 0x1

    .line 438
    const/4 v14, 0x0

    iput-boolean v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 441
    :cond_9
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 442
    .local v14, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 443
    .local v15, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v14, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 444
    iget-object v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v17

    move v4, v0

    .line 446
    .end local v0    # "sawEOSV":Z
    .local v4, "sawEOSV":Z
    .local v17, "presentationTimeUs":J
    :goto_3
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v5, "fail to writeSampleData "

    const-wide/16 v20, -0x1

    if-nez v0, :cond_d

    if-nez v4, :cond_d

    .line 447
    iput v13, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 448
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v14, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 449
    iget v0, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_a

    .line 450
    const-string/jumbo v0, "saw input EOS: Video"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v4, 0x1

    .line 452
    const/4 v5, 0x0

    iput v5, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, -0x1

    goto :goto_3

    .line 454
    :cond_a
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move/from16 v22, v3

    move/from16 v23, v4

    .end local v3    # "bufferSizeV":I
    .end local v4    # "sawEOSV":Z
    .local v22, "bufferSizeV":I
    .local v23, "sawEOSV":Z
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    iput-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 455
    cmp-long v0, v6, v20

    if-eqz v0, :cond_b

    iget-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v3, v6

    if-lez v0, :cond_b

    .line 457
    const/4 v4, 0x1

    .line 458
    .end local v23    # "sawEOSV":Z
    .restart local v4    # "sawEOSV":Z
    const-string/jumbo v0, "sawEOS: true: V"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v22

    const/4 v5, -0x1

    goto :goto_3

    .line 460
    .end local v4    # "sawEOSV":Z
    .restart local v23    # "sawEOSV":Z
    :cond_b
    iget-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v3, v17

    if-ltz v0, :cond_c

    .line 461
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 463
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v3, v14, v15}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_4

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_4
    iget-wide v3, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    .line 470
    :cond_c
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move/from16 v3, v22

    move/from16 v4, v23

    const/4 v5, -0x1

    goto :goto_3

    .line 446
    .end local v22    # "bufferSizeV":I
    .end local v23    # "sawEOSV":Z
    .restart local v3    # "bufferSizeV":I
    .restart local v4    # "sawEOSV":Z
    :cond_d
    move/from16 v22, v3

    move/from16 v23, v4

    .line 475
    .end local v3    # "bufferSizeV":I
    .end local v4    # "sawEOSV":Z
    .restart local v22    # "bufferSizeV":I
    .restart local v23    # "sawEOSV":Z
    const/4 v3, -0x1

    if-eq v11, v3, :cond_11

    .line 476
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 478
    .local v3, "dstBufA":Ljava/nio/ByteBuffer;
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v4, v0

    .line 479
    .local v4, "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v3, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 481
    :goto_5
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_10

    if-nez v8, :cond_10

    .line 482
    iput v13, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 483
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v3, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 484
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_e

    .line 485
    const-string/jumbo v0, "saw input EOS: Audio"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v8, 0x1

    .line 487
    move v0, v8

    const/4 v8, 0x0

    .end local v8    # "sawEOSA":Z
    .local v0, "sawEOSA":Z
    iput v8, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    move v8, v0

    goto :goto_5

    .line 489
    .end local v0    # "sawEOSA":Z
    .restart local v8    # "sawEOSA":Z
    :cond_e
    move/from16 v16, v8

    const/4 v8, 0x0

    .end local v8    # "sawEOSA":Z
    .local v16, "sawEOSA":Z
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move/from16 v19, v9

    .end local v9    # "videoTrack":I
    .local v19, "videoTrack":I
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 490
    cmp-long v0, v6, v20

    if-eqz v0, :cond_f

    iget-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v8, v6

    if-lez v0, :cond_f

    .line 492
    const/4 v8, 0x1

    .line 493
    .end local v16    # "sawEOSA":Z
    .restart local v8    # "sawEOSA":Z
    const-string/jumbo v0, "sawEOS: true: A"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v9, v19

    goto :goto_5

    .line 495
    .end local v8    # "sawEOSA":Z
    .restart local v16    # "sawEOSA":Z
    :cond_f
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 497
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    invoke-virtual {v0, v8, v3, v4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 500
    goto :goto_6

    .line 498
    :catch_1
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_6
    iget-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v24, v3

    const/4 v3, 0x1

    .end local v3    # "dstBufA":Ljava/nio/ByteBuffer;
    .local v24, "dstBufA":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v8, v9, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    .line 502
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move/from16 v8, v16

    move/from16 v9, v19

    move-object/from16 v3, v24

    goto :goto_5

    .line 481
    .end local v16    # "sawEOSA":Z
    .end local v19    # "videoTrack":I
    .end local v24    # "dstBufA":Ljava/nio/ByteBuffer;
    .restart local v3    # "dstBufA":Ljava/nio/ByteBuffer;
    .restart local v8    # "sawEOSA":Z
    .restart local v9    # "videoTrack":I
    :cond_10
    move-object/from16 v24, v3

    move/from16 v16, v8

    move/from16 v19, v9

    .line 507
    .end local v3    # "dstBufA":Ljava/nio/ByteBuffer;
    .end local v4    # "bufferInfoA":Landroid/media/MediaCodec$BufferInfo;
    .end local v8    # "sawEOSA":Z
    .end local v9    # "videoTrack":I
    .restart local v16    # "sawEOSA":Z
    .restart local v19    # "videoTrack":I
    move/from16 v8, v16

    goto :goto_7

    .line 475
    .end local v16    # "sawEOSA":Z
    .end local v19    # "videoTrack":I
    .restart local v8    # "sawEOSA":Z
    .restart local v9    # "videoTrack":I
    :cond_11
    move/from16 v19, v9

    .line 507
    .end local v9    # "videoTrack":I
    .restart local v19    # "videoTrack":I
    :goto_7
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_12

    .line 508
    const-string v0, "Rewriting finished"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_12
    return-void

    .line 393
    .end local v10    # "formatV":Landroid/media/MediaFormat;
    .end local v11    # "audioTrack":I
    .end local v12    # "formatA":Landroid/media/MediaFormat;
    .end local v13    # "offset":I
    .end local v14    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v15    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    .end local v17    # "presentationTimeUs":J
    .end local v19    # "videoTrack":I
    .end local v22    # "bufferSizeV":I
    .end local v23    # "sawEOSV":Z
    .local v0, "sawEOSV":Z
    .restart local v9    # "videoTrack":I
    :cond_13
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Absent valid video track"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist startSMEncoding()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v1, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 515
    const-string v0, "Not starting Slowmotion encoding because it is stopped by user."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void

    .line 518
    :cond_0
    const-string/jumbo v0, "startSMEncoding"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_video()V

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    .line 523
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v6, v7, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    .line 528
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-wide v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 530
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 531
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 532
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid File!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transcode section - Audio : Current position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 539
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

    .line 540
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

    .line 538
    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    .line 546
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoEncoderDone:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v0, :cond_8

    .line 547
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_6

    .line 548
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    .line 551
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    if-nez v0, :cond_7

    .line 552
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startVideoDecoding()V

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mPrepared:Z

    .line 556
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->sendFrametoEncoder()V

    .line 558
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v0, :cond_9

    .line 559
    const-string v0, "Encoding abruptly stopped."

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    nop

    .line 563
    :cond_8
    return-void

    .line 558
    :cond_9
    goto :goto_1
.end method

.method public blacklist startSMRewriting()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    const-string v2, "TranscodeLib"

    if-eqz v0, :cond_0

    .line 627
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    return-void

    .line 630
    :cond_0
    const-string/jumbo v0, "startSMRewriting"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize_audio()V

    .line 633
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    .line 634
    iget-wide v4, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    .line 635
    .local v4, "mTrimRewriteEndTime":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTrimAudioStartPos()V

    .line 639
    const-string v0, "Rewriting starts"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTimescale:F

    .line 643
    :cond_1
    const/4 v0, 0x0

    .line 644
    .local v0, "sawEOSV":Z
    iget-object v6, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 645
    .local v6, "videoTrack":I
    const/4 v7, -0x1

    .line 646
    .local v7, "audioTrack":I
    iget-boolean v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v7

    .line 649
    :cond_2
    const/4 v8, 0x0

    .line 651
    .local v8, "formatA":Landroid/media/MediaFormat;
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioProgressTime:J

    .line 652
    iput-wide v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVidioProgressTime:J

    .line 654
    const/4 v9, -0x1

    if-eq v6, v9, :cond_13

    .line 655
    iget-object v10, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    .line 660
    .local v10, "formatV":Landroid/media/MediaFormat;
    if-eq v7, v9, :cond_3

    .line 661
    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 664
    :cond_3
    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    const/4 v12, 0x1

    if-nez v11, :cond_6

    .line 665
    invoke-direct {v1, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkFormatV(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object v10

    .line 666
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "video format "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v11, v10}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v11

    iput v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    .line 668
    if-eqz v8, :cond_5

    const-string v11, "mime"

    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "audio/unknown"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSlowV2()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "csd-0"

    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 670
    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 671
    .local v13, "csd":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v14, v14, [B

    .line 672
    .local v14, "buffer":[B
    array-length v15, v14

    invoke-virtual {v13, v14, v3, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 673
    const/16 v15, 0x11

    aput-byte v15, v14, v3

    .line 674
    const/16 v15, -0x70

    aput-byte v15, v14, v12

    .line 675
    array-length v15, v14

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 676
    .local v15, "csdTemp":Ljava/nio/ByteBuffer;
    array-length v9, v14

    invoke-virtual {v15, v14, v3, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 677
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 678
    invoke-virtual {v8, v11, v15}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 680
    .end local v13    # "csd":Ljava/nio/ByteBuffer;
    .end local v14    # "buffer":[B
    .end local v15    # "csdTemp":Ljava/nio/ByteBuffer;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audio format "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v9

    iput v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_0

    .line 683
    :cond_5
    const/4 v7, -0x1

    .line 686
    :goto_0
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v9, v11}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 687
    iget-object v9, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v9}, Landroid/media/MediaMuxer;->start()V

    .line 688
    iput-boolean v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    .line 691
    :cond_6
    const/4 v9, 0x0

    .line 693
    .local v9, "offset":I
    const/4 v11, -0x1

    if-ne v7, v11, :cond_7

    .line 695
    iput-boolean v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    .line 696
    iput-boolean v12, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractorDone:Z

    .line 697
    iput-boolean v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    .line 700
    :cond_7
    if-eq v7, v11, :cond_8

    .line 701
    :goto_1
    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v11, :cond_8

    iget-boolean v11, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioEncoderDone:Z

    if-nez v11, :cond_8

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->startAudioEncoding()V

    goto :goto_1

    .line 706
    :cond_8
    invoke-direct {v1, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v11

    .line 707
    .local v11, "bufferSizeV":I
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 708
    .local v12, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 709
    .local v13, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    iget-object v14, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14, v12, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iput v14, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 711
    invoke-static {v10}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHevcFormat(Landroid/media/MediaFormat;)Z

    move-result v14

    move v15, v0

    .line 713
    .end local v0    # "sawEOSV":Z
    .local v14, "isHevc":Z
    .local v15, "sawEOSV":Z
    :goto_2
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_11

    if-nez v15, :cond_11

    .line 714
    iput v9, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 715
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v12, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 716
    iget v0, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v0, :cond_9

    .line 717
    const-string/jumbo v0, "saw input EOS: Video"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v15, 0x1

    .line 719
    iput v3, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_2

    .line 721
    :cond_9
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-wide/from16 v16, v4

    .end local v4    # "mTrimRewriteEndTime":J
    .local v16, "mTrimRewriteEndTime":J
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    .line 722
    .local v3, "presentationTimeUs":J
    iput-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mModifiedVideotime = presentationTime = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v18, v6

    .end local v6    # "videoTrack":I
    .local v18, "videoTrack":I
    iget-wide v5, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-eqz v0, :cond_a

    .line 728
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 729
    .local v0, "a":[B
    const/4 v5, 0x4

    .line 730
    .local v5, "pos":I
    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 731
    array-length v6, v0

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "pos":I
    .local v19, "pos":I
    invoke-virtual {v12, v0, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 732
    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 733
    invoke-virtual {v1, v0, v3, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->calculateIsDrop([BJ)V

    .line 735
    .end local v0    # "a":[B
    .end local v19    # "pos":I
    :cond_a
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 736
    const-wide/16 v5, -0x1

    cmp-long v0, v16, v5

    if-eqz v0, :cond_b

    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v19, v3

    .end local v3    # "presentationTimeUs":J
    .local v19, "presentationTimeUs":J
    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_c

    .line 737
    const/4 v0, 0x1

    .line 738
    .end local v15    # "sawEOSV":Z
    .local v0, "sawEOSV":Z
    const-string/jumbo v3, "sawEOS: true: V"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v0

    move-object v6, v8

    move/from16 v21, v9

    const/4 v3, 0x0

    goto/16 :goto_6

    .line 736
    .end local v0    # "sawEOSV":Z
    .end local v19    # "presentationTimeUs":J
    .restart local v3    # "presentationTimeUs":J
    .restart local v15    # "sawEOSV":Z
    :cond_b
    move-wide/from16 v19, v3

    .line 740
    .end local v3    # "presentationTimeUs":J
    .restart local v19    # "presentationTimeUs":J
    :cond_c
    iget-wide v3, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    iput-wide v3, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 741
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 743
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mIsDrop:Z

    if-nez v0, :cond_10

    .line 745
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    .line 746
    .local v3, "index":I
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [B

    .line 747
    .local v4, "encodedStream":[B
    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v12, v4, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeSampleData time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v8

    move/from16 v21, v9

    .end local v8    # "formatA":Landroid/media/MediaFormat;
    .end local v9    # "offset":I
    .local v6, "formatA":Landroid/media/MediaFormat;
    .local v21, "offset":I
    iget-wide v8, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " length="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    if-nez v14, :cond_e

    .line 756
    :cond_d
    move v3, v0

    .line 757
    sget-object v5, Lcom/samsung/android/transcode/core/EncodeVideo;->NAL_START_CODE:[B

    array-length v5, v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->findNalStartCode([BI)I

    move-result v0

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findNalStartCode. i: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", index: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v5, -0x1

    if-ne v0, v5, :cond_d

    move v5, v3

    move v3, v0

    goto :goto_3

    .line 754
    :cond_e
    move v5, v3

    move v3, v0

    .line 762
    .end local v0    # "i":I
    .local v3, "i":I
    .local v5, "index":I
    :goto_3
    invoke-virtual {v12, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 764
    iput v5, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 768
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    invoke-virtual {v0, v8, v12, v13}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    goto :goto_4

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to writeSampleData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_4
    const/4 v8, -0x1

    if-ne v7, v8, :cond_f

    .line 773
    iget-wide v8, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v8, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mPausedVideoUs:J

    .line 775
    :cond_f
    iget-wide v8, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "i":I
    .local v22, "i":I
    invoke-virtual {v1, v8, v9, v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->updateProgress(JZ)V

    goto :goto_5

    .line 743
    .end local v4    # "encodedStream":[B
    .end local v5    # "index":I
    .end local v6    # "formatA":Landroid/media/MediaFormat;
    .end local v21    # "offset":I
    .end local v22    # "i":I
    .restart local v8    # "formatA":Landroid/media/MediaFormat;
    .restart local v9    # "offset":I
    :cond_10
    move-object v6, v8

    move/from16 v21, v9

    const/4 v3, 0x0

    .line 777
    .end local v8    # "formatA":Landroid/media/MediaFormat;
    .end local v9    # "offset":I
    .restart local v6    # "formatA":Landroid/media/MediaFormat;
    .restart local v21    # "offset":I
    :goto_5
    iget-object v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 779
    .end local v19    # "presentationTimeUs":J
    :goto_6
    move-object v8, v6

    move-wide/from16 v4, v16

    move/from16 v6, v18

    move/from16 v9, v21

    goto/16 :goto_2

    .line 713
    .end local v16    # "mTrimRewriteEndTime":J
    .end local v18    # "videoTrack":I
    .end local v21    # "offset":I
    .local v4, "mTrimRewriteEndTime":J
    .local v6, "videoTrack":I
    .restart local v8    # "formatA":Landroid/media/MediaFormat;
    .restart local v9    # "offset":I
    :cond_11
    move-wide/from16 v16, v4

    move/from16 v18, v6

    move-object v6, v8

    move/from16 v21, v9

    .line 782
    .end local v4    # "mTrimRewriteEndTime":J
    .end local v8    # "formatA":Landroid/media/MediaFormat;
    .end local v9    # "offset":I
    .local v6, "formatA":Landroid/media/MediaFormat;
    .restart local v16    # "mTrimRewriteEndTime":J
    .restart local v18    # "videoTrack":I
    .restart local v21    # "offset":I
    iget-boolean v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v0, :cond_12

    const-string v0, "Rewriting finished"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_12
    return-void

    .line 657
    .end local v10    # "formatV":Landroid/media/MediaFormat;
    .end local v11    # "bufferSizeV":I
    .end local v12    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v13    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    .end local v14    # "isHevc":Z
    .end local v15    # "sawEOSV":Z
    .end local v16    # "mTrimRewriteEndTime":J
    .end local v18    # "videoTrack":I
    .end local v21    # "offset":I
    .local v0, "sawEOSV":Z
    .restart local v4    # "mTrimRewriteEndTime":J
    .local v6, "videoTrack":I
    .restart local v8    # "formatA":Landroid/media/MediaFormat;
    :cond_13
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Absent valid video track"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist stop()V
    .locals 5

    .line 951
    const-string v0, "TranscodeLib"

    const-string v1, "Stop method called "

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mConvertFull:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 954
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-nez v0, :cond_0

    .line 955
    return-void

    .line 958
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    .line 959
    const-string v0, "TranscodeLib"

    const-string v1, "mUserStop - true"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-eqz v2, :cond_2

    .line 963
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    .line 965
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    .line 966
    const-string v1, "TranscodeLib"

    const-string v2, "mUserStop - true"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-nez v1, :cond_3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 969
    :cond_3
    :try_start_1
    const-string v1, "TranscodeLib"

    const-string v2, "Calling wait on stop lock."

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
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

    .line 976
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 975
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 971
    :catch_0
    move-exception v1

    .line 972
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "TranscodeLib"

    const-string v3, "Stop lock interrupted."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 975
    .end local v1    # "e":Ljava/lang/InterruptedException;
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

    .line 976
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v1, :cond_4

    goto :goto_0

    .line 978
    :cond_4
    :goto_1
    monitor-exit v0

    .line 980
    :goto_2
    return-void

    .line 975
    :goto_3
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

    .line 976
    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->release()V

    .line 977
    :cond_5
    nop

    .end local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    throw v1

    .line 978
    .restart local p0    # "this":Lcom/samsung/android/transcode/core/EncodeVideo;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
