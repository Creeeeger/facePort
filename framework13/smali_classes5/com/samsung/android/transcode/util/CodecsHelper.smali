.class public Lcom/samsung/android/transcode/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# static fields
.field private static final blacklist AUTHOR_SAMSUNG_CAMERA:I = 0x0

.field private static final blacklist AUTHOR_SAMSUNG_EDITOR:I = 0x8

.field private static final blacklist BITRATE_FRACTION:F = 0.85f


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
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

    .line 294
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 295
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 296
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 297
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

    .line 280
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 281
    .local v0, "decoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 282
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 283
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

    .line 268
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 269
    .local v0, "encoder":Landroid/media/MediaCodec;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 270
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 271
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

    .line 65
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 66
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 68
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

    .line 50
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 51
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 52
    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 53
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

    .line 35
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 36
    .local v0, "extractor":Landroid/media/MediaExtractor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->semSetRunningMode(I)V

    .line 37
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public static blacklist createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 124
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 125
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 126
    return-object v0
.end method

.method public static blacklist createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 109
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 110
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method public static blacklist createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Z)Landroid/media/MediaCodec;
    .locals 4
    .param p0, "inputFormat"    # Landroid/media/MediaFormat;
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "star_flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 376
    .local v0, "decoder":Landroid/media/MediaCodec;
    const-string v1, "TranscodeLib"

    const-string v2, "createVideoDecoder"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p0, p1, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    nop

    .line 383
    if-eqz p2, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 385
    const-string v2, "createVideoDecoder - start"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    return-object v0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 381
    new-instance v2, Ljava/io/IOException;

    const-string v3, "createVideoDecode configure error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist get360Bitrate(II)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 537
    mul-int v0, p0, p1

    .line 538
    .local v0, "frameSize":I
    const v1, 0xc8000

    if-gt v0, v1, :cond_0

    .line 539
    const/16 v1, 0x1f40

    return v1

    .line 540
    :cond_0
    const v1, 0x1c2000

    if-gt v0, v1, :cond_1

    .line 541
    const/16 v1, 0x32c8

    return v1

    .line 542
    :cond_1
    const/high16 v1, 0x320000

    if-gt v0, v1, :cond_2

    .line 543
    const/16 v1, 0x4650

    return v1

    .line 544
    :cond_2
    const v1, 0x3f4800

    if-gt v0, v1, :cond_3

    .line 545
    const/16 v1, 0x61a8

    return v1

    .line 546
    :cond_3
    nop

    .line 547
    const v1, 0x88b8

    return v1
.end method

.method public static blacklist getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 92
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 95
    return v0

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 77
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 80
    return v0

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist getAvcBitrate(II)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 473
    mul-int v0, p0, p1

    .line 474
    .local v0, "frameSize":I
    const/high16 v1, 0x21c0000

    if-lt v0, v1, :cond_0

    .line 475
    const v1, 0x13880

    return v1

    .line 476
    :cond_0
    const v1, 0x7f8000

    if-lt v0, v1, :cond_1

    .line 477
    const v1, 0x88b8

    return v1

    .line 478
    :cond_1
    const v1, 0x384000

    if-lt v0, v1, :cond_2

    .line 479
    const/16 v1, 0x4650

    return v1

    .line 480
    :cond_2
    const v1, 0x1fa400

    if-lt v0, v1, :cond_3

    .line 481
    const/16 v1, 0x32c8

    return v1

    .line 482
    :cond_3
    const v1, 0xe1000

    if-lt v0, v1, :cond_4

    .line 483
    const/16 v1, 0x1f40

    return v1

    .line 484
    :cond_4
    const v1, 0x54600

    const/16 v2, 0x1388

    if-lt v0, v1, :cond_5

    .line 485
    return v2

    .line 486
    :cond_5
    const v1, 0x12c00

    if-lt v0, v1, :cond_6

    .line 487
    return v2

    .line 488
    :cond_6
    const v1, 0x9c40

    if-lt v0, v1, :cond_7

    .line 489
    const/16 v1, 0x200

    return v1

    .line 491
    :cond_7
    const/16 v1, 0x118

    return v1
.end method

.method public static blacklist getBitrate(II)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 496
    mul-int v0, p0, p1

    .line 497
    .local v0, "frameSize":I
    const v1, 0x9c40

    if-gt v0, v1, :cond_0

    .line 498
    const/16 v1, 0x200

    return v1

    .line 499
    :cond_0
    const v1, 0x12c00

    const/16 v2, 0x1388

    if-gt v0, v1, :cond_1

    .line 500
    return v2

    .line 501
    :cond_1
    const v1, 0x4b000

    if-gt v0, v1, :cond_2

    .line 502
    return v2

    .line 503
    :cond_2
    const v1, 0x54600

    if-gt v0, v1, :cond_3

    .line 504
    const/16 v1, 0x1f40

    return v1

    .line 505
    :cond_3
    const v1, 0xe1000

    if-gt v0, v1, :cond_4

    .line 506
    const/16 v1, 0x2ee0

    return v1

    .line 507
    :cond_4
    const v1, 0x1fa400

    if-gt v0, v1, :cond_5

    .line 508
    const/16 v1, 0x4268

    return v1

    .line 509
    :cond_5
    const v1, 0x384000

    if-gt v0, v1, :cond_6

    .line 510
    const/16 v1, 0x61a8

    return v1

    .line 511
    :cond_6
    const v1, 0x7f8000

    const v2, 0xbb80

    if-gt v0, v1, :cond_7

    .line 512
    return v2

    .line 513
    :cond_7
    const/high16 v1, 0x21c0000

    if-gt v0, v1, :cond_8

    .line 515
    const v1, 0x13880

    return v1

    .line 517
    :cond_8
    return v2
.end method

.method public static blacklist getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getHdrPlusBitrate(II)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 522
    mul-int v0, p0, p1

    .line 523
    .local v0, "frameSize":I
    const v1, 0xe1000

    if-gt v0, v1, :cond_0

    .line 524
    const/16 v1, 0x3a98

    return v1

    .line 525
    :cond_0
    const v1, 0x1fa400

    if-gt v0, v1, :cond_1

    .line 526
    const/16 v1, 0x61a8

    return v1

    .line 527
    :cond_1
    const v1, 0x2a3000

    if-gt v0, v1, :cond_2

    .line 528
    const/16 v1, 0x7530

    return v1

    .line 529
    :cond_2
    nop

    .line 530
    const v1, 0xd2f0

    return v1
.end method

.method public static blacklist getMediaCodec(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .locals 11
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z

    .line 146
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 147
    .local v0, "codec":Landroid/media/MediaCodecInfo;
    const-string v1, "getMediaCodec : "

    const-string v2, "TranscodeLib"

    if-nez v0, :cond_4

    .line 148
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 149
    .local v3, "numCodecs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 150
    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 151
    .local v5, "codecInfo":Landroid/media/MediaCodecInfo;
    if-eqz p1, :cond_0

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    goto :goto_2

    .line 154
    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "types":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 156
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object v5

    .line 155
    .end local v9    # "type":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 149
    .end local v5    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v6    # "types":[Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "numCodecs":I
    .end local v4    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_5
    return-object v0
.end method

.method public static blacklist getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;
    .locals 11
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z
    .param p2, "preferSw"    # Z

    .line 574
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 575
    .local v0, "mcl":Landroid/media/MediaCodecList;
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 577
    .local v2, "infos":[Landroid/media/MediaCodecInfo;
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 578
    .local v5, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-ne v6, p1, :cond_2

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v6

    if-eq v6, p2, :cond_0

    .line 579
    goto :goto_2

    .line 581
    :cond_0
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, "types":[Ljava/lang/String;
    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 583
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 584
    return-object v5

    .line 582
    .end local v9    # "type":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 577
    .end local v5    # "info":Landroid/media/MediaCodecInfo;
    .end local v6    # "types":[Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 588
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 138
    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVideoEncodingBitRate(FJJIII)I
    .locals 7
    .param p0, "sizeFraction"    # F
    .param p1, "maxSizeKB"    # J
    .param p3, "timeDurationMs"    # J
    .param p5, "audioBitRate"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .line 344
    long-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    mul-float/2addr v0, v1

    long-to-float v1, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 345
    .local v0, "bitRate":I
    add-int/lit8 v1, p5, 0x2

    sub-int/2addr v0, v1

    .line 346
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

    .line 349
    invoke-static {p6, p7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoMinBitrate(II)I

    move-result v1

    .line 350
    .local v1, "minBitRate":I
    invoke-static {p6, p7}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v3

    .line 352
    .local v3, "maxBitRate":I
    if-ge v0, v1, :cond_0

    .line 353
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

    .line 354
    .local v4, "log":Ljava/lang/String;
    move v0, v1

    goto :goto_0

    .line 355
    .end local v4    # "log":Ljava/lang/String;
    :cond_0
    if-le v0, v3, :cond_1

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "over max bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    .restart local v4    # "log":Ljava/lang/String;
    move v0, v3

    goto :goto_0

    .line 359
    .end local v4    # "log":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selected bitrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    .restart local v4    # "log":Ljava/lang/String;
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

    .line 363
    return v0
.end method

.method public static blacklist getVideoMinBitrate(II)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 311
    mul-int v0, p0, p1

    div-int/lit16 v0, v0, 0x100

    .line 313
    .local v0, "numberOfMBs":I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 314
    const/16 v1, 0x63

    .local v1, "minBitRate":I
    goto :goto_0

    .line 315
    .end local v1    # "minBitRate":I
    :cond_0
    const/16 v2, 0x3e8

    if-le v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    .line 316
    const/16 v1, 0x96

    .restart local v1    # "minBitRate":I
    goto :goto_0

    .line 317
    .end local v1    # "minBitRate":I
    :cond_1
    const/16 v1, 0x4b0

    if-le v0, v2, :cond_2

    if-gt v0, v1, :cond_2

    .line 318
    const/16 v1, 0x15e

    .restart local v1    # "minBitRate":I
    goto :goto_0

    .line 319
    .end local v1    # "minBitRate":I
    :cond_2
    const/16 v2, 0x546

    if-le v0, v1, :cond_3

    if-gt v0, v2, :cond_3

    .line 320
    const/16 v1, 0x190

    .restart local v1    # "minBitRate":I
    goto :goto_0

    .line 321
    .end local v1    # "minBitRate":I
    :cond_3
    const/16 v1, 0xe10

    if-le v0, v2, :cond_4

    if-gt v0, v1, :cond_4

    .line 322
    const/16 v1, 0x4b0

    .restart local v1    # "minBitRate":I
    goto :goto_0

    .line 323
    .end local v1    # "minBitRate":I
    :cond_4
    if-le v0, v1, :cond_5

    const/16 v1, 0x1fa4

    if-gt v0, v1, :cond_5

    .line 324
    const/16 v1, 0x960

    .restart local v1    # "minBitRate":I
    goto :goto_0

    .line 326
    .end local v1    # "minBitRate":I
    :cond_5
    const/16 v1, 0x251c

    .line 328
    .restart local v1    # "minBitRate":I
    :goto_0
    return v1
.end method

.method public static blacklist is10bitVideo(Landroid/media/MediaMetadataRetriever;)Z
    .locals 2
    .param p0, "retriever"    # Landroid/media/MediaMetadataRetriever;

    .line 554
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

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 134
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isHevcFormat(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 142
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isSecCodecAvailable(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo;
    .locals 9
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "isEncoder"    # Z

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 232
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 233
    .local v2, "codec":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "codecName":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 235
    const-string v5, "OMX.SEC.naac.enc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 236
    const-string v5, "OMX.SEC.aac.enc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    const-string v5, "c2.sec.aac.encoder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "types":[Ljava/lang/String;
    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v7, v5, v4

    .line 240
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 241
    move-object v0, v2

    .line 242
    goto :goto_2

    .line 239
    .end local v7    # "type":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v5    # "types":[Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_4

    :cond_3
    if-nez p1, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OMX.SEC.aac.dec"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 246
    const-string v5, "c2.sec.aac.decoder"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 247
    :cond_4
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 248
    .restart local v5    # "types":[Ljava/lang/String;
    array-length v6, v5

    :goto_3
    if-ge v4, v6, :cond_6

    aget-object v7, v5, v4

    .line 249
    .restart local v7    # "type":Ljava/lang/String;
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 250
    move-object v0, v2

    .line 251
    goto :goto_4

    .line 248
    .end local v7    # "type":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 231
    .end local v2    # "codec":Landroid/media/MediaCodecInfo;
    .end local v3    # "codecName":Ljava/lang/String;
    .end local v5    # "types":[Ljava/lang/String;
    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_7
    return-object v0
.end method

.method public static blacklist isSupportOMX()Z
    .locals 5

    .line 563
    const-string/jumbo v0, "video/avc"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMediaCodec(Ljava/lang/String;ZZ)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 565
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportOMX getMediaCodec : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 566
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

    .line 565
    const-string v3, "TranscodeLib"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/transcode/util/CodecsHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 569
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 568
    return v1
.end method

.method public static blacklist isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 210
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 215
    .local v0, "support":Z
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 217
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "format":Ljava/lang/String;
    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 219
    const/4 v0, 0x1

    .line 221
    .end local v2    # "format":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_1

    .line 215
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "support":Z
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 221
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "support":Z
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 211
    .end local v0    # "support":Z
    :cond_2
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSupportedFormat(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;

    .line 189
    if-nez p0, :cond_0

    .line 190
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 194
    .local v0, "support":Z
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 196
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 197
    const/16 v3, 0xc

    .line 198
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "format":Ljava/lang/String;
    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 200
    const/4 v0, 0x1

    .line 202
    .end local v3    # "format":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 204
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_2

    .line 194
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
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

    .end local v0    # "support":Z
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "support":Z
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local p0    # "filePath":Ljava/lang/String;
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "support":Z
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_1
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 202
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v0    # "support":Z
    .restart local p0    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method private static blacklist isVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;

    .line 130
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$isSupportOMX$0(Landroid/media/MediaCodecInfo;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "info"    # Landroid/media/MediaCodecInfo;

    .line 569
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

.method public static blacklist scheduleAfter(ILjava/lang/Runnable;)V
    .locals 4
    .param p0, "ms"    # I
    .param p1, "schedulerCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 398
    nop

    .line 399
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 400
    .local v0, "sch":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    int-to-long v1, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 401
    return-void
.end method

.method public static blacklist suggestBitRate(II)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 412
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAvcBitrate(II)I

    move-result v0

    return v0
.end method

.method public static blacklist suggestBitRate(IILjava/lang/String;Ljava/lang/String;ZZIII)I
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "outputMimetype"    # Ljava/lang/String;
    .param p3, "sourceMimetype"    # Ljava/lang/String;
    .param p4, "isHdr"    # Z
    .param p5, "is360"    # Z
    .param p6, "outputFramerate"    # I
    .param p7, "sourceBitrate"    # I
    .param p8, "author"    # I

    .line 425
    invoke-static {p0, p1, p4, p5, p8}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitrate(IIZZI)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 426
    .local v0, "bitrate":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[1] get from table. bitrate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranscodeLib"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/16 v1, 0x3c

    if-lt p6, v1, :cond_0

    .line 428
    const v1, 0x3f4ccccd    # 0.8f

    int-to-float v3, v0

    mul-float/2addr v3, v1

    int-to-float v1, p6

    mul-float/2addr v3, v1

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v3, v1

    float-to-int v0, v3

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[2] over 60fps case. bitrate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    const-string/jumbo v1, "video/hevc"

    const v3, 0x3f59999a    # 0.85f

    if-nez p4, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x4c4b400

    if-eq v0, v4, :cond_1

    .line 435
    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v0, v4

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[3] normal hevc case. bitrate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_1
    if-eqz p8, :cond_2

    const/16 v4, 0x8

    if-ne p8, v4, :cond_5

    :cond_2
    if-eqz p7, :cond_5

    .line 441
    move v4, p7

    .line 442
    .local v4, "originalBitrate":I
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 443
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    int-to-float v1, v4

    mul-float/2addr v1, v3

    float-to-int v4, v1

    goto :goto_0

    .line 446
    :cond_3
    int-to-float v1, v4

    div-float/2addr v1, v3

    float-to-int v4, v1

    .line 449
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[4] samsung recording case. sourceBitrate : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", originalBitrate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 454
    .end local v4    # "originalBitrate":I
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suggestBitRate. bitrate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return v0
.end method

.method private static blacklist suggestBitrate(IIZZI)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "isHdr"    # Z
    .param p3, "is360"    # Z
    .param p4, "author"    # I

    .line 460
    if-eqz p3, :cond_0

    .line 461
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->get360Bitrate(II)I

    move-result v0

    return v0

    .line 463
    :cond_0
    if-eqz p2, :cond_1

    .line 464
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getHdrPlusBitrate(II)I

    move-result v0

    return v0

    .line 466
    :cond_1
    if-eqz p4, :cond_3

    const/16 v0, 0x8

    if-ne p4, v0, :cond_2

    goto :goto_0

    .line 469
    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAvcBitrate(II)I

    move-result v0

    return v0

    .line 467
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getBitrate(II)I

    move-result v0

    return v0
.end method
