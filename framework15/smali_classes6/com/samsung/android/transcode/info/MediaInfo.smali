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

.field private static final blacklist TAG:Ljava/lang/String; = "MediaInfo"

.field private static final blacklist VIDEO_FPS_BUF_COUNT:I = 0x5

.field private static blacklist Width:I

.field private static blacklist iFrameInterval:I

.field public static final blacklist sMediaExtractor:Landroid/media/MediaExtractor;

.field public static final blacklist sMetadataRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    sput-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMediaExtractor:Landroid/media/MediaExtractor;

    const/16 v0, 0x1e

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    const v0, 0x8235

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I

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

.method public static blacklist getFileInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "0"

    new-instance v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-direct {v4}, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;-><init>()V

    const-string v5, "MediaInfo"

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-eqz v1, :cond_4

    :cond_1
    :try_start_0
    invoke-static/range {p0 .. p2}, Lcom/samsung/android/transcode/info/MediaInfo;->newMetadataRetriever(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x12

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x13

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x18

    invoke-virtual {v6, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    iput v10, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    iput v10, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    const/16 v10, 0x405

    invoke-virtual {v6, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v6, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x14

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x24

    invoke-virtual {v6, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc

    invoke-virtual {v6, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    nop

    const/16 v14, 0xb

    invoke-virtual {v6, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    nop

    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    invoke-static {v11}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    invoke-static {v12}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    const/16 v0, 0x3f7

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v14, 0x3fe

    invoke-virtual {v6, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x403

    invoke-virtual {v6, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v7

    const/16 v7, 0x404

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v8

    const/16 v8, 0x3fd

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v9

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    move-object/from16 v19, v0

    const-string v0, "-1"

    invoke-virtual {v9, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-static {v14}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-string v9, "8"

    invoke-virtual {v0, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitdepth:I

    invoke-static {v13}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->colorTransfer:I

    const-string v0, "yes"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    const-string v0, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/info/MediaInfo;->getSEFSlowMotionInfo(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Landroid/media/MediaMetadataRetriever;)V

    invoke-static {v2, v4, v1, v3}, Lcom/samsung/android/transcode/info/MediaInfo;->updateSEFSlowMotionDuration(Landroid/content/Context;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/info/MediaInfo;->getLocationInfo(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Landroid/media/MediaMetadataRetriever;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v7
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
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

    const-string v6, ", ColorTransfer : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->colorTransfer:I

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

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid input file - can\'t get file info"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
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

    :goto_2
    return-object v4
.end method

.method private static blacklist getLocationInfo(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Landroid/media/MediaMetadataRetriever;)V
    .locals 5

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    :cond_2
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    iget v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    :cond_4
    return-void
.end method

.method private static blacklist getSEFSlowMotionInfo(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Landroid/media/MediaMetadataRetriever;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3ff

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    :cond_1
    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    if-nez v1, :cond_2

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSEFSlowMotionInfo  NumOfSVCLayers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RecordingFramerate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static blacklist getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;
    .locals 6

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p0, :cond_6

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/transcode/info/MediaInfo;->newMediaExtractor(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v2

    move-object v1, v2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_2

    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v0, v3

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/info/MediaInfo;->setVideoFramerate(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V

    invoke-static {v3}, Lcom/samsung/android/transcode/info/MediaInfo;->setIFrameInterval(Landroid/media/MediaFormat;)V

    goto :goto_1

    :cond_2
    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    move-object v0, v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_5
    throw v2

    :cond_6
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackinfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getVideoFrameInterval()I
    .locals 1

    sget v0, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    return v0
.end method

.method public static blacklist getVideoFramerate()I
    .locals 1

    sget v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    return v0
.end method

.method protected static blacklist isSlow120(II)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/16 v0, 0x78

    if-ne p1, v0, :cond_0

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

.method private static blacklist newMediaExtractor(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMediaExtractor:Landroid/media/MediaExtractor;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    :goto_0
    nop

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_1
    return-object v0
.end method

.method private static blacklist newMetadataRetriever(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .locals 1

    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_1
    return-object v0
.end method

.method private static blacklist setFrameRateBySampleInterval(Landroid/media/MediaExtractor;)V
    .locals 18

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "Calculate Framerate"

    const-string v7, "MediaInfo"

    invoke-static {v7, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    sget v8, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    mul-int/2addr v6, v8

    if-lez v6, :cond_5

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x5

    if-gt v10, v11, :cond_1

    move-object/from16 v11, p0

    invoke-virtual {v11, v8, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    iput v12, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaExtractor;->advance()Z

    if-nez v10, :cond_0

    move-wide v3, v12

    goto :goto_1

    :cond_0
    sub-long v14, v12, v3

    add-long/2addr v1, v14

    move-wide v3, v12

    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v11, p0

    const-wide/16 v12, 0x0

    cmp-long v10, v1, v12

    if-lez v10, :cond_4

    if-lez v5, :cond_4

    int-to-long v12, v5

    div-long v12, v1, v12

    long-to-int v7, v12

    if-lez v7, :cond_2

    int-to-long v12, v5

    div-long v12, v1, v12

    long-to-int v7, v12

    goto :goto_2

    :cond_2
    const v7, 0x8235

    :goto_2
    sput v7, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    const-wide/16 v12, 0x3e8

    div-long v14, v1, v12

    move-wide/from16 v16, v3

    int-to-long v3, v5

    div-long/2addr v14, v3

    div-long v3, v12, v14

    long-to-int v3, v3

    if-lez v3, :cond_3

    div-long v3, v1, v12

    int-to-long v14, v5

    div-long/2addr v3, v14

    div-long/2addr v12, v3

    long-to-int v3, v12

    goto :goto_3

    :cond_3
    const/16 v3, 0x1e

    :goto_3
    sput v3, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    goto :goto_4

    :cond_4
    move-wide/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to Calculate Framerate  avgTime :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frameCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-wide/from16 v3, v16

    goto :goto_5

    :cond_5
    move-object/from16 v11, p0

    :goto_5
    return-void
.end method

.method private static blacklist setIFrameInterval(Landroid/media/MediaFormat;)V
    .locals 2

    :try_start_0
    const-string v0, "i-frame-interval"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIFrameInterval iFrameInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist setVideoFramerate(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "frame-rate"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/transcode/info/MediaInfo;->setFrameRateBySampleInterval(Landroid/media/MediaExtractor;)V

    goto :goto_1

    :cond_0
    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    const v1, 0xf4240

    div-int/2addr v1, v0

    sput v1, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoFramerate Framerate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FrameInterval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist updateSEFSlowMotionDuration(Landroid/content/Context;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper;-><init>()V

    invoke-virtual {v0, p2, p0, p3}, Lcom/samsung/android/transcode/util/SEFHelper;->initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iget-wide v2, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData(IJ)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-wide v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    iget v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/info/MediaInfo;->isSlow120(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    :cond_0
    iget v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/android/transcode/util/SEFHelper;->checkSEFData(IIJ)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v3

    div-long/2addr v3, v5

    iput-wide v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSEFSlowMotionDuration EditedDuration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaInfo"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
