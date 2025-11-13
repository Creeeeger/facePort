.class public Lcom/samsung/android/transcode/util/SEFHelper;
.super Ljava/lang/Object;
.source "SEFHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/util/SEFHelper$Region;,
        Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    }
.end annotation


# static fields
.field public static final blacklist SLOW_MOTION_DATA:Ljava/lang/String; = "SlowMotion_Data"

.field public static final blacklist SUPER_SLOW_MOTION_DATA:Ljava/lang/String; = "Super_SlowMotion_Data"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDuration:J

.field private blacklist mFilepath:Ljava/lang/String;

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    return-void
.end method

.method private blacklist checkValidSEFData(Ljava/lang/String;)Z
    .locals 13
    .param p1, "data"    # Ljava/lang/String;

    .line 666
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 667
    return v0

    .line 669
    :cond_0
    const-string v1, "\\*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "slowDataregion":[Ljava/lang/String;
    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    aget-object v5, v1, v3

    .line 671
    .local v5, "s":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, "regionData":[Ljava/lang/String;
    aget-object v7, v6, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 673
    .local v7, "startTime":I
    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 674
    .local v4, "endTime":I
    const-string v8, "TranscodeLib"

    if-lt v7, v4, :cond_1

    .line 675
    const-string v2, "checkValidSEFData : startTime >= endTime"

    invoke-static {v8, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return v0

    .line 679
    :cond_1
    if-ltz v7, :cond_3

    int-to-long v9, v4

    iget-wide v11, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    goto :goto_1

    .line 670
    .end local v4    # "endTime":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "regionData":[Ljava/lang/String;
    .end local v7    # "startTime":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 680
    .restart local v4    # "endTime":I
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v6    # "regionData":[Ljava/lang/String;
    .restart local v7    # "startTime":I
    :cond_3
    :goto_1
    const-string v2, "checkValidSEFData : startTime < 0  or endTime > mDuration"

    invoke-static {v8, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return v0

    .line 684
    .end local v4    # "endTime":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "regionData":[Ljava/lang/String;
    .end local v7    # "startTime":I
    :cond_4
    return v4
.end method

.method public static blacklist getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    .locals 1
    .param p0, "speed"    # I

    .line 100
    packed-switch p0, :pswitch_data_0

    .line 120
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 118
    :pswitch_0
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->THIRTY_TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 116
    :pswitch_1
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->SIXTEEN_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 114
    :pswitch_2
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->EIGHT_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 112
    :pswitch_3
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->FOUR_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 110
    :pswitch_4
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->TWO_TIMES:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 108
    :pswitch_5
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_EIGHTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 106
    :pswitch_6
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ONE_FOURTH:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 104
    :pswitch_7
    sget-object v0, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->HALF:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    return-object v0

    .line 102
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
    .param p0, "speedType"    # Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    .local v0, "timescale":F
    sget-object v1, Lcom/samsung/android/transcode/util/SEFHelper$1;->$SwitchMap$com$samsung$android$transcode$util$SEFHelper$Speed:[I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    const/high16 v0, 0x3d000000    # 0.03125f

    .line 93
    goto :goto_0

    .line 89
    :pswitch_1
    const/high16 v0, 0x3d800000    # 0.0625f

    .line 90
    goto :goto_0

    .line 86
    :pswitch_2
    const/high16 v0, 0x3e000000    # 0.125f

    .line 87
    goto :goto_0

    .line 83
    :pswitch_3
    const/high16 v0, 0x3e800000    # 0.25f

    .line 84
    goto :goto_0

    .line 80
    :pswitch_4
    const/high16 v0, 0x3f000000    # 0.5f

    .line 81
    goto :goto_0

    .line 77
    :pswitch_5
    const/high16 v0, 0x41000000    # 8.0f

    .line 78
    goto :goto_0

    .line 74
    :pswitch_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 75
    goto :goto_0

    .line 71
    :pswitch_7
    const/high16 v0, 0x40000000    # 2.0f

    .line 72
    goto :goto_0

    .line 68
    :pswitch_8
    const/high16 v0, 0x40800000    # 4.0f

    .line 69
    nop

    .line 97
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

.method private static blacklist is120fpsSlowMotionVideo(I)Z
    .locals 1
    .param p0, "recordingMode"    # I

    .line 642
    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

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

.method public static blacklist isSEFVideoMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 124
    packed-switch p0, :pswitch_data_0

    .line 140
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 138
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/transcode/util/SEFHelper;->supportMTK_SSM()Z

    move-result v0

    return v0

    .line 135
    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static blacklist isSlowMotionV2(I)Z
    .locals 1
    .param p0, "recordingMode"    # I

    .line 647
    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

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

.method private blacklist newslowSEFParserV2(Ljava/lang/String;)Z
    .locals 17
    .param p1, "sefData"    # Ljava/lang/String;

    .line 527
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "TranscodeLib"

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sefData read slow : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    if-nez v2, :cond_0

    .line 529
    const-string/jumbo v0, "sefData == null"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return v4

    .line 532
    :cond_0
    const-string v0, "\\*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "slowDataregion":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slowDataregion,length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    array-length v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "region speed: "

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x3

    const-string v11, ":"

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v5, v13, :cond_4

    .line 535
    :try_start_1
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, "regionData":[Ljava/lang/String;
    new-instance v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v11}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 537
    .local v11, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 538
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 539
    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 540
    iget v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v15}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v15

    iput-object v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 541
    iget-object v15, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v11, v15

    .line 545
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 546
    aget-object v15, v5, v13

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 547
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v10, :cond_1

    .line 548
    iput v9, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 549
    :cond_1
    aget-object v9, v5, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v14, :cond_2

    .line 550
    iput v8, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 551
    :cond_2
    aget-object v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_3

    .line 552
    iput v13, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 554
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

    .line 555
    iput v13, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 557
    :goto_0
    iget v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 558
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 560
    .end local v11    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v6, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v14

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 561
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 562
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 563
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 564
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    nop

    .end local v5    # "regionData":[Ljava/lang/String;
    goto/16 :goto_3

    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_4
    array-length v5, v0

    if-ne v5, v14, :cond_b

    .line 566
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "regionData1":[Ljava/lang/String;
    aget-object v15, v0, v13

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 568
    .local v11, "regionData2":[Ljava/lang/String;
    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 569
    .local v15, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 570
    aget-object v16, v5, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    mul-int/lit8 v7, v16, 0x2

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 571
    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 572
    iget v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 573
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 576
    .end local v15    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v7, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 577
    aget-object v15, v5, v13

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/2addr v15, v14

    iput v15, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 578
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v10, :cond_5

    .line 579
    iput v9, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    .line 580
    :cond_5
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v14, :cond_6

    .line 581
    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    .line 582
    :cond_6
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v8, 0x4

    if-ne v15, v8, :cond_7

    .line 583
    iput v13, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    .line 585
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

    .line 586
    iput v13, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 588
    :goto_1
    iget v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 589
    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v7, v8

    .line 592
    aget-object v8, v5, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 593
    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 594
    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 595
    iget v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 596
    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v7, v8

    .line 599
    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 600
    aget-object v8, v11, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/2addr v8, v14

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 601
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_8

    .line 602
    iput v9, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    .line 603
    :cond_8
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_9

    .line 604
    const/4 v6, 0x6

    iput v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    .line 605
    :cond_9
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    .line 606
    iput v13, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    .line 608
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

    .line 609
    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 611
    :goto_2
    iget v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 612
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 615
    .end local v7    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .restart local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v11, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v14

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 616
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 617
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 618
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 619
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    nop

    .end local v5    # "regionData1":[Ljava/lang/String;
    .end local v11    # "regionData2":[Ljava/lang/String;
    goto :goto_3

    .line 622
    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
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

    .line 627
    .end local v0    # "slowDataregion":[Ljava/lang/String;
    :goto_3
    nop

    .line 629
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 630
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

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionStartTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 632
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
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

    .line 634
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

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Region regionSpeedType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 636
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v5, v5, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 638
    .end local v0    # "i":I
    :cond_c
    return v13

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "throwing number format:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return v4
.end method

.method public static blacklist supportMTK_SSM()Z
    .locals 3

    .line 658
    const v0, 0x1fc34

    .line 659
    .local v0, "sep41":I
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    if-le v1, v0, :cond_0

    .line 660
    const/4 v1, 0x1

    return v1

    .line 662
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_MTK_SSM_SM_VIDEO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public blacklist checkSEFData(IJ)Z
    .locals 4
    .param p1, "recordingmode"    # I
    .param p2, "duration"    # J

    .line 144
    const/4 v0, 0x1

    .line 145
    .local v0, "ret":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 148
    iput p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    .line 149
    iput-wide p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mSEFData:Ljava/lang/String;

    .line 151
    if-nez v1, :cond_0

    .line 152
    const-string v1, "TranscodeLib"

    const-string v2, "extractSEFData : SEFData == null, createDefaultRegion"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/transcode/util/SEFHelper;->createDefaultRegion()Z

    move-result v0

    goto :goto_3

    .line 155
    :cond_0
    iget v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 158
    :cond_1
    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    const/16 v3, 0x9

    if-eq v2, v3, :cond_6

    const/16 v3, 0x16

    if-eq v2, v3, :cond_6

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    const/16 v3, 0xc

    if-eq v2, v3, :cond_5

    const/16 v3, 0x15

    if-eq v2, v3, :cond_5

    const/16 v3, 0x13

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 168
    :cond_3
    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    const/16 v3, 0xf

    if-ne v2, v3, :cond_8

    .line 170
    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->newslowSEFParserV2(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 167
    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->newslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 163
    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->superslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 157
    :cond_7
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/transcode/util/SEFHelper;->slowfastSEFParser(Ljava/lang/String;)Z

    move-result v0

    .line 173
    :cond_8
    :goto_3
    if-nez v0, :cond_9

    .line 174
    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 177
    :cond_9
    return v0
.end method

.method public blacklist createDefaultRegion()Z
    .locals 17

    .line 233
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 236
    .local v2, "me":Landroid/media/MediaExtractor;
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 237
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v0

    move-object v2, v0

    .end local v2    # "me":Landroid/media/MediaExtractor;
    .local v0, "me":Landroid/media/MediaExtractor;
    goto :goto_0

    .line 239
    .end local v0    # "me":Landroid/media/MediaExtractor;
    .restart local v2    # "me":Landroid/media/MediaExtractor;
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    .end local v2    # "me":Landroid/media/MediaExtractor;
    .restart local v0    # "me":Landroid/media/MediaExtractor;
    move-object v2, v0

    .line 241
    .end local v0    # "me":Landroid/media/MediaExtractor;
    .restart local v2    # "me":Landroid/media/MediaExtractor;
    :goto_0
    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 243
    .local v0, "videoTrack":I
    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 244
    .local v4, "inputFormat":Landroid/media/MediaFormat;
    const-string v5, "durationUs"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v4, v5

    .line 249
    .end local v0    # "videoTrack":I
    .local v4, "duration":J
    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDefaultRegion duration:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "TranscodeLib"

    invoke-static {v6, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-gtz v0, :cond_2

    .line 254
    return v3

    .line 257
    :cond_2
    iget v0, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSlowMotionV2(I)Z

    move-result v0

    const-wide/16 v10, 0x2

    const-wide/16 v12, 0x2710

    if-eqz v0, :cond_5

    .line 258
    const/4 v0, 0x7

    .line 259
    .local v0, "normal_speed":I
    iget v14, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    invoke-static {v14}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 261
    mul-long/2addr v4, v10

    .line 264
    :cond_3
    new-instance v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v14}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 265
    .local v14, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 266
    mul-long v15, v4, v10

    div-long v7, v15, v12

    long-to-int v3, v7

    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 267
    iput v0, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 268
    iget v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v3

    iput-object v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 269
    iget-object v3, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget v3, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 272
    new-instance v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v3}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v14, v3

    .line 273
    mul-long/2addr v10, v4

    div-long/2addr v10, v12

    long-to-int v3, v10

    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 274
    const-wide/16 v7, 0x8

    mul-long v9, v4, v7

    div-long/2addr v9, v12

    long-to-int v3, v9

    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 275
    const/4 v3, 0x5

    iput v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 276
    iget v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v3

    iput-object v3, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 277
    iget-object v3, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_4
    new-instance v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v3}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 281
    .end local v14    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v3, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    const-wide/16 v7, 0x8

    mul-long v8, v4, v7

    div-long/2addr v8, v12

    long-to-int v7, v8

    iput v7, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 282
    const-wide/16 v7, 0x3e8

    div-long v7, v4, v7

    long-to-int v7, v7

    iput v7, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 283
    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 284
    iget v7, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 285
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v0    # "normal_speed":I
    goto :goto_2

    .line 288
    .end local v3    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_5
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v3, v0

    .line 289
    .restart local v3    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    mul-long/2addr v10, v4

    div-long/2addr v10, v12

    long-to-int v0, v10

    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 290
    const-wide/16 v7, 0x8

    mul-long v8, v4, v7

    div-long/2addr v8, v12

    long-to-int v0, v8

    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 291
    iget v0, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_6

    .line 292
    const/4 v0, 0x4

    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    .line 293
    :cond_6
    const/4 v7, 0x2

    if-ne v0, v7, :cond_7

    .line 294
    const/4 v0, 0x7

    iput v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 296
    :cond_7
    :goto_1
    iget v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 297
    iget-object v0, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region List "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionStartTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionEndTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionSpeed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Region regionSpeedType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v8, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 308
    .end local v0    # "i":I
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 249
    .end local v3    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .end local v4    # "duration":J
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    nop

    .line 249
    if-eqz v2, :cond_9

    .line 250
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 247
    :cond_9
    return v3

    .line 249
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v2, :cond_a

    .line 250
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 251
    :cond_a
    throw v0
.end method

.method public blacklist extractSEFData()Ljava/lang/String;
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    const-string v1, "TranscodeLib"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 183
    iget-object v3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/FileHelper;->getVEEditFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 185
    const-string v3, "filepath is Wrong"

    invoke-static {v1, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-object v2

    .line 188
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 189
    .local v0, "sefFile":Ljava/io/File;
    goto :goto_0

    .line 190
    .end local v0    # "sefFile":Ljava/io/File;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 191
    const-string v0, "filepath is NULL"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object v2

    .line 194
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v0    # "sefFile":Ljava/io/File;
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 199
    iget v1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/16 v3, 0xc

    if-eq v1, v3, :cond_6

    const/16 v3, 0x15

    if-eq v1, v3, :cond_6

    const/16 v3, 0xd

    if-eq v1, v3, :cond_6

    const/16 v3, 0xf

    if-eq v1, v3, :cond_6

    const/16 v3, 0x13

    if-ne v1, v3, :cond_3

    goto :goto_2

    .line 207
    :cond_3
    const/16 v3, 0x8

    if-eq v1, v3, :cond_5

    const/4 v3, 0x7

    if-eq v1, v3, :cond_5

    const/16 v3, 0x9

    if-eq v1, v3, :cond_5

    const/16 v3, 0x16

    if-eq v1, v3, :cond_5

    const/16 v3, 0x12

    if-ne v1, v3, :cond_4

    goto :goto_1

    .line 214
    :cond_4
    return-object v2

    .line 212
    :cond_5
    :goto_1
    const-string v1, "Super_SlowMotion_Data"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "sefByteData":[B
    goto :goto_3

    .line 206
    .end local v1    # "sefByteData":[B
    :cond_6
    :goto_2
    const-string v1, "SlowMotion_Data"

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    .line 215
    .restart local v1    # "sefByteData":[B
    :goto_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 216
    .local v3, "sefString":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->checkValidSEFData(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_7

    .line 217
    return-object v2

    .line 219
    :cond_7
    return-object v3

    .line 224
    .end local v1    # "sefByteData":[B
    .end local v3    # "sefString":Ljava/lang/String;
    :cond_8
    nop

    .line 225
    return-object v2

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    return-object v2
.end method

.method public blacklist getEditedDuration(J)J
    .locals 18
    .param p1, "SampleTime"    # J

    .line 688
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    const-string v1, "TranscodeLib"

    const-string v2, "getEditedDuration : use original data"

    invoke-static {v1, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-wide p1

    .line 693
    :cond_0
    const-wide/16 v1, 0x0

    .line 694
    .local v1, "timedelta":J
    sget-object v3, Lcom/samsung/android/transcode/util/SEFHelper$Speed;->NORMAL:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 695
    .local v3, "playSpeed":Lcom/samsung/android/transcode/util/SEFHelper$Speed;
    const/high16 v4, 0x3f800000    # 1.0f

    .line 696
    .local v4, "timescale":F
    iget v5, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRecordingMode:I

    invoke-static {v5}, Lcom/samsung/android/transcode/util/SEFHelper;->is120fpsSlowMotionVideo(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 697
    const-wide/16 v5, 0x2

    mul-long v5, v5, p1

    .end local p1    # "SampleTime":J
    .local v5, "SampleTime":J
    goto :goto_0

    .line 696
    .end local v5    # "SampleTime":J
    .restart local p1    # "SampleTime":J
    :cond_1
    move-wide/from16 v5, p1

    .line 699
    .end local p1    # "SampleTime":J
    .restart local v5    # "SampleTime":J
    :goto_0
    move-wide v7, v5

    .line 701
    .local v7, "tempSampleTime":J
    iget-object v9, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 702
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 703
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v10, v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v10, v5, v10

    if-ltz v10, :cond_2

    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 704
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v10, v10

    mul-long/2addr v10, v12

    cmp-long v10, v5, v10

    if-gez v10, :cond_2

    .line 705
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v3, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 706
    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    .line 707
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v10, v10

    mul-long/2addr v10, v12

    iget-object v14, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 708
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v14, v14

    mul-long/2addr v14, v12

    sub-long v12, v5, v14

    const v14, 0x49742400    # 1000000.0f

    mul-float/2addr v14, v4

    float-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    add-long v7, v10, v12

    .line 710
    goto :goto_3

    .line 711
    :cond_2
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v10, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v10, v10

    mul-long/2addr v10, v12

    cmp-long v10, v5, v10

    if-ltz v10, :cond_4

    .line 712
    iget-object v10, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget-object v3, v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 713
    invoke-static {v3}, Lcom/samsung/android/transcode/util/SEFHelper;->getTimeScale(Lcom/samsung/android/transcode/util/SEFHelper$Speed;)F

    move-result v4

    .line 716
    float-to-double v10, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    .line 717
    long-to-double v10, v1

    float-to-double v14, v4

    sub-double/2addr v14, v12

    iget-object v12, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 718
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v12, v12, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v13, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 721
    :cond_3
    const-wide v16, 0x408f400000000000L    # 1000.0

    long-to-double v10, v1

    float-to-double v14, v4

    sub-double/2addr v12, v14

    mul-double v12, v12, v16

    iget-object v14, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    .line 722
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v14, v14, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    iget-object v15, v0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v15, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-long v1, v10

    .line 702
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 725
    .end local v9    # "i":I
    :cond_5
    :goto_3
    add-long v9, v7, v1

    return-wide v9

    .line 727
    :cond_6
    const-wide/16 v9, 0x0

    return-wide v9
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

    .line 229
    iget-object v0, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mFilepath:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 36
    iput-object p2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mUri:Landroid/net/Uri;

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v0, "TranscodeLib"

    const-string v1, "SEFHelper Initialize failed!"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/io/IOException;

    const-string v1, "input file path cannot be null."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isSEFRegion(JI)Z
    .locals 9
    .param p1, "TimeUs"    # J
    .param p3, "recordingmode"    # I

    .line 312
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 313
    return v1

    .line 317
    :cond_0
    const/4 v0, 0x0

    .line 318
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 320
    if-eqz v0, :cond_1

    .line 321
    goto :goto_3

    .line 323
    :cond_1
    const/4 v2, 0x1

    const-wide/16 v3, 0x3e8

    if-eq p3, v2, :cond_3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    goto :goto_1

    .line 326
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    .local v5, "regStartTime":J
    goto :goto_2

    .line 324
    .end local v5    # "regStartTime":J
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    int-to-long v5, v2

    mul-long/2addr v5, v3

    .line 328
    .restart local v5    # "regStartTime":J
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    iget v2, v2, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    int-to-long v7, v2

    mul-long/2addr v7, v3

    .line 330
    .local v7, "regEndTime":J
    cmp-long v2, p1, v5

    if-ltz v2, :cond_4

    cmp-long v2, p1, v7

    if-gez v2, :cond_4

    .line 331
    const/4 v0, 0x1

    .line 332
    goto :goto_3

    .line 319
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v5    # "regStartTime":J
    .end local v7    # "regEndTime":J
    :cond_5
    :goto_3
    nop

    .line 340
    return v0

    .line 336
    :cond_6
    const-string v2, "TranscodeLib"

    const-string v3, "There is no region info."

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return v1
.end method

.method public blacklist newslowSEFParser(Ljava/lang/String;)Z
    .locals 17
    .param p1, "sefData"    # Ljava/lang/String;

    .line 347
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "TranscodeLib"

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sefData read slow : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    if-nez v2, :cond_0

    .line 349
    const-string/jumbo v0, "sefData == null"

    invoke-static {v3, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return v4

    .line 352
    :cond_0
    const-string v0, "\\*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "slowDataregion":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slowDataregion,length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    array-length v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "region speed: "

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x4

    const-string v11, ":"

    const/4 v12, 0x7

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v5, v13, :cond_4

    .line 355
    :try_start_1
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "regionData":[Ljava/lang/String;
    new-instance v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v11}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 357
    .local v11, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 358
    aget-object v15, v5, v4

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 359
    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 360
    iget v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v15}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v15

    iput-object v15, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 361
    iget-object v15, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    aget-object v15, v5, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v10, :cond_3

    .line 364
    new-instance v10, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v10}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v11, v10

    .line 365
    aget-object v10, v5, v4

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 366
    aget-object v10, v5, v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 367
    aget-object v10, v5, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v9, :cond_1

    .line 368
    iput v8, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 369
    :cond_1
    aget-object v8, v5, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_2

    .line 370
    iput v7, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_0

    .line 372
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

    .line 373
    iput v12, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 375
    :goto_0
    iget v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v11, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 376
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_3
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 379
    .end local v11    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v6, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 380
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 381
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 382
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 383
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    nop

    .end local v5    # "regionData":[Ljava/lang/String;
    goto/16 :goto_3

    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_4
    array-length v5, v0

    if-ne v5, v14, :cond_b

    .line 386
    aget-object v5, v0, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "regionData1":[Ljava/lang/String;
    aget-object v15, v0, v13

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 388
    .local v11, "regionData2":[Ljava/lang/String;
    new-instance v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v15}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 389
    .local v15, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    iput v4, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 390
    aget-object v16, v5, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 391
    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 392
    iget v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 393
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_7

    .line 396
    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v15, v7

    .line 397
    aget-object v7, v5, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 398
    aget-object v7, v5, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 399
    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 400
    iput v8, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    .line 401
    :cond_5
    aget-object v7, v5, v14

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v14, :cond_6

    .line 402
    const/4 v7, 0x6

    iput v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_1

    .line 404
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

    .line 405
    iput v12, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 408
    :goto_1
    iget v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v15, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 409
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_7
    new-instance v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 413
    .end local v15    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .local v7, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v8, v5, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 414
    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 415
    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 416
    iget v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v8}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v8

    iput-object v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 417
    iget-object v8, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_a

    .line 420
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    move-object v7, v8

    .line 421
    aget-object v8, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 422
    aget-object v8, v11, v13

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 423
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_8

    .line 424
    const/4 v6, 0x5

    iput v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    .line 425
    :cond_8
    aget-object v8, v11, v14

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v14, :cond_9

    .line 426
    const/4 v6, 0x6

    iput v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    goto :goto_2

    .line 428
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

    .line 429
    iput v12, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 431
    :goto_2
    iget v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 432
    iget-object v6, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_a
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 436
    .end local v7    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    .restart local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v11, v13

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 437
    iget-wide v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mDuration:J

    long-to-int v7, v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 438
    iput v12, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 439
    iget v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v7}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 440
    iget-object v7, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    nop

    .end local v5    # "regionData1":[Ljava/lang/String;
    .end local v11    # "regionData2":[Ljava/lang/String;
    goto :goto_3

    .line 443
    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
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

    .line 448
    .end local v0    # "slowDataregion":[Ljava/lang/String;
    :goto_3
    nop

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v4, v1, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 451
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

    .line 452
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

    .line 453
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

    .line 454
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

    .line 455
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

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 457
    .end local v0    # "i":I
    :cond_c
    return v13

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "throwing number format:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return v4
.end method

.method public blacklist slowfastSEFParser(Ljava/lang/String;)Z
    .locals 8
    .param p1, "sefData"    # Ljava/lang/String;

    .line 463
    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sefData read slow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    if-nez p1, :cond_0

    .line 465
    const-string/jumbo v2, "sefData == null"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return v1

    .line 468
    :cond_0
    const-string v2, "\\*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "slowDataregion":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 471
    aget-object v4, v2, v3

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "regionData":[Ljava/lang/String;
    new-instance v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v6}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 473
    .local v6, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v7, v4, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 474
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 475
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 476
    iget v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v5}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v5

    iput-object v5, v6, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 477
    iget-object v5, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    nop

    .end local v4    # "regionData":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    .end local v2    # "slowDataregion":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_1
    nop

    .line 484
    return v5

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return v1
.end method

.method public blacklist superslowSEFParser(Ljava/lang/String;)Z
    .locals 10
    .param p1, "sefData"    # Ljava/lang/String;

    .line 491
    const-string v0, "TranscodeLib"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sefData read super : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    if-nez p1, :cond_0

    .line 493
    const-string/jumbo v2, "sefData == null"

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return v1

    .line 496
    :cond_0
    const-string v2, "\\*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "slowDataregion":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "slowDataregion,length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 499
    aget-object v4, v2, v3

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, "regionData":[Ljava/lang/String;
    const/4 v6, 0x3

    aget-object v7, v4, v6

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, "mainData":[Ljava/lang/String;
    array-length v8, v7

    if-le v8, v5, :cond_1

    .line 503
    aget-object v8, v7, v1

    aput-object v8, v4, v6

    .line 507
    :cond_1
    new-instance v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;

    invoke-direct {v8}, Lcom/samsung/android/transcode/util/SEFHelper$Region;-><init>()V

    .line 508
    .local v8, "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    aget-object v9, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionStartTime:I

    .line 509
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionEndTime:I

    .line 510
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionAudioEndTime:I

    .line 511
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    .line 512
    iget v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeed:I

    invoke-static {v5}, Lcom/samsung/android/transcode/util/SEFHelper;->getSpeed(I)Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    move-result-object v5

    iput-object v5, v8, Lcom/samsung/android/transcode/util/SEFHelper$Region;->mRegionSpeedType:Lcom/samsung/android/transcode/util/SEFHelper$Speed;

    .line 513
    iget-object v5, p0, Lcom/samsung/android/transcode/util/SEFHelper;->mRegionList:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    nop

    .end local v4    # "regionData":[Ljava/lang/String;
    .end local v7    # "mainData":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 519
    .end local v2    # "slowDataregion":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v8    # "slowRegion":Lcom/samsung/android/transcode/util/SEFHelper$Region;
    :cond_2
    nop

    .line 520
    return v5

    .line 516
    :catch_0
    move-exception v2

    .line 517
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "throwing number format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return v1
.end method
