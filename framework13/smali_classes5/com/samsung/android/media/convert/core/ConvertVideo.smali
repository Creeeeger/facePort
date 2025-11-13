.class public Lcom/samsung/android/media/convert/core/ConvertVideo;
.super Lcom/samsung/android/media/convert/core/Convert;
.source "ConvertVideo.java"


# static fields
.field protected static final blacklist HAL_PIXEL_FORMAT_EXYNOS_YCbCr_420_SP_M:I = 0x105

.field private static final blacklist HEADER_SIZE:I = 0x1f4

.field private static final blacklist IMAGE_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final blacklist KEY_ERROR_TYPE:Ljava/lang/String; = "error-type"

.field private static final blacklist KEY_MUXER_AUTHOR:Ljava/lang/String; = "param-meta-author"

.field private static final blacklist KEY_MUXER_RECORDINGMODE:Ljava/lang/String; = "param-meta-recording-mode"

.field private static final blacklist KEY_MUXER_TRANSCODING:Ljava/lang/String; = "param-meta-transcoding"

.field protected static final blacklist OMX_QCOM_COLOR_FormatYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final blacklist REWRITE_AUDIO_BUFFER_SIZE:I = 0x20000

.field private static final blacklist TIMEOUT_USEC:J = 0x2710L

.field private static final blacklist VIDEO_FPS_BUF_COUNT:I = 0x5

.field private static blacklist creationTime:[B

.field private static blacklist mUseUri:Z


# instance fields
.field private blacklist formatupdated:Z

.field private blacklist inputAudioFormat:Landroid/media/MediaFormat;

.field private blacklist isCcodec:Z

.field private blacklist mAudioExtractor:Landroid/media/MediaExtractor;

.field private blacklist mAuthor:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCopyAudio:Z

.field private blacklist mHDRType:I

.field private blacklist mInputBitdepth:I

.field private blacklist mInputFilePath:Ljava/lang/String;

.field private blacklist mInputOrientationDegrees:I

.field private blacklist mInputSurface:Lcom/samsung/android/media/convert/surfaces/InputSurface;

.field private blacklist mInputUri:Landroid/net/Uri;

.field private blacklist mOutputSurface:Lcom/samsung/android/media/convert/surfaces/OutputSurface;

.field private blacklist mRecordingMode:I

.field private blacklist mStopLock:Ljava/lang/Object;

.field private blacklist mTrimAudioEndUs:J

.field private blacklist mTrimAudioStartUs:J

.field private blacklist mTrimVideoEndUs:J

.field private blacklist mTrimVideoStartUs:J

.field private blacklist mUpdateCreationTime:Z

.field private blacklist mVideoExtractor:Landroid/media/MediaExtractor;

.field private blacklist mVideoFrameCount:I

.field private blacklist skipBufferInfo:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/media/convert/core/Convert;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    .line 76
    iput v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoFrameCount:I

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->formatupdated:Z

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUpdateCreationTime:Z

    .line 91
    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputBitdepth:I

    .line 93
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    .line 94
    iput v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    .line 95
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mRecordingMode:I

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->skipBufferInfo:Z

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->isCcodec:Z

    return-void
.end method

.method private blacklist CheckVideoCodec(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isRewrite"    # Z

    .line 1400
    const-string v0, "SemVideoConverter"

    const/4 v1, 0x0

    .line 1401
    .local v1, "codecrsc":I
    const/4 v2, 0x0

    .local v2, "width":I
    const/4 v3, 0x0

    .local v3, "height":I
    const/4 v4, 0x0

    .line 1403
    .local v4, "error":I
    if-nez p3, :cond_0

    .line 1404
    invoke-static {}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getRemainedResourceCapacity()I

    move-result v1

    .line 1406
    :cond_0
    const/4 v5, 0x0

    .line 1408
    .local v5, "me":Landroid/media/MediaExtractor;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v7

    move-object v5, v7

    .line 1409
    if-nez v5, :cond_2

    .line 1411
    const-string v7, "Can\'t create Extractor"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    nop

    .line 1435
    if-eqz v5, :cond_1

    .line 1436
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 1437
    :cond_1
    const/4 v0, 0x0

    .line 1412
    .end local v5    # "me":Landroid/media/MediaExtractor;
    .local v0, "me":Landroid/media/MediaExtractor;
    return v6

    .line 1415
    .end local v0    # "me":Landroid/media/MediaExtractor;
    .restart local v5    # "me":Landroid/media/MediaExtractor;
    :cond_2
    :try_start_1
    invoke-static {v5}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v7

    .line 1416
    .local v7, "videoTrack":I
    if-gez v7, :cond_3

    .line 1417
    move v4, v7

    .line 1419
    const-string v8, "Can\'t get VideoTrack"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1421
    :cond_3
    invoke-virtual {v5, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 1422
    .local v8, "inputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v9, "width"

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    move v2, v9

    .line 1423
    const-string v9, "height"

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v9

    .line 1435
    .end local v7    # "videoTrack":I
    .end local v8    # "inputFormat":Landroid/media/MediaFormat;
    :goto_0
    if-eqz v5, :cond_4

    .line 1436
    goto :goto_1

    .line 1435
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 1431
    :catch_0
    move-exception v7

    .line 1433
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1435
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v5, :cond_4

    .line 1436
    goto :goto_1

    .line 1428
    :catch_1
    move-exception v7

    .line 1430
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1435
    .end local v7    # "e":Ljava/lang/NullPointerException;
    if-eqz v5, :cond_4

    .line 1436
    goto :goto_1

    .line 1425
    :catch_2
    move-exception v7

    .line 1427
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1435
    .end local v7    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_4

    .line 1436
    :goto_1
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 1437
    :cond_4
    const/4 v5, 0x0

    .line 1438
    nop

    .line 1440
    if-eqz v4, :cond_5

    .line 1442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extactor Error appear : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return v6

    .line 1446
    :cond_5
    if-lez v2, :cond_9

    if-gtz v3, :cond_6

    goto :goto_2

    .line 1452
    :cond_6
    if-nez p3, :cond_7

    if-ltz v1, :cond_7

    mul-int v7, v2, v3

    mul-int/lit8 v7, v7, 0x2

    if-ge v1, v7, :cond_7

    .line 1454
    const-string v7, "Codec resource is not enough"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    return v6

    .line 1457
    :cond_7
    iput v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    .line 1458
    iput v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    .line 1459
    iget v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    const/16 v7, 0x780

    if-le v6, v7, :cond_8

    iget v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    const/16 v8, 0x438

    if-le v6, v8, :cond_8

    .line 1460
    iput v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    .line 1461
    iput v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    .line 1463
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOutputWidth :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mOutputHeight :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const/4 v0, 0x1

    return v0

    .line 1448
    :cond_9
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolution Error appear : width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    return v6

    .line 1435
    :goto_3
    if-eqz v5, :cond_a

    .line 1436
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 1437
    :cond_a
    const/4 v5, 0x0

    .line 1438
    throw v0
.end method

.method private blacklist CheckVideoCodec(Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "isRewrite"    # Z

    .line 1331
    const-string v0, "SemVideoConverter"

    const/4 v1, 0x0

    .line 1332
    .local v1, "codecrsc":I
    const/4 v2, 0x0

    .local v2, "width":I
    const/4 v3, 0x0

    .local v3, "height":I
    const/4 v4, 0x0

    .line 1334
    .local v4, "error":I
    if-nez p2, :cond_0

    .line 1335
    invoke-static {}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getRemainedResourceCapacity()I

    move-result v1

    .line 1337
    :cond_0
    const/4 v5, 0x0

    .line 1339
    .local v5, "me":Landroid/media/MediaExtractor;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v7

    move-object v5, v7

    .line 1340
    if-nez v5, :cond_2

    .line 1342
    const-string v7, "Can\'t create Extractor"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    nop

    .line 1366
    if-eqz v5, :cond_1

    .line 1367
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 1368
    :cond_1
    const/4 v0, 0x0

    .line 1343
    .end local v5    # "me":Landroid/media/MediaExtractor;
    .local v0, "me":Landroid/media/MediaExtractor;
    return v6

    .line 1346
    .end local v0    # "me":Landroid/media/MediaExtractor;
    .restart local v5    # "me":Landroid/media/MediaExtractor;
    :cond_2
    :try_start_1
    invoke-static {v5}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v7

    .line 1347
    .local v7, "videoTrack":I
    if-gez v7, :cond_3

    .line 1348
    move v4, v7

    .line 1350
    const-string v8, "Can\'t get VideoTrack"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1352
    :cond_3
    invoke-virtual {v5, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 1353
    .local v8, "inputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v9, "width"

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    move v2, v9

    .line 1354
    const-string v9, "height"

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v9

    .line 1366
    .end local v7    # "videoTrack":I
    .end local v8    # "inputFormat":Landroid/media/MediaFormat;
    :goto_0
    if-eqz v5, :cond_4

    .line 1367
    goto :goto_1

    .line 1366
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 1362
    :catch_0
    move-exception v7

    .line 1364
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1366
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v5, :cond_4

    .line 1367
    goto :goto_1

    .line 1359
    :catch_1
    move-exception v7

    .line 1361
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1366
    .end local v7    # "e":Ljava/lang/NullPointerException;
    if-eqz v5, :cond_4

    .line 1367
    goto :goto_1

    .line 1356
    :catch_2
    move-exception v7

    .line 1358
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1366
    .end local v7    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_4

    .line 1367
    :goto_1
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 1368
    :cond_4
    const/4 v5, 0x0

    .line 1369
    nop

    .line 1371
    if-eqz v4, :cond_5

    .line 1373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extactor Error appear : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return v6

    .line 1377
    :cond_5
    if-lez v2, :cond_9

    if-gtz v3, :cond_6

    goto :goto_2

    .line 1383
    :cond_6
    if-nez p2, :cond_7

    if-ltz v1, :cond_7

    mul-int v7, v2, v3

    mul-int/lit8 v7, v7, 0x2

    if-ge v1, v7, :cond_7

    .line 1385
    const-string v7, "Codec resource is not enough"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return v6

    .line 1388
    :cond_7
    iput v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    .line 1389
    iput v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    .line 1390
    iget v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    const/16 v7, 0x780

    if-le v6, v7, :cond_8

    iget v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    const/16 v8, 0x438

    if-le v6, v8, :cond_8

    .line 1391
    iput v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    .line 1392
    iput v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    .line 1394
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOutputWidth :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mOutputHeight :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/4 v0, 0x1

    return v0

    .line 1379
    :cond_9
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolution Error appear : width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    return v6

    .line 1366
    :goto_3
    if-eqz v5, :cond_a

    .line 1367
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    .line 1368
    :cond_a
    const/4 v5, 0x0

    .line 1369
    throw v0
.end method

.method private blacklist CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1504
    const/4 v0, 0x0

    .line 1505
    .local v0, "me":Landroid/media/MediaExtractor;
    const/4 v1, 0x0

    .line 1506
    .local v1, "mr":Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x1

    .line 1509
    .local v2, "ret":Z
    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v3

    move-object v0, v3

    .line 1510
    invoke-static {p1, p2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    move-object v1, v3

    .line 1512
    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v3

    .line 1513
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1515
    :cond_0
    const-string v4, "SemVideoConverter"

    const-string v5, "Video Format is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const/4 v2, 0x0

    .line 1518
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getHDRMode(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 1519
    const/4 v2, 0x0

    .line 1526
    .end local v3    # "index":I
    :cond_2
    if-eqz v0, :cond_3

    .line 1527
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1528
    :cond_3
    const/4 v0, 0x0

    .line 1530
    if-eqz v1, :cond_5

    .line 1531
    goto :goto_0

    .line 1526
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1520
    :catch_0
    move-exception v3

    .line 1522
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    const/4 v2, 0x0

    .line 1526
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_4

    .line 1527
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1528
    :cond_4
    const/4 v0, 0x0

    .line 1530
    if-eqz v1, :cond_5

    .line 1531
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1532
    :cond_5
    const/4 v1, 0x0

    .line 1533
    nop

    .line 1534
    return v2

    .line 1526
    :goto_1
    if-eqz v0, :cond_6

    .line 1527
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1528
    :cond_6
    const/4 v0, 0x0

    .line 1530
    if-eqz v1, :cond_7

    .line 1531
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1532
    :cond_7
    const/4 v1, 0x0

    .line 1533
    throw v3
.end method

.method private blacklist CheckVideoFormat(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;

    .line 1469
    const/4 v0, 0x0

    .line 1470
    .local v0, "me":Landroid/media/MediaExtractor;
    const/4 v1, 0x0

    .line 1471
    .local v1, "mr":Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x1

    .line 1474
    .local v2, "ret":Z
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v3

    move-object v0, v3

    .line 1475
    invoke-static {p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    move-object v1, v3

    .line 1477
    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v3

    .line 1478
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1480
    :cond_0
    const-string v4, "SemVideoConverter"

    const-string v5, "Video Format is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    const/4 v2, 0x0

    .line 1483
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getHDRMode(Landroid/media/MediaMetadataRetriever;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 1484
    const/4 v2, 0x0

    .line 1491
    .end local v3    # "index":I
    :cond_2
    if-eqz v0, :cond_3

    .line 1492
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1493
    :cond_3
    const/4 v0, 0x0

    .line 1495
    if-eqz v1, :cond_5

    .line 1496
    goto :goto_0

    .line 1491
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1485
    :catch_0
    move-exception v3

    .line 1487
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1488
    const/4 v2, 0x0

    .line 1491
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_4

    .line 1492
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1493
    :cond_4
    const/4 v0, 0x0

    .line 1495
    if-eqz v1, :cond_5

    .line 1496
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1497
    :cond_5
    const/4 v1, 0x0

    .line 1498
    nop

    .line 1499
    return v2

    .line 1491
    :goto_1
    if-eqz v0, :cond_6

    .line 1492
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 1493
    :cond_6
    const/4 v0, 0x0

    .line 1495
    if-eqz v1, :cond_7

    .line 1496
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1497
    :cond_7
    const/4 v1, 0x0

    .line 1498
    throw v3
.end method

.method static synthetic blacklist access$002(Lcom/samsung/android/media/convert/core/ConvertVideo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/media/convert/core/ConvertVideo;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->formatupdated:Z

    return p1
.end method

.method private static blacklist byteArrayToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "a"    # [B

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1796
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 1797
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v6, v4, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x "

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1798
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getByteArrayFromByteBuffer(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1788
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 1789
    .local v0, "bytesArray":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1790
    return-object v0
.end method

.method private blacklist getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaUri"    # Landroid/net/Uri;

    .line 1802
    const/4 v0, 0x0

    .line 1803
    .local v0, "lEditPath":Ljava/lang/String;
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 1804
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1805
    .local v1, "lFileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lFileName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemVideoConverter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1807
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1815
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1808
    :cond_1
    :goto_0
    invoke-static {p2, p1}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getVideoFileInfoByUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 1809
    .local v2, "lCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1810
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1811
    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1813
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1814
    .end local v2    # "lCursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_1

    .line 1817
    :cond_4
    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1818
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1820
    :cond_5
    move-object v0, v1

    .line 1823
    .end local v1    # "lFileName":Ljava/lang/String;
    :cond_6
    :goto_1
    return-object v0
.end method

.method private static blacklist getVideoFileInfoByUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/database/Cursor;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 1827
    const-string v0, "_data"

    const-string v1, "duration"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1830
    .local v0, "cols":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    .local v1, "c":Landroid/database/Cursor;
    nop

    .line 1836
    return-object v1

    .line 1833
    .end local v1    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 1834
    .local v2, "ex":Ljava/lang/Exception;
    return-object v1

    .line 1831
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1832
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    return-object v1
.end method

.method private blacklist getVideoSampleSize(Landroid/media/MediaFormat;)I
    .locals 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1539
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 1541
    .local v0, "width":I
    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 1542
    .local v1, "height":I
    mul-int v2, v0, v1

    return v2

    .line 1544
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1572
    invoke-static {p0, p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedFormat(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1561
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedFormat(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1565
    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    .line 1566
    invoke-static {p1, p2}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0

    .line 1568
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final blacklist unsignedIntToLong([B)J
    .locals 5
    .param p0, "b"    # [B

    .line 1548
    const-wide/16 v0, 0x0

    .line 1549
    .local v0, "l":J
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1550
    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 1551
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 1552
    shl-long/2addr v0, v2

    .line 1553
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    .line 1554
    shl-long/2addr v0, v2

    .line 1555
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 1557
    return-wide v0
.end method


# virtual methods
.method public blacklist getHDRMode(Landroid/media/MediaMetadataRetriever;)Z
    .locals 10
    .param p1, "retriever"    # Landroid/media/MediaMetadataRetriever;

    .line 1753
    const-string v0, "SemVideoConverter"

    const/16 v1, 0x404

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, "bitdepth":Ljava/lang/String;
    const/16 v5, 0x3f7

    invoke-virtual {p1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 1755
    .local v5, "auth":Ljava/lang/String;
    const/16 v6, 0x3fe

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 1757
    .local v6, "mode":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1758
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    .line 1759
    if-eqz v6, :cond_0

    .line 1760
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mRecordingMode:I

    .line 1764
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHDRMode  mAuthor : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRecordingMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mRecordingMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const-string v7, "10"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1767
    const/16 v7, 0xa

    iput v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputBitdepth:I

    .line 1768
    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    if-eqz v8, :cond_1

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    :cond_1
    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mRecordingMode:I

    if-ne v8, v7, :cond_2

    .line 1769
    iput v4, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    goto :goto_0

    .line 1771
    :cond_2
    iput v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    goto :goto_0

    .line 1773
    :cond_3
    iput v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    .line 1776
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHDRMode  mHDRType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    nop

    .end local v1    # "bitdepth":Ljava/lang/String;
    .end local v5    # "auth":Ljava/lang/String;
    .end local v6    # "mode":Ljava/lang/String;
    goto :goto_1

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1781
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mHDRType:I

    if-ne v0, v4, :cond_4

    .line 1782
    return v2

    .line 1784
    :cond_4
    return v3
.end method

.method public blacklist getOutputFileSize()I
    .locals 14

    .line 1279
    const-wide/16 v0, 0x0

    .line 1281
    .local v0, "trimEndTime":J
    const/4 v2, 0x0

    :try_start_0
    sget-boolean v3, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v3, :cond_0

    .line 1282
    iget-object v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v3

    .local v3, "me":Landroid/media/MediaExtractor;
    goto :goto_0

    .line 1284
    .end local v3    # "me":Landroid/media/MediaExtractor;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v3

    .line 1285
    .restart local v3    # "me":Landroid/media/MediaExtractor;
    :goto_0
    invoke-static {v3}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v4

    .line 1287
    .local v4, "videoTrack":I
    invoke-virtual {v3, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    .line 1288
    .local v5, "inputFormat":Landroid/media/MediaFormat;
    iget-wide v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoEndUs:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v6

    .line 1289
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    const-string v7, "SemVideoConverter"

    if-nez v6, :cond_1

    .line 1290
    :try_start_1
    const-string v6, "durationUs"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v0, v8

    .line 1291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOutputFileSize  trimEndTime was 0 but updated  trimEndTime : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_1
    iput v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    .line 1296
    const-string v6, "frame-rate"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    .line 1298
    iget v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    const/16 v8, 0xfa

    if-le v6, v8, :cond_3

    .line 1299
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {p0, v6, v8, v9}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    .line 1301
    :cond_3
    iget v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    if-lez v6, :cond_4

    .line 1302
    iget v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    iput v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    .line 1305
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSourceFrameRate :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", mOutputVideoFrameRate :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 1310
    const/4 v6, 0x0

    .line 1312
    .local v6, "outputVideBitRate":I
    iget v7, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    iget v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    iget v9, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-static {v7, v8, v9}, Lcom/samsung/android/media/convert/util/CodecsHelper;->suggestBitRate(III)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    .line 1313
    .end local v6    # "outputVideBitRate":I
    .local v7, "outputVideBitRate":I
    iget-wide v8, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoStartUs:J

    sub-long v8, v0, v8

    long-to-double v8, v8

    const-wide v10, 0x415e848000000000L    # 8000000.0

    div-double/2addr v8, v10

    iget v6, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioBitRate:I

    add-int/2addr v6, v7

    int-to-double v10, v6

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 1315
    .local v6, "size":I
    iget v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSizeFraction:F
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    float-to-int v2, v2

    mul-int/2addr v2, v6

    return v2

    .line 1320
    .end local v3    # "me":Landroid/media/MediaExtractor;
    .end local v4    # "videoTrack":I
    .end local v5    # "inputFormat":Landroid/media/MediaFormat;
    .end local v6    # "size":I
    .end local v7    # "outputVideBitRate":I
    :catch_0
    move-exception v2

    .line 1322
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1323
    const/4 v3, -0x1

    return v3

    .line 1317
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 1319
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1324
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 1326
    return v2
.end method

.method public blacklist getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I
    .locals 21
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 1577
    const/4 v1, 0x0

    .line 1580
    .local v1, "videoExtractor":Landroid/media/MediaExtractor;
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    .line 1581
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    move-object v1, v0

    .end local v1    # "videoExtractor":Landroid/media/MediaExtractor;
    .local v0, "videoExtractor":Landroid/media/MediaExtractor;
    goto :goto_0

    .line 1583
    .end local v0    # "videoExtractor":Landroid/media/MediaExtractor;
    .restart local v1    # "videoExtractor":Landroid/media/MediaExtractor;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 1587
    :goto_0
    goto :goto_1

    .line 1584
    :catch_0
    move-exception v0

    .line 1586
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1589
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x0

    .line 1591
    .local v0, "videoFormat":Landroid/media/MediaFormat;
    const/4 v2, -0x1

    .line 1592
    .local v2, "bufferSizeV":I
    const/4 v3, 0x0

    .line 1593
    .local v3, "offset":I
    const-wide/16 v4, 0x0

    .line 1594
    .local v4, "avgTime":J
    const-wide/16 v6, 0x0

    .line 1595
    .local v6, "previousTime":J
    const/4 v8, 0x0

    .line 1596
    .local v8, "videoFPS":I
    const/4 v9, 0x0

    .line 1598
    .local v9, "frameCount":I
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v10

    .line 1599
    .local v10, "mNumTracks":I
    invoke-static {v1}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v11

    .line 1600
    .local v11, "trackVideo":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 1601
    const-string v12, "SemVideoConverter"

    const-string v13, "Valid video track absent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const/16 v8, 0x1e

    move-object/from16 v12, p0

    move-object/from16 v16, v0

    move v0, v3

    goto :goto_5

    .line 1604
    :cond_1
    invoke-virtual {v1, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 1606
    move-object/from16 v12, p0

    invoke-direct {v12, v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v2

    .line 1607
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1608
    .local v13, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v14, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v14}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1609
    .local v14, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v16, v0

    .end local v0    # "videoFormat":Landroid/media/MediaFormat;
    .local v16, "videoFormat":Landroid/media/MediaFormat;
    const/4 v0, 0x5

    if-gt v15, v0, :cond_3

    .line 1610
    invoke-virtual {v1, v13, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1611
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v17

    .line 1612
    .local v17, "presentationTimeUs":J
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    .line 1613
    if-nez v15, :cond_2

    .line 1614
    move-wide/from16 v6, v17

    goto :goto_3

    .line 1616
    :cond_2
    sub-long v19, v17, v6

    add-long v4, v4, v19

    .line 1617
    move-wide/from16 v6, v17

    .line 1618
    add-int/lit8 v9, v9, 0x1

    .line 1609
    .end local v17    # "presentationTimeUs":J
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    goto :goto_2

    .line 1622
    .end local v15    # "i":I
    :cond_3
    const-wide/16 v17, 0x3e8

    div-long v19, v4, v17

    move v15, v2

    move v0, v3

    .end local v2    # "bufferSizeV":I
    .end local v3    # "offset":I
    .local v0, "offset":I
    .local v15, "bufferSizeV":I
    int-to-long v2, v9

    div-long v19, v19, v2

    div-long v2, v17, v19

    long-to-int v2, v2

    if-lez v2, :cond_4

    .line 1623
    div-long v2, v4, v17

    move-wide/from16 v19, v4

    .end local v4    # "avgTime":J
    .local v19, "avgTime":J
    int-to-long v4, v9

    div-long/2addr v2, v4

    div-long v2, v17, v2

    long-to-int v2, v2

    goto :goto_4

    .end local v19    # "avgTime":J
    .restart local v4    # "avgTime":J
    :cond_4
    move-wide/from16 v19, v4

    .end local v4    # "avgTime":J
    .restart local v19    # "avgTime":J
    const/16 v2, 0x1e

    .line 1624
    .local v2, "frameRate":I
    :goto_4
    move v8, v2

    move v2, v15

    move-wide/from16 v4, v19

    .line 1627
    .end local v13    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v14    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    .end local v15    # "bufferSizeV":I
    .end local v19    # "avgTime":J
    .local v2, "bufferSizeV":I
    .restart local v4    # "avgTime":J
    :goto_5
    if-eqz v1, :cond_5

    .line 1628
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 1630
    :cond_5
    return v8
.end method

.method public blacklist initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inputUri"    # Landroid/net/Uri;

    .line 154
    const-string v0, "SemVideoConverter"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 155
    const-string/jumbo v2, "output file path cannot be null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v1

    .line 158
    :cond_0
    if-nez p3, :cond_1

    .line 159
    const-string v2, "input uri cannot be null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v1

    .line 162
    :cond_1
    if-nez p2, :cond_2

    .line 163
    const-string v2, "context cannot be null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v1

    .line 166
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    .line 168
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/media/convert/core/ConvertVideo;->CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 169
    const-string v2, "Not a valid video format."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v1

    .line 173
    :cond_3
    invoke-direct {p0, p2, p3, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo;->CheckVideoCodec(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v3

    if-nez v3, :cond_4

    .line 174
    const-string v2, "Not a valid video codec."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v1

    .line 177
    :cond_4
    iput-object p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputFilePath:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    .line 179
    iput-object p2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    .line 181
    return v2
.end method

.method public blacklist initialize(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "inputFilePath"    # Ljava/lang/String;

    .line 115
    const-string v0, "SemVideoConverter"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 116
    const-string/jumbo v2, "output file path cannot be null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 119
    :cond_0
    if-nez p2, :cond_1

    .line 120
    const-string v2, "input file path cannot be null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 123
    :cond_1
    sput-boolean v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    .line 125
    invoke-direct {p0, p2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 126
    const-string v2, "Not a valid video format."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1

    .line 129
    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo;->CheckVideoCodec(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 130
    const-string v2, "Not a valid video codec."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v1

    .line 133
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputFilePath:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist prepare()Z
    .locals 3

    .line 188
    iget-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    const/4 v1, 0x0

    const-string v2, "SemVideoConverter"

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "already started converting"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v1

    .line 193
    :cond_0
    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 195
    :cond_1
    const-string v0, "mInputUri or mContext  is NULL"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v1

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 200
    const-string v0, "mInputFilePath is NULL"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v1

    .line 204
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist prepareAudioCodec()Z
    .locals 29

    .line 405
    move-object/from16 v1, p0

    const-string v2, "encoder-delay"

    const-string v3, "max-input-size"

    const-string v4, "SemVideoConverter"

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v6}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18

    .line 415
    :goto_0
    nop

    .line 418
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 420
    .local v6, "audioInputTrack":I
    const/4 v0, -0x1

    const/4 v7, 0x1

    if-ne v6, v0, :cond_1

    .line 421
    iput-boolean v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    .line 422
    return v7

    .line 424
    :cond_1
    iget-object v8, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    .line 426
    .local v8, "inputAudioFormat":Landroid/media/MediaFormat;
    const-string v9, "mime"

    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "audio/unknown"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 428
    const-string v0, "Audio mime type is unknown. Ignore audio track."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iput-boolean v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    .line 430
    return v7

    .line 433
    :cond_2
    const-string v10, "error-type"

    invoke-virtual {v8, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 434
    const/4 v11, 0x0

    .line 435
    .local v11, "error":I
    invoke-virtual {v8, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 436
    .end local v11    # "error":I
    .local v10, "error":I
    if-eqz v10, :cond_3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio codec error appear : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iput-boolean v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    .line 440
    return v7

    .line 444
    .end local v10    # "error":I
    :cond_3
    iput-boolean v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    .line 446
    iget-wide v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioEndUs:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 448
    const-string v10, "durationUs"

    invoke-virtual {v8, v10}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioEndUs:J

    .line 450
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTrimAudioEndUs was 0 but updated mTrimAudioEndUs :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v14, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioEndUs:J

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Audio input format "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string/jumbo v10, "sample-rate"

    invoke-virtual {v8, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    iput v11, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioSampleRateHZ:I

    .line 456
    const-string v11, "channel-count"

    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    iput v14, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioChannelCount:I

    .line 458
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 459
    .local v9, "mimeType":Ljava/lang/String;
    const-string v14, "audio/mp4a-latm"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 467
    :try_start_1
    invoke-static {v9}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v13

    .line 468
    .local v13, "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v13, v8}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v15

    iput-object v15, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 470
    iget-boolean v15, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13

    if-eqz v15, :cond_5

    :try_start_2
    iget-object v15, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v15}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 574
    .end local v13    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    :catch_0
    move-exception v0

    move-object v5, v1

    :goto_1
    move/from16 v27, v6

    goto/16 :goto_b

    .line 572
    :catch_1
    move-exception v0

    move-object v5, v1

    :goto_2
    move/from16 v27, v6

    goto/16 :goto_d

    .line 570
    :catch_2
    move-exception v0

    move-object v5, v1

    :goto_3
    move/from16 v27, v6

    goto/16 :goto_f

    .line 470
    .restart local v13    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_5
    const/4 v15, 0x0

    .line 471
    .local v15, "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :goto_4
    :try_start_3
    iget-boolean v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13

    if-eqz v12, :cond_6

    :try_start_4
    iget-object v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    .line 473
    .local v12, "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    :goto_5
    :try_start_5
    new-instance v16, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v17, v16

    .line 476
    .local v17, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    const/16 v16, -0x1

    .line 478
    .local v16, "pendingAudioDecoderOutputBufferIndex":I
    new-instance v7, Lcom/samsung/android/media/convert/core/ConvertVideo$1;

    invoke-direct {v7, v1}, Lcom/samsung/android/media/convert/core/ConvertVideo$1;-><init>(Lcom/samsung/android/media/convert/core/ConvertVideo;)V

    move/from16 v18, v16

    .line 485
    .end local v16    # "pendingAudioDecoderOutputBufferIndex":I
    .local v7, "schedulerCallback":Ljava/lang/Runnable;
    .local v18, "pendingAudioDecoderOutputBufferIndex":I
    :goto_6
    iget-boolean v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->formatupdated:Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_13

    if-nez v5, :cond_12

    .line 486
    if-nez v5, :cond_9

    .line 487
    move-object/from16 v5, p0

    :try_start_6
    iget-object v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move-object/from16 v19, v13

    move-object v1, v14

    const-wide/16 v13, 0x2710

    .end local v13    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .local v19, "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    :try_start_7
    invoke-virtual {v0, v13, v14}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 488
    .local v0, "audioDecoderInputBufferIndex":I
    const/4 v13, -0x1

    if-ne v0, v13, :cond_7

    .line 490
    :try_start_8
    const-string v13, "audio decoder input try again later while preparing audio codec"

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 491
    move/from16 v27, v6

    move-object/from16 v28, v12

    goto/16 :goto_7

    .line 574
    .end local v0    # "audioDecoderInputBufferIndex":I
    .end local v7    # "schedulerCallback":Ljava/lang/Runnable;
    .end local v12    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v15    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v18    # "pendingAudioDecoderOutputBufferIndex":I
    .end local v19    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    :catch_3
    move-exception v0

    move-object v14, v1

    goto :goto_1

    .line 572
    :catch_4
    move-exception v0

    move-object v14, v1

    goto :goto_2

    .line 570
    :catch_5
    move-exception v0

    move-object v14, v1

    goto :goto_3

    .line 493
    .restart local v0    # "audioDecoderInputBufferIndex":I
    .restart local v7    # "schedulerCallback":Ljava/lang/Runnable;
    .restart local v12    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v15    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v18    # "pendingAudioDecoderOutputBufferIndex":I
    .restart local v19    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_7
    :try_start_9
    aget-object v13, v12, v0

    .line 494
    .local v13, "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v14, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    move/from16 v27, v6

    const/4 v6, 0x0

    .end local v6    # "audioInputTrack":I
    .local v27, "audioInputTrack":I
    :try_start_a
    invoke-virtual {v14, v13, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    move v6, v14

    .line 495
    .local v6, "size":I
    iget-object v14, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v24

    .line 496
    .local v24, "presentationTimeUs":J
    if-lez v6, :cond_8

    .line 497
    iget-object v14, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v22, 0x0

    move-object/from16 v28, v12

    .end local v12    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .local v28, "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 498
    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v26

    .line 497
    move-object/from16 v20, v14

    move/from16 v21, v0

    move/from16 v23, v6

    invoke-virtual/range {v20 .. v26}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_7

    .line 499
    .end local v28    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v12    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    :cond_8
    move-object/from16 v28, v12

    .end local v12    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v28    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    const/4 v12, -0x1

    if-ne v6, v12, :cond_a

    .line 501
    const/4 v12, 0x0

    iput-boolean v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    .line 503
    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->formatupdated:Z

    .line 505
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Audio buffer is empty, size :"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    goto :goto_7

    .line 574
    .end local v0    # "audioDecoderInputBufferIndex":I
    .end local v7    # "schedulerCallback":Ljava/lang/Runnable;
    .end local v13    # "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v18    # "pendingAudioDecoderOutputBufferIndex":I
    .end local v19    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v24    # "presentationTimeUs":J
    .end local v27    # "audioInputTrack":I
    .end local v28    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .local v6, "audioInputTrack":I
    :catch_6
    move-exception v0

    move/from16 v27, v6

    move-object v14, v1

    goto/16 :goto_b

    .line 572
    :catch_7
    move-exception v0

    move/from16 v27, v6

    move-object v14, v1

    goto/16 :goto_d

    .line 570
    :catch_8
    move-exception v0

    move/from16 v27, v6

    move-object v14, v1

    goto/16 :goto_f

    .line 574
    :catch_9
    move-exception v0

    goto/16 :goto_a

    .line 572
    :catch_a
    move-exception v0

    goto/16 :goto_c

    .line 570
    :catch_b
    move-exception v0

    goto/16 :goto_e

    .line 486
    .restart local v7    # "schedulerCallback":Ljava/lang/Runnable;
    .restart local v12    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .local v13, "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v15    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v18    # "pendingAudioDecoderOutputBufferIndex":I
    :cond_9
    move-object/from16 v5, p0

    move/from16 v27, v6

    move-object/from16 v28, v12

    move-object/from16 v19, v13

    move-object v1, v14

    .line 511
    .end local v6    # "audioInputTrack":I
    .end local v12    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v13    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v19    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v27    # "audioInputTrack":I
    .restart local v28    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    :cond_a
    :goto_7
    const/4 v0, 0x3

    invoke-static {v0, v7}, Lcom/samsung/android/media/convert/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    .line 512
    iget-boolean v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->formatupdated:Z

    if-nez v0, :cond_11

    move/from16 v6, v18

    const/4 v0, -0x1

    .end local v18    # "pendingAudioDecoderOutputBufferIndex":I
    .local v6, "pendingAudioDecoderOutputBufferIndex":I
    if-ne v6, v0, :cond_10

    .line 513
    iget-object v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 514
    move-object v14, v1

    move-object/from16 v13, v17

    const-wide/16 v0, 0x2710

    .end local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v13, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :try_start_b
    invoke-virtual {v12, v13, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 516
    .local v0, "audioDecoderOutputBufferIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 518
    const-string v12, "audio decoder output buffer try again later while preparing audio codec"

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    goto/16 :goto_8

    .line 521
    :cond_b
    const/4 v12, -0x3

    if-ne v0, v12, :cond_c

    .line 523
    const-string v12, "audio decoder: output buffers changed "

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    move-object v15, v12

    .line 525
    move v0, v1

    move-object v1, v5

    move/from16 v18, v6

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    move/from16 v6, v27

    move-object/from16 v12, v28

    const/4 v5, 0x0

    goto/16 :goto_6

    .line 526
    :cond_c
    const/4 v12, -0x2

    if-ne v0, v12, :cond_d

    .line 527
    iget-object v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    .line 528
    invoke-virtual {v12, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    iput v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioSampleRateHZ:I

    .line 529
    iget-object v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    .line 530
    invoke-virtual {v12, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    iput v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioChannelCount:I

    .line 532
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ",ChannelCount"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v12, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioChannelCount:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->formatupdated:Z

    .line 535
    goto :goto_8

    .line 536
    :cond_d
    if-gez v0, :cond_e

    .line 538
    const-string v1, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    goto :goto_8

    .line 543
    :cond_e
    iget v1, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v12, 0x2

    and-int/2addr v1, v12

    if-eqz v1, :cond_f

    .line 545
    const-string v1, "audio decoder: codec config buffer"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 547
    goto :goto_8

    .line 549
    :cond_f
    move/from16 v18, v0

    .line 550
    .end local v6    # "pendingAudioDecoderOutputBufferIndex":I
    .restart local v18    # "pendingAudioDecoderOutputBufferIndex":I
    move-object v1, v5

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    move/from16 v6, v27

    move-object/from16 v12, v28

    const/4 v0, -0x1

    const/4 v5, 0x0

    goto/16 :goto_6

    .line 512
    .end local v0    # "audioDecoderOutputBufferIndex":I
    .end local v13    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v18    # "pendingAudioDecoderOutputBufferIndex":I
    .restart local v6    # "pendingAudioDecoderOutputBufferIndex":I
    .restart local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_10
    move-object v14, v1

    move-object/from16 v13, v17

    .end local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v13    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    goto :goto_8

    .end local v6    # "pendingAudioDecoderOutputBufferIndex":I
    .end local v13    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v18    # "pendingAudioDecoderOutputBufferIndex":I
    :cond_11
    move-object v14, v1

    move-object/from16 v13, v17

    move/from16 v6, v18

    .line 485
    .end local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v18    # "pendingAudioDecoderOutputBufferIndex":I
    .restart local v6    # "pendingAudioDecoderOutputBufferIndex":I
    .restart local v13    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :goto_8
    move-object v1, v5

    move/from16 v18, v6

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    move/from16 v6, v27

    move-object/from16 v12, v28

    const/4 v0, -0x1

    const/4 v5, 0x0

    goto/16 :goto_6

    .line 574
    .end local v6    # "pendingAudioDecoderOutputBufferIndex":I
    .end local v7    # "schedulerCallback":Ljava/lang/Runnable;
    .end local v13    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v15    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v19    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    :catch_c
    move-exception v0

    move-object v14, v1

    goto :goto_b

    .line 572
    :catch_d
    move-exception v0

    move-object v14, v1

    goto :goto_d

    .line 570
    :catch_e
    move-exception v0

    move-object v14, v1

    goto :goto_f

    .line 554
    .end local v27    # "audioInputTrack":I
    .local v6, "audioInputTrack":I
    .restart local v7    # "schedulerCallback":Ljava/lang/Runnable;
    .restart local v12    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .local v13, "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v15    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v18    # "pendingAudioDecoderOutputBufferIndex":I
    :cond_12
    move-object v5, v1

    move/from16 v27, v6

    move-object/from16 v28, v12

    move-object/from16 v19, v13

    move-object/from16 v13, v17

    move/from16 v6, v18

    .end local v12    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v17    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v18    # "pendingAudioDecoderOutputBufferIndex":I
    .local v6, "pendingAudioDecoderOutputBufferIndex":I
    .local v13, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v19    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v27    # "audioInputTrack":I
    .restart local v28    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    if-eqz v0, :cond_13

    .line 556
    :try_start_c
    iget-object v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 557
    iget-object v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 558
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    .line 563
    goto :goto_9

    .line 559
    :catch_f
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d
    const-string v1, "Exception in releasing input audio decoder."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 566
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_9
    iget-boolean v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    if-eqz v0, :cond_14

    .line 567
    iget-object v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v10, v11, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_d} :catch_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_10

    .line 574
    .end local v6    # "pendingAudioDecoderOutputBufferIndex":I
    .end local v7    # "schedulerCallback":Ljava/lang/Runnable;
    .end local v13    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v15    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v19    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    :catch_10
    move-exception v0

    goto :goto_b

    .line 572
    :catch_11
    move-exception v0

    goto :goto_d

    .line 570
    :catch_12
    move-exception v0

    goto :goto_f

    .line 574
    .end local v27    # "audioInputTrack":I
    .local v6, "audioInputTrack":I
    :catch_13
    move-exception v0

    move-object v5, v1

    :goto_a
    move/from16 v27, v6

    .line 575
    .end local v6    # "audioInputTrack":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v27    # "audioInputTrack":I
    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_10

    .line 572
    .end local v27    # "audioInputTrack":I
    .restart local v6    # "audioInputTrack":I
    :catch_14
    move-exception v0

    move-object v5, v1

    :goto_c
    move/from16 v27, v6

    .line 573
    .end local v6    # "audioInputTrack":I
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    .restart local v27    # "audioInputTrack":I
    :goto_d
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_10

    .line 570
    .end local v27    # "audioInputTrack":I
    .restart local v6    # "audioInputTrack":I
    :catch_15
    move-exception v0

    move-object v5, v1

    :goto_e
    move/from16 v27, v6

    .line 571
    .end local v6    # "audioInputTrack":I
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v27    # "audioInputTrack":I
    :goto_f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 576
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_14
    :goto_10
    goto :goto_11

    .line 579
    .end local v27    # "audioInputTrack":I
    .restart local v6    # "audioInputTrack":I
    :cond_15
    move-object v5, v1

    move/from16 v27, v6

    .end local v6    # "audioInputTrack":I
    .restart local v27    # "audioInputTrack":I
    const-string v0, "audio/ac3"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "audio/eac3"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "audio/eac3-joc"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "audio/ac4"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 580
    :cond_16
    iget v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioChannelCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_17

    .line 581
    iput v1, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioChannelCount:I

    .line 583
    :cond_17
    const-string v0, "Audio ac3 type :  mOutputAudioChannelCount is changed."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_18
    :goto_11
    const/4 v1, 0x0

    .line 588
    .local v1, "maxInputSize":I
    :try_start_e
    invoke-virtual {v8, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_16

    move v1, v0

    .line 592
    goto :goto_12

    .line 589
    :catch_16
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 591
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v6, "Audio max input size not defined"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_12
    :try_start_f
    iget-object v0, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioMimeType:Ljava/lang/String;

    iget v6, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioSampleRateHZ:I

    iget v7, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioChannelCount:I

    invoke-static {v0, v6, v7}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 598
    .local v0, "outputAudioFormat":Landroid/media/MediaFormat;
    if-eqz v1, :cond_19

    .line 599
    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 600
    :cond_19
    const-string v3, "bitrate"

    iget v6, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioBitRate:I

    invoke-virtual {v0, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 601
    const-string v3, "aac-profile"

    iget v6, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioAACProfile:I

    invoke-virtual {v0, v3, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Audio output format "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v3, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 605
    .local v3, "audioCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v3, v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    .line 606
    invoke-virtual {v8, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 607
    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 608
    :cond_1a
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 609
    invoke-static {v9}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 610
    .local v2, "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {v2, v8}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 611
    .end local v2    # "audioinputCodecInfo":Landroid/media/MediaCodecInfo;
    goto :goto_13

    .line 612
    :cond_1b
    invoke-static {v8}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_17

    .line 616
    .end local v0    # "outputAudioFormat":Landroid/media/MediaFormat;
    .end local v3    # "audioCodecInfo":Landroid/media/MediaCodecInfo;
    :goto_13
    nop

    .line 617
    const/4 v2, 0x1

    return v2

    .line 613
    :catch_17
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    const/4 v2, 0x0

    return v2

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "maxInputSize":I
    .end local v8    # "inputAudioFormat":Landroid/media/MediaFormat;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v27    # "audioInputTrack":I
    :catch_18
    move-exception v0

    move-object v5, v1

    .line 412
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "createExtractor error"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v1, 0x0

    return v1
.end method

.method protected blacklist prepareVideoCodec()Z
    .locals 25

    .line 210
    move-object/from16 v1, p0

    const-string v2, "frame-rate"

    const-string v3, "SemVideoConverter"

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    move-object v4, v0

    .line 212
    .local v4, "metaData":Landroid/media/MediaMetadataRetriever;
    const/4 v5, 0x0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 217
    :goto_0
    const/16 v0, 0x18

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 218
    .local v6, "inputOrientation":Ljava/lang/String;
    const/16 v0, 0x3f7

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    .line 220
    .local v7, "auth":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 221
    const/4 v8, 0x0

    .line 223
    .local v8, "degree":I
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v0

    .line 227
    goto :goto_1

    .line 224
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 225
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 228
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    .line 242
    :sswitch_0
    const/16 v0, 0x10e

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    goto :goto_2

    .line 238
    :sswitch_1
    const/16 v0, 0xb4

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    .line 239
    goto :goto_2

    .line 234
    :sswitch_2
    const/16 v0, 0x5a

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    .line 235
    goto :goto_2

    .line 230
    :sswitch_3
    iput v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    .line 231
    nop

    .line 244
    .end local v8    # "degree":I
    :goto_2
    goto :goto_3

    .line 245
    :cond_1
    iput v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    .line 247
    :goto_3
    if-eqz v7, :cond_2

    .line 248
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    .end local v6    # "inputOrientation":Ljava/lang/String;
    .end local v7    # "auth":Ljava/lang/String;
    :cond_2
    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 250
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 254
    :goto_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 255
    const/4 v0, 0x0

    .line 256
    .end local v4    # "metaData":Landroid/media/MediaMetadataRetriever;
    .local v0, "metaData":Landroid/media/MediaMetadataRetriever;
    move-object v4, v0

    .line 260
    .end local v0    # "metaData":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "metaData":Landroid/media/MediaMetadataRetriever;
    :try_start_4
    sget-boolean v0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, v6}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto :goto_5

    .line 263
    :cond_3
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 270
    :goto_5
    nop

    .line 271
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    .line 273
    .local v6, "videoTrack":I
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    .line 275
    .local v7, "inputFormat":Landroid/media/MediaFormat;
    const-string v0, "force-hdr2sdr-enable"

    const/4 v8, 0x1

    invoke-virtual {v7, v0, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 276
    const-string v0, "HDR-OFF"

    invoke-virtual {v7, v0, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 277
    iput-boolean v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->isCcodec:Z

    .line 279
    invoke-static {}, Lcom/samsung/android/media/convert/util/CodecsHelper;->isSupportOMX()Z

    move-result v0

    if-nez v0, :cond_a

    .line 280
    const-string/jumbo v0, "use c2 codec - filter"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iput-boolean v8, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->isCcodec:Z

    .line 282
    const-string/jumbo v0, "ro.hardware.chipname"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "chipName":Ljava/lang/String;
    const-string/jumbo v9, "ro.product.board"

    invoke-static {v9}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 284
    .local v9, "boardName":Ljava/lang/String;
    const-string/jumbo v10, "ro.soc.model"

    invoke-static {v10}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, "socModelName":Ljava/lang/String;
    move-object v11, v0

    .line 287
    .local v11, "chipset":Ljava/lang/String;
    const-string v12, ""

    if-eqz v11, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 288
    :cond_4
    move-object v11, v9

    .line 290
    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 291
    :cond_6
    move-object v11, v10

    .line 293
    :cond_7
    if-eqz v11, :cond_a

    .line 294
    const-string v12, "exynos"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string/jumbo v12, "s5e"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_6

    .line 299
    :cond_8
    const-string/jumbo v12, "vendor.qti-ext-dec-forceNonUBWC.value"

    invoke-virtual {v7, v12, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 300
    const-string/jumbo v12, "vendor.qti-ext-imageformat-filter-enabled.value"

    invoke-virtual {v7, v12, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 301
    const-string/jumbo v12, "vendor.qti-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v7, v12, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 302
    const v12, 0x7fa30c04

    const-string/jumbo v13, "vendor.qti-ext-imageformat-filter-clientcolorformat.value"

    invoke-virtual {v7, v13, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_7

    .line 295
    :cond_9
    :goto_6
    const-string/jumbo v12, "vendor.sec-dec-output.image-convert.value"

    invoke-virtual {v7, v12, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 296
    const-string/jumbo v12, "vendor.sec-ext-imageformat-filter-enableInplace.value"

    invoke-virtual {v7, v12, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 297
    const/16 v12, 0x105

    const-string/jumbo v13, "vendor.sec-dec-output.image-convert-pixel-format.value"

    invoke-virtual {v7, v13, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 308
    .end local v0    # "chipName":Ljava/lang/String;
    .end local v9    # "boardName":Ljava/lang/String;
    .end local v10    # "socModelName":Ljava/lang/String;
    .end local v11    # "chipset":Ljava/lang/String;
    :cond_a
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input video format: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-wide v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoEndUs:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-nez v0, :cond_b

    .line 313
    const-string v0, "durationUs"

    invoke-virtual {v7, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoEndUs:J

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_b
    iput v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    .line 320
    :try_start_5
    invoke-virtual {v7, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 323
    goto :goto_8

    .line 321
    :catch_2
    move-exception v0

    .line 325
    :goto_8
    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    if-eqz v0, :cond_c

    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    const/16 v9, 0xfa

    if-le v0, v9, :cond_d

    .line 326
    :cond_c
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    iget-object v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v9, v10}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    .line 329
    :cond_d
    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSourceFrameRate :"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mSourceFrameRate:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", mOutputVideoFrameRate :"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    iget v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-static {v0, v9, v10}, Lcom/samsung/android/media/convert/util/CodecsHelper;->suggestBitRate(III)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoBitRate:I

    .line 339
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoMimeType:Ljava/lang/String;

    iget v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    invoke-static {v0, v9, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v9

    .line 341
    .local v9, "outputVideoFormat":Landroid/media/MediaFormat;
    const v0, 0x7f000789

    const-string v10, "color-format"

    invoke-virtual {v9, v10, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 343
    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoBitRate:I

    const-string v10, "bitrate"

    invoke-virtual {v9, v10, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 344
    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v9, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 345
    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoIFrameInterval:I

    const-string v2, "i-frame-interval"

    invoke-virtual {v9, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 346
    const-string/jumbo v0, "priority"

    invoke-virtual {v9, v0, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "output video format "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :try_start_6
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 353
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2, v2, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 358
    nop

    .line 359
    new-instance v0, Lcom/samsung/android/media/convert/surfaces/InputSurface;

    iget-object v2, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/media/convert/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputSurface:Lcom/samsung/android/media/convert/surfaces/InputSurface;

    .line 360
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 361
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputSurface:Lcom/samsung/android/media/convert/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/media/convert/surfaces/InputSurface;->makeCurrent()V

    .line 364
    :try_start_7
    const-string/jumbo v0, "width"

    invoke-virtual {v7, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, "origin_width":I
    const-string v2, "height"

    invoke-virtual {v7, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 368
    .local v2, "origin_height":I
    int-to-float v10, v0

    int-to-float v11, v2

    div-float v19, v10, v11

    .line 369
    .local v19, "originAspectRatio":F
    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    int-to-float v10, v10

    iget v11, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    int-to-float v11, v11

    div-float v20, v10, v11

    .line 370
    .local v20, "targetAspectRatio":F
    cmpl-float v10, v19, v20

    if-lez v10, :cond_e

    .line 371
    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    .line 372
    .local v10, "width":I
    iget v11, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    mul-int/2addr v11, v2

    div-int/2addr v11, v0

    .line 373
    .local v11, "height":I
    const/4 v12, 0x0

    .line 374
    .local v12, "x":I
    iget v13, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    sub-int/2addr v13, v11

    div-int/lit8 v13, v13, 0x2

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    .local v13, "y":I
    goto :goto_9

    .line 376
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_e
    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    move v11, v10

    .line 377
    .restart local v11    # "height":I
    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputHeight:I

    mul-int/2addr v10, v0

    div-int/2addr v10, v2

    .line 378
    .restart local v10    # "width":I
    iget v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputWidth:I

    sub-int/2addr v12, v10

    div-int/lit8 v12, v12, 0x2

    .line 379
    .restart local v12    # "x":I
    const/4 v13, 0x0

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    .line 381
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "x":I
    .local v21, "width":I
    .local v22, "height":I
    .local v23, "x":I
    .local v24, "y":I
    :goto_9
    new-instance v15, Lcom/samsung/android/media/convert/surfaces/OutputSurface;

    iget v11, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    const/16 v18, 0x0

    move-object v10, v15

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v14, v21

    move-object v8, v15

    move/from16 v15, v22

    move/from16 v16, v0

    move/from16 v17, v2

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;-><init>(IIIIIIIZ)V

    iput-object v8, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputSurface:Lcom/samsung/android/media/convert/surfaces/OutputSurface;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 387
    .end local v0    # "origin_width":I
    .end local v2    # "origin_height":I
    .end local v19    # "originAspectRatio":F
    .end local v20    # "targetAspectRatio":F
    .end local v21    # "width":I
    .end local v22    # "height":I
    .end local v23    # "x":I
    .end local v24    # "y":I
    goto :goto_a

    .line 383
    :catch_3
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Can\'t get input video resolution"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v2, Lcom/samsung/android/media/convert/surfaces/OutputSurface;

    iget v8, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    invoke-direct {v2, v8}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputSurface:Lcom/samsung/android/media/convert/surfaces/OutputSurface;

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    :try_start_8
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputSurface:Lcom/samsung/android/media/convert/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/media/convert/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 393
    goto :goto_b

    .line 391
    :catch_4
    move-exception v0

    .line 394
    :goto_b
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_f

    .line 396
    const-string v0, "can\'t set VideoDecoder"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v5

    .line 399
    :cond_f
    const/4 v2, 0x1

    return v2

    .line 354
    :catch_5
    move-exception v0

    .line 356
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "createEncoder error"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v5

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "videoTrack":I
    .end local v7    # "inputFormat":Landroid/media/MediaFormat;
    .end local v9    # "outputVideoFormat":Landroid/media/MediaFormat;
    :catch_6
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "createExtractor error"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return v5

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :goto_c
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 255
    const/4 v2, 0x0

    .line 256
    .end local v4    # "metaData":Landroid/media/MediaMetadataRetriever;
    .local v2, "metaData":Landroid/media/MediaMetadataRetriever;
    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method protected blacklist release()V
    .locals 5

    .line 1118
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SemVideoConverter"

    const-string/jumbo v2, "releasing encoder objects"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1122
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 1123
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 1124
    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1129
    goto :goto_0

    .line 1125
    :catch_0
    move-exception v1

    .line 1127
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing output video encoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1132
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 1134
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 1135
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 1136
    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1141
    goto :goto_1

    .line 1137
    :catch_1
    move-exception v1

    .line 1139
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing input video decoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1144
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    .line 1146
    :try_start_5
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 1147
    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1152
    goto :goto_2

    .line 1148
    :catch_2
    move-exception v1

    .line 1150
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing video extractor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1156
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputSurface:Lcom/samsung/android/media/convert/surfaces/OutputSurface;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    .line 1158
    :try_start_7
    invoke-virtual {v1}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->release()V

    .line 1159
    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputSurface:Lcom/samsung/android/media/convert/surfaces/OutputSurface;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1164
    goto :goto_3

    .line 1160
    :catch_3
    move-exception v1

    .line 1162
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing outputSurface."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1167
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputSurface:Lcom/samsung/android/media/convert/surfaces/InputSurface;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_4

    .line 1170
    :try_start_9
    invoke-virtual {v1}, Lcom/samsung/android/media/convert/surfaces/InputSurface;->release()V

    .line 1171
    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputSurface:Lcom/samsung/android/media/convert/surfaces/InputSurface;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1176
    goto :goto_4

    .line 1172
    :catch_4
    move-exception v1

    .line 1174
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_a
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing input surface."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1179
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_5

    .line 1181
    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 1182
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 1183
    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1188
    goto :goto_5

    .line 1184
    :catch_5
    move-exception v1

    .line 1186
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_c
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing output audio encoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1191
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_6

    .line 1193
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 1194
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 1195
    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1200
    goto :goto_6

    .line 1196
    :catch_6
    move-exception v1

    .line 1198
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing input audio decoder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1203
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_7

    .line 1205
    :try_start_f
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 1206
    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1211
    goto :goto_7

    .line 1207
    :catch_7
    move-exception v1

    .line 1209
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_10
    const-string v3, "SemVideoConverter"

    const-string v4, "Exception in releasing audio extractor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1214
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v1, :cond_9

    .line 1216
    :try_start_11
    iget-boolean v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-eqz v1, :cond_8

    .line 1217
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 1218
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 1219
    iput-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1225
    goto :goto_8

    .line 1221
    :catch_8
    move-exception v1

    .line 1223
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_12
    const-string v2, "SemVideoConverter"

    const-string v3, "Exception in releasing muxer."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1227
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_8
    iget-boolean v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUpdateCreationTime:Z

    if-eqz v1, :cond_a

    .line 1228
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/convert/core/ConvertVideo;->updateCreationTime(Ljava/lang/String;Z)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1230
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1231
    :try_start_13
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1233
    monitor-exit v1

    .line 1234
    nop

    .line 1236
    return-void

    .line 1233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    throw v0

    .line 1230
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1231
    :try_start_14
    iput-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1233
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1234
    throw v1

    .line 1233
    :catchall_2
    move-exception v0

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v0
.end method

.method protected blacklist startConverting()V
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    const-string v2, "SemVideoConverter"

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void

    .line 628
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->prepareVideoCodec()Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    return-void

    .line 630
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->prepareAudioCodec()Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    return-void

    .line 632
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    .line 635
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 637
    .local v0, "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v4, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 638
    .local v4, "videoDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 640
    .local v5, "videoDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    iget-boolean v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object v6, v7

    .line 641
    .local v6, "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :goto_0
    iget-boolean v8, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    goto :goto_1

    :cond_4
    move-object v8, v7

    .line 643
    .local v8, "audioEncoderInputBuffers":[Ljava/nio/ByteBuffer;
    :goto_1
    iget-boolean v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    if-eqz v9, :cond_5

    iget-object v9, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9

    goto :goto_2

    :cond_5
    move-object v9, v7

    .line 644
    .local v9, "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :goto_2
    iget-boolean v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    if-eqz v10, :cond_6

    iget-object v7, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 646
    .local v7, "audioDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    :cond_6
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 647
    .local v10, "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 649
    .local v11, "videoDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 650
    .local v12, "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 652
    .local v13, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    const/4 v14, 0x0

    .line 653
    .local v14, "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    const/4 v15, 0x0

    .line 656
    .local v15, "videoEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    iget-boolean v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    xor-int/lit8 v17, v3, 0x1

    .line 657
    .local v17, "audioExtractorDone":Z
    xor-int/lit8 v18, v3, 0x1

    .line 658
    .local v18, "audioDecoderDone":Z
    const/16 v16, 0x1

    xor-int/lit8 v3, v3, 0x1

    .line 661
    .local v3, "audioEncoderDone":Z
    const/16 v19, 0x0

    .line 662
    .local v19, "videoExtractorDone":Z
    const/16 v20, 0x0

    .line 663
    .local v20, "videoEncoderDone":Z
    const/16 v21, 0x0

    .line 666
    .local v21, "videoDecoderDone":Z
    const/16 v22, -0x1

    .line 668
    .local v22, "pendingAudioDecoderOutputBufferIndex":I
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .end local v5    # "videoDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v6    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v23, "videoDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v24, "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    iget-wide v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoStartUs:J

    const-wide/16 v25, 0x0

    cmp-long v27, v5, v25

    move/from16 v28, v3

    .end local v3    # "audioEncoderDone":Z
    .local v28, "audioEncoderDone":Z
    const/4 v3, 0x0

    if-eqz v27, :cond_7

    .line 669
    move-object/from16 v27, v0

    .end local v0    # "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v27, "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v5, v6, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_3

    .line 668
    .end local v27    # "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v0    # "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :cond_7
    move-object/from16 v27, v0

    .line 671
    .end local v0    # "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v27    # "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :goto_3
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    if-eqz v0, :cond_9

    iget-wide v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioStartUs:J

    cmp-long v0, v5, v25

    if-eqz v0, :cond_9

    .line 672
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v5, v6, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 673
    :goto_4
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    move-object/from16 v29, v4

    .end local v4    # "videoDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .local v29, "videoDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    iget-wide v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioStartUs:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_a

    .line 674
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    .line 676
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-object/from16 v4, v29

    const/4 v3, 0x0

    goto :goto_4

    .line 675
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid File!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    .end local v29    # "videoDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v4    # "videoDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    :cond_9
    move-object/from16 v29, v4

    .line 680
    .end local v4    # "videoDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v29    # "videoDecoderInputBuffers":[Ljava/nio/ByteBuffer;
    :cond_a
    const-wide/16 v3, -0x1

    move-wide v4, v3

    move-object/from16 v6, v24

    move/from16 v3, v28

    move/from16 v49, v22

    move-object/from16 v22, v9

    move/from16 v9, v49

    .line 681
    .end local v24    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v28    # "audioEncoderDone":Z
    .restart local v3    # "audioEncoderDone":Z
    .local v4, "lastAudioSampleWrittenTime":J
    .restart local v6    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v9, "pendingAudioDecoderOutputBufferIndex":I
    .local v22, "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :goto_5
    if-eqz v20, :cond_c

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    move v0, v9

    move-object/from16 v34, v11

    move-object v11, v13

    move-object/from16 v9, v22

    move-object/from16 v49, v12

    move-object v12, v10

    move-wide/from16 v50, v4

    move-object/from16 v5, v49

    move-object v4, v14

    move-wide/from16 v13, v50

    goto/16 :goto_1e

    .line 689
    :cond_c
    :goto_6
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    move-wide/from16 v30, v4

    .end local v4    # "lastAudioSampleWrittenTime":J
    .local v30, "lastAudioSampleWrittenTime":J
    if-nez v0, :cond_11

    if-nez v19, :cond_11

    if-eqz v15, :cond_e

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v39, v3

    move-object/from16 v28, v6

    move-object/from16 v41, v12

    move-object v6, v13

    goto/16 :goto_9

    .line 691
    :cond_e
    :goto_7
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    .line 692
    .local v0, "decoderInputBufferIndex":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_f

    .line 694
    const-string v4, "no video decoder input buffer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move/from16 v39, v3

    move-object/from16 v28, v6

    move-object/from16 v41, v12

    move-object v6, v13

    goto/16 :goto_9

    .line 698
    :cond_f
    aget-object v4, v29, v0

    .line 699
    .local v4, "decoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v28, v6

    const/4 v6, 0x0

    .end local v6    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v28, "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v4, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 700
    .local v5, "size":I
    iget-object v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move/from16 v39, v3

    move-object/from16 v40, v4

    .end local v3    # "audioEncoderDone":Z
    .end local v4    # "decoderInputBuffer":Ljava/nio/ByteBuffer;
    .local v39, "audioEncoderDone":Z
    .local v40, "decoderInputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    .line 702
    .local v3, "presentationTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v12

    .end local v12    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v41, "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    const-string v12, " video decoder: get input buffer presentationTime :"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", size : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object v6, v13

    .end local v13    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v6, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    iget-wide v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoEndUs:J

    cmp-long v12, v3, v12

    if-gtz v12, :cond_10

    if-ltz v5, :cond_10

    .line 704
    iget-object v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/16 v34, 0x0

    iget-object v13, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    .line 705
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v38

    .line 704
    move-object/from16 v32, v12

    move/from16 v33, v0

    move/from16 v35, v5

    move-wide/from16 v36, v3

    invoke-virtual/range {v32 .. v38}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 706
    iget-object v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_8

    .line 708
    :cond_10
    const/16 v19, 0x1

    .line 711
    :goto_8
    if-eqz v19, :cond_12

    .line 713
    const-string/jumbo v12, "video extractor: EOS"

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x4

    move-object/from16 v32, v12

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v38}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_9

    .line 689
    .end local v0    # "decoderInputBufferIndex":I
    .end local v5    # "size":I
    .end local v28    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v39    # "audioEncoderDone":Z
    .end local v40    # "decoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v41    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v3, "audioEncoderDone":Z
    .local v6, "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v12    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v13    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_11
    move/from16 v39, v3

    move-object/from16 v28, v6

    move-object/from16 v41, v12

    move-object v6, v13

    .line 723
    .end local v3    # "audioEncoderDone":Z
    .end local v12    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v13    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v6, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v28    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v39    # "audioEncoderDone":Z
    .restart local v41    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_12
    :goto_9
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    const/4 v3, -0x2

    const/4 v4, -0x3

    if-nez v0, :cond_20

    if-nez v21, :cond_20

    if-eqz v15, :cond_14

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_13

    goto :goto_a

    :cond_13
    move-object/from16 v34, v6

    move-object v4, v14

    goto/16 :goto_e

    .line 725
    :cond_14
    :goto_a
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x2710

    invoke-virtual {v0, v11, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 727
    .local v5, "decoderOutputBufferIndex":I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_15

    .line 729
    const-string v0, "no video decoder output buffer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    move-object/from16 v34, v6

    move-object v4, v14

    goto/16 :goto_e

    .line 732
    :cond_15
    if-ne v5, v4, :cond_16

    .line 734
    const-string/jumbo v0, "video decoder: output buffers changed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 736
    .end local v23    # "videoDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v0, "videoDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v23, v0

    move-object/from16 v34, v6

    move-object v4, v14

    goto/16 :goto_e

    .line 738
    .end local v0    # "videoDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v23    # "videoDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :cond_16
    if-ne v5, v3, :cond_19

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "video decoder: codec info format changed"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    .line 741
    invoke-virtual {v12}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->isCcodec:Z

    if-eqz v0, :cond_17

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->skipBufferInfo:Z

    if-nez v0, :cond_17

    .line 744
    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->skipBufferInfo:Z

    .line 746
    :cond_17
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->skipBufferInfo:Z

    if-eqz v0, :cond_18

    .line 748
    const-string/jumbo v0, "skip info in case of ccodec"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->skipBufferInfo:Z

    .line 750
    goto :goto_9

    .line 753
    :cond_18
    const-string v0, "break in case of normal case"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    move-object/from16 v34, v6

    move-object v4, v14

    goto/16 :goto_e

    .line 759
    :cond_19
    aget-object v12, v23, v5

    .line 760
    .local v12, "decoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget v0, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    .line 762
    const-string/jumbo v0, "video decoder: codec config buffer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v13, 0x0

    invoke-virtual {v0, v5, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 764
    move-object/from16 v34, v6

    move-object v4, v14

    goto/16 :goto_e

    .line 767
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "video decoder: returned buffer for time "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget v0, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    :goto_b
    move v3, v0

    .line 771
    .local v3, "render":Z
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 772
    if-eqz v3, :cond_1f

    .line 774
    const-string/jumbo v0, "output surface: await new image"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputSurface:Lcom/samsung/android/media/convert/surfaces/OutputSurface;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v0, :cond_1c

    .line 779
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 781
    goto/16 :goto_9

    .line 799
    :catch_0
    move-exception v0

    move/from16 v35, v5

    move-object/from16 v34, v6

    move-object v4, v14

    goto :goto_c

    .line 786
    :cond_1c
    :try_start_2
    const-string/jumbo v0, "output surface: draw image"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 788
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputSurface:Lcom/samsung/android/media/convert/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->drawImage()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 790
    move-object v4, v14

    .end local v14    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .local v4, "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    :try_start_3
    iget-wide v13, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v35, v5

    move-object/from16 v34, v6

    .end local v5    # "decoderOutputBufferIndex":I
    .end local v6    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v34, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v35, "decoderOutputBufferIndex":I
    :try_start_4
    iget-wide v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimVideoStartUs:J

    cmp-long v0, v13, v5

    if-ltz v0, :cond_1d

    .line 791
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputSurface:Lcom/samsung/android/media/convert/surfaces/InputSurface;

    iget-wide v5, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v5, v13

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/media/convert/surfaces/InputSurface;->setPresentationTime(J)V

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input surface: swap buffers time:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputSurface:Lcom/samsung/android/media/convert/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/media/convert/surfaces/InputSurface;->swapBuffers()Z

    .line 797
    const-string/jumbo v0, "video encoder: notified of new frame"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 806
    :cond_1d
    goto :goto_d

    .line 799
    :catch_1
    move-exception v0

    goto :goto_c

    .end local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v35    # "decoderOutputBufferIndex":I
    .restart local v5    # "decoderOutputBufferIndex":I
    .restart local v6    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :catch_2
    move-exception v0

    move/from16 v35, v5

    move-object/from16 v34, v6

    .end local v5    # "decoderOutputBufferIndex":I
    .end local v6    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v35    # "decoderOutputBufferIndex":I
    goto :goto_c

    .end local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .end local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v35    # "decoderOutputBufferIndex":I
    .restart local v5    # "decoderOutputBufferIndex":I
    .restart local v6    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v14    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    :catch_3
    move-exception v0

    move/from16 v35, v5

    move-object/from16 v34, v6

    move-object v4, v14

    .line 800
    .end local v5    # "decoderOutputBufferIndex":I
    .end local v6    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v14    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .local v0, "r":Ljava/lang/RuntimeException;
    .restart local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v35    # "decoderOutputBufferIndex":I
    :goto_c
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 801
    .local v5, "msg":Ljava/lang/String;
    iget-boolean v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v6, :cond_1e

    if-eqz v5, :cond_1e

    const-string v6, "Surface frame wait timed out"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_d

    .line 804
    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 772
    .end local v0    # "r":Ljava/lang/RuntimeException;
    .end local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .end local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v35    # "decoderOutputBufferIndex":I
    .local v5, "decoderOutputBufferIndex":I
    .restart local v6    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v14    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    :cond_1f
    move/from16 v35, v5

    move-object/from16 v34, v6

    move-object v4, v14

    .line 808
    .end local v5    # "decoderOutputBufferIndex":I
    .end local v6    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v14    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v35    # "decoderOutputBufferIndex":I
    :goto_d
    iget v0, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_21

    .line 810
    const-string/jumbo v0, "video decoder: EOS"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v0, 0x1

    .line 812
    .end local v21    # "videoDecoderDone":Z
    .local v0, "videoDecoderDone":Z
    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move/from16 v21, v0

    goto :goto_e

    .line 723
    .end local v0    # "videoDecoderDone":Z
    .end local v3    # "render":Z
    .end local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .end local v12    # "decoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v35    # "decoderOutputBufferIndex":I
    .restart local v6    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v14    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v21    # "videoDecoderDone":Z
    :cond_20
    move-object/from16 v34, v6

    move-object v4, v14

    .line 825
    .end local v6    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v14    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_21
    :goto_e
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_2b

    if-nez v20, :cond_2b

    if-eqz v15, :cond_22

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_2b

    .line 826
    :cond_22
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v10, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 828
    .local v0, "encoderOutputBufferIndex":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_23

    .line 830
    const-string v3, "no video encoder output buffer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    goto/16 :goto_f

    .line 832
    :cond_23
    const/4 v3, -0x3

    if-ne v0, v3, :cond_24

    .line 834
    const-string/jumbo v3, "video encoder: output buffers changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 836
    .end local v27    # "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v3, "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v27, v3

    goto/16 :goto_f

    .line 837
    .end local v3    # "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v27    # "videoEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :cond_24
    const/4 v3, -0x2

    if-ne v0, v3, :cond_26

    .line 839
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video encoder: output format changed "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 840
    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 839
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoTrackIndex:I

    if-gez v3, :cond_25

    .line 847
    iget-object v3, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    .line 848
    .end local v15    # "videoEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .local v3, "videoEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    move-object v15, v3

    goto :goto_f

    .line 845
    .end local v3    # "videoEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v15    # "videoEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    :cond_25
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Video encoder output format changed after muxer has started"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 849
    :cond_26
    if-gez v0, :cond_27

    .line 851
    const-string v3, "Unexpected result from video encoder dequeue output format."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    goto :goto_f

    .line 854
    :cond_27
    aget-object v3, v27, v0

    .line 855
    .local v3, "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget v5, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_28

    .line 857
    const-string/jumbo v5, "video encoder: codec config buffer"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 860
    goto :goto_f

    .line 863
    :cond_28
    iget v5, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_29

    .line 865
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video encoder: writing sample data timestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v13, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoTrackIndex:I

    invoke-virtual {v5, v6, v3, v10}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 869
    :cond_29
    iget v5, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2a

    .line 871
    const-string/jumbo v5, "video encoder: EOS"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/16 v20, 0x1

    .line 874
    :cond_2a
    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 879
    .end local v0    # "encoderOutputBufferIndex":I
    .end local v3    # "encoderOutputBuffer":Ljava/nio/ByteBuffer;
    :cond_2b
    :goto_f
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    if-eqz v0, :cond_49

    .line 886
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_2f

    if-nez v17, :cond_2f

    if-eqz v4, :cond_2c

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_2f

    .line 888
    :cond_2c
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 889
    .local v5, "presentationTimeUs":J
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v12, 0x2710

    invoke-virtual {v0, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    .line 890
    .local v0, "audioDecoderInputBufferIndex":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2d

    .line 892
    const-string v3, "audio decoder input try again later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    goto :goto_11

    .line 895
    :cond_2d
    aget-object v3, v7, v0

    .line 896
    .local v3, "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    iget-object v12, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    .line 897
    .local v12, "size":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "audioDecoderInput  presentationTimeUs :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-wide v13, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mTrimAudioEndUs:J

    cmp-long v13, v5, v13

    if-gtz v13, :cond_2e

    if-ltz v12, :cond_2e

    .line 900
    iget-object v13, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v44, 0x0

    iget-object v14, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    .line 901
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v48

    .line 900
    move-object/from16 v42, v13

    move/from16 v43, v0

    move/from16 v45, v12

    move-wide/from16 v46, v5

    invoke-virtual/range {v42 .. v48}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 902
    iget-object v13, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_10

    .line 904
    :cond_2e
    const/16 v17, 0x1

    .line 907
    :goto_10
    if-eqz v17, :cond_2f

    .line 909
    const-string v13, "audio decoder sending EOS"

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v13, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x4

    move-object/from16 v42, v13

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v48}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 924
    .end local v0    # "audioDecoderInputBufferIndex":I
    .end local v3    # "audioDecoderInputBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "presentationTimeUs":J
    .end local v12    # "size":I
    :cond_2f
    :goto_11
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_37

    if-nez v18, :cond_37

    const/4 v3, -0x1

    if-ne v9, v3, :cond_37

    if-eqz v4, :cond_31

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_30

    goto :goto_12

    :cond_30
    move-object/from16 v3, v34

    goto :goto_13

    .line 927
    :cond_31
    :goto_12
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    .line 928
    move-object/from16 v3, v34

    const-wide/16 v5, 0x2710

    .end local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v3, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    invoke-virtual {v0, v3, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 929
    .local v0, "audioDecoderOutputBufferIndex":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_32

    .line 931
    const-string v5, "audio decoder output buffer try again later while decoding"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    goto :goto_13

    .line 933
    :cond_32
    const/4 v5, -0x3

    if-ne v0, v5, :cond_33

    .line 935
    const-string v5, "audio decoder: output buffers changed"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 937
    .end local v22    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v5, "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v22, v5

    goto :goto_13

    .line 938
    .end local v5    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v22    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :cond_33
    const/4 v5, -0x2

    if-ne v0, v5, :cond_34

    .line 942
    const-string v5, "audio decoder: output format changed: "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    goto :goto_13

    .line 944
    :cond_34
    if-gez v0, :cond_35

    .line 946
    const-string v5, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    goto :goto_13

    .line 951
    :cond_35
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_36

    .line 953
    const-string v5, "audio decoder: codec config buffer"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 955
    goto :goto_13

    .line 957
    :cond_36
    move v9, v0

    .line 959
    goto :goto_13

    .line 924
    .end local v0    # "audioDecoderOutputBufferIndex":I
    .end local v3    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_37
    move-object/from16 v3, v34

    .line 968
    .end local v34    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v3    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :goto_13
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_3a

    if-nez v18, :cond_3a

    const/4 v5, -0x1

    if-eq v9, v5, :cond_3a

    .line 970
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 971
    .local v0, "size":I
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 972
    .local v13, "presentationTime":J
    iget-object v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    move-object v12, v10

    move-object/from16 v34, v11

    const-wide/16 v10, 0x2710

    .end local v10    # "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v11    # "videoDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v12, "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v34, "videoDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    invoke-virtual {v6, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    .line 975
    .local v6, "audioEncoderInputBufferIndex":I
    if-ne v6, v5, :cond_38

    .line 977
    const-string v5, "audio encoder input buffer try again later"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    goto :goto_14

    .line 980
    :cond_38
    if-ltz v0, :cond_39

    cmp-long v5, v13, v25

    if-ltz v5, :cond_39

    .line 981
    aget-object v5, v8, v6

    .line 983
    .local v5, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    aget-object v10, v22, v9

    .line 984
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 985
    .local v10, "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 986
    iget v11, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v11, v0

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 989
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 990
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 991
    iget-object v11, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v44, 0x0

    move-object/from16 v35, v5

    .end local v5    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    .local v35, "encoderInputBuffer":Ljava/nio/ByteBuffer;
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v42, v11

    move/from16 v43, v6

    move/from16 v45, v0

    move-wide/from16 v46, v13

    move/from16 v48, v5

    invoke-virtual/range {v42 .. v48}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 994
    .end local v10    # "audioDecoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v35    # "encoderInputBuffer":Ljava/nio/ByteBuffer;
    :cond_39
    iget-object v5, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 995
    const/4 v9, -0x1

    .line 996
    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3b

    .line 998
    const-string v5, "audio decoder: EOS"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/16 v18, 0x1

    goto :goto_14

    .line 968
    .end local v0    # "size":I
    .end local v6    # "audioEncoderInputBufferIndex":I
    .end local v12    # "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v13    # "presentationTime":J
    .end local v34    # "videoDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v10, "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v11    # "videoDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_3a
    move-object v12, v10

    move-object/from16 v34, v11

    .line 1012
    .end local v10    # "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v11    # "videoDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v12    # "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v34    # "videoDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_3b
    :goto_14
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_48

    if-nez v39, :cond_48

    if-eqz v4, :cond_3d

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-eqz v0, :cond_3c

    goto :goto_15

    :cond_3c
    move-object v11, v3

    move-object/from16 v24, v4

    move-wide/from16 v13, v30

    move-object/from16 v5, v41

    goto/16 :goto_18

    .line 1013
    :cond_3d
    :goto_15
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    .line 1014
    move-object/from16 v5, v41

    const-wide/16 v10, 0x2710

    .end local v41    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v5, "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    invoke-virtual {v0, v5, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 1015
    .local v0, "audioEncoderOutputBufferIndex":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3e

    .line 1017
    const-string v6, "audio encoder output buffer try again later"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    move-object v11, v3

    move-object/from16 v24, v4

    move-wide/from16 v13, v30

    goto/16 :goto_18

    .line 1019
    :cond_3e
    const/4 v6, -0x3

    if-ne v0, v6, :cond_3f

    .line 1021
    const-string v6, "audio encoder: output buffers changed"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1023
    .end local v28    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v6, "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    move-object v11, v3

    move-wide/from16 v13, v30

    move/from16 v3, v39

    goto/16 :goto_19

    .line 1024
    .end local v6    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v28    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :cond_3f
    const/4 v6, -0x2

    if-ne v0, v6, :cond_41

    .line 1025
    iget v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioTrackIndex:I

    if-gez v6, :cond_40

    .line 1028
    iget-object v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 1030
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio encoder: output format changed "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    move-object v11, v3

    move-object/from16 v6, v28

    move-wide/from16 v13, v30

    move/from16 v3, v39

    goto/16 :goto_19

    .line 1026
    :cond_40
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "Audio encoder output format changed after muxer is started."

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1034
    :cond_41
    if-gez v0, :cond_42

    .line 1036
    const-string v6, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    move-object v11, v3

    move-object/from16 v24, v4

    move-wide/from16 v13, v30

    goto/16 :goto_18

    .line 1039
    :cond_42
    aget-object v6, v28, v0

    .line 1041
    .local v6, "audioEncoderOutputBuffer":Ljava/nio/ByteBuffer;
    iget v10, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_43

    .line 1043
    const-string v10, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1046
    move-object v11, v3

    move-object/from16 v24, v4

    move-wide/from16 v13, v30

    goto/16 :goto_18

    .line 1049
    :cond_43
    iget v10, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v10, :cond_46

    .line 1050
    iget-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v10, v30, v10

    if-gtz v10, :cond_44

    .line 1052
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audio encoder writing sample data to muxer  time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v13, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1055
    .end local v30    # "lastAudioSampleWrittenTime":J
    .local v10, "lastAudioSampleWrittenTime":J
    iget-object v13, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v14, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioTrackIndex:I

    invoke-virtual {v13, v14, v6, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    move-object/from16 v24, v4

    move-wide v13, v10

    move-object v11, v3

    goto :goto_16

    .line 1058
    .end local v10    # "lastAudioSampleWrittenTime":J
    .restart local v30    # "lastAudioSampleWrittenTime":J
    :cond_44
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lastAudioSampleWrittenTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v13, v30

    .end local v30    # "lastAudioSampleWrittenTime":J
    .local v13, "lastAudioSampleWrittenTime":J
    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " > presentationTime :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    move-object/from16 v24, v4

    .end local v3    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .local v11, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v24, "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    iget-wide v3, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    if-eqz v18, :cond_45

    goto :goto_16

    .line 1061
    :cond_45
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Audio time stamps are not in increasing order."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1049
    .end local v11    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v13    # "lastAudioSampleWrittenTime":J
    .end local v24    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v3    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v30    # "lastAudioSampleWrittenTime":J
    :cond_46
    move-object v11, v3

    move-object/from16 v24, v4

    move-wide/from16 v13, v30

    .line 1066
    .end local v3    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .end local v30    # "lastAudioSampleWrittenTime":J
    .restart local v11    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v13    # "lastAudioSampleWrittenTime":J
    .restart local v24    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    :goto_16
    iget v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_47

    .line 1068
    const-string v3, "audio encoder: EOS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/4 v3, 0x1

    .end local v39    # "audioEncoderDone":Z
    .local v3, "audioEncoderDone":Z
    goto :goto_17

    .line 1066
    .end local v3    # "audioEncoderDone":Z
    .restart local v39    # "audioEncoderDone":Z
    :cond_47
    move/from16 v3, v39

    .line 1071
    .end local v39    # "audioEncoderDone":Z
    .restart local v3    # "audioEncoderDone":Z
    :goto_17
    iget-object v4, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1073
    move-object/from16 v4, v24

    move-object/from16 v6, v28

    goto :goto_19

    .line 1012
    .end local v0    # "audioEncoderOutputBufferIndex":I
    .end local v5    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v6    # "audioEncoderOutputBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v13    # "lastAudioSampleWrittenTime":J
    .end local v24    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .local v3, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v30    # "lastAudioSampleWrittenTime":J
    .restart local v39    # "audioEncoderDone":Z
    .restart local v41    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_48
    move-object v11, v3

    move-object/from16 v24, v4

    move-wide/from16 v13, v30

    move-object/from16 v5, v41

    .line 1083
    .end local v3    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .end local v30    # "lastAudioSampleWrittenTime":J
    .end local v41    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v5    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v11    # "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v13    # "lastAudioSampleWrittenTime":J
    .restart local v24    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    :goto_18
    move-object/from16 v4, v24

    move-object/from16 v6, v28

    move/from16 v3, v39

    goto :goto_19

    .line 879
    .end local v5    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v12    # "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v13    # "lastAudioSampleWrittenTime":J
    .end local v24    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .restart local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .local v10, "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v11, "videoDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v30    # "lastAudioSampleWrittenTime":J
    .local v34, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v41    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_49
    move-object/from16 v24, v4

    move-object v12, v10

    move-wide/from16 v13, v30

    move-object/from16 v5, v41

    move-object/from16 v49, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v49

    .end local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .end local v10    # "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .end local v30    # "lastAudioSampleWrittenTime":J
    .end local v41    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v5    # "audioEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .local v11, "audioDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v12    # "videoEncoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    .restart local v13    # "lastAudioSampleWrittenTime":J
    .restart local v24    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .local v34, "videoDecoderOutputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    move-object/from16 v6, v28

    move/from16 v3, v39

    .line 1083
    .end local v24    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .end local v28    # "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v39    # "audioEncoderDone":Z
    .local v3, "audioEncoderDone":Z
    .restart local v4    # "audioEncoderOutputMediaFormat":Landroid/media/MediaFormat;
    .local v6, "audioEncoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :goto_19
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v0, :cond_4f

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    if-nez v0, :cond_4f

    if-eqz v15, :cond_4f

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    if-eqz v0, :cond_4b

    if-eqz v4, :cond_4a

    goto :goto_1a

    :cond_4a
    const/4 v10, 0x1

    goto :goto_1d

    .line 1085
    :cond_4b
    :goto_1a
    const/4 v0, 0x0

    .line 1086
    .local v0, "filepath":Ljava/lang/String;
    sget-boolean v10, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUseUri:Z

    if-eqz v10, :cond_4c

    iget-object v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .end local v0    # "filepath":Ljava/lang/String;
    .local v24, "filepath":Ljava/lang/String;
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputUri:Landroid/net/Uri;

    invoke-direct {v1, v10, v0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .end local v24    # "filepath":Ljava/lang/String;
    .restart local v0    # "filepath":Ljava/lang/String;
    :cond_4c
    move-object/from16 v24, v0

    .end local v0    # "filepath":Ljava/lang/String;
    .restart local v24    # "filepath":Ljava/lang/String;
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputFilePath:Ljava/lang/String;

    .line 1087
    .end local v24    # "filepath":Ljava/lang/String;
    .restart local v0    # "filepath":Ljava/lang/String;
    :goto_1b
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Lcom/samsung/android/media/convert/core/ConvertVideo;->updateCreationTime(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_4d

    .line 1088
    const/16 v10, 0x8

    move-object/from16 v24, v0

    .end local v0    # "filepath":Ljava/lang/String;
    .restart local v24    # "filepath":Ljava/lang/String;
    const-string/jumbo v0, "param-meta-author"

    invoke-virtual {v15, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1089
    const-string/jumbo v0, "param-meta-transcoding"

    const/4 v10, 0x1

    invoke-virtual {v15, v0, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1c

    .line 1087
    .end local v24    # "filepath":Ljava/lang/String;
    .restart local v0    # "filepath":Ljava/lang/String;
    :cond_4d
    move-object/from16 v24, v0

    .line 1091
    .end local v0    # "filepath":Ljava/lang/String;
    .restart local v24    # "filepath":Ljava/lang/String;
    :goto_1c
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v15}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mVideoTrackIndex:I

    .line 1092
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mCopyAudio:Z

    if-eqz v0, :cond_4e

    .line 1093
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAudioTrackIndex:I

    .line 1094
    :cond_4e
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mInputOrientationDegrees:I

    invoke-virtual {v0, v10}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 1095
    iget-object v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 1096
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mMuxerStarted:Z

    goto :goto_1d

    .line 1083
    .end local v24    # "filepath":Ljava/lang/String;
    :cond_4f
    const/4 v10, 0x1

    .line 1098
    :goto_1d
    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v0, :cond_51

    .line 1100
    const-string v0, "Encoding abruptly stopped."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    move v0, v9

    move-object/from16 v9, v22

    .line 1105
    .end local v22    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .local v0, "pendingAudioDecoderOutputBufferIndex":I
    .local v9, "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :goto_1e
    if-eqz v3, :cond_50

    iget-boolean v10, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-nez v10, :cond_50

    if-eqz v21, :cond_50

    .line 1107
    const-string v10, "Encoding finished."

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    return-void

    .line 1112
    :cond_50
    return-void

    .line 1098
    .end local v0    # "pendingAudioDecoderOutputBufferIndex":I
    .local v9, "pendingAudioDecoderOutputBufferIndex":I
    .restart local v22    # "audioDecoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :cond_51
    move-object v10, v12

    move-object v12, v5

    move-wide/from16 v49, v13

    move-object v14, v4

    move-object v13, v11

    move-wide/from16 v4, v49

    move-object/from16 v11, v34

    goto/16 :goto_5
.end method

.method public blacklist stop()Z
    .locals 5

    .line 1241
    const-string v0, "SemVideoConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop method called  mConverting :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserStop :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1247
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mOutputSurface:Lcom/samsung/android/media/convert/surfaces/OutputSurface;

    if-eqz v2, :cond_1

    .line 1248
    invoke-virtual {v2}, Lcom/samsung/android/media/convert/surfaces/OutputSurface;->notifyFrameSyncObject()V

    .line 1250
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUserStop:Z

    .line 1251
    iget-object v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mThread:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1252
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    if-nez v3, :cond_3

    .line 1253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v1

    .line 1255
    :cond_3
    :try_start_1
    const-string v1, "SemVideoConverter"

    const-string v3, "Calling wait on stop lock."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mStopLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    :try_start_2
    const-string v1, "SemVideoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mConverting :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-boolean v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    if-eqz v1, :cond_4

    .line 1265
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1263
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1257
    :catch_0
    move-exception v1

    .line 1259
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "SemVideoConverter"

    const-string v4, "Stop lock interrupted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1263
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "SemVideoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mConverting :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-boolean v1, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    if-eqz v1, :cond_4

    .line 1265
    goto :goto_0

    .line 1267
    :cond_4
    :goto_1
    monitor-exit v0

    return v2

    .line 1263
    :goto_2
    const-string v2, "SemVideoConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop method finally  mConverting :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-boolean v2, p0, Lcom/samsung/android/media/convert/core/ConvertVideo;->mConverting:Z

    if-eqz v2, :cond_5

    .line 1265
    invoke-virtual {p0}, Lcom/samsung/android/media/convert/core/ConvertVideo;->release()V

    .line 1266
    :cond_5
    nop

    .end local p0    # "this":Lcom/samsung/android/media/convert/core/ConvertVideo;
    throw v1

    .line 1268
    .restart local p0    # "this":Lcom/samsung/android/media/convert/core/ConvertVideo;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 1244
    :cond_6
    :goto_3
    return v1
.end method

.method public blacklist updateCreationTime(Ljava/lang/String;Z)Z
    .locals 25
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "mode"    # Z

    .line 1640
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    .line 1641
    .local v4, "ret":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCreationTime mode : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", filepath : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SemVideoConverter"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mAuthor:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_9

    iget-boolean v0, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUpdateCreationTime:Z

    const/4 v6, 0x1

    if-nez v0, :cond_0

    if-ne v3, v6, :cond_0

    goto/16 :goto_a

    .line 1648
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 1650
    .local v7, "file":Ljava/io/File;
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 1651
    .local v8, "atomSizeBuf":[B
    new-array v9, v0, [B

    .line 1652
    .local v9, "atomNameBuf":[B
    new-array v10, v0, [B

    .line 1654
    .local v10, "temp":[B
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 1656
    .local v11, "fileSize":J
    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-gtz v0, :cond_1

    .line 1657
    const-string v0, "file size is same or less than 0"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    return v4

    .line 1660
    :cond_1
    const-string v0, "mdia"

    const-string v15, "minf"

    const-string v13, "moov"

    const-string/jumbo v14, "stbl"

    const-string/jumbo v6, "trak"

    filled-new-array {v0, v15, v13, v14, v6}, [Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1661
    .local v6, "parentContainer":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1663
    .local v13, "fileObj":Ljava/io/RandomAccessFile;
    if-eqz v3, :cond_2

    .line 1664
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "rw"

    invoke-direct {v0, v7, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    .end local v13    # "fileObj":Ljava/io/RandomAccessFile;
    .local v0, "fileObj":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 1741
    .end local v0    # "fileObj":Ljava/io/RandomAccessFile;
    .restart local v13    # "fileObj":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v22, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    goto/16 :goto_8

    .line 1735
    :catch_0
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    goto/16 :goto_6

    .line 1666
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "r"

    invoke-direct {v0, v7, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v13, v0

    .line 1668
    :goto_0
    const-wide/16 v14, 0x0

    .line 1670
    .local v14, "filePointer":J
    :goto_1
    cmp-long v0, v14, v11

    if-gez v0, :cond_8

    .line 1673
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePointer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    invoke-virtual {v13, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1678
    goto :goto_2

    .line 1675
    :catch_1
    move-exception v0

    .line 1677
    .local v0, "e1":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1679
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_2
    array-length v0, v8

    const/4 v2, 0x0

    invoke-virtual {v13, v8, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1680
    invoke-static {v8}, Lcom/samsung/android/media/convert/core/ConvertVideo;->unsignedIntToLong([B)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 1683
    .local v18, "atomSize":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Atom Size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v2, v7

    move-object/from16 v17, v8

    move-wide/from16 v7, v18

    .end local v8    # "atomSizeBuf":[B
    .end local v18    # "atomSize":J
    .local v2, "file":Ljava/io/File;
    .local v7, "atomSize":J
    .local v17, "atomSizeBuf":[B
    :try_start_4
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    array-length v0, v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "file":Ljava/io/File;
    .local v18, "file":Ljava/io/File;
    :try_start_5
    invoke-virtual {v13, v9, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1686
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    .line 1688
    .local v0, "atomName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v19, v9

    .end local v9    # "atomNameBuf":[B
    .local v19, "atomNameBuf":[B
    :try_start_6
    const-string v9, "Atom Box: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-static {v6, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 1691
    .local v2, "tmpAtomPosition":I
    const-wide/16 v20, 0x8

    if-ltz v2, :cond_3

    .line 1693
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v22, v6

    .end local v6    # "parentContainer":[Ljava/lang/String;
    .local v22, "parentContainer":[Ljava/lang/String;
    :try_start_7
    const-string v6, "Found parent: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " move to position: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    add-long v14, v14, v20

    const-wide/16 v6, 0x0

    goto/16 :goto_3

    .line 1696
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "parentContainer":[Ljava/lang/String;
    :cond_3
    move-object/from16 v22, v6

    .end local v6    # "parentContainer":[Ljava/lang/String;
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    const-string v6, "mvhd"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1698
    const-string v6, "Found: mvhd"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v4, 0x1

    .line 1700
    if-eqz v3, :cond_4

    .line 1701
    array-length v5, v10

    const/4 v6, 0x0

    invoke-virtual {v13, v10, v6, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1702
    sget-object v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    array-length v9, v5

    invoke-virtual {v13, v5, v6, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    goto/16 :goto_4

    .line 1705
    :cond_4
    sget-object v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    array-length v6, v5

    const/4 v9, 0x0

    invoke-virtual {v13, v5, v9, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1706
    sget-object v5, Lcom/samsung/android/media/convert/core/ConvertVideo;->creationTime:[B

    array-length v6, v5

    invoke-virtual {v13, v5, v9, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1707
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/samsung/android/media/convert/core/ConvertVideo;->mUpdateCreationTime:Z

    .line 1711
    goto/16 :goto_4

    .line 1713
    :cond_5
    const/4 v6, 0x1

    const-wide/16 v23, 0x1

    cmp-long v9, v7, v23

    if-nez v9, :cond_6

    .line 1714
    move-wide/from16 v23, v7

    .end local v7    # "atomSize":J
    .local v23, "atomSize":J
    add-long v6, v14, v20

    invoke-virtual {v13, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1715
    const/16 v6, 0x8

    new-array v6, v6, [B

    .line 1716
    .local v6, "atomLargeSizeBuf":[B
    array-length v7, v6

    const/4 v8, 0x0

    invoke-virtual {v13, v6, v8, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1717
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6}, Ljava/math/BigInteger;-><init>([B)V

    .line 1718
    .local v7, "atomTmpLargeSize":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    .line 1719
    .local v8, "atomLargeSize":J
    add-long/2addr v14, v8

    .line 1721
    move-object/from16 v16, v0

    .end local v0    # "atomName":Ljava/lang/String;
    .local v16, "atomName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "64bit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const-wide/16 v6, 0x0

    .end local v6    # "atomLargeSizeBuf":[B
    .end local v7    # "atomTmpLargeSize":Ljava/math/BigInteger;
    .end local v8    # "atomLargeSize":J
    goto :goto_3

    .end local v16    # "atomName":Ljava/lang/String;
    .end local v23    # "atomSize":J
    .restart local v0    # "atomName":Ljava/lang/String;
    .local v7, "atomSize":J
    :cond_6
    move-object/from16 v16, v0

    move-wide/from16 v23, v7

    .end local v0    # "atomName":Ljava/lang/String;
    .end local v7    # "atomSize":J
    .restart local v16    # "atomName":Ljava/lang/String;
    .restart local v23    # "atomSize":J
    const-wide/16 v6, 0x0

    cmp-long v0, v23, v6

    if-nez v0, :cond_7

    .line 1723
    const-string v0, "filePointer does not go forward. Exit."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v4, 0x0

    .line 1725
    goto/16 :goto_4

    .line 1727
    :cond_7
    add-long v14, v14, v23

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " atomsize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v8, v23

    .end local v23    # "atomSize":J
    .local v8, "atomSize":J
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1733
    .end local v2    # "tmpAtomPosition":I
    .end local v8    # "atomSize":J
    .end local v16    # "atomName":Ljava/lang/String;
    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v9, v19

    move-object/from16 v6, v22

    goto/16 :goto_1

    .line 1735
    .end local v14    # "filePointer":J
    :catch_2
    move-exception v0

    goto/16 :goto_6

    .line 1741
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .local v6, "parentContainer":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v6

    move-object v1, v0

    .end local v6    # "parentContainer":[Ljava/lang/String;
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    goto/16 :goto_8

    .line 1735
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "parentContainer":[Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v22, v6

    .end local v6    # "parentContainer":[Ljava/lang/String;
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    goto :goto_6

    .line 1741
    .end local v19    # "atomNameBuf":[B
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "parentContainer":[Ljava/lang/String;
    .restart local v9    # "atomNameBuf":[B
    :catchall_2
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v19, v9

    move-object v1, v0

    .end local v6    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "atomNameBuf":[B
    .restart local v19    # "atomNameBuf":[B
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    goto :goto_8

    .line 1735
    .end local v19    # "atomNameBuf":[B
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "parentContainer":[Ljava/lang/String;
    .restart local v9    # "atomNameBuf":[B
    :catch_4
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v19, v9

    .end local v6    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "atomNameBuf":[B
    .restart local v19    # "atomNameBuf":[B
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    goto :goto_6

    .line 1741
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "atomNameBuf":[B
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .local v2, "file":Ljava/io/File;
    .restart local v6    # "parentContainer":[Ljava/lang/String;
    .restart local v9    # "atomNameBuf":[B
    :catchall_3
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v22, v6

    move-object/from16 v19, v9

    move-object v1, v0

    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "atomNameBuf":[B
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "atomNameBuf":[B
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    goto :goto_8

    .line 1735
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "atomNameBuf":[B
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "parentContainer":[Ljava/lang/String;
    .restart local v9    # "atomNameBuf":[B
    :catch_5
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v22, v6

    move-object/from16 v19, v9

    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "parentContainer":[Ljava/lang/String;
    .end local v9    # "atomNameBuf":[B
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "atomNameBuf":[B
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    goto :goto_6

    .line 1670
    .end local v17    # "atomSizeBuf":[B
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "atomNameBuf":[B
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "parentContainer":[Ljava/lang/String;
    .local v7, "file":Ljava/io/File;
    .local v8, "atomSizeBuf":[B
    .restart local v9    # "atomNameBuf":[B
    .restart local v14    # "filePointer":J
    :cond_8
    move-object/from16 v22, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    .line 1742
    .end local v6    # "parentContainer":[Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "atomSizeBuf":[B
    .end local v9    # "atomNameBuf":[B
    .end local v14    # "filePointer":J
    .restart local v17    # "atomSizeBuf":[B
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "atomNameBuf":[B
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    :goto_4
    :try_start_8
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1746
    :goto_5
    goto :goto_7

    .line 1743
    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1745
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1747
    .end local v0    # "e1":Ljava/io/IOException;
    goto :goto_7

    .line 1741
    .end local v17    # "atomSizeBuf":[B
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "atomNameBuf":[B
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "parentContainer":[Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "atomSizeBuf":[B
    .restart local v9    # "atomNameBuf":[B
    :catchall_4
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    move-object v1, v0

    .end local v6    # "parentContainer":[Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "atomSizeBuf":[B
    .end local v9    # "atomNameBuf":[B
    .restart local v17    # "atomSizeBuf":[B
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "atomNameBuf":[B
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    goto :goto_8

    .line 1735
    .end local v17    # "atomSizeBuf":[B
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "atomNameBuf":[B
    .end local v22    # "parentContainer":[Ljava/lang/String;
    .restart local v6    # "parentContainer":[Ljava/lang/String;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "atomSizeBuf":[B
    .restart local v9    # "atomNameBuf":[B
    :catch_7
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    .line 1737
    .end local v6    # "parentContainer":[Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "atomSizeBuf":[B
    .end local v9    # "atomNameBuf":[B
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "atomSizeBuf":[B
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "atomNameBuf":[B
    .restart local v22    # "parentContainer":[Ljava/lang/String;
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1742
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_5

    .line 1748
    :goto_7
    return v4

    .line 1741
    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 1742
    :goto_8
    :try_start_b
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 1746
    goto :goto_9

    .line 1743
    :catch_8
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1745
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1747
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_9
    throw v1

    .line 1644
    .end local v10    # "temp":[B
    .end local v11    # "fileSize":J
    .end local v13    # "fileObj":Ljava/io/RandomAccessFile;
    .end local v17    # "atomSizeBuf":[B
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "atomNameBuf":[B
    .end local v22    # "parentContainer":[Ljava/lang/String;
    :cond_9
    :goto_a
    const-string v0, "Do not update CreationTime"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    return v4
.end method
