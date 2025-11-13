.class public Lcom/samsung/android/transcode/info/MediaInfoChecker;
.super Ljava/lang/Object;
.source "MediaInfoChecker.java"


# static fields
.field private static final blacklist FOUR_K_VIDEO_RESOULTION_SIZE:I = 0x870000

.field private static final blacklist NOT_SUPPORT_VC:I = 0x499602d2

.field private static blacklist mp4v_esds_size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    const/16 v0, 0x69

    sput v0, Lcom/samsung/android/transcode/info/MediaInfoChecker;->mp4v_esds_size:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getHDRMode(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)I
    .locals 3
    .param p0, "info"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "hdrType":I
    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 76
    const/4 v0, 0x2

    goto :goto_0

    .line 77
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    if-eqz v1, :cond_2

    .line 78
    const/4 v0, 0x1

    .line 81
    :cond_2
    :goto_0
    return v0
.end method

.method public static blacklist isRewritable(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .locals 8
    .param p0, "audioformat"    # Landroid/media/MediaFormat;
    .param p1, "videoformat"    # Landroid/media/MediaFormat;

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "bSupportedVideoType":Z
    const/4 v1, 0x0

    .line 34
    .local v1, "bSupportedAudioType":Z
    const-string v2, "mime"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "mimeAudio":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "mimeVideo":Ljava/lang/String;
    const-string/jumbo v4, "video/mp4v-es"

    const-string v5, "TranscodeLib"

    if-eqz v2, :cond_1

    const-string/jumbo v6, "video/avc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 39
    const-string/jumbo v6, "video/3gpp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 40
    const-string/jumbo v6, "video/hevc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    const-string v6, "Unsupported mime type: video"

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    if-eqz v3, :cond_3

    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 46
    const-string v6, "audio/3gpp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 47
    const-string v6, "audio/amr-wb"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 50
    :cond_3
    const-string v6, "Unsuppported mime type: audio"

    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "csd-0"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 55
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 56
    .local v4, "csd":Ljava/nio/ByteBuffer;
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

    .line 57
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

    .line 56
    invoke-static {v5, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    sget v7, Lcom/samsung/android/transcode/info/MediaInfoChecker;->mp4v_esds_size:I

    if-le v6, v7, :cond_4

    .line 59
    const/4 v0, 0x0

    .line 63
    .end local v4    # "csd":Ljava/nio/ByteBuffer;
    :cond_4
    if-nez v3, :cond_5

    .line 64
    const-string v4, "audio track is null - skip audio"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x1

    .line 68
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
    .param p0, "info"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedCodecType(Landroid/media/MediaFormat;)Z
    .locals 13
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;

    .line 117
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "mime":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "TranscodeLib"

    if-nez v0, :cond_0

    .line 119
    const-string v3, "isSupportedCodecType mime is null"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return v1

    .line 123
    :cond_0
    new-instance v3, Landroid/media/MediaCodecList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 124
    .local v3, "codecList":Landroid/media/MediaCodecList;
    invoke-virtual {v3, p0}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "codec":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 126
    invoke-virtual {v3}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 127
    .local v6, "infos":[Landroid/media/MediaCodecInfo;
    array-length v7, v6

    move v8, v1

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 128
    .local v9, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 129
    goto :goto_2

    .line 132
    :cond_1
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "types":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    array-length v12, v10

    if-ge v11, v12, :cond_3

    .line 134
    aget-object v12, v10, v11

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 135
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 136
    goto :goto_2

    .line 133
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 127
    .end local v9    # "info":Landroid/media/MediaCodecInfo;
    .end local v10    # "types":[Ljava/lang/String;
    .end local v11    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 140
    :cond_4
    if-nez v5, :cond_5

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportedCodecType not support mime : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return v1

    .line 146
    .end local v6    # "infos":[Landroid/media/MediaCodecInfo;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportedCodecType support codec  : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", mime : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return v4
.end method

.method public static blacklist isSupportedFileFormat(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    .line 23
    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedResolution(Landroid/media/MediaFormat;IIII)Z
    .locals 6
    .param p0, "inputformat"    # Landroid/media/MediaFormat;
    .param p1, "inputwidth"    # I
    .param p2, "inputheight"    # I
    .param p3, "outputwidth"    # I
    .param p4, "outputheight"    # I

    .line 86
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

    .line 89
    const/4 v0, 0x0

    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    if-gez p4, :cond_0

    goto :goto_2

    .line 94
    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v1

    .line 96
    .local v1, "resourceHelper":Lcom/samsung/android/media/SemMediaResourceHelper;
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->getRemainedVideoCapacity()I

    move-result v2

    .line 98
    .local v2, "remainedCapacity":I
    mul-int v3, p1, p2

    mul-int v4, p3, p4

    add-int/2addr v3, v4

    .line 101
    .local v3, "requiredResolutionSizeWithInputAndOutput":I
    const v4, 0x499602d2

    if-eq v2, v4, :cond_1

    .line 102
    move v4, v2

    .local v4, "codecSize":I
    goto :goto_1

    .line 104
    .end local v4    # "codecSize":I
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMaxVideoCapacity()I

    move-result v4

    .line 106
    .restart local v4    # "codecSize":I
    if-gt v4, v3, :cond_3

    .line 107
    const/high16 v5, 0x870000

    if-le v4, v5, :cond_2

    .line 108
    add-int/2addr v5, v4

    goto :goto_0

    :cond_2
    mul-int/lit8 v5, v4, 0x2

    :goto_0
    move v4, v5

    .line 112
    :cond_3
    :goto_1
    if-lt v4, v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    .line 90
    .end local v1    # "resourceHelper":Lcom/samsung/android/media/SemMediaResourceHelper;
    .end local v2    # "remainedCapacity":I
    .end local v3    # "requiredResolutionSizeWithInputAndOutput":I
    .end local v4    # "codecSize":I
    :cond_5
    :goto_2
    return v0
.end method
