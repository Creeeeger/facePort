.class public final Lcom/google/uwb/support/fira/FiraOpenSessionParams;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PROTOCOL_VERSION_1_1:Lcom/google/uwb/support/fira/FiraProtocolVersion;


# instance fields
.field public final mAbsoluteInitiationTime:J

.field public final mAoaResultRequest:I

.field public final mAoaType:I

.field public final mBlockStrideLength:I

.field public final mBprfPhrDataRate:I

.field public final mCapSize:[B

.field public final mChannelNumber:I

.field public final mDestAddressList:Ljava/util/List;

.field public final mDeviceAddress:Landroid/uwb/UwbAddress;

.field public final mDeviceRole:I

.field public final mDeviceType:I

.field public final mFcsType:I

.field public final mFilterType:I

.field public final mHasAngleOfArrivalAzimuthReport:Z

.field public final mHasAngleOfArrivalElevationReport:Z

.field public final mHasAngleOfArrivalFigureOfMeritReport:Z

.field public final mHasControlMessage:Z

.field public final mHasRangingControlPhase:Z

.field public final mHasRangingResultReportMessage:Z

.field public final mHasTimeOfFlightReport:Z

.field public final mHoppingMode:I

.field public final mInBandTerminationAttemptCount:I

.field public final mInitiationTime:J

.field public final mInterFrameInterval:I

.field public final mIsDiagnosticsEnabled:Z

.field public final mIsKeyRotationEnabled:Z

.field public final mIsRssiReportingEnabled:Z

.field public final mIsTxAdaptivePayloadPowerEnabled:Z

.field public final mKeyRotationRate:I

.field public final mLinkLayerMode:I

.field public final mMacAddressMode:I

.field public final mMaxNumberOfMeasurements:I

.field public final mMaxRangingRoundRetries:I

.field public final mMeasurementReportType:I

.field public final mMinFramesPerRr:I

.field public final mMtuSize:I

.field public final mMultiNodeMode:I

.field public final mNumOfMsrmtFocusOnAoaAzimuth:I

.field public final mNumOfMsrmtFocusOnAoaElevation:I

.field public final mNumOfMsrmtFocusOnRange:I

.field public final mPreambleCodeIndex:I

.field public final mPreambleDuration:I

.field public final mPrfMode:I

.field public final mProtocolVersion:Lcom/google/uwb/support/fira/FiraProtocolVersion;

.field public final mPsduDataRate:I

.field public final mRangeDataNtfConfig:I

.field public final mRangeDataNtfProximityFar:I

.field public final mRangeDataNtfProximityNear:I

.field public final mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

.field public final mRangingIntervalMs:I

.field public final mRangingRoundUsage:I

.field public final mRframeConfig:I

.field public final mScheduledMode:I

.field public final mSessionId:I

.field public final mSessionKey:[B

.field public final mSessionPriority:I

.field public final mSessionType:I

.field public final mSfdId:I

.field public final mSlotDurationRstu:I

.field public final mSlotsPerRangingRound:I

.field public final mStaticStsIV:[B

.field public final mStsConfig:I

.field public final mStsLength:I

.field public final mStsSegmentCount:I

.field public final mSubSessionId:I

.field public final mSubSessionKey:[B

.field public final mUlTdoaDeviceId:[B

.field public final mUlTdoaDeviceIdType:I

.field public final mUlTdoaRandomWindowMs:I

.field public final mUlTdoaTxIntervalMs:I

.field public final mUlTdoaTxTimestampType:I

.field public final mVendorId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->PROTOCOL_VERSION_1_1:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    return-void
.end method

.method public constructor <init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;IIIIIILandroid/uwb/UwbAddress;Ljava/util/List;JJIIIIIIIIZZZIIIIII[BIIIII[B[BIIIZII[B[BZZZIIIIIZZZZIIIILjava/lang/Long;IIIIIII[BIII)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mProtocolVersion:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    move v1, p2

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionId:I

    move v1, p3

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionType:I

    move v1, p4

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceType:I

    move v1, p5

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceRole:I

    move v1, p6

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingRoundUsage:I

    move v1, p7

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMultiNodeMode:I

    move-object v1, p8

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInitiationTime:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAbsoluteInitiationTime:J

    move/from16 v1, p14

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotDurationRstu:I

    move/from16 v1, p15

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotsPerRangingRound:I

    move/from16 v1, p16

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingIntervalMs:I

    move/from16 v1, p17

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBlockStrideLength:I

    move/from16 v1, p18

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHoppingMode:I

    move/from16 v1, p19

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxRangingRoundRetries:I

    move/from16 v1, p20

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionPriority:I

    move/from16 v1, p21

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMacAddressMode:I

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingResultReportMessage:Z

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasControlMessage:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingControlPhase:Z

    move/from16 v1, p25

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportType:I

    move/from16 v1, p26

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInBandTerminationAttemptCount:I

    move/from16 v1, p27

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mChannelNumber:I

    move/from16 v1, p28

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleCodeIndex:I

    move/from16 v1, p29

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRframeConfig:I

    move/from16 v1, p30

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPrfMode:I

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mCapSize:[B

    move/from16 v1, p32

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mScheduledMode:I

    move/from16 v1, p33

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleDuration:I

    move/from16 v1, p34

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSfdId:I

    move/from16 v1, p35

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsSegmentCount:I

    move/from16 v1, p36

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsLength:I

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionKey:[B

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionKey:[B

    move/from16 v1, p39

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPsduDataRate:I

    move/from16 v1, p40

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBprfPhrDataRate:I

    move/from16 v1, p41

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFcsType:I

    move/from16 v1, p42

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsTxAdaptivePayloadPowerEnabled:Z

    move/from16 v1, p43

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsConfig:I

    move/from16 v1, p44

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionId:I

    move-object/from16 v1, p45

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mVendorId:[B

    move-object/from16 v1, p46

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStaticStsIV:[B

    move/from16 v1, p47

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsRssiReportingEnabled:Z

    move/from16 v1, p48

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsDiagnosticsEnabled:Z

    move/from16 v1, p49

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsKeyRotationEnabled:Z

    move/from16 v1, p50

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mKeyRotationRate:I

    move/from16 v1, p51

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaResultRequest:I

    move/from16 v1, p52

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfConfig:I

    move/from16 v1, p53

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityNear:I

    move/from16 v1, p54

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityFar:I

    move/from16 v1, p55

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasTimeOfFlightReport:Z

    move/from16 v1, p56

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalAzimuthReport:Z

    move/from16 v1, p57

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalElevationReport:Z

    move/from16 v1, p58

    iput-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalFigureOfMeritReport:Z

    move/from16 v1, p59

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaType:I

    move/from16 v1, p60

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnRange:I

    move/from16 v1, p61

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaAzimuth:I

    move/from16 v1, p62

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaElevation:I

    move-object/from16 v1, p63

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

    move/from16 v1, p64

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mLinkLayerMode:I

    move/from16 v1, p65

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMinFramesPerRr:I

    move/from16 v1, p66

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMtuSize:I

    move/from16 v1, p67

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInterFrameInterval:I

    move/from16 v1, p68

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxIntervalMs:I

    move/from16 v1, p69

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaRandomWindowMs:I

    move/from16 v1, p70

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceIdType:I

    move-object/from16 v1, p71

    iput-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceId:[B

    move/from16 v1, p72

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxTimestampType:I

    move/from16 v1, p73

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFilterType:I

    move/from16 v1, p74

    iput v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxNumberOfMeasurements:I

    return-void
.end method

.method public static byteArrayToIntArray([B)[I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->toBytes()[B

    move-result-object p0

    check-cast p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    invoke-virtual {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->toBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->toBytes()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public final toBundle()Landroid/os/PersistableBundle;
    .locals 13

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "bundle_version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "protocol_name"

    const-string v3, "fira"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mProtocolVersion:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "1.1"

    const-string v3, "protocol_version"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "session_id"

    iget v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "session_type"

    iget v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "device_type"

    iget v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceType:I

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "device_role"

    iget v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceRole:I

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ranging_round_usage"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingRoundUsage:I

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "multi_node_mode"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMultiNodeMode:I

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v1}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v1

    const/16 v5, 0x8

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    const-string v1, "device_address"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x0

    iget v6, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mScheduledMode:I

    if-eq v4, v5, :cond_1

    if-eqz v6, :cond_1

    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [J

    iget-object v7, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/uwb/UwbAddress;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v9

    invoke-static {v9, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    aput-wide v11, v4, v8

    move v8, v10

    goto :goto_0

    :cond_0
    const-string v5, "dest_address_list"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_1

    :cond_1
    const-string v4, "dltdoa_block_striding"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    const-string v4, "initiation_time_ms"

    iget-wide v7, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInitiationTime:J

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "absolute_initiation_time_us"

    iget-wide v7, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAbsoluteInitiationTime:J

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v4, "slot_duration_rstu"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotDurationRstu:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "slots_per_ranging_round"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotsPerRangingRound:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "ranging_interval_ms"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingIntervalMs:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "block_stride_length"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBlockStrideLength:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "hopping_mode"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHoppingMode:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "max_ranging_round_retries"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxRangingRoundRetries:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "session_priority"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionPriority:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "mac_address_mode"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMacAddressMode:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "has_result_report_phase"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingResultReportMessage:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "has_control_message"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasControlMessage:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "has_ranging_control_phase"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingControlPhase:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "measurement_report_type"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "measurement_report_phase"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "in_band_termination_attempt_count"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInBandTerminationAttemptCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "channel_number"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mChannelNumber:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "preamble_code_index"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleCodeIndex:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "rframe_config"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRframeConfig:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "prf_mode"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPrfMode:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "scheduled_mode"

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    if-nez v6, :cond_2

    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mCapSize:[B

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v4

    const-string v5, "cap_size_range"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_2
    const-string v4, "preamble_duration"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleDuration:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "sfd_id"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSfdId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "sts_segment_count"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsSegmentCount:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "sts_length"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsLength:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "psdu_data_rate"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPsduDataRate:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "bprf_phr_data_rate"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBprfPhrDataRate:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "fcs_type"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFcsType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "is_tx_adaptive_payload_power_enabled"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsTxAdaptivePayloadPowerEnabled:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v4, "sts_config"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsConfig:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x2

    if-eq v5, v4, :cond_3

    const/4 v4, 0x4

    if-ne v5, v4, :cond_4

    :cond_3
    const-string/jumbo v4, "sub_session_id"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionKey:[B

    if-eqz v4, :cond_5

    const-string/jumbo v5, "session_key"

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_5
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionKey:[B

    if-eqz v4, :cond_6

    const-string/jumbo v5, "subsession_key"

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_6
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mVendorId:[B

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v4

    const-string/jumbo v5, "vendor_id"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStaticStsIV:[B

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v4

    const-string/jumbo v5, "static_sts_iv"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v4, "is_rssi_reporting_enabled"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsRssiReportingEnabled:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "is_diagnostics_enabled"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsDiagnosticsEnabled:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "diagrams_frame_reports_fields_flags"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "antenna_mode"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "is_key_rotation_enabled"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsKeyRotationEnabled:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "key_rotation_rate"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mKeyRotationRate:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "aoa_result_request"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaResultRequest:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "range_data_ntf_config"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfConfig:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "range_data_ntf_proximity_near"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityNear:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "range_data_ntf_proximity_far"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityFar:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "range_data_ntf_aoa_azimuth_lower"

    const-wide v5, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    const-string v4, "range_data_ntf_aoa_azimuth_upper"

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    const-string v4, "range_data_ntf_aoa_elevation_lower"

    const-wide v5, -0x4006de04abbbd2e8L    # -1.5707963267948966

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    const-string v4, "range_data_ntf_aoa_elevation_upper"

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    const-string v4, "has_time_of_flight_report"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasTimeOfFlightReport:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "has_angle_of_arrival_azimuth_report"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalAzimuthReport:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "has_angle_of_arrival_elevation_report"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalElevationReport:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "has_angle_of_arrival_figure_of_merit_report"

    iget-boolean v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalFigureOfMeritReport:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "aoa_type"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "num_of_msrmt_focus_on_range"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnRange:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "num_of_msrmt_focus_on_aoa_azimuth"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaAzimuth:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "num_of_msrmt_focus_on_aoa_elevation"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaElevation:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "ranging_error_streak_timeout_ms"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "link_layer_mode"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mLinkLayerMode:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "data_repetition_count"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "ranging_time_struct"

    invoke-virtual {v0, v4, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "min_frames_per_rr"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMinFramesPerRr:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "mtu_size"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMtuSize:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "inter_frame_interval"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInterFrameInterval:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "ul_tdoa_tx_interval"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxIntervalMs:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "ul_tdoa_random_window"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaRandomWindowMs:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "ul_tdoa_device_id_type"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceIdType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceId:[B

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->byteArrayToIntArray([B)[I

    move-result-object v4

    const-string/jumbo v5, "ul_tdoa_device_id"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v4, "ul_tdoa_tx_timestamp_type"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxTimestampType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "filter_type"

    iget v5, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFilterType:I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "max_number_of_measurements"

    iget p0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxNumberOfMeasurements:I

    invoke-virtual {v0, v4, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "session_data_transfer_status_ntf_config"

    invoke-virtual {v0, p0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    if-ne v3, v2, :cond_7

    const-string/jumbo p0, "reference_time_base"

    invoke-virtual {v0, p0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "reference_session_handle"

    invoke-virtual {v0, p0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "session_offset_in_micro_seconds"

    invoke-virtual {v0, p0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    const-string p0, "application_data_endpoint"

    invoke-virtual {v0, p0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final toBytes()[B
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method
