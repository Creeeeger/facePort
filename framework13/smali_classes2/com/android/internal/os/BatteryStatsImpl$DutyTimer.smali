.class public Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DutyTimer"
.end annotation


# instance fields
.field blacklist mAcquireTime:J

.field blacklist mDutyCycle:I

.field blacklist mNesting:I

.field final blacklist mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field blacklist mUpdateTime:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 3604
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 3592
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 3594
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 3605
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3607
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 3608
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p5, "in"    # Landroid/os/Parcel;

    .line 3597
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 3592
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 3594
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 3598
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3599
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    .line 3600
    invoke-virtual {p5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 3601
    return-void
.end method


# virtual methods
.method protected blacklist computeCurrentCountLocked()I
    .locals 1

    .line 3713
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    return v0
.end method

.method protected blacklist computeRunTimeLocked(JJ)J
    .locals 6
    .param p1, "curBatteryRealtimeUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 3706
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTimeUs:J

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v2, :cond_0

    .line 3707
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    sub-long v2, p1, v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    goto :goto_0

    .line 3708
    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v0, v2

    .line 3706
    return-wide v0
.end method

.method public blacklist detach()V
    .locals 0

    .line 3729
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 3730
    return-void
.end method

.method public blacklist isRunningLocked()Z
    .locals 1

    .line 3668
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3638
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAcquireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDutyCycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3642
    return-void
.end method

.method public blacklist onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .line 3625
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3629
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 3630
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    .line 3635
    :cond_0
    return-void
.end method

.method public blacklist readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3740
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 3742
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 3743
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 3
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 3718
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3719
    .local v0, "canDetach":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-super {p0, v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(ZJ)Z

    .line 3720
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v1, :cond_2

    .line 3721
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    .line 3723
    :cond_2
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 3724
    return v0
.end method

.method public blacklist setDutyCycle(I)V
    .locals 0
    .param p1, "dutyCycle"    # I

    .line 3612
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    .line 3616
    return-void
.end method

.method public blacklist setMark(J)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J

    .line 3752
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 3753
    .local v0, "batteryRealtime":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v2, :cond_0

    .line 3755
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTimeUs:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    sub-long v4, v0, v4

    iget v6, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTimeUs:J

    .line 3756
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    .line 3758
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTimeUs:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBeforeMarkUs:J

    .line 3759
    return-void
.end method

.method public blacklist startRunningLocked(J)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 3645
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-nez v0, :cond_1

    .line 3646
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 3647
    .local v0, "batteryRealtime":J
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    .line 3648
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3650
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    .line 3651
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTimeUs:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    goto :goto_0

    .line 3653
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    .line 3662
    .end local v0    # "batteryRealtime":J
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist stopAllRunningLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 3698
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3699
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 3700
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->stopRunningLocked(J)V

    .line 3702
    :cond_0
    return-void
.end method

.method public blacklist stopRunningLocked(J)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J

    .line 3673
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-nez v0, :cond_0

    .line 3674
    return-void

    .line 3676
    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    if-nez v0, :cond_1

    .line 3677
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v2, 0x3e8

    mul-long v4, p1, v2

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v4

    .line 3678
    .local v4, "batteryRealtime":J
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 3679
    mul-long/2addr v2, p1

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->computeRunTimeLocked(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTimeUs:J

    .line 3680
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mNesting:I

    .line 3689
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mTotalTimeUs:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mAcquireTime:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    .line 3692
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mCount:I

    .line 3695
    .end local v4    # "batteryRealtime":J
    :cond_1
    return-void
.end method

.method public blacklist writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 3734
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3735
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3736
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 3619
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3620
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3621
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DutyTimer;->mDutyCycle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3622
    return-void
.end method
