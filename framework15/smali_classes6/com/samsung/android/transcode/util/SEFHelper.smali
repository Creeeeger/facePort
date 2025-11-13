.class public Lcom/samsung/android/transcode/util/SEFHelper;
.super Ljava/lang/Object;
.source "SEFHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/util/SEFHelper$Speed;,
        Lcom/samsung/android/transcode/util/SEFHelper$Region;
    }
.end annotation


# static fields
.field public static final blacklist SLOW_MOTION_DATA:Ljava/lang/String; = "SlowMotion_Data"

.field public static final blacklist SUPER_SLOW_MOTION_DATA:Ljava/lang/String; = "Super_SlowMotion_Data"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDuration:J

.field private blacklist mFilepath:Ljava/lang/String;

.field private blacklist mRecordingFps:I

.field private blacklist mRecordingMode:I

.field private blacklist mRegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/util/SEFHelper$Region;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSEFData:Ljava/lang/String;

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    return-void
.end method

.method private blacklist checkValidSEFData(Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "\\*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v8, "TranscodeLib"

    if-lt v7, v4, :cond_1

    const-string v2, "checkValidSEFData : startTime >= endTime"

    invoke-static {v8, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    if-ltz v7, :cond_3

    int-to-long v9, v4

    iget-wide v11, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v2, "checkValidSEFData : startTime < 0  or endTime > mDuration"

    invoke-static {v8, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    return v4
.end method

.method private blacklist createDefaultRegion()Z
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v2

    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "durationUs"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDefaultRegion duration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TranscodeLib"

    invoke-static {v5, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gtz v4, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSlowMotionV2()Z

    move-result v4

    const/4 v6, 0x1

    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x2

    const-wide/16 v11, 0x2710

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo()Z

    move-result v4

    if-eqz v4, :cond_3

    mul-long/2addr v2, v9

    :cond_3
    new-instance v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v4}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    iput v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    mul-long v13, v2, v9

    div-long/2addr v13, v11

    long-to-int v1, v13

    iput v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    sget-object v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    iput v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v1}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v4, v1

    mul-long/2addr v9, v2

    div-long/2addr v9, v11

    long-to-int v1, v9

    iput v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    mul-long v9, v2, v7

    div-long/2addr v9, v11

    long-to-int v1, v9

    iput v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    sget-object v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget v1, v1, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    iput v1, v4, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v1}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    mul-long/2addr v7, v2

    div-long/2addr v7, v11

    long-to-int v4, v7

    iput v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    const-wide/16 v7, 0x3e8

    div-long v7, v2, v7

    long-to-int v4, v7

    iput v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    sget-object v4, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    iput v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget-object v4, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v1}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    mul-long/2addr v9, v2

    div-long/2addr v9, v11

    long-to-int v4, v9

    iput v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    mul-long/2addr v7, v2

    div-long/2addr v7, v11

    long-to-int v4, v7

    iput v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget v4, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    if-ne v4, v6, :cond_6

    sget-object v4, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    sget-object v4, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iput-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    :cond_7
    :goto_1
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget v4, v4, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->value:I

    iput v4, v1, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget-object v4, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v4, 0x0

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region List "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionStartTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionEndTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionSpeed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionSpeedType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_8
    return v6

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_9
    return v1

    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_a
    throw v1
.end method

.method public static blacklist getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->HALF:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lcom/samsung/android/transcode/util/SEFHelper$1;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x3d000000    # 0.03125f

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x3d800000    # 0.0625f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x3e000000    # 0.125f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_5
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_7
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :pswitch_8
    const/high16 v0, 0x40800000    # 4.0f

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist is120fpsSlowMotionVideo()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingFps:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

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

.method public static blacklist isSEFVideoMode(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist isSlowMotionV2()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

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

.method private blacklist newslowSEFParserV2(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "TranscodeLib"

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sefData read slow : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v0, "sefData == null"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    const-string v0, "\\*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slowDataregion,length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "region speed: "

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x3

    const-string v11, ":"

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v5, v13, :cond_4

    :try_start_1
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v11}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    iput v4, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v15}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v15

    iput-object v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v15, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v11, v15

    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v15, v5, v13

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v10, :cond_1

    iput v9, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    :cond_1
    aget-object v9, v5, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v14, :cond_2

    iput v8, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    :cond_2
    aget-object v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_3

    iput v13, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v13, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    :goto_0
    iget v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v14

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto/16 :goto_3

    :cond_4
    array-length v5, v0

    if-ne v5, v14, :cond_b

    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v15, v0, v13

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v16, v5, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    mul-int/lit8 v7, v16, 0x2

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v15, v5, v13

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v10, :cond_5

    iput v9, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    :cond_5
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v14, :cond_6

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    :cond_6
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v8, 0x4

    if-ne v15, v8, :cond_7

    iput v13, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v13, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    :goto_1
    iget v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v7, v8

    aget-object v8, v5, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v7, v8

    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v8, v11, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_8

    iput v9, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    :cond_8
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_9

    const/4 v6, 0x6

    iput v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    :cond_9
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    iput v13, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    :goto_2
    iget v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    aget-object v7, v11, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v14

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_3

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is not slowDataregion, length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    nop

    const/4 v0, 0x0

    :goto_4
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region List "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionStartTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionEndTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeedType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_c
    return v13

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throwing number format:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method


# virtual methods
.method public blacklist checkSEFData(IIJ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    iput p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingFps:I

    iput-wide p3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "TranscodeLib"

    const-string v2, "extractSEFData : SEFData == null, createDefaultRegion"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->createDefaultRegion()Z

    move-result v0

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x16

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingFps:I

    const/16 v3, 0x78

    if-gt v1, v3, :cond_6

    :cond_3
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x13

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xd

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xf

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    if-ne v1, v2, :cond_9

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->newslowSEFParserV2(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->newslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->superslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->slowfastSEFParser(Ljava/lang/String;)Z

    move-result v0

    :cond_9
    :goto_3
    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_a
    return v0
.end method

.method public blacklist extractSEFData()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "filepath is Wrong"

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "filepath is NULL"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xc

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x15

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xd

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0xf

    if-eq v1, v3, :cond_6

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x13

    if-ne v1, v3, :cond_3

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x16

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/16 v3, 0x12

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    :goto_1
    const-string v1, "Super_SlowMotion_Data"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_3

    :cond_6
    :goto_2
    const-string v1, "SlowMotion_Data"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    :goto_3
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->checkValidSEFData(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_7

    return-object v2

    :cond_7
    return-object v3

    :cond_8
    nop

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public blacklist extractSEFData(IJ)Ljava/lang/String;
    .locals 1

    iput p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    iput-wide p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConvertedTime(J)J
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x2

    mul-long v3, v3, p1

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p1

    :goto_0
    move-wide v5, v3

    iget-object v7, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-ltz v8, :cond_1

    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v8, v8

    mul-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-gez v8, :cond_1

    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v9

    iget-object v12, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v12, v12

    mul-long/2addr v12, v10

    iget-object v14, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v14, v14

    mul-long/2addr v14, v10

    sub-long v10, v3, v14

    const v14, 0x49742400    # 1000000.0f

    mul-float/2addr v14, v9

    float-to-long v14, v14

    mul-long/2addr v10, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v10, v14

    add-long v5, v12, v10

    goto :goto_3

    :cond_1
    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v8, v8

    mul-long/2addr v8, v10

    cmp-long v8, v3, v8

    if-ltz v8, :cond_3

    iget-object v8, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v9

    float-to-double v10, v9

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    long-to-double v10, v1

    float-to-double v14, v9

    sub-double/2addr v14, v12

    iget-object v12, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v13, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v13, v13, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v12, v13

    int-to-double v12, v12

    mul-double/2addr v14, v12

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    add-double/2addr v10, v14

    double-to-long v1, v10

    goto :goto_2

    :cond_2
    const-wide v16, 0x408f400000000000L    # 1000.0

    long-to-double v10, v1

    float-to-double v14, v9

    sub-double/2addr v12, v14

    mul-double v12, v12, v16

    iget-object v14, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v15, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-long v1, v10

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    :goto_3
    add-long v7, v5, v1

    return-wide v7

    :cond_5
    const-wide/16 v7, 0x0

    return-wide v7
.end method

.method public blacklist getEditedDuration(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TranscodeLib"

    const-string v1, "getEditedDuration : use original data"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRegionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/transcode/util/SEFHelper$Region;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iput-object p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    :goto_0
    return-void

    :cond_1
    const-string v0, "TranscodeLib"

    const-string v1, "SEFHelper Initialize failed!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input file path cannot be null."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isSEFRegion(JI)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    if-eq p3, v2, :cond_3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v7, v2

    mul-long/2addr v7, v3

    cmp-long v2, p1, v5

    if-ltz v2, :cond_4

    cmp-long v2, p1, v7

    if-gez v2, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    nop

    return v0

    :cond_6
    const-string v2, "TranscodeLib"

    const-string v3, "There is no region info."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public blacklist newslowSEFParser(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "TranscodeLib"

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sefData read slow : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v0, "sefData == null"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    const-string v0, "\\*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slowDataregion,length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "region speed: "

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x4

    const-string v11, ":"

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v5, v13, :cond_4

    :try_start_1
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v11}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    iput v4, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v15}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v15

    iput-object v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v15, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v10, :cond_3

    new-instance v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v10}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v11, v10

    aget-object v10, v5, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v10, v5, v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    aget-object v10, v5, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_1

    iput v8, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    :cond_1
    aget-object v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_2

    iput v7, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    :goto_0
    iget v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto/16 :goto_3

    :cond_4
    array-length v5, v0

    if-ne v5, v14, :cond_b

    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v15, v0, v13

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v16, v5, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_7

    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v15, v7

    aget-object v7, v5, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_5

    iput v8, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    :cond_5
    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v14, :cond_6

    const/4 v7, 0x6

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v16, v5, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    :goto_1
    iget v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    aget-object v8, v5, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_a

    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v7, v8

    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v8, v11, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_8

    const/4 v6, 0x5

    iput v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    :cond_8
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_9

    const/4 v6, 0x6

    iput v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    :goto_2
    iget v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    aget-object v7, v11, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_3

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is not slowDataregion, length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    nop

    const/4 v0, 0x0

    :goto_4
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region List "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionStartTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionEndTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeedType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_c
    return v13

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throwing number format:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public blacklist slowfastSEFParser(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sefData read slow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v2, "sefData == null"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "\\*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    aget-object v7, v4, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v5}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v5

    iput-object v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v5, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    return v5

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public blacklist superslowSEFParser(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sefData read super : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v2, "sefData == null"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "\\*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aget-object v7, v4, v6

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-le v8, v5, :cond_1

    aget-object v8, v7, v1

    aput-object v8, v4, v6

    :cond_1
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    aget-object v9, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    iget v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v5}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v5

    iput-object v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    iget-object v5, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    return v5

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
