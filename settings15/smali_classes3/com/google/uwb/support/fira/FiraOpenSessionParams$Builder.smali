.class public final Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAbsoluteInitiationTime:J

.field public mAoaResultRequest:I

.field public mAoaType:I

.field public mBlockStrideLength:I

.field public mBprfPhrDataRate:I

.field public mCapSize:[B

.field public mChannelNumber:I

.field public mDestAddressList:Ljava/util/List;

.field public mDeviceAddress:Landroid/uwb/UwbAddress;

.field public final mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

.field public final mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

.field public mFcsType:I

.field public mFilterType:I

.field public mHasAngleOfArrivalAzimuthReport:Z

.field public mHasAngleOfArrivalElevationReport:Z

.field public mHasAngleOfArrivalFigureOfMeritReport:Z

.field public mHasControlMessage:Z

.field public mHasRangingControlPhase:Z

.field public mHasRangingResultReportMessage:Z

.field public mHasTimeOfFlightReport:Z

.field public mHoppingMode:I

.field public mInBandTerminationAttemptCount:I

.field public mInitiationTime:J

.field public mInterFrameInterval:I

.field public mIsDiagnosticsEnabled:Z

.field public mIsKeyRotationEnabled:Z

.field public mIsRssiReportingEnabled:Z

.field public mIsTxAdaptivePayloadPowerEnabled:Z

.field public mKeyRotationRate:I

.field public mLinkLayerMode:I

.field public mMacAddressMode:I

.field public mMaxNumberOfMeasurements:I

.field public mMaxRangingRoundRetries:I

.field public mMeasurementReportType:I

.field public mMinFramesPerRr:I

.field public mMtuSize:I

.field public final mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

.field public mNumOfMsrmtFocusOnAoaAzimuth:I

.field public mNumOfMsrmtFocusOnAoaElevation:I

.field public mNumOfMsrmtFocusOnRange:I

.field public mPreambleCodeIndex:I

.field public mPreambleDuration:I

.field public mPrfMode:I

.field public final mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

.field public mPsduDataRate:I

.field public mRangeDataNtfConfig:I

.field public mRangeDataNtfProximityFar:I

.field public mRangeDataNtfProximityNear:I

.field public mRangingErrorStreakTimeoutMs:J

.field public mRangingIntervalMs:I

.field public mRangingRoundUsage:I

.field public mRframeConfig:I

.field public mScheduledMode:I

.field public final mSessionId:Lcom/google/uwb/support/base/RequiredParam;

.field public mSessionKey:[B

.field public mSessionPriority:I

.field public mSessionType:I

.field public mSfdId:I

.field public mSlotDurationRstu:I

.field public mSlotsPerRangingRound:I

.field public mStaticStsIV:[B

.field public mStsConfig:I

.field public mStsLength:I

.field public mStsSegmentCount:I

.field public final mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

.field public mSubsessionKey:[B

.field public mUlTdoaDeviceId:[B

.field public mUlTdoaDeviceIdType:I

.field public mUlTdoaRandomWindowMs:I

.field public mUlTdoaTxIntervalMs:I

.field public mUlTdoaTxTimestampType:I

.field public mVendorId:[B


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    new-instance v0, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v0}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    new-instance v2, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v2}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    iput-wide v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    const/16 v3, 0x960

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    const/16 v3, 0x19

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    const/16 v3, 0xc8

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    const/16 v3, 0x32

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    const/16 v4, 0x9

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    const/16 v4, 0xa

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    const/4 v4, 0x3

    iput v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    new-array v4, v1, [B

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    new-instance v1, Lcom/google/uwb/support/base/RequiredParam;

    invoke-direct {v1}, Lcom/google/uwb/support/base/RequiredParam;-><init>()V

    iput-object v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    iput-object v2, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    iput-boolean v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    iput-boolean v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    const/16 v1, 0x418

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    iput v3, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFilterType:I

    iput v0, p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    return-void

    :array_0
    .array-data 1
        0x18t
        0x5t
    .end array-data
.end method


# virtual methods
.method public final build()Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    .locals 86

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    const/16 v5, 0x8

    if-ne v1, v2, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iget-object v6, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/uwb/UwbAddress;->size()I

    move-result v6

    if-ne v6, v1, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget v6, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-ne v6, v3, :cond_6

    iget v6, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    if-eq v6, v3, :cond_4

    if-eq v6, v2, :cond_4

    if-eq v6, v7, :cond_4

    if-ne v6, v8, :cond_6

    :cond_4
    iget v6, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    if-eq v6, v8, :cond_6

    iget-object v6, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/uwb/UwbAddress;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/uwb/UwbAddress;->size()I

    move-result v9

    if-ne v9, v1, :cond_5

    move v9, v3

    goto :goto_5

    :cond_5
    move v9, v4

    :goto_5
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_4

    :cond_6
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    const/4 v6, 0x6

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    if-eqz v1, :cond_7

    array-length v1, v1

    if-ne v1, v2, :cond_7

    move v1, v3

    goto :goto_6

    :cond_7
    move v1, v4

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    if-eqz v1, :cond_8

    array-length v1, v1

    if-ne v1, v6, :cond_8

    move v1, v3

    goto :goto_7

    :cond_8
    move v1, v4

    :goto_7
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_9
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    iget-object v9, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    iget-object v10, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    if-eq v1, v2, :cond_a

    if-ne v1, v8, :cond_b

    :cond_a
    invoke-virtual {v9}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, v10, Lcom/google/uwb/support/base/RequiredParam;->mIsSet:Z

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_8

    :cond_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    :goto_8
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    const/16 v11, 0x20

    const/16 v12, 0x10

    if-ne v1, v7, :cond_e

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    if-eqz v1, :cond_e

    array-length v13, v1

    if-eq v13, v12, :cond_d

    array-length v1, v1

    if-ne v1, v11, :cond_c

    goto :goto_9

    :cond_c
    move v1, v4

    goto :goto_a

    :cond_d
    :goto_9
    move v1, v3

    :goto_a
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_e
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    if-ne v1, v8, :cond_13

    invoke-virtual {v9}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    if-eqz v1, :cond_10

    array-length v13, v1

    if-eq v13, v12, :cond_f

    array-length v1, v1

    if-ne v1, v11, :cond_10

    :cond_f
    move v1, v3

    goto :goto_b

    :cond_10
    move v1, v4

    :goto_b
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    array-length v13, v1

    if-eq v13, v12, :cond_12

    array-length v1, v1

    if-ne v1, v11, :cond_11

    goto :goto_c

    :cond_11
    move v1, v4

    goto :goto_d

    :cond_12
    :goto_c
    move v1, v3

    :goto_d
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_13
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    const/16 v11, 0xf0

    if-eq v1, v11, :cond_17

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    if-nez v1, :cond_14

    move v1, v3

    goto :goto_e

    :cond_14
    move v1, v4

    :goto_e
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    if-nez v1, :cond_15

    move v1, v3

    goto :goto_f

    :cond_15
    move v1, v4

    :goto_f
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    if-nez v1, :cond_16

    move v1, v3

    goto :goto_10

    :cond_16
    move v1, v4

    :goto_10
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_13

    :cond_17
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    if-gtz v1, :cond_19

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    if-gtz v1, :cond_19

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    if-lez v1, :cond_18

    goto :goto_11

    :cond_18
    move v1, v4

    goto :goto_12

    :cond_19
    :goto_11
    move v1, v3

    :goto_12
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :goto_13
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    const/16 v11, 0x4e20

    if-nez v1, :cond_1c

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v1, :cond_1a

    move v1, v3

    goto :goto_14

    :cond_1a
    move v1, v4

    :goto_14
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v1, v11, :cond_1b

    move v1, v3

    goto :goto_15

    :cond_1b
    move v1, v4

    :goto_15
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_1d

    :cond_1c
    if-eq v1, v2, :cond_24

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1d

    goto :goto_1a

    :cond_1d
    if-eq v1, v7, :cond_21

    if-ne v1, v6, :cond_1e

    goto :goto_17

    :cond_1e
    if-eq v1, v8, :cond_1f

    const/4 v2, 0x7

    if-ne v1, v2, :cond_27

    :cond_1f
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v1, :cond_20

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v1, v11, :cond_20

    move v1, v4

    goto :goto_16

    :cond_20
    move v1, v3

    :goto_16
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_1d

    :cond_21
    :goto_17
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v1, :cond_22

    move v1, v3

    goto :goto_18

    :cond_22
    move v1, v4

    :goto_18
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    if-ne v1, v11, :cond_23

    move v1, v3

    goto :goto_19

    :cond_23
    move v1, v4

    :goto_19
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_1d

    :cond_24
    :goto_1a
    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    if-nez v1, :cond_26

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    if-eq v1, v11, :cond_25

    goto :goto_1b

    :cond_25
    move v1, v4

    goto :goto_1c

    :cond_26
    :goto_1b
    move v1, v3

    :goto_1c
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_27
    :goto_1d
    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    if-ne v2, v5, :cond_29

    iget v2, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    if-nez v2, :cond_28

    invoke-virtual {v6}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_28

    iget v2, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    if-ne v2, v3, :cond_28

    goto :goto_1e

    :cond_28
    move v3, v4

    :goto_1e
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_29
    new-instance v2, Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-object v11, v2

    iget-object v3, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v3}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/google/uwb/support/fira/FiraProtocolVersion;

    iget-object v3, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v3}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget v14, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    invoke-virtual {v9}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v1}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    move/from16 v17, v1

    invoke-virtual {v6}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    move-object/from16 v20, v1

    iget-wide v3, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    move-wide/from16 v21, v3

    iget-wide v3, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    move-wide/from16 v23, v3

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    move/from16 v25, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    move/from16 v26, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    move/from16 v27, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    move/from16 v28, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    move/from16 v29, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    move/from16 v30, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    move/from16 v31, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    move/from16 v32, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    move/from16 v33, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    move/from16 v34, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    move/from16 v35, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    move/from16 v36, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    move/from16 v37, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    move/from16 v38, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    move/from16 v39, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    move/from16 v40, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    move/from16 v41, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    move-object/from16 v42, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    move/from16 v43, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    move/from16 v44, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    move/from16 v45, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    move/from16 v46, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    move/from16 v47, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    move-object/from16 v49, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    move/from16 v50, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    move/from16 v51, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    move/from16 v52, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    move/from16 v53, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    move/from16 v54, v1

    invoke-virtual {v10}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v55

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    move-object/from16 v56, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    move-object/from16 v57, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    move/from16 v58, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    move/from16 v59, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    move/from16 v60, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    move/from16 v61, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    move/from16 v62, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    move/from16 v63, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    move/from16 v64, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    move/from16 v65, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    move/from16 v66, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    move/from16 v67, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    move/from16 v68, v1

    iget-boolean v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    move/from16 v69, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    move/from16 v70, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    move/from16 v71, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    move/from16 v72, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    move/from16 v73, v1

    iget-wide v3, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v74

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    move/from16 v75, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    move/from16 v76, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    move/from16 v77, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    move/from16 v78, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    move/from16 v79, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    move/from16 v80, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    move/from16 v81, v1

    iget-object v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceId:[B

    move-object/from16 v82, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    move/from16 v83, v1

    iget v1, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFilterType:I

    move/from16 v84, v1

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    move/from16 v85, v0

    invoke-direct/range {v11 .. v85}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;-><init>(Lcom/google/uwb/support/fira/FiraProtocolVersion;IIIIIILandroid/uwb/UwbAddress;Ljava/util/List;JJIIIIIIIIZZZIIIIII[BIIIII[B[BIIIZII[B[BZZZIIIIIZZZZIIIILjava/lang/Long;IIIIIII[BIII)V

    return-object v2
.end method
