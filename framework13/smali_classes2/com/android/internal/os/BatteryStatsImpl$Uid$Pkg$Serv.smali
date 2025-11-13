.class public Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serv"
.end annotation


# instance fields
.field protected greylist-max-o mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field protected greylist-max-o mLaunched:Z

.field protected blacklist mLaunchedSinceMs:J

.field protected blacklist mLaunchedTimeMs:J

.field protected greylist-max-o mLaunches:I

.field protected greylist-max-o mPkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

.field protected greylist-max-o mRunning:Z

.field protected blacklist mRunningSinceMs:J

.field protected blacklist mStartTimeMs:J

.field protected greylist-max-o mStarts:I


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 1
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 13377
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>()V

    .line 13378
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 13379
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 13380
    return-void
.end method


# virtual methods
.method public greylist-max-o detach()V
    .locals 1

    .line 13403
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 13404
    return-void
.end method

.method public greylist getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .line 13502
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public greylist-max-o getLaunchTimeToNowLocked(J)J
    .locals 4
    .param p1, "batteryUptimeMs"    # J

    .line 13429
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    return-wide v0

    .line 13430
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getLaunches(I)I
    .locals 1
    .param p1, "which"    # I

    .line 13507
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    return v0
.end method

.method public greylist-max-o getStartTime(JI)J
    .locals 2
    .param p1, "now"    # J
    .param p3, "which"    # I

    .line 13512
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getStartTimeToNowLocked(J)J
    .locals 4
    .param p1, "batteryUptimeMs"    # J

    .line 13434
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    return-wide v0

    .line 13435
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getStarts(I)I
    .locals 1
    .param p1, "which"    # I

    .line 13517
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    return v0
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 13384
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 13388
    return-void
.end method

.method public greylist-max-o readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 13407
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    .line 13408
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    .line 13409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 13410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 13411
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    .line 13412
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    .line 13413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 13414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 13415
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 1
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 13392
    if-eqz p1, :cond_0

    .line 13393
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    .line 13395
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist startLaunchedLocked()V
    .locals 2

    .line 13440
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked(J)V

    .line 13441
    return-void
.end method

.method public blacklist startLaunchedLocked(J)V
    .locals 6
    .param p1, "uptimeMs"    # J

    .line 13444
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-nez v0, :cond_0

    .line 13445
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 13446
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    .line 13447
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 13449
    :cond_0
    return-void
.end method

.method public greylist startRunningLocked()V
    .locals 2

    .line 13471
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked(J)V

    .line 13472
    return-void
.end method

.method public blacklist startRunningLocked(J)V
    .locals 6
    .param p1, "uptimeMs"    # J

    .line 13475
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-nez v0, :cond_0

    .line 13476
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 13477
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    .line 13478
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 13480
    :cond_0
    return-void
.end method

.method public greylist stopLaunchedLocked()V
    .locals 2

    .line 13453
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked(J)V

    .line 13454
    return-void
.end method

.method public blacklist stopLaunchedLocked(J)V
    .locals 4
    .param p1, "uptimeMs"    # J

    .line 13457
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-eqz v0, :cond_1

    .line 13458
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    sub-long/2addr v0, v2

    .line 13460
    .local v0, "timeMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 13461
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    goto :goto_0

    .line 13463
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 13465
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 13467
    .end local v0    # "timeMs":J
    :cond_1
    return-void
.end method

.method public greylist stopRunningLocked()V
    .locals 2

    .line 13484
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked(J)V

    .line 13485
    return-void
.end method

.method public blacklist stopRunningLocked(J)V
    .locals 4
    .param p1, "uptimeMs"    # J

    .line 13488
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-eqz v0, :cond_1

    .line 13489
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    sub-long/2addr v0, v2

    .line 13491
    .local v0, "timeMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 13492
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    goto :goto_0

    .line 13494
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 13496
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 13498
    .end local v0    # "timeMs":J
    :cond_1
    return-void
.end method

.method public greylist-max-o writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 13418
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13419
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13420
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13421
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13422
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13423
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13424
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13425
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13426
    return-void
.end method
