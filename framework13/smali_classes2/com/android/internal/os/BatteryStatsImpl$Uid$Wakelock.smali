.class public Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
.super Landroid/os/BatteryStats$Uid$Wakelock;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wakelock"
.end annotation


# instance fields
.field protected greylist-max-o mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field greylist-max-o mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field greylist-max-o mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field protected greylist-max-o mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 0
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 12807
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    .line 12808
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 12809
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 12810
    return-void
.end method

.method private greylist-max-o readDualTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 9
    .param p1, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "bgTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p5, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;"
        }
    .end annotation

    .line 12837
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {p5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 12838
    const/4 v0, 0x0

    return-object v0

    .line 12841
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object v1, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0
.end method

.method private greylist-max-o readStopwatchTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 8
    .param p1, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;"
        }
    .end annotation

    .line 12821
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 12822
    const/4 v0, 0x0

    return-object v0

    .line 12825
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-object v1, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public blacklist detachFromTimeBase()V
    .locals 1

    .line 12900
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12901
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12902
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12903
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12904
    return-void
.end method

.method public bridge synthetic greylist getWakeTime(I)Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 12775
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getWakeTime(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object p1

    return-object p1
.end method

.method public greylist getWakeTime(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 3
    .param p1, "type"    # I

    .line 12890
    sparse-switch p1, :sswitch_data_0

    .line 12895
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12894
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    .line 12893
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    .line 12891
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0

    .line 12892
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method greylist-max-o readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 7
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "screenOffBgTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;

    .line 12870
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readDualTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12872
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readStopwatchTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12874
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readStopwatchTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12876
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0, p1, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readStopwatchTimerFromParcel(ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12878
    return-void
.end method

.method blacklist reset(J)Z
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J

    .line 12845
    const/4 v0, 0x0

    .line 12847
    .local v0, "wlactive":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 12848
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 12849
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 12850
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 12852
    if-nez v0, :cond_0

    .line 12853
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12854
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12856
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12857
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12859
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12860
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12862
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12863
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12865
    :cond_0
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method greylist-max-o writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 12881
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 12882
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 12883
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 12884
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 12885
    return-void
.end method
