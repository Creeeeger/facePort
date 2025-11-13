.class public final Landroid/os/connectivity/WifiBatteryStats;
.super Ljava/lang/Object;
.source "WifiBatteryStats.java"

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
            "Landroid/os/connectivity/WifiBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppScanRequestCount:J

.field private final blacklist mEnergyConsumedMaMillis:J

.field private final blacklist mIdleTimeMillis:J

.field private final blacklist mKernelActiveTimeMillis:J

.field private final blacklist mLoggingDurationMillis:J

.field private final blacklist mMonitoredRailChargeConsumedMaMillis:J

.field private final blacklist mNumBytesRx:J

.field private final blacklist mNumBytesTx:J

.field private final blacklist mNumPacketsRx:J

.field private final blacklist mNumPacketsTx:J

.field private final blacklist mRxTimeMillis:J

.field private final blacklist mScanTimeMillis:J

.field private final blacklist mSleepTimeMillis:J

.field private final blacklist mTimeInRxSignalStrengthLevelMillis:[J

.field private final blacklist mTimeInStateMillis:[J

.field private final blacklist mTimeInSupplicantStateMillis:[J

.field private final blacklist mTxTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/connectivity/WifiBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/WifiBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/WifiBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJJJJJJ[J[J[JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p27

    move-object/from16 v2, p28

    move-object/from16 v3, p29

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v4, p1

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    move-wide/from16 v6, p3

    iput-wide v6, v0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    move-wide/from16 v8, p5

    iput-wide v8, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    move-wide/from16 v10, p7

    iput-wide v10, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    move-wide/from16 v12, p9

    iput-wide v12, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    move-wide/from16 v14, p11

    iput-wide v14, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    move-wide/from16 v4, p13

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    move-wide/from16 v4, p15

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    move-wide/from16 v4, p17

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    move-wide/from16 v4, p19

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    move-wide/from16 v4, p21

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    move-wide/from16 v4, p23

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    move-wide/from16 v4, p25

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    array-length v4, v1

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    array-length v4, v2

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    array-length v4, v3

    const/16 v5, 0xd

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    move-wide/from16 v4, p30

    iput-wide v4, v0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

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

    instance-of v0, p1, Landroid/os/connectivity/WifiBatteryStats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/connectivity/WifiBatteryStats;

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    iget-object v4, v2, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    iget-object v4, v2, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    iget-object v4, v2, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    iget-wide v5, v2, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1
.end method

.method public whitelist getAppScanRequestCount()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    return-wide v0
.end method

.method public whitelist getEnergyConsumedMaMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    return-wide v0
.end method

.method public whitelist getIdleTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    return-wide v0
.end method

.method public whitelist getKernelActiveTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    return-wide v0
.end method

.method public whitelist getLoggingDurationMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    return-wide v0
.end method

.method public whitelist getMonitoredRailChargeConsumedMaMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    return-wide v0
.end method

.method public whitelist getNumBytesRx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public whitelist getNumBytesTx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsRx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsTx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public whitelist getRxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    return-wide v0
.end method

.method public whitelist getScanTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    return-wide v0
.end method

.method public whitelist getSleepTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    return-wide v0
.end method

.method public whitelist getTxTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 20

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iget-object v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-wide v1, v0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    filled-new-array/range {v3 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mAppScanRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMillis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMillis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMillis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mMonitoredRailChargeConsumedMaMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
