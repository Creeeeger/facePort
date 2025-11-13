.class public Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopwatchTimer"
.end annotation


# instance fields
.field blacklist mAcquireTimeUs:J

.field public greylist-max-o mInList:Z

.field greylist-max-o mNesting:I

.field blacklist mTimeoutUs:J

.field final greylist-max-o mTimerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field blacklist mUpdateTimeUs:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/Clock;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .line 3382
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p1, p3, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 3361
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 3383
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3384
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 3385
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p6, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/Clock;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 3374
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p1, p3, p5, p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 3361
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 3375
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 3376
    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 3377
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3378
    return-void
.end method

.method private static greylist-max-o refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J
    .locals 11
    .param p0, "batteryRealtimeUs"    # J
    .param p3, "self"    # Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ")J"
        }
    .end annotation

    .line 3490
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    const-wide/16 v0, 0x0

    .line 3491
    .local v0, "selfTimeUs":J
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3492
    .local v2, "N":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3493
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 3494
    .local v4, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-wide v5, v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v5, p0, v5

    .line 3495
    .local v5, "heldTimeUs":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    .line 3496
    int-to-long v7, v2

    div-long v7, v5, v7

    .line 3497
    .local v7, "myTimeUs":J
    if-ne v4, p3, :cond_0

    .line 3498
    move-wide v0, v7

    .line 3500
    :cond_0
    iget-wide v9, v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTimeUs:J

    add-long/2addr v9, v7

    iput-wide v9, v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTimeUs:J

    .line 3502
    .end local v7    # "myTimeUs":J
    :cond_1
    iput-wide p0, v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3492
    .end local v4    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .end local v5    # "heldTimeUs":J
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3504
    .end local v3    # "i":I
    :cond_2
    return-wide v0
.end method


# virtual methods
.method protected greylist-max-o computeCurrentCountLocked()I
    .locals 1

    .line 3520
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    return v0
.end method

.method protected blacklist computeRunTimeLocked(JJ)J
    .locals 8
    .param p1, "curBatteryRealtimeUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 3509
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    add-long v6, v4, v0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    .line 3510
    add-long p1, v4, v0

    .line 3512
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTimeUs:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v4, :cond_2

    .line 3514
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v2, p1, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    int-to-long v4, v4

    div-long/2addr v2, v4

    goto :goto_1

    .line 3515
    :cond_2
    nop

    :goto_1
    add-long/2addr v0, v2

    .line 3512
    return-wide v0
.end method

.method public greylist detach()V
    .locals 1

    .line 3538
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 3539
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3540
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3542
    :cond_0
    return-void
.end method

.method public greylist-max-o isRunningLocked()Z
    .locals 1

    .line 3442
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3410
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAcquireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3413
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 3397
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3401
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 3402
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3407
    :cond_0
    return-void
.end method

.method public greylist-max-o readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3546
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3547
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3548
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 3
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 3525
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3526
    .local v0, "canDetach":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-super {p0, v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(ZJ)Z

    .line 3527
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v1, :cond_2

    .line 3528
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3531
    :cond_2
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 3532
    return v0
.end method

.method public greylist-max-o setMark(J)V
    .locals 6
    .param p1, "elapsedRealtimeMs"    # J

    .line 3557
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 3558
    .local v0, "batteryRealtimeUs":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v2, :cond_1

    .line 3560
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 3561
    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    goto :goto_0

    .line 3563
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTimeUs:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTimeUs:J

    .line 3564
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3567
    :cond_1
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTimeUs:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBeforeMarkUs:J

    .line 3568
    return-void
.end method

.method public greylist-max-o setTimeout(J)V
    .locals 0
    .param p1, "timeoutUs"    # J

    .line 3388
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    .line 3389
    return-void
.end method

.method public greylist-max-o startRunningLocked(J)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 3416
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_2

    .line 3417
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 3418
    .local v0, "batteryRealtimeUs":J
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    .line 3419
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 3422
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 3424
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3426
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3428
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    .line 3429
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTimeUs:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    goto :goto_0

    .line 3431
    :cond_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    .line 3439
    .end local v0    # "batteryRealtimeUs":J
    :cond_2
    :goto_0
    return-void
.end method

.method public greylist-max-o stopAllRunningLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 3480
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3481
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3482
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3484
    :cond_0
    return-void
.end method

.method public greylist-max-o stopRunningLocked(J)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J

    .line 3447
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_0

    .line 3448
    return-void

    .line 3450
    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v0, :cond_2

    .line 3451
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v2, 0x3e8

    mul-long v4, p1, v2

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v4

    .line 3452
    .local v4, "batteryRealtimeUs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3455
    const/4 v2, 0x0

    invoke-static {v4, v5, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 3457
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3459
    :cond_1
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3460
    mul-long/2addr v2, p1

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTimeUs:J

    .line 3462
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 3471
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTimeUs:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTimeUs:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    .line 3474
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    .line 3477
    .end local v4    # "batteryRealtimeUs":J
    :cond_2
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 3392
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3393
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3394
    return-void
.end method
