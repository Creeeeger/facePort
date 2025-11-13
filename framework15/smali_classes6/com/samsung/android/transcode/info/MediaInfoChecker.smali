.class public Lcom/samsung/android/transcode/info/MediaInfoChecker;
.super Ljava/lang/Object;
.source "MediaInfoChecker.java"


# static fields
.field private static final blacklist FOUR_K_VIDEO_RESOULTION_SIZE:I = 0x870000

.field static final blacklist NOT_SUPPORT_VC:I = 0x499602d2

.field private static blacklist mp4v_esds_size:I

.field public static final blacklist sMediaCodecList:Landroid/media/MediaCodecList;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/transcode/info/MediaInfoChecker;->sMediaCodecList:Landroid/media/MediaCodecList;

    const/16 v0, 0x69

    sput v0, Lcom/samsung/android/transcode/info/MediaInfoChecker;->mp4v_esds_size:I

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

.method private static blacklist getAllCodecList()Landroid/media/MediaCodecList;
    .locals 2

    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfoChecker;->sMediaCodecList:Landroid/media/MediaCodecList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfoChecker;->sMediaCodecList:Landroid/media/MediaCodecList;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public static blacklist getHDRMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    :cond_3
    :goto_1
    return v0
.end method

.method public static blacklist isRewritable(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "mime"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "video/mp4v-es"

    const-string v5, "TranscodeLib"

    if-eqz v2, :cond_1

    const-string v6, "video/avc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "video/3gpp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "video/hevc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "Unsupported mime type: video"

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v3, :cond_3

    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "audio/3gpp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "audio/amr-wb"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "Unsuppported mime type: audio"

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "csd-0"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", csd.capacity(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", csd.limit()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    sget v7, Lcom/samsung/android/transcode/info/MediaInfoChecker;->mp4v_esds_size:I

    if-le v6, v7, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-nez v3, :cond_5

    const-string v4, "audio track is null - skip audio"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method public static blacklist isRewriteSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedCodecType(Landroid/media/MediaFormat;)Z
    .locals 14

    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v3, "isSupportedCodecType mime is null"

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/transcode/info/MediaInfoChecker;->getAllCodecList()Landroid/media/MediaCodecList;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v2

    :goto_1
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportedCodecType not support mime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportedCodecType support codec  : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", mime : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist isSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedResolution(Landroid/media/MediaFormat;IIII)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportedResolution\tinputwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputheight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputheight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranscodeLib"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    if-gez p4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->getRemainedVideoCapacity()I

    move-result v2

    mul-int v3, p1, p2

    mul-int v4, p3, p4

    add-int/2addr v3, v4

    const v4, 0x499602d2

    if-eq v2, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMaxVideoCapacity()I

    move-result v4

    if-gt v4, v3, :cond_3

    const/high16 v5, 0x870000

    if-le v4, v5, :cond_2

    add-int/2addr v5, v4

    goto :goto_0

    :cond_2
    mul-int/lit8 v5, v4, 0x2

    :goto_0
    move v4, v5

    :cond_3
    :goto_1
    if-lt v4, v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v0
.end method
