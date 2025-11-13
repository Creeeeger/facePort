.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    const-string v0, "UwbFiraTestFragmentController"

    const-string v1, "onClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->updateBottomMenu()V

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0ae1

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    invoke-direct {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;-><init>()V

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1, v0}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mDeviceRole:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1, v0}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mDeviceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1, v0}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSessionType:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionType:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mScheduledMode:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mScheduledMode:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mChannelNumber:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMultiNodeMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1, v0}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mDeviceAddress:Landroid/uwb/UwbAddress;

    iput-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mDestAddressList:Ljava/util/List;

    iput-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSlotDurationRstu:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotDurationRstu:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangingIntervalMs:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFcsType:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFcsType:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSfdId:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSfdId:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mPsduDataRate:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPsduDataRate:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mPreambleDuration:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleDuration:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mPreambleCodeIndex:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSessionPriority:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionPriority:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mBlockStrideLength:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBlockStrideLength:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSlotsPerRangingRound:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mPrfMode:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPrfMode:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMacAddressMode:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMacAddressMode:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHoppingMode:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHoppingMode:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mInBandTerminationAttemptCount:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInBandTerminationAttemptCount:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangingRoundUsage:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingRoundUsage:I

    iget-wide v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mInitiationTime:J

    iput-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInitiationTime:J

    iget-wide v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mAbsoluteInitiationTime:J

    iput-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAbsoluteInitiationTime:J

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMaxRangingRoundRetries:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxRangingRoundRetries:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasRangingResultReportMessage:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingResultReportMessage:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasControlMessage:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasControlMessage:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasRangingControlPhase:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasRangingControlPhase:Z

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMeasurementReportType:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMeasurementReportType:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRframeConfig:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRframeConfig:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mCapSize:[B

    iput-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mCapSize:[B

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStsSegmentCount:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsSegmentCount:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStsLength:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsLength:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSessionKey:[B

    iput-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionKey:[B

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSubSessionKey:[B

    iput-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubsessionKey:[B

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mBprfPhrDataRate:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mBprfPhrDataRate:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mIsTxAdaptivePayloadPowerEnabled:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStsConfig:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSubSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSubSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1, v0}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mAoaType:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaType:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mVendorId:[B

    iput-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStaticStsIV:[B

    iput-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mIsRssiReportingEnabled:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsRssiReportingEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mIsDiagnosticsEnabled:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsDiagnosticsEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mIsKeyRotationEnabled:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsKeyRotationEnabled:Z

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mKeyRotationRate:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mKeyRotationRate:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mAoaResultRequest:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mAoaResultRequest:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangeDataNtfConfig:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfConfig:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangeDataNtfProximityNear:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityNear:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangeDataNtfProximityFar:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangeDataNtfProximityFar:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasTimeOfFlightReport:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasTimeOfFlightReport:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasAngleOfArrivalAzimuthReport:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalAzimuthReport:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasAngleOfArrivalElevationReport:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalElevationReport:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasAngleOfArrivalFigureOfMeritReport:Z

    iput-boolean v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mHasAngleOfArrivalFigureOfMeritReport:Z

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mNumOfMsrmtFocusOnRange:I

    iget v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mNumOfMsrmtFocusOnAoaAzimuth:I

    iget v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mNumOfMsrmtFocusOnAoaElevation:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnRange:I

    iput v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaAzimuth:I

    iput v2, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mNumOfMsrmtFocusOnAoaElevation:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingErrorStreakTimeoutMs:J

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mLinkLayerMode:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mLinkLayerMode:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMinFramesPerRr:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMinFramesPerRr:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMtuSize:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMtuSize:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mInterFrameInterval:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mInterFrameInterval:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaTxIntervalMs:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxIntervalMs:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaRandomWindowMs:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaRandomWindowMs:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaDeviceIdType:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceIdType:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaDeviceId:[B

    iput-object v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaDeviceId:[B

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaTxTimestampType:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mUlTdoaTxTimestampType:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFilterType:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mFilterType:I

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMaxNumberOfMeasurements:I

    iput v0, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMaxNumberOfMeasurements:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mProtocolVersion:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    iget-object v1, p1, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1, v0}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->build()Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    sget-object v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object v1, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mConfiguration:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;

    iput-object p1, v1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iget-object v1, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mConfiguration:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;

    iget-object v1, v1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    invoke-virtual {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget-object v2, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mUwbManager:Landroid/uwb/UwbManager;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;

    invoke-virtual {v2, v1, p1, v0}, Landroid/uwb/UwbManager;->openRangingSession(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;)Landroid/os/CancellationSignal;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUwbUiEventReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->onButtonClicked(I)V

    goto :goto_1

    :cond_0
    const v0, 0x7f0a038a

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object p1, p1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget-object p1, p1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingSession:Landroid/uwb/RangingSession;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/uwb/RangingSession;->close()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUwbUiEventReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->onButtonClicked(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0a0ef5

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->startRanging()V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUwbUiEventReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->onButtonClicked(I)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0a0f0c

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object p1, p1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget v0, p1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingSession:Landroid/uwb/RangingSession;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/uwb/RangingSession;->stop()V

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUwbUiEventReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;->onButtonClicked(I)V

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onOpenFailed()V
    .locals 2

    const-string v0, "UwbFiraTestFragmentController"

    const-string v1, "onOpenFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->updateBottomMenu()V

    return-void
.end method

.method public onOpened()V
    .locals 2

    const-string v0, "UwbFiraTestFragmentController"

    const-string v1, "onOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->updateBottomMenu()V

    return-void
.end method

.method public onReportReceived(Landroid/uwb/RangingReport;)V
    .locals 2

    const-string v0, "UwbFiraTestFragmentController"

    const-string v1, "onReportReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUwbDataReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;->onReceive(Landroid/uwb/RangingReport;)V

    return-void
.end method

.method public onStarted()V
    .locals 2

    const-string v0, "UwbFiraTestFragmentController"

    const-string v1, "onStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->updateBottomMenu()V

    return-void
.end method

.method public onStopped()V
    .locals 2

    const-string v0, "UwbFiraTestFragmentController"

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->updateBottomMenu()V

    return-void
.end method
