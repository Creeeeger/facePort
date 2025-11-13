.class public Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proc"
.end annotation


# instance fields
.field greylist-max-o mActive:Z

.field protected greylist-max-o mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field greylist-max-o mExcessivePower:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mForegroundTimeMs:J

.field final greylist-max-o mName:Ljava/lang/String;

.field greylist-max-o mNumAnrs:I

.field greylist-max-o mNumCrashes:I

.field greylist-max-o mStarts:I

.field blacklist mSystemTimeMs:J

.field blacklist mUserTimeMs:J


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "name"    # Ljava/lang/String;

    .line 13033
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    .line 12999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 13034
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 13035
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mName:Ljava/lang/String;

    .line 13036
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 13037
    return-void
.end method


# virtual methods
.method public greylist addCpuTimeLocked(II)V
    .locals 1
    .param p1, "utimeMs"    # I
    .param p2, "stimeMs"    # I

    .line 13143
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(IIZ)V

    .line 13144
    return-void
.end method

.method public greylist-max-o addCpuTimeLocked(IIZ)V
    .locals 4
    .param p1, "utimeMs"    # I
    .param p2, "stimeMs"    # I
    .param p3, "isRunning"    # Z

    .line 13147
    if-eqz p3, :cond_0

    .line 13148
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 13149
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 13151
    :cond_0
    return-void
.end method

.method public greylist-max-o addExcessiveCpu(JJ)V
    .locals 2
    .param p1, "overTimeMs"    # J
    .param p3, "usedTimeMs"    # J

    .line 13073
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 13074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 13076
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 13077
    .local v0, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 13078
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 13079
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 13080
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13081
    return-void
.end method

.method public greylist addForegroundTimeLocked(J)V
    .locals 2
    .param p1, "ttimeMs"    # J

    .line 13155
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    .line 13156
    return-void
.end method

.method public greylist-max-o countExcessivePowers()I
    .locals 1

    .line 13062
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o detach()V
    .locals 1

    .line 13057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 13058
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 13059
    return-void
.end method

.method public greylist-max-o getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .locals 1
    .param p1, "i"    # I

    .line 13066
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 13067
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    return-object v0

    .line 13069
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getForegroundTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 13191
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    return-wide v0
.end method

.method public greylist-max-o getNumAnrs(I)I
    .locals 1
    .param p1, "which"    # I

    .line 13207
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    return v0
.end method

.method public greylist-max-o getNumCrashes(I)I
    .locals 1
    .param p1, "which"    # I

    .line 13202
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    return v0
.end method

.method public greylist getStarts(I)I
    .locals 1
    .param p1, "which"    # I

    .line 13197
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    return v0
.end method

.method public greylist getSystemTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 13185
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    return-wide v0
.end method

.method public greylist getUserTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 13179
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    return-wide v0
.end method

.method public greylist-max-o incNumAnrsLocked()V
    .locals 1

    .line 13168
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 13169
    return-void
.end method

.method public greylist-max-o incNumCrashesLocked()V
    .locals 1

    .line 13164
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 13165
    return-void
.end method

.method public greylist incStartsLocked()V
    .locals 1

    .line 13160
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 13161
    return-void
.end method

.method public greylist-max-o isActive()Z
    .locals 1

    .line 13173
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mActive:Z

    return v0
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 13041
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 13045
    return-void
.end method

.method greylist-max-o readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 13100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 13101
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 13102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 13103
    return-void

    .line 13106
    :cond_0
    const/16 v1, 0x2710

    if-gt v0, v1, :cond_2

    .line 13111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 13112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13113
    new-instance v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v2}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 13114
    .local v2, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 13115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 13116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 13117
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13112
    .end local v2    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13119
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 13107
    :cond_2
    new-instance v1, Landroid/os/ParcelFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File corrupt: too many excessive power entries "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 13132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 13133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 13134
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    .line 13135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 13136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 13137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 13138
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V

    .line 13139
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 1
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 13049
    if-eqz p1, :cond_0

    .line 13050
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 13052
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method greylist-max-o writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;

    .line 13084
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 13085
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13086
    return-void

    .line 13089
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13090
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13091
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13092
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 13093
    .local v2, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    iget v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 13094
    iget-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 13095
    iget-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 13091
    .end local v2    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13097
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method greylist-max-o writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 13122
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13123
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13124
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13125
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13126
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13127
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13128
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    .line 13129
    return-void
.end method
