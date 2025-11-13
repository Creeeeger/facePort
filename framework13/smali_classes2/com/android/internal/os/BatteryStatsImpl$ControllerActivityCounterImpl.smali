.class public Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
.super Landroid/os/BatteryStats$ControllerActivityCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerActivityCounterImpl"
.end annotation


# instance fields
.field private final blacklist mClock:Lcom/android/internal/os/Clock;

.field private blacklist mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

.field private final blacklist mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mNumTxStates:I

.field private final greylist-max-o mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mProcessState:I

.field private blacklist mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

.field private final greylist-max-o mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final greylist-max-o mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final blacklist mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field private blacklist mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetOrCreateIdleTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetOrCreateRxTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetOrCreateTxTimeCounters(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->setState(IJ)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V
    .locals 1
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "numTxStates"    # I

    .line 4052
    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    .line 4053
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4054
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4055
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    .line 4056
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4057
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4058
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4059
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4060
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V
    .locals 1
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "numTxStates"    # I
    .param p4, "in"    # Landroid/os/Parcel;

    .line 4063
    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    .line 4064
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4065
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4066
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    .line 4067
    invoke-direct {p0, p4, p2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4068
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4069
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4070
    invoke-direct {p0, p4, p2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4071
    invoke-direct {p0, p4, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4073
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4074
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4075
    return-void
.end method

.method private blacklist createTimeMultiStateCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 9

    .line 4267
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 4268
    .local v7, "timestampMs":J
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJLcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter-IA;)V

    .line 4270
    .local v0, "counter":Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    invoke-static {v1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v1

    invoke-static {v0, v1, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 4272
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mupdate(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)J

    .line 4273
    return-object v0
.end method

.method private blacklist getOrCreateIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 1

    .line 4201
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4202
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private blacklist getOrCreateRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 1

    .line 4238
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4239
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private blacklist getOrCreateTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 3

    .line 4257
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4258
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    if-ge v0, v1, :cond_0

    .line 4260
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v2

    aput-object v2, v1, v0

    .line 4259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4263
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private blacklist readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4115
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4116
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4117
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 4116
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    return-object v0

    .line 4119
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "expectedNumCounters"    # I

    .line 4133
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4135
    .local v0, "numCounters":I
    if-ne v0, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4138
    .local v1, "valid":Z
    :goto_0
    new-array v2, v0, [Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4139
    .local v2, "counters":[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 4140
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4142
    invoke-virtual {v5}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 4140
    invoke-static {p1, p2, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v4

    .line 4143
    .local v4, "counter":Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    if-eqz v4, :cond_1

    .line 4144
    aput-object v4, v2, v3

    goto :goto_2

    .line 4146
    :cond_1
    const/4 v1, 0x0

    .line 4139
    .end local v4    # "counter":Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4149
    .end local v3    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 4150
    return-object v2

    .line 4153
    .end local v0    # "numCounters":I
    .end local v1    # "valid":Z
    .end local v2    # "counters":[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist setState(IJ)V
    .locals 3
    .param p1, "processState"    # I
    .param p2, "elapsedTimeMs"    # J

    .line 4294
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    .line 4295
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_0

    .line 4296
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 4298
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_1

    .line 4299
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 4301
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_2

    .line 4302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4303
    aget-object v1, v1, v0

    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 4302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4306
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "counter"    # Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4123
    if-eqz p2, :cond_0

    .line 4124
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4125
    invoke-static {p2, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_0

    .line 4127
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4129
    :goto_0
    return-void
.end method

.method private blacklist writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "counters"    # [Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4157
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4158
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4159
    array-length v1, p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4160
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 4161
    .local v2, "counter":Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    invoke-static {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    .line 4160
    .end local v2    # "counter":Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4164
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4166
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 4090
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o detach()V
    .locals 1

    .line 4179
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 4180
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4181
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4182
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 4183
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 4184
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4185
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4186
    return-void
.end method

.method public blacklist getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .line 4194
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4195
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    return-object v0

    .line 4197
    :cond_0
    return-object v0
.end method

.method public bridge synthetic blacklist getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .line 4038
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getMonitoredRailChargeConsumedMaMs()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMonitoredRailChargeConsumedMaMs()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .line 4290
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic blacklist getPowerCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .line 4038
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getPowerCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getPowerCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .line 4281
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public blacklist getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .line 4231
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4232
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    return-object v0

    .line 4234
    :cond_0
    return-object v0
.end method

.method public bridge synthetic blacklist getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .line 4038
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getScanTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getScanTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .line 4213
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic blacklist getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .line 4038
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getSleepTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSleepTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    .line 4222
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public blacklist getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .locals 1

    .line 4250
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4251
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER_ARRAY()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    return-object v0

    .line 4253
    :cond_0
    return-object v0
.end method

.method public greylist-max-o readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4078
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4079
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4080
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4081
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4082
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4084
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4085
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4086
    return-void
.end method

.method public blacklist reset(ZJ)V
    .locals 1
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 4169
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 4170
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4171
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4172
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 4173
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 4174
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4175
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4176
    return-void
.end method

.method public greylist-max-o writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 4094
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4095
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4096
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4097
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4098
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4099
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4100
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4101
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4105
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4106
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4107
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4108
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4109
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4110
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4111
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4112
    return-void
.end method
