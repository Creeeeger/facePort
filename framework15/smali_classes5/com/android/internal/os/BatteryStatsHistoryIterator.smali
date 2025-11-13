.class public Lcom/android/internal/os/BatteryStatsHistoryIterator;
.super Ljava/lang/Object;
.source "BatteryStatsHistoryIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/os/BatteryStats$HistoryItem;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsHistoryItr"


# instance fields
.field private final blacklist mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private blacklist mClosed:Z

.field private final blacklist mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

.field private final blacklist mEndTimeMs:J

.field private blacklist mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

.field private final blacklist mHistoryTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$HistoryTag;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNextItemReady:Z

.field private final blacklist mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field private final blacklist mStartTimeMs:J

.field private blacklist mTimeInitialized:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-direct {v0}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    move-wide v0, p4

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->clear()V

    return-void
.end method

.method private blacklist advance()V
    .locals 12

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHistory;->getNextParcel(JJ)Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mTimeInitialized:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v3, v0}, Lcom/android/internal/os/BatteryStatsHistory;->getHistoryBufferStartTime(Landroid/os/Parcel;)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mTimeInitialized:Z

    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v2, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v4, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {p0, v0, v6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v6, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v6, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x7

    if-eq v6, v7, :cond_2

    cmp-long v6, v4, v8

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v10, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v10, v2

    add-long/2addr v10, v4

    iput-wide v10, v6, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    :cond_2
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mEndTimeMs:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mStartTimeMs:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    return-void

    :cond_4
    goto :goto_0

    :catchall_0
    move-exception v6

    const-string v7, "BatteryStatsHistoryItr"

    const-string v8, "Corrupted battery history"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    return-void
.end method

.method private static blacklist readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .locals 2

    const/high16 v0, -0x2000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const v0, 0x1ff8000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0xf

    int-to-short v0, v0

    iput-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    and-int/lit16 v0, p0, 0x7ffe

    ushr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3fff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    int-to-short v1, v0

    iput-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    return-void
.end method

.method private static blacklist readCurrentNTemperatureInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .locals 1

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    const v0, 0xffff

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x0

    int-to-short v0, v0

    iput-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->current:S

    return-void
.end method

.method private blacklist readHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0x1ffff

    and-int/2addr v4, v3

    const/4 v5, 0x0

    iput-byte v5, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v6, 0x1

    iput v6, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    const/4 v7, 0x2

    const v8, 0x1fffd

    if-ge v4, v8, :cond_0

    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto :goto_0

    :cond_0
    if-ne v4, v8, :cond_1

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void

    :cond_1
    const v8, 0x1fffe

    if-ne v4, v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iget-wide v9, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    int-to-long v11, v8

    add-long/2addr v9, v11

    iput-wide v9, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v9, v6

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iget-wide v10, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    add-long/2addr v10, v8

    iput-wide v10, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v7

    iput v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    :goto_0
    const/high16 v8, 0x80000

    and-int/2addr v8, v3

    if-eqz v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readBatteryLevelInt(ILandroid/os/BatteryStats$HistoryItem;)V

    iget v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v9, v6

    iput v9, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    const/high16 v9, 0x40000

    and-int/2addr v9, v3

    if-eqz v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-static {v9, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readCurrentNTemperatureInt(ILandroid/os/BatteryStats$HistoryItem;)V

    iget v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v10, v6

    iput v10, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-static {v10, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readTemperature2Int(ILandroid/os/BatteryStats$HistoryItem;)V

    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v11, v6

    iput v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const/high16 v11, 0x20000

    and-int v12, v3, v11

    if-eqz v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    iput v12, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iget v12, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v12, v6

    iput v12, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12, v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readSecBatteryInfoInt(ILandroid/os/BatteryStats$HistoryItem;)V

    iget v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v13, v6

    iput v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iput v13, v2, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iget v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v13, v6

    iput v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    iput v13, v2, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    iget v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v13, v6

    iput v13, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    const/high16 v13, 0x100000

    and-int/2addr v13, v3

    const v14, 0xffffff

    const/high16 v15, -0x2000000

    if-eqz v13, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    and-int/2addr v15, v3

    and-int/2addr v14, v13

    or-int/2addr v14, v15

    iput v14, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    shr-int/lit8 v14, v13, 0x1d

    and-int/lit8 v14, v14, 0x7

    int-to-byte v14, v14

    iput-byte v14, v2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shr-int/lit8 v14, v13, 0x1a

    and-int/lit8 v14, v14, 0x7

    shr-int/lit8 v15, v13, 0xe

    and-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    int-to-byte v14, v14

    iput-byte v14, v2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shr-int/lit8 v14, v13, 0x18

    and-int/lit8 v14, v14, 0x3

    int-to-byte v14, v14

    iput-byte v14, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v14, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    packed-switch v14, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 v7, 0x4

    iput-byte v7, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_4

    :pswitch_1
    iput-byte v7, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    goto :goto_4

    :pswitch_2
    iput-byte v6, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    nop

    :goto_4
    iget v7, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v7, v6

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_5

    :cond_6
    and-int v7, v3, v15

    iget v13, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/2addr v13, v14

    or-int/2addr v7, v13

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    :goto_5
    const/high16 v7, 0x200000

    and-int/2addr v7, v3

    if-eqz v7, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    :cond_7
    const/high16 v7, 0x400000

    and-int/2addr v7, v3

    const v13, 0xffff

    const/4 v14, 0x0

    if-eqz v7, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    and-int v15, v7, v13

    shr-int/lit8 v16, v7, 0x10

    and-int v11, v16, v13

    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1, v15, v5}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_6

    :cond_8
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    :goto_6
    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1, v11, v5}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_7

    :cond_9
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    :goto_7
    iget v5, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_8

    :cond_a
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    :goto_8
    const/high16 v5, 0x800000

    and-int/2addr v5, v3

    if-eqz v5, :cond_c

    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    and-int v7, v5, v13

    iput v7, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    shr-int/lit8 v7, v5, 0x10

    and-int/2addr v7, v13

    iget-object v11, v2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0, v1, v7, v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, v2, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v11, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    goto :goto_9

    :cond_b
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    :goto_9
    iget v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    add-int/2addr v11, v6

    iput v11, v2, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    goto :goto_a

    :cond_c
    const/4 v5, 0x0

    iput v5, v2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    :goto_a
    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mReadHistoryStepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v5, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-virtual {v5, v1}, Landroid/os/BatteryStats$HistoryStepDetails;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_b

    :cond_d
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    :goto_b
    const/high16 v5, 0x1000000

    and-int/2addr v5, v3

    if-eqz v5, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v2, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v2, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v2, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iget v5, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/PowerStats$Descriptor;->readSummaryFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/PowerStats$DescriptorRegistry;->register(Lcom/android/internal/os/PowerStats$Descriptor;)V

    :cond_f
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mDescriptorRegistry:Lcom/android/internal/os/PowerStats$DescriptorRegistry;

    invoke-static {v1, v6}, Lcom/android/internal/os/PowerStats;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/PowerStats$DescriptorRegistry;)Lcom/android/internal/os/PowerStats;

    move-result-object v6

    iput-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    goto :goto_c

    :cond_10
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    :goto_c
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_11

    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iget-object v6, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v6, v1}, Landroid/os/BatteryStats$ProcessStateChange;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_d

    :cond_11
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    :goto_d
    goto :goto_e

    :cond_12
    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iput-object v14, v2, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist readHistoryTag(Landroid/os/Parcel;ILandroid/os/BatteryStats$HistoryTag;)Z
    .locals 3

    const v0, 0xffff

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    :cond_0
    const v0, 0x8000

    and-int/2addr v0, p2

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    const v1, -0x8001

    and-int/2addr v1, p2

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iget v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/16 v2, 0x7ffe

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    iget v2, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_3

    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput v1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    :goto_1
    iput p2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist readSecBatteryInfoInt(ILandroid/os/BatteryStats$HistoryItem;)V
    .locals 1

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    const v0, 0xffffff

    and-int/2addr v0, p0

    iput v0, p1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    return-void
.end method

.method private static blacklist readTemperature2Int(ILandroid/os/BatteryStats$HistoryItem;)V
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1d

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1c

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1b

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    const/high16 v0, 0x2000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    const v0, 0xff00

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mClosed:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->iteratorFinished()V

    :cond_0
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->advance()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist next()Landroid/os/BatteryStats$HistoryItem;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->advance()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mNextItemReady:Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHistoryIterator;->mHistoryItem:Landroid/os/BatteryStats$HistoryItem;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0

    return-object v0
.end method
