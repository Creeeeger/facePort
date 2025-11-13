.class public Lcom/samsung/android/transcode/info/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    }
.end annotation


# static fields
.field private static blacklist FrameInterval:I = 0x0

.field private static blacklist Framerate:I = 0x0

.field private static blacklist Height:I = 0x0

.field private static final blacklist VIDEO_FPS_BUF_COUNT:I = 0x5

.field private static blacklist Width:I

.field private static blacklist iFrameInterval:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0x1e

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    .line 37
    const v0, 0x8235

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    .line 40
    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    .line 41
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFileInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .locals 24
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 44
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "/"

    new-instance v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-direct {v4}, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;-><init>()V

    .line 45
    .local v4, "info":Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    const-string v5, "MediaInfo"

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-eqz v1, :cond_14

    .line 46
    :cond_1
    :try_start_0
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v6, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v6, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v6, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 51
    :goto_0
    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "w":Ljava/lang/String;
    const/16 v8, 0x13

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "h":Ljava/lang/String;
    const/16 v9, 0x18

    invoke-virtual {v6, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, "r":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    .line 55
    :cond_3
    if-eqz v8, :cond_4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    .line 56
    :cond_4
    if-eqz v9, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    .line 58
    :cond_5
    const/16 v10, 0x405

    invoke-virtual {v6, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "ed":Ljava/lang/String;
    const/16 v11, 0x9

    invoke-virtual {v6, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 60
    .local v11, "d":Ljava/lang/String;
    const/16 v12, 0x14

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "bps":Ljava/lang/String;
    if-eqz v10, :cond_6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    .line 62
    :cond_6
    if-eqz v11, :cond_7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    .line 63
    :cond_7
    if-eqz v11, :cond_8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    .line 65
    :cond_8
    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    .line 67
    const/16 v13, 0x3f7

    invoke-virtual {v6, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    .line 68
    .local v13, "auth":Ljava/lang/String;
    const/16 v14, 0x3fe

    invoke-virtual {v6, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    .line 69
    .local v14, "mode":Ljava/lang/String;
    const/16 v15, 0x403

    invoke-virtual {v6, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    .line 70
    .local v15, "hdr10bit":Ljava/lang/String;
    move-object/from16 v16, v7

    .end local v7    # "w":Ljava/lang/String;
    .local v16, "w":Ljava/lang/String;
    const/16 v7, 0x404

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "bitdepth":Ljava/lang/String;
    move-object/from16 v17, v8

    .end local v8    # "h":Ljava/lang/String;
    .local v17, "h":Ljava/lang/String;
    const/16 v8, 0x3fd

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "is360":Ljava/lang/String;
    if-eqz v13, :cond_9

    move-object/from16 v18, v9

    .end local v9    # "r":Ljava/lang/String;
    .local v18, "r":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    goto :goto_1

    .end local v18    # "r":Ljava/lang/String;
    .restart local v9    # "r":Ljava/lang/String;
    :cond_9
    move-object/from16 v18, v9

    .line 74
    .end local v9    # "r":Ljava/lang/String;
    .restart local v18    # "r":Ljava/lang/String;
    :goto_1
    if-eqz v14, :cond_a

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    .line 75
    :cond_a
    if-eqz v7, :cond_b

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitdepth:I

    .line 76
    :cond_b
    const-string/jumbo v9, "yes"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    .line 77
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    .line 79
    iget v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-static {v9}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v9

    move-object/from16 v19, v7

    .end local v7    # "bitdepth":Ljava/lang/String;
    .local v19, "bitdepth":Ljava/lang/String;
    if-eqz v9, :cond_e

    .line 80
    const/16 v9, 0x3ff

    invoke-virtual {v6, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, "sminfo":Ljava/lang/String;
    if-eqz v9, :cond_d

    .line 83
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v22, v21

    .line 84
    .local v22, "index":I
    move/from16 v7, v22

    move-object/from16 v22, v8

    const/4 v8, -0x1

    .end local v8    # "is360":Ljava/lang/String;
    .local v7, "index":I
    .local v22, "is360":Ljava/lang/String;
    if-eq v7, v8, :cond_c

    .line 85
    const/4 v8, 0x0

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    .line 86
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 87
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 88
    .end local v7    # "index":I
    .local v0, "index":I
    const/4 v7, 0x0

    invoke-virtual {v9, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    goto :goto_2

    .line 84
    .end local v0    # "index":I
    .restart local v7    # "index":I
    :cond_c
    move v0, v7

    .line 90
    .end local v7    # "index":I
    .restart local v0    # "index":I
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSEFVideoMode  NumOfSVCLayers:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "RecordingFramerate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 82
    .end local v0    # "index":I
    .end local v22    # "is360":Ljava/lang/String;
    .restart local v8    # "is360":Ljava/lang/String;
    :cond_d
    move-object/from16 v22, v8

    .end local v8    # "is360":Ljava/lang/String;
    .restart local v22    # "is360":Ljava/lang/String;
    goto :goto_3

    .line 79
    .end local v9    # "sminfo":Ljava/lang/String;
    .end local v22    # "is360":Ljava/lang/String;
    .restart local v8    # "is360":Ljava/lang/String;
    :cond_e
    move-object/from16 v22, v8

    .line 94
    .end local v8    # "is360":Ljava/lang/String;
    .restart local v22    # "is360":Ljava/lang/String;
    :goto_3
    iget v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    .line 95
    iget v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    .line 97
    const/16 v0, 0x17

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 100
    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 101
    .local v7, "lastIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_f

    .line 102
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 106
    :cond_f
    const/16 v8, 0x2d

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 107
    .local v8, "index":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    if-nez v8, :cond_11

    .line 108
    :cond_10
    const/16 v9, 0x2b

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    move v8, v9

    .line 110
    :cond_11
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    iput v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    .line 111
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    iput v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    .line 112
    iget v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    const/16 v20, 0x0

    cmpl-float v9, v9, v20

    if-nez v9, :cond_12

    iget v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    cmpl-float v9, v9, v20

    if-eqz v9, :cond_13

    .line 113
    :cond_12
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v0    # "location":Ljava/lang/String;
    .end local v7    # "lastIndex":I
    .end local v8    # "index":I
    .end local v10    # "ed":Ljava/lang/String;
    .end local v11    # "d":Ljava/lang/String;
    .end local v12    # "bps":Ljava/lang/String;
    .end local v13    # "auth":Ljava/lang/String;
    .end local v14    # "mode":Ljava/lang/String;
    .end local v15    # "hdr10bit":Ljava/lang/String;
    .end local v16    # "w":Ljava/lang/String;
    .end local v17    # "h":Ljava/lang/String;
    .end local v18    # "r":Ljava/lang/String;
    .end local v19    # "bitdepth":Ljava/lang/String;
    .end local v22    # "is360":Ljava/lang/String;
    :cond_13
    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    .end local v6    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_5

    .line 46
    .restart local v6    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "info":Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .end local p0    # "filepath":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    :goto_4
    throw v7
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    .end local v6    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "info":Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .restart local p0    # "filepath":Ljava/lang/String;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Width : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Height : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", RecordingMode : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Bitdepth :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitdepth:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Author : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",Is360 : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", HDR10 :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Duration : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", EditedDuration :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", MimeType :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Rotation : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",Bitrate : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", IsLocationAvailable : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid input file - can\'t get file info"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get MediaInfo filepath : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " or context : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", uri : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_6
    return-object v4
.end method

.method public static blacklist getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;
    .locals 6
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isVideo"    # Z

    .line 131
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 133
    .local v0, "trackinfo":Landroid/media/MediaFormat;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p0, :cond_6

    .line 134
    :cond_1
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 136
    .local v1, "extractor":Landroid/media/MediaExtractor;
    if-eqz p0, :cond_2

    .line 137
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 144
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 145
    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 146
    .local v3, "format":Landroid/media/MediaFormat;
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "mime":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 148
    const-string/jumbo v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 149
    move-object v0, v3

    .line 150
    invoke-static {v1, v3}, Lcom/samsung/android/transcode/info/MediaInfo;->setVideoFramerate(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V

    .line 151
    invoke-static {v3}, Lcom/samsung/android/transcode/info/MediaInfo;->setIFrameInterval(Landroid/media/MediaFormat;)V

    goto :goto_2

    .line 154
    :cond_3
    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    .line 155
    move-object v0, v3

    .line 144
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    .end local v2    # "index":I
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v4    # "mime":Ljava/lang/String;
    :cond_5
    :goto_3
    nop

    .line 163
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_5

    .line 162
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 163
    :goto_4
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 165
    throw v2

    .line 167
    .end local v1    # "extractor":Landroid/media/MediaExtractor;
    :cond_6
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trackinfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method public static blacklist getVideoFrameInterval()I
    .locals 1

    .line 222
    sget v0, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    return v0
.end method

.method public static blacklist getVideoFramerate()I
    .locals 1

    .line 218
    sget v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    return v0
.end method

.method private static blacklist setIFrameInterval(Landroid/media/MediaFormat;)V
    .locals 2
    .param p0, "videoFormat"    # Landroid/media/MediaFormat;

    .line 227
    :try_start_0
    const-string v0, "i-frame-interval"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIFrameInterval iFrameInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private static blacklist setVideoFramerate(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V
    .locals 19
    .param p0, "extractor"    # Landroid/media/MediaExtractor;
    .param p1, "videoFormat"    # Landroid/media/MediaFormat;

    .line 172
    const/4 v1, -0x1

    .line 173
    .local v1, "bufferSizeV":I
    const/4 v2, 0x0

    .line 174
    .local v2, "offset":I
    const-wide/16 v3, 0x0

    .line 175
    .local v3, "avgTime":J
    const-wide/16 v5, 0x0

    .line 176
    .local v5, "previousTime":J
    const/4 v7, 0x0

    .line 177
    .local v7, "frameCount":I
    const/4 v8, 0x0

    .line 179
    .local v8, "frameRate":I
    :try_start_0
    const-string v0, "frame-rate"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v9, p1

    :try_start_1
    invoke-virtual {v9, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v0

    .line 182
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "MediaInfo"

    if-nez v8, :cond_6

    .line 184
    const-string v10, "Calculate Framerate"

    invoke-static {v0, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget v10, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    sget v11, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    mul-int v1, v10, v11

    .line 186
    if-lez v1, :cond_5

    .line 187
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 188
    .local v10, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 189
    .local v11, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    const/4 v13, 0x5

    if-gt v12, v13, :cond_1

    .line 190
    move-object/from16 v13, p0

    invoke-virtual {v13, v10, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v14

    iput v14, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    .line 192
    .local v14, "presentationTimeUs":J
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->advance()Z

    .line 193
    if-nez v12, :cond_0

    .line 194
    move-wide v5, v14

    goto :goto_3

    .line 196
    :cond_0
    sub-long v16, v14, v5

    add-long v3, v3, v16

    .line 197
    move-wide v5, v14

    .line 198
    add-int/lit8 v7, v7, 0x1

    .line 189
    .end local v14    # "presentationTimeUs":J
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v13, p0

    .line 201
    .end local v12    # "i":I
    const-wide/16 v14, 0x0

    cmp-long v12, v3, v14

    if-lez v12, :cond_4

    if-lez v7, :cond_4

    .line 202
    int-to-long v14, v7

    div-long v14, v3, v14

    long-to-int v12, v14

    if-lez v12, :cond_2

    int-to-long v14, v7

    div-long v14, v3, v14

    long-to-int v12, v14

    goto :goto_4

    :cond_2
    const v12, 0x8235

    :goto_4
    sput v12, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    .line 203
    const-wide/16 v14, 0x3e8

    div-long v16, v3, v14

    move/from16 v18, v1

    move v12, v2

    .end local v1    # "bufferSizeV":I
    .end local v2    # "offset":I
    .local v12, "offset":I
    .local v18, "bufferSizeV":I
    int-to-long v1, v7

    div-long v16, v16, v1

    div-long v1, v14, v16

    long-to-int v1, v1

    if-lez v1, :cond_3

    .line 204
    div-long v1, v3, v14

    move-wide/from16 v16, v5

    .end local v5    # "previousTime":J
    .local v16, "previousTime":J
    int-to-long v5, v7

    div-long/2addr v1, v5

    div-long/2addr v14, v1

    long-to-int v1, v14

    goto :goto_5

    .end local v16    # "previousTime":J
    .restart local v5    # "previousTime":J
    :cond_3
    move-wide/from16 v16, v5

    .end local v5    # "previousTime":J
    .restart local v16    # "previousTime":J
    const/16 v1, 0x1e

    .line 205
    .end local v8    # "frameRate":I
    .local v1, "frameRate":I
    :goto_5
    sput v1, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    move v8, v1

    goto :goto_6

    .line 201
    .end local v12    # "offset":I
    .end local v16    # "previousTime":J
    .end local v18    # "bufferSizeV":I
    .local v1, "bufferSizeV":I
    .restart local v2    # "offset":I
    .restart local v5    # "previousTime":J
    .restart local v8    # "frameRate":I
    :cond_4
    move/from16 v18, v1

    move v12, v2

    move-wide/from16 v16, v5

    .line 207
    .end local v1    # "bufferSizeV":I
    .end local v2    # "offset":I
    .end local v5    # "previousTime":J
    .restart local v12    # "offset":I
    .restart local v16    # "previousTime":J
    .restart local v18    # "bufferSizeV":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to Calculate Framerate  avgTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frameCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v10    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v11    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    :goto_6
    move-wide/from16 v5, v16

    move/from16 v1, v18

    goto :goto_7

    .line 186
    .end local v12    # "offset":I
    .end local v16    # "previousTime":J
    .end local v18    # "bufferSizeV":I
    .restart local v1    # "bufferSizeV":I
    .restart local v2    # "offset":I
    .restart local v5    # "previousTime":J
    :cond_5
    move-object/from16 v13, p0

    move/from16 v18, v1

    move v12, v2

    .end local v1    # "bufferSizeV":I
    .end local v2    # "offset":I
    .restart local v12    # "offset":I
    .restart local v18    # "bufferSizeV":I
    goto :goto_7

    .line 211
    .end local v12    # "offset":I
    .end local v18    # "bufferSizeV":I
    .restart local v1    # "bufferSizeV":I
    .restart local v2    # "offset":I
    :cond_6
    move-object/from16 v13, p0

    move v12, v2

    .end local v2    # "offset":I
    .restart local v12    # "offset":I
    sput v8, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    .line 212
    const v2, 0xf4240

    div-int/2addr v2, v8

    sput v2, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    .line 214
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setVideoFramerate Framerate: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v10, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", FrameInterval : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v10, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method
