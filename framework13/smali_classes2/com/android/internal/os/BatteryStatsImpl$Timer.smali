.class public abstract Lcom/android/internal/os/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# instance fields
.field protected final blacklist mClock:Lcom/android/internal/os/Clock;

.field protected greylist-max-o mCount:I

.field protected final greylist-max-o mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field protected blacklist mTimeBeforeMarkUs:J

.field protected blacklist mTotalTimeUs:J

.field protected final greylist-max-o mType:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2653
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 2654
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 2655
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 2656
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2657
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2658
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;

    .line 2641
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 2642
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 2643
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 2644
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2646
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 2647
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2648
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 2649
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2651
    return-void
.end method

.method public static greylist writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "timer"    # Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .param p2, "elapsedRealtimeUs"    # J

    .line 2727
    if-nez p1, :cond_0

    .line 2728
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2729
    return-void

    .line 2731
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2732
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2733
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o computeCurrentCountLocked()I
.end method

.method protected abstract blacklist computeRunTimeLocked(JJ)J
.end method

.method public greylist-max-o detach()V
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2699
    return-void
.end method

.method public greylist getCountLocked(I)I
    .locals 1
    .param p1, "which"    # I

    .line 2745
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getTimeSinceMarkLocked(J)J
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J

    .line 2750
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    .line 2752
    .local v0, "val":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public greylist getTotalTimeLocked(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 2738
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2759
    return-void
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "timeBaseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2704
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2712
    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2713
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 2717
    return-void
.end method

.method public greylist-max-o readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2771
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 2774
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 2775
    return-void
.end method

.method public greylist-max-o reset(Z)Z
    .locals 4
    .param p1, "detachIfReset"    # Z

    .line 2683
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(ZJ)Z

    move-result v0

    return v0
.end method

.method public blacklist reset(ZJ)Z
    .locals 2
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 2688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2689
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 2690
    if-eqz p1, :cond_0

    .line 2691
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 2693
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 2763
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    .line 2765
    .local v0, "runTimeUs":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2766
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2767
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 2666
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2667
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2669
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2670
    return-void
.end method
