.class public Lcom/samsung/android/transcode/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# static fields
.field private static final blacklist AUTHOR_SAMSUNG_CAMERA:I = 0x0

.field private static final blacklist AUTHOR_SAMSUNG_EDITOR:I = 0x8

.field private static final blacklist BITRATE_FRACTION_FRAMERATE:F = 0.8f

.field private static final blacklist BITRATE_FRACTION_HEVC:F = 0.85f

.field private static final blacklist BITRATE_MARGIN_FACTOR:F = 1.25f

.field private static final blacklist SEC_AAC_DECODER_OMX_NAMES:[Ljava/lang/String;

.field private static final blacklist SEC_AAC_ENCODER_OMX_NAMES:[Ljava/lang/String;

.field public static final blacklist sMediaExtractor:Landroid/media/MediaExtractor;

.field public static final blacklist sMetadataRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "OMX.SEC.aac.enc"

    const-string v1, "c2.sec.aac.encoder"

    const-string v2, "OMX.SEC.naac.enc"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->SEC_AAC_ENCODER_OMX_NAMES:[Ljava/lang/String;

    const-string v0, "OMX.SEC.aac.dec"

    const-string v1, "c2.sec.aac.decoder"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->SEC_AAC_DECODER_OMX_NAMES:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMediaExtractor:Landroid/media/MediaExtractor;

    sput-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "do not instatiate"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-object v0
.end method

.method public static blacklist createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-object v0
.end method

.method public static blacklist createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-object v0
.end method

.method public static blacklist createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-object v0
.end method

.method public static blacklist createExtractor(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaExtractor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-object v6
.end method

.method public static blacklist createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMediaExtractor()Landroid/media/MediaExtractor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static blacklist createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Z)Landroid/media/MediaCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const-string v1, "createVideoDecoder"

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p0, p1, v1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const-string v1, "createVideoDecoder - start"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "createVideoDecode configure error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist get360Bitrate(II)I
    .locals 2

    mul-int v0, p0, p1

    const v1, 0xc8000

    if-gt v0, v1, :cond_0

    const/16 v1, 0x1f40

    return v1

    :cond_0
    const v1, 0x1c2000

    if-gt v0, v1, :cond_1

    const/16 v1, 0x32c8

    return v1

    :cond_1
    const/high16 v1, 0x320000

    if-gt v0, v1, :cond_2

    const/16 v1, 0x4650

    return v1

    :cond_2
    const v1, 0x3f4800

    if-gt v0, v1, :cond_3

    const/16 v1, 0x61a8

    return v1

    :cond_3
    nop

    const v1, 0x88b8

    return v1
.end method

.method public static blacklist getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist getCommonBitrate(II)I
    .locals 3

    mul-int v0, p0, p1

    const/high16 v1, 0x21c0000

    if-lt v0, v1, :cond_0

    const v1, 0x13880

    return v1

    :cond_0
    const v1, 0x7e9000

    if-lt v0, v1, :cond_1

    const v1, 0x88b8

    return v1

    :cond_1
    const v1, 0x384000

    if-lt v0, v1, :cond_2

    const/16 v1, 0x4650

    return v1

    :cond_2
    const v1, 0x1fa400

    if-lt v0, v1, :cond_3

    const/16 v1, 0x32c8

    return v1

    :cond_3
    const v1, 0xe1000

    if-lt v0, v1, :cond_4

    const/16 v1, 0x1f40

    return v1

    :cond_4
    const v1, 0x54600

    const/16 v2, 0x1388

    if-lt v0, v1, :cond_5

    return v2

    :cond_5
    const v1, 0x12c00

    if-lt v0, v1, :cond_6

    return v2

    :cond_6
    const v1, 0x9c40

    if-lt v0, v1, :cond_7

    const/16 v1, 0x200

    return v1

    :cond_7
    const/16 v1, 0x118

    return v1
.end method

.method public static blacklist getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getHdrPlusBitrate(II)I
    .locals 2

    mul-int v0, p0, p1

    const v1, 0xe1000

    if-gt v0, v1, :cond_0

    const/16 v1, 0x3a98

    return v1

    :cond_0
    const v1, 0x1fa400

    if-gt v0, v1, :cond_1

    const/16 v1, 0x61a8

    return v1

    :cond_1
    const v1, 0x2a3000

    if-gt v0, v1, :cond_2

    const/16 v1, 0x7530

    return v1

    :cond_2
    nop

    const v1, 0xd2f0

    return v1
.end method

.method public static blacklist getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .locals 5

    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportCodec(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaCodec : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public static blacklist getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;
    .locals 6

    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v5

    if-eq v5, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportCodec(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1

    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getSamsungVideoAvcBitrate(II)I
    .locals 3

    mul-int v0, p0, p1

    const v1, 0x9c40

    if-gt v0, v1, :cond_0

    const/16 v1, 0x200

    return v1

    :cond_0
    const v1, 0x12c00

    const/16 v2, 0x1388

    if-gt v0, v1, :cond_1

    return v2

    :cond_1
    const v1, 0x4b000

    if-gt v0, v1, :cond_2

    return v2

    :cond_2
    const v1, 0x54600

    if-gt v0, v1, :cond_3

    const/16 v1, 0x1f40

    return v1

    :cond_3
    const v1, 0xe1000

    if-gt v0, v1, :cond_4

    const/16 v1, 0x2ee0

    return v1

    :cond_4
    const v1, 0x1fa400

    if-gt v0, v1, :cond_5

    const/16 v1, 0x4268

    return v1

    :cond_5
    const v1, 0x384000

    if-gt v0, v1, :cond_6

    const/16 v1, 0x61a8

    return v1

    :cond_6
    const v1, 0x7e9000

    const v2, 0xbb80

    if-gt v0, v1, :cond_7

    return v2

    :cond_7
    const/high16 v1, 0x21c0000

    if-gt v0, v1, :cond_8

    const v1, 0x13880

    return v1

    :cond_8
    return v2
.end method

.method public static blacklist getVideoEncodingBitRate(FJJIII)I
    .locals 7

    long-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v1, p5, 0x2

    sub-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoEncodingBitRate maxSizeKB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sizeFraction :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitatre :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p6, p7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoMinBitrate(II)I

    move-result v1

    invoke-static {p6, p7}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v3

    if-ge v0, v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitrate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is under min bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v0, v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "over max bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v0, v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVideoEncodingBitRate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static blacklist getVideoMinBitrate(II)I
    .locals 3

    mul-int v0, p0, p1

    div-int/lit16 v0, v0, 0x100

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/16 v1, 0x63

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    if-le v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    const/16 v1, 0x96

    goto :goto_0

    :cond_1
    const/16 v1, 0x4b0

    if-le v0, v2, :cond_2

    if-gt v0, v1, :cond_2

    const/16 v1, 0x15e

    goto :goto_0

    :cond_2
    const/16 v2, 0x546

    if-le v0, v1, :cond_3

    if-gt v0, v2, :cond_3

    const/16 v1, 0x190

    goto :goto_0

    :cond_3
    const/16 v1, 0xe10

    if-le v0, v2, :cond_4

    if-gt v0, v1, :cond_4

    const/16 v1, 0x4b0

    goto :goto_0

    :cond_4
    if-le v0, v1, :cond_5

    const/16 v1, 0x1fa4

    if-gt v0, v1, :cond_5

    const/16 v1, 0x960

    goto :goto_0

    :cond_5
    const/16 v1, 0x251c

    :goto_0
    return v1
.end method

.method public static blacklist is10bitVideo(Landroid/media/MediaMetadataRetriever;)Z
    .locals 2

    :try_start_0
    const-string v0, "10"

    const/16 v1, 0x404

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isHevcFormat(Landroid/media/MediaFormat;)Z
    .locals 2

    const-string v0, "video/hevc"

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isHighBitrateMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHighBitrateMode. codecType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", framerate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "video/hevc"

    iget-object v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    iget v3, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getSamsungVideoAvcBitrate(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHighBitrateMode. [1] expected original bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    const/16 v4, 0x3c

    if-lt v3, v4, :cond_1

    const v3, 0x3f4ccccd    # 0.8f

    int-to-float v4, v0

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    int-to-float v3, v3

    mul-float/2addr v4, v3

    const/high16 v3, 0x41f00000    # 30.0f

    div-float/2addr v4, v3

    float-to-int v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHighBitrateMode. [2] over 60fps case. bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    int-to-float v3, v0

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHighBitrateMode. [3] check condition. bitrate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    if-ge v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private static blacklist isSamsungAACCodec(Landroid/media/MediaCodecInfo;Z)Z
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/transcode/util/CodecsHelper;->SEC_AAC_ENCODER_OMX_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/transcode/util/CodecsHelper;->SEC_AAC_DECODER_OMX_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static blacklist isSamsungAuthor(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

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

.method private static blacklist isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .locals 3

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSamsungAACCodec(Landroid/media/MediaCodecInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportCodec(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist isSupportCodec(Ljava/lang/String;Landroid/media/MediaCodecInfo;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isSupportOMX()Z
    .locals 5

    const-string v0, "video/avc"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportOMX getMediaCodec : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static blacklist isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSupportedFormat(Ljava/lang/String;)Z
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->newMetadataRetriever()Landroid/media/MediaMetadataRetriever;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    nop

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method private static blacklist isVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist keepOriginalBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepOriginalBitrate. exportInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getVideoCodecType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getFrameRate()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "], sourceInfo: ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getVideoCodecType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getFrameRate()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Framerate:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getWidth()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getHeight()I

    move-result v0

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$isSupportCodec$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$isSupportOMX$1(Landroid/media/MediaCodecInfo;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "omx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist newMediaExtractor()Landroid/media/MediaExtractor;
    .locals 1

    sget-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMediaExtractor:Landroid/media/MediaExtractor;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    :goto_0
    return-object v0
.end method

.method private static blacklist newMetadataRetriever()Landroid/media/MediaMetadataRetriever;
    .locals 1

    sget-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/transcode/util/CodecsHelper;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static blacklist scheduleAfter(ILjava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    nop

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v1, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static blacklist suggestBitRate(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getCommonBitrate(II)I

    move-result v0

    return v0
.end method

.method public static blacklist suggestBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I
    .locals 12

    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->isHdr()Z

    move-result v3

    iget-boolean v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f59999a    # 0.85f

    const-string v7, "TranscodeLib"

    if-eqz v4, :cond_1

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->get360Bitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getHdrPlusBitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    goto :goto_1

    :cond_2
    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSamsungAuthor(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->keepOriginalBitrate(Lcom/samsung/android/transcode/info/ExportMediaInfo;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->colorTransfer:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_4

    invoke-static {}, Lcom/samsung/android/transcode/util/CodecsHelper;->supportHierB()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    :cond_3
    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    int-to-float v4, v4

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    :cond_4
    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[final] keepOriginalBitrate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getSamsungVideoAvcBitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isHighBitrateMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    int-to-float v8, v4

    div-float/2addr v8, v6

    float-to-int v8, v8

    mul-int/lit8 v4, v8, 0x2

    goto :goto_1

    :cond_6
    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getCommonBitrate(II)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    :cond_7
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[1] get from table. bitrate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isHighBitrateMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getFrameRate()I

    move-result v8

    const/16 v9, 0x3c

    if-lt v8, v9, :cond_8

    int-to-float v9, v4

    mul-float/2addr v9, v5

    int-to-float v5, v8

    mul-float/2addr v9, v5

    const/high16 v5, 0x41f00000    # 30.0f

    div-float/2addr v9, v5

    float-to-int v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[2] over 60fps case. bitrate: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/transcode/info/ExportMediaInfo;->getVideoCodecType()Ljava/lang/String;

    move-result-object v5

    const-string v9, "video/hevc"

    if-nez v3, :cond_9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const v10, 0x4c4b400

    if-eq v4, v10, :cond_9

    int-to-float v10, v4

    mul-float/2addr v10, v6

    float-to-int v4, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[3] normal hevc case. bitrate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget v10, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    if-eqz v10, :cond_c

    iget v10, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    iget v11, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-static {v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSamsungAuthor(I)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->VideoCodecType:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    int-to-float v9, v10

    mul-float/2addr v9, v6

    float-to-int v10, v9

    goto :goto_2

    :cond_a
    int-to-float v9, v10

    div-float/2addr v9, v6

    float-to-int v10, v9

    :cond_b
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[4] sourceBitrate : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", originalBitrate: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "suggestBitRate. bitrate: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_d
    :goto_3
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist supportHierB()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HIERARCHICAL_B_ENCODING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
