.class public Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchTimer"
.end annotation


# instance fields
.field greylist-max-o mInDischarge:Z

.field blacklist mLastAddedDurationUs:J

.field blacklist mLastAddedTimeUs:J

.field final greylist-max-o mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 1
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 3015
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 3016
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3017
    invoke-virtual {p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 3018
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p5, "in"    # Landroid/os/Parcel;

    .line 3007
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 3008
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3009
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 3010
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 3011
    invoke-virtual {p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 3012
    return-void
.end method

.method private greylist-max-o computeOverage(J)J
    .locals 4
    .param p1, "curTimeUs"    # J

    .line 3053
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3054
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    sub-long/2addr v0, p1

    return-wide v0

    .line 3056
    :cond_0
    return-wide v2
.end method

.method private greylist-max-o recomputeLastDuration(JZ)V
    .locals 6
    .param p1, "curTimeUs"    # J
    .param p3, "abort"    # Z

    .line 3060
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    move-result-wide v0

    .line 3061
    .local v0, "overage":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 3065
    iget-boolean v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz v4, :cond_0

    .line 3066
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTimeUs:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTimeUs:J

    .line 3068
    :cond_0
    if-eqz p3, :cond_1

    .line 3069
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    goto :goto_0

    .line 3071
    :cond_1
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 3072
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 3075
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 2
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 3093
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    .line 3094
    return-void
.end method

.method public blacklist abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .locals 3
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "elapsedRealtimeMs"    # J

    .line 3097
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    .line 3098
    .local v0, "nowUs":J
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3099
    return-void
.end method

.method public greylist-max-o addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .locals 7
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "durationMs"    # J

    .line 3078
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;JJ)V

    .line 3079
    return-void
.end method

.method public blacklist addDuration(Lcom/android/internal/os/BatteryStatsImpl;JJ)V
    .locals 7
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "durationMs"    # J
    .param p4, "elapsedRealtimeMs"    # J

    .line 3082
    const-wide/16 v0, 0x3e8

    mul-long v2, p4, v0

    .line 3083
    .local v2, "nowUs":J
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3084
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 3085
    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 3086
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz v0, :cond_0

    .line 3087
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTimeUs:J

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTimeUs:J

    .line 3088
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    .line 3090
    :cond_0
    return-void
.end method

.method protected greylist-max-o computeCurrentCountLocked()I
    .locals 1

    .line 3103
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mCount:I

    return v0
.end method

.method protected blacklist computeRunTimeLocked(JJ)J
    .locals 4
    .param p1, "curBatteryRealtimeUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 3108
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    move-result-wide v0

    .line 3109
    .local v0, "overage":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3110
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTimeUs:J

    return-wide v0

    .line 3112
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTimeUs:J

    return-wide v2
.end method

.method public greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3047
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastAddedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastAddedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3050
    return-void
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 3036
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 3039
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 3040
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTimeUs:J

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mTotalTimeUs:J

    .line 3042
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 3043
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 3029
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3030
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 3031
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 3032
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 4
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 3117
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3118
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    cmp-long v1, v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3119
    .local v1, "stillActive":Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-super {p0, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(ZJ)Z

    .line 3120
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    return v0
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 3022
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3023
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3024
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3025
    return-void
.end method
