.class public final Landroid/os/connectivity/CellularBatteryStats;
.super Ljava/lang/Object;
.source "CellularBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/CellularBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnergyConsumedMaMs:J

.field private final blacklist mIdleTimeMs:J

.field private final blacklist mKernelActiveTimeMs:J

.field private final blacklist mLoggingDurationMs:J

.field private final blacklist mMonitoredRailChargeConsumedMaMs:J

.field private final blacklist mNumBytesRx:J

.field private final blacklist mNumBytesTx:J

.field private final blacklist mNumPacketsRx:J

.field private final blacklist mNumPacketsTx:J

.field private final blacklist mRxTimeMs:J

.field private final blacklist mSleepTimeMs:J

.field private final blacklist mTimeInRatMs:[J

.field private final blacklist mTimeInRxSignalStrengthLevelMs:[J

.field private final blacklist mTxTimeMs:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/connectivity/CellularBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/CellularBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/CellularBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJJLjava/lang/Long;[J[J[JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p20

    move-object/from16 v2, p21

    move-object/from16 v3, p22

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v4, p1

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    move-wide/from16 v6, p3

    iput-wide v6, v0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    move-wide/from16 v8, p5

    iput-wide v8, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    move-wide/from16 v10, p7

    iput-wide v10, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    move-wide/from16 v12, p9

    iput-wide v12, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    move-wide/from16 v14, p11

    iput-wide v14, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    move-wide/from16 v4, p13

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    move-wide/from16 v4, p15

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    move-wide/from16 v4, p17

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    array-length v4, v1

    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    array-length v4, v2

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    array-length v4, v3

    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    move-wide/from16 v4, p23

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Landroid/os/connectivity/CellularBatteryStats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/connectivity/CellularBatteryStats;

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    iget-object v4, v2, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    iget-object v4, v2, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    iget-object v4, v2, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1
.end method

.method public whitelist getEnergyConsumedMaMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public whitelist getIdleTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    return-wide v0
.end method

.method public whitelist getKernelActiveTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    return-wide v0
.end method

.method public whitelist getLoggingDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public whitelist getMonitoredRailChargeConsumedMaMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    return-wide v0
.end method

.method public whitelist getNumBytesRx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public whitelist getNumBytesTx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsRx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsTx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public whitelist getRxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    return-wide v0
.end method

.method public whitelist getSleepTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    return-wide v0
.end method

.method public whitelist getTimeInRatMicros(I)J
    .locals 2

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist getTimeInRxSignalStrengthLevelMicros(I)J
    .locals 2

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public blacklist getTxTimeMillis(I)J
    .locals 2

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-wide v1, v0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    filled-new-array/range {v3 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
