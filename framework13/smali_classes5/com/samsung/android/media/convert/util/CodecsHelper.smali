.class public Lcom/samsung/android/media/convert/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "inputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 341
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 342
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 343
    return-object v0
.end method

.method public static blacklist createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 327
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 328
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 329
    return-object v0
.end method

.method public static blacklist createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;
    .locals 3
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 314
    .local v0, "encoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 315
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 316
    return-object v0
.end method

.method public static blacklist createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 73
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 75
    return-object v0
.end method

.method public static blacklist createExtractor(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaExtractor;
    .locals 7
    .param p0, "descriptor"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 56
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 57
    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 58
    return-object v0
.end method

.method public static blacklist createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .locals 2
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 42
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 43
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 44
    return-object v0
.end method

.method public static blacklist createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 129
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 130
    return-object v0
.end method

.method public static blacklist createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 116
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 117
    return-object v0
.end method

.method public static blacklist createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;
    .locals 4
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "decoder":Landroid/media/MediaCodec;
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 358
    const-string v1, "SemVideoConverter"

    const-string v2, "createVideoDecoder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p0, p1, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    nop

    .line 368
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 370
    const-string v2, "createVideoDecoder - start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v0

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 365
    :cond_0
    const/4 v0, 0x0

    .line 366
    new-instance v2, Ljava/io/IOException;

    const-string v3, "createVideoDecode configure error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 99
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 102
    return v0

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 84
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 85
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 87
    return v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 184
    .local v0, "codec":Landroid/media/MediaCodecInfo;
    if-nez v0, :cond_3

    .line 185
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    .line 186
    .local v1, "numCodecs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 187
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 188
    .local v3, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    goto :goto_2

    .line 191
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 193
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 194
    move-object v0, v3

    .line 195
    goto :goto_2

    .line 192
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 186
    .end local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v4    # "types":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "numCodecs":I
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method public static blacklist getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 155
    .local v0, "codec":Landroid/media/MediaCodecInfo;
    if-nez v0, :cond_3

    .line 156
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    .line 157
    .local v1, "numCodecs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 158
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 159
    .local v3, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    goto :goto_2

    .line 162
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 164
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 165
    move-object v0, v3

    .line 166
    goto :goto_2

    .line 163
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 157
    .end local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v4    # "types":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "numCodecs":I
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method public static blacklist getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;
    .locals 8
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z
    .param p2, "preferSw"    # Z

    .line 469
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 470
    .local v0, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 472
    .local v2, "infos":[Landroid/media/MediaCodecInfo;
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 473
    .local v4, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eq v5, p1, :cond_0

    .line 474
    goto :goto_2

    .line 477
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v5

    if-eq v5, p2, :cond_1

    .line 478
    goto :goto_2

    .line 481
    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, "types":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_3

    .line 483
    aget-object v7, v5, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 484
    return-object v4

    .line 482
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 472
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    .end local v5    # "types":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 140
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getRemainedResourceCapacity()I
    .locals 4

    .line 438
    const/4 v0, -0x1

    .line 439
    .local v0, "capacity":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v1

    .line 442
    .local v1, "ResourceHelper":Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->getRemainedVideoCapacity()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 446
    if-eqz v1, :cond_0

    .line 447
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    .line 448
    const/4 v1, 0x0

    goto :goto_1

    .line 446
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 443
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    if-eqz v1, :cond_0

    .line 447
    goto :goto_0

    .line 452
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemainedResourceCapacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemVideoConverter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v0

    .line 446
    :goto_2
    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    .line 448
    const/4 v1, 0x0

    .line 450
    :cond_1
    throw v2
.end method

.method private static blacklist isAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 137
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .locals 7
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 278
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 279
    .local v2, "codec":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "codecName":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 281
    const-string v4, "OMX.SEC.naac.enc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "OMX.SEC.aac.enc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 282
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 284
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 285
    move-object v0, v2

    .line 283
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 288
    .end local v4    # "types":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_2
    goto :goto_3

    .line 290
    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_5

    .line 291
    const-string v4, "OMX.SEC.aac.dec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 292
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 293
    .restart local v4    # "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_5

    .line 294
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 295
    move-object v0, v2

    .line 293
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 277
    .end local v2    # "codec":Landroid/media/MediaCodecInfo;
    .end local v3    # "codecName":Ljava/lang/String;
    .end local v4    # "types":[Ljava/lang/String;
    .end local v5    # "j":I
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_6
    return-object v0
.end method

.method public static blacklist isSupportOMX()Z
    .locals 5

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string/jumbo v1, "video/avc"

    .line 459
    .local v1, "mimeType":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportOMX getMediaCodec : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemVideoConverter"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "omx."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OMX."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    return v2

    .line 463
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "support":Z
    const-string v1, ""

    .line 246
    .local v1, "format":Ljava/lang/String;
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_4

    .line 250
    :cond_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 253
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 254
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 255
    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 256
    const/4 v0, 0x1

    .line 264
    :cond_1
    nop

    .line 265
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 259
    :catch_0
    move-exception v3

    .line 260
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 265
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 266
    :goto_0
    const/4 v2, 0x0

    .line 269
    goto :goto_1

    .line 267
    :catch_1
    move-exception v3

    .line 270
    nop

    .line 271
    :goto_1
    return v0

    .line 264
    :goto_2
    nop

    .line 265
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 266
    const/4 v2, 0x0

    .line 269
    goto :goto_3

    .line 267
    :catch_2
    move-exception v4

    .line 270
    :goto_3
    throw v3

    .line 247
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_2
    :goto_4
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z
    .locals 2
    .param p0, "retriever"    # Landroid/media/MediaMetadataRetriever;

    .line 143
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "filetype":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/media/convert/core/Convert$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isSupportedFormat(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "support":Z
    const-string v1, ""

    .line 208
    .local v1, "format":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 209
    const/4 v2, 0x0

    return v2

    .line 212
    :cond_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 213
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v3, 0x0

    .line 215
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 216
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 217
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 220
    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 221
    const/4 v0, 0x1

    .line 229
    :cond_1
    nop

    .line 230
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 231
    nop

    .line 232
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 228
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 224
    :catch_0
    move-exception v4

    .line 225
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_2

    .line 230
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 234
    :catch_1
    move-exception v4

    goto :goto_2

    .line 231
    :cond_2
    :goto_0
    nop

    .line 232
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 233
    :goto_1
    const/4 v2, 0x0

    .line 236
    goto :goto_3

    .line 237
    :goto_2
    nop

    .line 238
    :goto_3
    return v0

    .line 229
    :goto_4
    if-eqz v3, :cond_3

    .line 230
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_5

    .line 234
    :catch_2
    move-exception v5

    goto :goto_6

    .line 231
    :cond_3
    :goto_5
    nop

    .line 232
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 233
    const/4 v2, 0x0

    .line 237
    :goto_6
    throw v4
.end method

.method private static blacklist isVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 134
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist scheduleAfter(ILjava/lang/Runnable;)V
    .locals 4
    .param p0, "milliSeconds"    # I
    .param p1, "schedulerCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 383
    nop

    .line 384
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 385
    .local v0, "sch":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    int-to-long v1, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 386
    return-void
.end method

.method public static blacklist suggestBitRate(III)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "fps"    # I

    .line 399
    mul-int v0, p0, p1

    .line 400
    .local v0, "framesize":I
    const/16 v1, 0x21

    const v2, 0x7e9000

    if-lt v0, v2, :cond_1

    .line 401
    if-ge p2, v1, :cond_0

    .line 402
    const v1, 0xbb80

    return v1

    .line 404
    :cond_0
    const v1, 0x11940

    return v1

    .line 406
    :cond_1
    const v2, 0x24a680

    if-lt v0, v2, :cond_3

    .line 407
    if-ge p2, v1, :cond_2

    .line 408
    const/16 v1, 0x4e20

    return v1

    .line 410
    :cond_2
    const v1, 0x9c40

    return v1

    .line 412
    :cond_3
    const v2, 0x1fa400

    if-lt v0, v2, :cond_5

    .line 413
    if-ge p2, v1, :cond_4

    .line 414
    const/16 v1, 0x4268

    return v1

    .line 416
    :cond_4
    const/16 v1, 0x6d60

    return v1

    .line 418
    :cond_5
    const v2, 0xe1000

    if-lt v0, v2, :cond_7

    .line 419
    if-ge p2, v1, :cond_6

    .line 420
    const/16 v1, 0x2ee0

    return v1

    .line 422
    :cond_6
    const/16 v1, 0x5dc0

    return v1

    .line 424
    :cond_7
    const v2, 0x54600

    if-lt v0, v2, :cond_9

    .line 425
    if-ge p2, v1, :cond_8

    .line 426
    const/16 v1, 0xd79

    return v1

    .line 428
    :cond_8
    const/16 v1, 0x1af2

    return v1

    .line 431
    :cond_9
    if-ge p2, v1, :cond_a

    .line 432
    const/16 v1, 0xc06

    return v1

    .line 434
    :cond_a
    const/16 v1, 0x180c

    return v1
.end method
