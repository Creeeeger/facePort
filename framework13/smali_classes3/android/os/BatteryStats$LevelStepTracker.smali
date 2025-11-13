.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public greylist-max-o mLastStepTime:J

.field public greylist-max-o mNumStepDurations:I

.field public final greylist-max-o mStepDurations:[J


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .locals 2
    .param p1, "maxLevelSteps"    # I

    .line 1390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1386
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1391
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1392
    return-void
.end method

.method public constructor greylist-max-o <init>(I[J)V
    .locals 2
    .param p1, "numSteps"    # I
    .param p2, "steps"    # [J

    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1386
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1395
    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1396
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1397
    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1398
    return-void
.end method

.method private greylist-max-o appendHex(JILjava/lang/StringBuilder;)V
    .locals 5
    .param p1, "val"    # J
    .param p3, "topOffset"    # I
    .param p4, "out"    # Ljava/lang/StringBuilder;

    .line 1420
    const/4 v0, 0x0

    .line 1421
    .local v0, "hasData":Z
    :goto_0
    if-ltz p3, :cond_2

    .line 1422
    shr-long v1, p1, p3

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 1423
    .local v1, "digit":I
    add-int/lit8 p3, p3, -0x4

    .line 1424
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1425
    goto :goto_0

    .line 1427
    :cond_0
    const/4 v0, 0x1

    .line 1428
    if-ltz v1, :cond_1

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 1429
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1431
    :cond_1
    add-int/lit8 v2, v1, 0x61

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1433
    .end local v1    # "digit":I
    :goto_1
    goto :goto_0

    .line 1434
    :cond_2
    return-void
.end method


# virtual methods
.method public greylist-max-o addLevelSteps(IJJ)V
    .locals 16
    .param p1, "numStepLevels"    # I
    .param p2, "modeBits"    # J
    .param p4, "elapsedRealtime"    # J

    .line 1633
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    iget v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1634
    .local v4, "stepCount":I
    iget-wide v5, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1635
    .local v5, "lastStepTime":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_2

    if-lez v1, :cond_2

    .line 1636
    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1637
    .local v7, "steps":[J
    sub-long v8, v2, v5

    .line 1638
    .local v8, "duration":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v1, :cond_1

    .line 1639
    array-length v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x0

    invoke-static {v7, v13, v7, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1640
    sub-int v11, v1, v10

    int-to-long v11, v11

    div-long v11, v8, v11

    .line 1641
    .local v11, "thisDuration":J
    sub-long/2addr v8, v11

    .line 1642
    const-wide v14, 0xffffffffffL

    cmp-long v14, v11, v14

    if-lez v14, :cond_0

    .line 1643
    const-wide v11, 0xffffffffffL

    .line 1645
    :cond_0
    or-long v14, v11, p2

    aput-wide v14, v7, v13

    .line 1638
    .end local v11    # "thisDuration":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1647
    .end local v10    # "i":I
    :cond_1
    add-int/2addr v4, v1

    .line 1648
    array-length v10, v7

    if-le v4, v10, :cond_2

    .line 1649
    array-length v4, v7

    .line 1652
    .end local v7    # "steps":[J
    .end local v8    # "duration":J
    :cond_2
    iput v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1653
    iput-wide v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1654
    return-void
.end method

.method public greylist-max-o clearTime()V
    .locals 2

    .line 1551
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1552
    return-void
.end method

.method public greylist-max-o computeTimeEstimate(JJ[I)J
    .locals 17
    .param p1, "modesOfInterest"    # J
    .param p3, "modeValues"    # J
    .param p5, "outNumOfInterest"    # [I

    .line 1597
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1598
    .local v1, "steps":[J
    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1599
    .local v2, "count":I
    const-wide/16 v3, -0x1

    if-gtz v2, :cond_0

    .line 1600
    return-wide v3

    .line 1602
    :cond_0
    const-wide/16 v5, 0x0

    .line 1603
    .local v5, "total":J
    const/4 v7, 0x0

    .line 1604
    .local v7, "numOfInterest":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_2

    .line 1605
    aget-wide v9, v1, v8

    const-wide/high16 v11, 0xff000000000000L

    and-long/2addr v9, v11

    const/16 v11, 0x30

    shr-long/2addr v9, v11

    .line 1607
    .local v9, "initMode":J
    aget-wide v11, v1, v8

    const-wide/high16 v13, -0x100000000000000L

    and-long/2addr v11, v13

    const/16 v13, 0x38

    shr-long/2addr v11, v13

    .line 1610
    .local v11, "modMode":J
    and-long v13, v11, p1

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    .line 1612
    and-long v13, v9, p1

    cmp-long v13, v13, p3

    if-nez v13, :cond_1

    .line 1614
    add-int/lit8 v7, v7, 0x1

    .line 1615
    aget-wide v13, v1, v8

    const-wide v15, 0xffffffffffL

    and-long/2addr v13, v15

    add-long/2addr v5, v13

    .line 1604
    .end local v9    # "initMode":J
    .end local v11    # "modMode":J
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1619
    .end local v8    # "i":I
    :cond_2
    if-gtz v7, :cond_3

    .line 1620
    return-wide v3

    .line 1623
    :cond_3
    if-eqz p5, :cond_4

    .line 1624
    const/4 v3, 0x0

    aput v7, p5, v3

    .line 1629
    :cond_4
    int-to-long v3, v7

    div-long v3, v5, v3

    const-wide/16 v8, 0x64

    mul-long/2addr v3, v8

    return-wide v3
.end method

.method public greylist-max-o computeTimePerLevel()J
    .locals 9

    .line 1555
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1556
    .local v0, "steps":[J
    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1559
    .local v1, "numSteps":I
    if-gtz v1, :cond_0

    .line 1560
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1562
    :cond_0
    const-wide/16 v2, 0x0

    .line 1563
    .local v2, "total":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1564
    aget-wide v5, v0, v4

    const-wide v7, 0xffffffffffL

    and-long/2addr v5, v7

    add-long/2addr v2, v5

    .line 1563
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1566
    .end local v4    # "i":I
    :cond_1
    int-to-long v4, v1

    div-long v4, v2, v4

    return-wide v4
.end method

.method public greylist-max-o decodeEntryAt(ILjava/lang/String;)V
    .locals 19
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1476
    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1477
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1479
    .local v2, "i":I
    const-wide/16 v3, 0x0

    .line 1480
    .local v3, "out":J
    :goto_0
    const/16 v5, 0x2d

    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v6

    .local v7, "c":C
    if-eq v6, v5, :cond_0

    .line 1481
    add-int/lit8 v2, v2, 0x1

    .line 1482
    const-wide/16 v5, 0x0

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 1489
    :sswitch_0
    const-wide/high16 v5, 0x3000000000000L

    or-long/2addr v3, v5

    .line 1491
    goto :goto_1

    .line 1492
    :sswitch_1
    const-wide/high16 v5, 0x4000000000000L

    or-long/2addr v3, v5

    .line 1494
    goto :goto_1

    .line 1485
    :sswitch_2
    const-wide/high16 v5, 0x1000000000000L

    or-long/2addr v3, v5

    .line 1486
    goto :goto_1

    .line 1495
    :sswitch_3
    const-wide/high16 v5, 0x8000000000000L

    or-long/2addr v3, v5

    .line 1497
    goto :goto_1

    .line 1483
    :sswitch_4
    or-long/2addr v3, v5

    .line 1484
    goto :goto_1

    .line 1487
    :sswitch_5
    const-wide/high16 v5, 0x2000000000000L

    or-long/2addr v3, v5

    .line 1488
    goto :goto_1

    .line 1504
    :sswitch_6
    const-wide/high16 v5, 0x300000000000000L    # 3.13151306251402E-294

    or-long/2addr v3, v5

    .line 1506
    goto :goto_1

    .line 1507
    :sswitch_7
    const-wide/high16 v5, 0x400000000000000L

    or-long/2addr v3, v5

    .line 1509
    goto :goto_1

    .line 1500
    :sswitch_8
    const-wide/high16 v5, 0x100000000000000L

    or-long/2addr v3, v5

    .line 1501
    goto :goto_1

    .line 1510
    :sswitch_9
    const-wide/high16 v5, 0x800000000000000L

    or-long/2addr v3, v5

    goto :goto_1

    .line 1498
    :sswitch_a
    or-long/2addr v3, v5

    .line 1499
    goto :goto_1

    .line 1502
    :sswitch_b
    const-wide/high16 v5, 0x200000000000000L

    or-long/2addr v3, v5

    .line 1503
    nop

    .line 1512
    :goto_1
    goto :goto_0

    .line 1515
    .end local v7    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1516
    const-wide/16 v6, 0x0

    .line 1517
    .local v6, "level":J
    :cond_1
    :goto_2
    const/16 v8, 0x46

    const/16 v9, 0x66

    const/16 v10, 0x39

    const/4 v11, 0x4

    const/16 v12, 0x41

    const/16 v13, 0x61

    const/16 v14, 0x30

    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    .local v16, "c":C
    if-eq v15, v5, :cond_4

    .line 1518
    add-int/lit8 v2, v2, 0x1

    .line 1519
    shl-long/2addr v6, v11

    .line 1520
    move/from16 v15, v16

    .end local v16    # "c":C
    .local v15, "c":C
    if-lt v15, v14, :cond_2

    if-gt v15, v10, :cond_2

    .line 1521
    add-int/lit8 v8, v15, -0x30

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_2

    .line 1522
    :cond_2
    if-lt v15, v13, :cond_3

    if-gt v15, v9, :cond_3

    .line 1523
    add-int/lit8 v16, v15, -0x61

    add-int/lit8 v8, v16, 0xa

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_2

    .line 1524
    :cond_3
    if-lt v15, v12, :cond_1

    if-gt v15, v8, :cond_1

    .line 1525
    add-int/lit8 v16, v15, -0x41

    add-int/lit8 v8, v16, 0xa

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_2

    .line 1517
    .end local v15    # "c":C
    .restart local v16    # "c":C
    :cond_4
    move/from16 v15, v16

    .line 1528
    .end local v16    # "c":C
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1529
    const/16 v15, 0x28

    shl-long v15, v6, v15

    const-wide v17, 0xff0000000000L

    and-long v15, v15, v17

    or-long/2addr v3, v15

    .line 1530
    const-wide/16 v15, 0x0

    .line 1531
    .local v15, "duration":J
    :goto_3
    if-ge v2, v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v18, v8

    .local v18, "c":C
    if-eq v8, v5, :cond_a

    .line 1532
    add-int/lit8 v2, v2, 0x1

    .line 1533
    shl-long/2addr v15, v11

    .line 1534
    move/from16 v8, v18

    .end local v18    # "c":C
    .local v8, "c":C
    if-lt v8, v14, :cond_6

    if-gt v8, v10, :cond_6

    .line 1535
    add-int/lit8 v5, v8, -0x30

    int-to-long v10, v5

    add-long/2addr v15, v10

    const/16 v5, 0x2d

    const/16 v8, 0x46

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_3

    .line 1536
    :cond_6
    if-lt v8, v13, :cond_7

    if-gt v8, v9, :cond_7

    .line 1537
    add-int/lit8 v5, v8, -0x61

    add-int/lit8 v5, v5, 0xa

    int-to-long v10, v5

    add-long/2addr v15, v10

    const/16 v5, 0x2d

    const/16 v8, 0x46

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_3

    .line 1538
    :cond_7
    if-lt v8, v12, :cond_8

    const/16 v5, 0x46

    if-gt v8, v5, :cond_9

    .line 1539
    add-int/lit8 v10, v8, -0x41

    add-int/lit8 v10, v10, 0xa

    int-to-long v10, v10

    add-long/2addr v15, v10

    move v8, v5

    const/16 v5, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_3

    .line 1538
    :cond_8
    const/16 v5, 0x46

    .line 1531
    .end local v8    # "c":C
    :cond_9
    move v8, v5

    const/16 v5, 0x2d

    const/16 v10, 0x39

    const/4 v11, 0x4

    goto :goto_3

    .restart local v18    # "c":C
    :cond_a
    move/from16 v8, v18

    .line 1542
    .end local v18    # "c":C
    :cond_b
    move-object/from16 v5, p0

    iget-object v8, v5, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v9, 0xffffffffffL

    and-long/2addr v9, v15

    or-long/2addr v9, v3

    aput-wide v9, v8, p1

    .line 1543
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_b
        0x46 -> :sswitch_a
        0x49 -> :sswitch_9
        0x4f -> :sswitch_8
        0x50 -> :sswitch_7
        0x5a -> :sswitch_6
        0x64 -> :sswitch_5
        0x66 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6f -> :sswitch_2
        0x70 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist-max-o encodeEntryAt(ILjava/lang/StringBuilder;)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/lang/StringBuilder;

    .line 1437
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    .line 1438
    .local v0, "item":J
    const-wide v2, 0xffffffffffL

    and-long/2addr v2, v0

    .line 1439
    .local v2, "duration":J
    const-wide v4, 0xff0000000000L

    and-long/2addr v4, v0

    const/16 v6, 0x28

    shr-long/2addr v4, v6

    long-to-int v4, v4

    .line 1441
    .local v4, "level":I
    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v5, v0

    const/16 v7, 0x30

    shr-long/2addr v5, v7

    long-to-int v5, v5

    .line 1443
    .local v5, "initMode":I
    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v6, v0

    const/16 v8, 0x38

    shr-long/2addr v6, v8

    long-to-int v6, v6

    .line 1445
    .local v6, "modMode":I
    and-int/lit8 v7, v5, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 1449
    :pswitch_0
    const/16 v7, 0x7a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1448
    :pswitch_1
    const/16 v7, 0x64

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1447
    :pswitch_2
    const/16 v7, 0x6f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1446
    :pswitch_3
    const/16 v7, 0x66

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1451
    :goto_0
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_0

    .line 1452
    const/16 v7, 0x70

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1454
    :cond_0
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_1

    .line 1455
    const/16 v7, 0x69

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1457
    :cond_1
    and-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_1

    goto :goto_1

    .line 1461
    :pswitch_4
    const/16 v7, 0x5a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1460
    :pswitch_5
    const/16 v7, 0x44

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1459
    :pswitch_6
    const/16 v7, 0x4f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1458
    :pswitch_7
    const/16 v7, 0x46

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1463
    :goto_1
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_2

    .line 1464
    const/16 v7, 0x50

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1466
    :cond_2
    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_3

    .line 1467
    const/16 v7, 0x49

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1469
    :cond_3
    const/16 v7, 0x2d

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1470
    int-to-long v8, v4

    const/4 v10, 0x4

    invoke-direct {p0, v8, v9, v10, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 1471
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1472
    const/16 v7, 0x24

    invoke-direct {p0, v2, v3, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 1473
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public greylist-max-o getDurationAt(I)J
    .locals 4
    .param p1, "index"    # I

    .line 1401
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getInitModeAt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1410
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public greylist-max-o getLevelAt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1405
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xff0000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public greylist-max-o getModModeAt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1415
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public greylist-max-o init()V
    .locals 2

    .line 1546
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1547
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1548
    return-void
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1658
    .local v0, "N":I
    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .line 1661
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1662
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1663
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 1662
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1665
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1659
    :cond_1
    new-instance v1, Landroid/os/ParcelFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "more step durations than available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 1668
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1669
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1671
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1670
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1673
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
