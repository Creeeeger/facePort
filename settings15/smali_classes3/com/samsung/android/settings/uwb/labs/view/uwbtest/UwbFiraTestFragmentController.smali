.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/uwb/labs/view/uwbtest/uwbconfig/UwbConfigListener;


# static fields
.field public static mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;


# instance fields
.field public mAbsoluteInitiationTime:J

.field public mAoaResultRequest:I

.field public mAoaType:I

.field public mBlockStrideLength:I

.field public mBottomLayout:Landroid/widget/RelativeLayout;

.field public mBprfPhrDataRate:I

.field public final mCallback:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;

.field public mCapSize:[B

.field public mChannelNumber:I

.field public mCloseMenu:Landroid/view/MenuItem;

.field public final mContext:Landroid/content/Context;

.field public mDestAddressList:Ljava/util/List;

.field public mDeviceAddress:Landroid/uwb/UwbAddress;

.field public mDeviceRole:I

.field public mDeviceType:I

.field public mFcsType:I

.field public mFilterType:I

.field public mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

.field public final mFragment:Landroidx/fragment/app/Fragment;

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

.field public mMultiNodeMode:I

.field public mNumOfMsrmtFocusOnAoaAzimuth:I

.field public mNumOfMsrmtFocusOnAoaElevation:I

.field public mNumOfMsrmtFocusOnRange:I

.field public mOpenMenu:Landroid/view/MenuItem;

.field public mPreambleCodeIndex:I

.field public mPreambleDuration:I

.field public mPrfMode:I

.field public mPsduDataRate:I

.field public mRangeDataNtfConfig:I

.field public mRangeDataNtfProximityFar:I

.field public mRangeDataNtfProximityNear:I

.field public mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

.field public mRangingIntervalMs:I

.field public mRangingRoundUsage:I

.field public mRframeConfig:I

.field public mScheduledMode:I

.field public mSessionId:I

.field public mSessionKey:[B

.field public mSessionPriority:I

.field public mSessionType:I

.field public mSfdId:I

.field public mSlotDurationRstu:I

.field public mSlotsPerRangingRound:I

.field public mStartMenu:Landroid/view/MenuItem;

.field public mStaticStsIV:[B

.field public mStopMenu:Landroid/view/MenuItem;

.field public mStsConfig:I

.field public mStsLength:I

.field public mStsSegmentCount:I

.field public mSubSessionId:I

.field public mSubSessionKey:[B

.field public mTestButtonView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public mUlTdoaDeviceId:[B

.field public mUlTdoaDeviceIdType:I

.field public mUlTdoaRandomWindowMs:I

.field public mUlTdoaTxIntervalMs:I

.field public mUlTdoaTxTimestampType:I

.field public mUwbDataReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

.field public mUwbUiEventReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;

.field public mVendorId:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUwbDataReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

    const-string v0, "UwbFiraTestFragmentController"

    const-string v1, "CREATE: UwbFiraTestFragmentController "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFragment:Landroidx/fragment/app/Fragment;

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object p1, p2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mConfiguration:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;

    iget-object p1, p1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->getInstance()Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedHandler;->listeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$2;-><init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;)V

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

    return-void
.end method


# virtual methods
.method public final getDefaultValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const-string/jumbo v0, "session_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "default is not implement"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionId:I

    goto/16 :goto_4

    :cond_0
    const-string v0, "device_address"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v0}, Landroid/uwb/UwbAddress;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move v0, v1

    goto/16 :goto_4

    :cond_1
    const-string v0, "dest_address_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDestAddressList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/uwb/UwbAddress;

    invoke-virtual {v4}, Landroid/uwb/UwbAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v0, "device_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceType:I

    goto/16 :goto_4

    :cond_5
    const-string v0, "device_role"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mDeviceRole:I

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v0, "session_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionType:I

    goto/16 :goto_4

    :cond_7
    const-string v0, "channel_number"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mChannelNumber:I

    goto/16 :goto_4

    :cond_8
    const-string v0, "multi_node_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMultiNodeMode:I

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v0, "slot_duration_rstu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotDurationRstu:I

    goto/16 :goto_4

    :cond_a
    const-string v0, "ranging_interval_ms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingIntervalMs:I

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v0, "slots_per_ranging_round"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSlotsPerRangingRound:I

    goto/16 :goto_4

    :cond_c
    const-string v0, "fcs_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFcsType:I

    goto/16 :goto_4

    :cond_d
    const-string v0, "preamble_code_index"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleCodeIndex:I

    goto/16 :goto_4

    :cond_e
    const-string/jumbo v0, "sfd_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSfdId:I

    goto/16 :goto_4

    :cond_f
    const-string v0, "psdu_data_rate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPsduDataRate:I

    goto/16 :goto_4

    :cond_10
    const-string v0, "preamble_duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPreambleDuration:I

    goto/16 :goto_4

    :cond_11
    const-string v0, "prf_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mPrfMode:I

    goto/16 :goto_4

    :cond_12
    const-string/jumbo v0, "scheduled_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mScheduledMode:I

    goto/16 :goto_4

    :cond_13
    const-string v0, "mac_address_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMacAddressMode:I

    goto/16 :goto_4

    :cond_14
    const-string/jumbo v0, "session_priority"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionPriority:I

    goto/16 :goto_4

    :cond_15
    const-string v0, "hopping_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHoppingMode:I

    goto/16 :goto_4

    :cond_16
    const-string v0, "block_stride_length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBlockStrideLength:I

    goto/16 :goto_4

    :cond_17
    const-string v0, "in_band_termination_attempt_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInBandTerminationAttemptCount:I

    goto/16 :goto_4

    :cond_18
    const-string v0, "ranging_round_usage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingRoundUsage:I

    goto/16 :goto_4

    :cond_19
    const-string v0, "initiation_time_ms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-wide v2, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInitiationTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1a
    const-string v0, "absolute_initiation_time_us"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-wide v2, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAbsoluteInitiationTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1b
    const-string v0, "max_ranging_round_retries"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxRangingRoundRetries:I

    goto/16 :goto_4

    :cond_1c
    const-string v0, "has_result_report_phase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingResultReportMessage:Z

    if-ne v0, v4, :cond_1d

    :goto_3
    move v0, v4

    goto/16 :goto_4

    :cond_1d
    move v0, v3

    goto/16 :goto_4

    :cond_1e
    const-string v0, "has_control_message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasControlMessage:Z

    if-ne v0, v4, :cond_1d

    goto :goto_3

    :cond_1f
    const-string v0, "has_ranging_control_phase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasRangingControlPhase:Z

    if-ne v0, v4, :cond_1d

    goto :goto_3

    :cond_20
    const-string v0, "measurement_report_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMeasurementReportType:I

    goto/16 :goto_4

    :cond_21
    const-string v0, "measurement_report_phase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v0, "rframe_config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRframeConfig:I

    goto/16 :goto_4

    :cond_23
    const-string v0, "cap_size_range"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mCapSize:[B

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v0, "sts_segment_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsSegmentCount:I

    goto/16 :goto_4

    :cond_25
    const-string/jumbo v0, "sts_length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsLength:I

    goto/16 :goto_4

    :cond_26
    const-string/jumbo v0, "session_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSessionKey:[B

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v0, "subsession_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionKey:[B

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_28
    const-string v0, "bprf_phr_data_rate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mBprfPhrDataRate:I

    goto/16 :goto_4

    :cond_29
    const-string v0, "is_tx_adaptive_payload_power_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsTxAdaptivePayloadPowerEnabled:Z

    if-ne v0, v4, :cond_1d

    goto/16 :goto_3

    :cond_2a
    const-string/jumbo v0, "sts_config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStsConfig:I

    goto/16 :goto_4

    :cond_2b
    const-string/jumbo v0, "sub_session_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mSubSessionId:I

    goto/16 :goto_4

    :cond_2c
    const-string v0, "aoa_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaType:I

    goto/16 :goto_4

    :cond_2d
    const-string/jumbo v0, "vendor_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mVendorId:[B

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_2e
    const-string/jumbo v0, "static_sts_iv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mStaticStsIV:[B

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_2f
    const-string v0, "is_rssi_reporting_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsRssiReportingEnabled:Z

    if-ne v0, v4, :cond_1d

    goto/16 :goto_3

    :cond_30
    const-string v0, "is_diagnostics_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsDiagnosticsEnabled:Z

    if-ne v0, v4, :cond_1d

    goto/16 :goto_3

    :cond_31
    const-string v0, "antenna_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto/16 :goto_0

    :cond_32
    const-string v0, "is_key_rotation_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mIsKeyRotationEnabled:Z

    if-ne v0, v4, :cond_1d

    goto/16 :goto_3

    :cond_33
    const-string v0, "key_rotation_rate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mKeyRotationRate:I

    goto/16 :goto_4

    :cond_34
    const-string v0, "aoa_result_request"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mAoaResultRequest:I

    goto/16 :goto_4

    :cond_35
    const-string v0, "range_data_ntf_config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfConfig:I

    goto/16 :goto_4

    :cond_36
    const-string v0, "range_data_ntf_proximity_near"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityNear:I

    goto/16 :goto_4

    :cond_37
    const-string v0, "range_data_ntf_proximity_far"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangeDataNtfProximityFar:I

    goto/16 :goto_4

    :cond_38
    const-string v0, "has_time_of_flight_report"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasTimeOfFlightReport:Z

    if-ne v0, v4, :cond_1d

    goto/16 :goto_3

    :cond_39
    const-string v0, "has_angle_of_arrival_azimuth_report"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalAzimuthReport:Z

    if-ne v0, v4, :cond_1d

    goto/16 :goto_3

    :cond_3a
    const-string v0, "has_angle_of_arrival_elevation_report"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalElevationReport:Z

    if-ne v0, v4, :cond_1d

    goto/16 :goto_3

    :cond_3b
    const-string v0, "has_angle_of_arrival_figure_of_merit_report"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-boolean v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mHasAngleOfArrivalFigureOfMeritReport:Z

    if-ne v0, v4, :cond_1d

    goto/16 :goto_3

    :cond_3c
    const-string v0, "num_of_msrmt_focus_on_range"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnRange:I

    goto/16 :goto_4

    :cond_3d
    const-string v0, "num_of_msrmt_focus_on_aoa_azimuth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaAzimuth:I

    goto/16 :goto_4

    :cond_3e
    const-string v0, "num_of_msrmt_focus_on_aoa_elevation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mNumOfMsrmtFocusOnAoaElevation:I

    goto/16 :goto_4

    :cond_3f
    const-string v0, "ranging_error_streak_timeout_ms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_40
    const-string v0, "link_layer_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mLinkLayerMode:I

    goto/16 :goto_4

    :cond_41
    const-string v0, "data_repetition_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto/16 :goto_0

    :cond_42
    const-string v0, "ranging_time_struct"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto/16 :goto_0

    :cond_43
    const-string v0, "min_frames_per_rr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMinFramesPerRr:I

    goto/16 :goto_4

    :cond_44
    const-string v0, "mtu_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMtuSize:I

    goto/16 :goto_4

    :cond_45
    const-string v0, "inter_frame_interval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mInterFrameInterval:I

    goto/16 :goto_4

    :cond_46
    const-string v0, "dl_tdoa_block_striding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto/16 :goto_0

    :cond_47
    const-string/jumbo v0, "ul_tdoa_tx_interval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxIntervalMs:I

    goto/16 :goto_4

    :cond_48
    const-string/jumbo v0, "ul_tdoa_random_window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaRandomWindowMs:I

    goto/16 :goto_4

    :cond_49
    const-string/jumbo v0, "ul_tdoa_device_id_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceIdType:I

    goto :goto_4

    :cond_4a
    const-string/jumbo v0, "ul_tdoa_device_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget-object v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaDeviceId:[B

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4b
    const-string/jumbo v0, "ul_tdoa_tx_timestamp_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mUlTdoaTxTimestampType:I

    goto :goto_4

    :cond_4c
    const-string v0, "filter_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mFilterType:I

    goto :goto_4

    :cond_4d
    const-string v0, "max_number_of_measurements"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iget v0, v0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->mMaxNumberOfMeasurements:I

    goto :goto_4

    :cond_4e
    const-string/jumbo v0, "session_data_transfer_status_ntf_config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const-string/jumbo v0, "reference_time_base"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    goto/16 :goto_0

    :cond_50
    const-string/jumbo v0, "reference_session_handle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto/16 :goto_0

    :cond_51
    const-string/jumbo v0, "session_offset_in_ms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :goto_4
    if-eq v0, v1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_52
    if-nez v2, :cond_53

    const-string v2, "default value is null"

    :cond_53
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final setValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default value is null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "device_address"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "0x"

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mDeviceAddress:Landroid/uwb/UwbAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_2
    const-string v1, "dest_address_list"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    array-length v0, p1

    if-ge v5, v0, :cond_4

    aget-object v0, p1, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, p1, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    aget-object v0, p1, v5

    invoke-static {v0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iput-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mDestAddressList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void

    :cond_5
    const-string v2, "initiation_time_ms"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mInitiationTime:J

    goto/16 :goto_5

    :cond_6
    const-string v2, "absolute_initiation_time_us"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mAbsoluteInitiationTime:J

    goto/16 :goto_5

    :cond_7
    const-string v2, "cap_size_range"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "UwbFiraTestFragmentController"

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "*** cap  size = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mCapSize:[B

    goto/16 :goto_5

    :cond_8
    const-string/jumbo v2, "session_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "*** session key = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSessionKey:[B

    goto :goto_5

    :cond_9
    const-string/jumbo v2, "subsession_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSubSessionKey:[B

    goto :goto_5

    :cond_a
    const-string/jumbo v2, "vendor_id"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mVendorId:[B

    goto :goto_5

    :cond_b
    const-string/jumbo v2, "static_sts_iv"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStaticStsIV:[B

    goto :goto_5

    :cond_c
    const-string v2, "ranging_error_streak_timeout_ms"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangingErrorStreakTimeoutMs:Ljava/lang/Long;

    goto :goto_5

    :cond_d
    const-string/jumbo v2, "ul_tdoa_device_id"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbUtil;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaDeviceId:[B

    :cond_e
    :goto_5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    const-string/jumbo v2, "session_id"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSessionId:I

    goto/16 :goto_6

    :cond_f
    const-string v2, "device_type"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "device_role"

    const/4 v4, 0x1

    if-eqz v2, :cond_13

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mDeviceType:I

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUwbUiEventReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragment;

    const-string p2, "0x0000"

    const-string v2, "0x0001"

    if-nez p1, :cond_10

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p1

    if-eqz p1, :cond_61

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p1

    invoke-interface {p1, p0, v2}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_13
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mDeviceRole:I

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v0, "session_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSessionType:I

    goto/16 :goto_6

    :cond_15
    const-string v0, "channel_number"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mChannelNumber:I

    goto/16 :goto_6

    :cond_16
    const-string v0, "multi_node_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMultiNodeMode:I

    goto/16 :goto_6

    :cond_17
    const-string/jumbo v0, "slot_duration_rstu"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSlotDurationRstu:I

    goto/16 :goto_6

    :cond_18
    const-string v0, "ranging_interval_ms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangingIntervalMs:I

    goto/16 :goto_6

    :cond_19
    const-string/jumbo v0, "slots_per_ranging_round"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSlotsPerRangingRound:I

    goto/16 :goto_6

    :cond_1a
    const-string v0, "fcs_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFcsType:I

    goto/16 :goto_6

    :cond_1b
    const-string v0, "preamble_code_index"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mPreambleCodeIndex:I

    goto/16 :goto_6

    :cond_1c
    const-string/jumbo v0, "sfd_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSfdId:I

    goto/16 :goto_6

    :cond_1d
    const-string v0, "psdu_data_rate"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mPsduDataRate:I

    goto/16 :goto_6

    :cond_1e
    const-string v0, "preamble_duration"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mPreambleDuration:I

    goto/16 :goto_6

    :cond_1f
    const-string v0, "prf_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mPrfMode:I

    goto/16 :goto_6

    :cond_20
    const-string/jumbo v0, "scheduled_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mScheduledMode:I

    goto/16 :goto_6

    :cond_21
    const-string v0, "mac_address_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMacAddressMode:I

    goto/16 :goto_6

    :cond_22
    const-string/jumbo v0, "session_priority"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSessionPriority:I

    goto/16 :goto_6

    :cond_23
    const-string v0, "hopping_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHoppingMode:I

    goto/16 :goto_6

    :cond_24
    const-string v0, "block_stride_length"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mBlockStrideLength:I

    goto/16 :goto_6

    :cond_25
    const-string v0, "in_band_termination_attempt_count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mInBandTerminationAttemptCount:I

    goto/16 :goto_6

    :cond_26
    const-string v0, "ranging_round_usage"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangingRoundUsage:I

    goto/16 :goto_6

    :cond_27
    const-string v0, "max_ranging_round_retries"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMaxRangingRoundRetries:I

    goto/16 :goto_6

    :cond_28
    const-string v0, "has_result_report_phase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-ne p1, v4, :cond_29

    move v5, v4

    :cond_29
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasRangingResultReportMessage:Z

    goto/16 :goto_6

    :cond_2a
    const-string v0, "has_control_message"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-ne p1, v4, :cond_2b

    move v5, v4

    :cond_2b
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasControlMessage:Z

    goto/16 :goto_6

    :cond_2c
    const-string v0, "has_ranging_control_phase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    if-ne p1, v4, :cond_2d

    move v5, v4

    :cond_2d
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasRangingControlPhase:Z

    goto/16 :goto_6

    :cond_2e
    const-string v0, "measurement_report_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMeasurementReportType:I

    goto/16 :goto_6

    :cond_2f
    const-string v0, "measurement_report_phase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_6

    :cond_30
    const-string/jumbo v0, "rframe_config"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRframeConfig:I

    goto/16 :goto_6

    :cond_31
    const-string/jumbo v0, "sts_segment_count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStsSegmentCount:I

    goto/16 :goto_6

    :cond_32
    const-string/jumbo v0, "sts_length"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStsLength:I

    goto/16 :goto_6

    :cond_33
    const-string v0, "bprf_phr_data_rate"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mBprfPhrDataRate:I

    goto/16 :goto_6

    :cond_34
    const-string v0, "is_tx_adaptive_payload_power_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-ne p1, v4, :cond_35

    move v5, v4

    :cond_35
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mIsTxAdaptivePayloadPowerEnabled:Z

    goto/16 :goto_6

    :cond_36
    const-string/jumbo v0, "sts_config"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mStsConfig:I

    goto/16 :goto_6

    :cond_37
    const-string/jumbo v0, "sub_session_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mSubSessionId:I

    goto/16 :goto_6

    :cond_38
    const-string v0, "aoa_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mAoaType:I

    goto/16 :goto_6

    :cond_39
    const-string v0, "is_rssi_reporting_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    if-ne p1, v4, :cond_3a

    move v5, v4

    :cond_3a
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mIsRssiReportingEnabled:Z

    goto/16 :goto_6

    :cond_3b
    const-string v0, "is_diagnostics_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-ne p1, v4, :cond_3c

    move v5, v4

    :cond_3c
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mIsDiagnosticsEnabled:Z

    goto/16 :goto_6

    :cond_3d
    const-string v0, "antenna_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto/16 :goto_6

    :cond_3e
    const-string v0, "is_key_rotation_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    if-ne p1, v4, :cond_3f

    move v5, v4

    :cond_3f
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mIsKeyRotationEnabled:Z

    goto/16 :goto_6

    :cond_40
    const-string v0, "key_rotation_rate"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mKeyRotationRate:I

    goto/16 :goto_6

    :cond_41
    const-string v0, "aoa_result_request"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mAoaResultRequest:I

    goto/16 :goto_6

    :cond_42
    const-string v0, "range_data_ntf_config"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangeDataNtfConfig:I

    goto/16 :goto_6

    :cond_43
    const-string v0, "range_data_ntf_proximity_near"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangeDataNtfProximityNear:I

    goto/16 :goto_6

    :cond_44
    const-string v0, "range_data_ntf_proximity_far"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mRangeDataNtfProximityFar:I

    goto/16 :goto_6

    :cond_45
    const-string v0, "has_time_of_flight_report"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-ne p1, v4, :cond_46

    move v5, v4

    :cond_46
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasTimeOfFlightReport:Z

    goto/16 :goto_6

    :cond_47
    const-string v0, "has_angle_of_arrival_azimuth_report"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    if-ne p1, v4, :cond_48

    move v5, v4

    :cond_48
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasAngleOfArrivalAzimuthReport:Z

    goto/16 :goto_6

    :cond_49
    const-string v0, "has_angle_of_arrival_elevation_report"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    if-ne p1, v4, :cond_4a

    move v5, v4

    :cond_4a
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasAngleOfArrivalElevationReport:Z

    goto/16 :goto_6

    :cond_4b
    const-string v0, "has_angle_of_arrival_figure_of_merit_report"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-ne p1, v4, :cond_4c

    move v5, v4

    :cond_4c
    iput-boolean v5, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mHasAngleOfArrivalFigureOfMeritReport:Z

    goto/16 :goto_6

    :cond_4d
    const-string v0, "num_of_msrmt_focus_on_range"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mNumOfMsrmtFocusOnRange:I

    goto/16 :goto_6

    :cond_4e
    const-string v0, "num_of_msrmt_focus_on_aoa_azimuth"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mNumOfMsrmtFocusOnAoaAzimuth:I

    goto/16 :goto_6

    :cond_4f
    const-string v0, "num_of_msrmt_focus_on_aoa_elevation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mNumOfMsrmtFocusOnAoaElevation:I

    goto/16 :goto_6

    :cond_50
    const-string v0, "link_layer_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mLinkLayerMode:I

    goto/16 :goto_6

    :cond_51
    const-string v0, "data_repetition_count"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto/16 :goto_6

    :cond_52
    const-string v0, "ranging_time_struct"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto/16 :goto_6

    :cond_53
    const-string v0, "min_frames_per_rr"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMinFramesPerRr:I

    goto/16 :goto_6

    :cond_54
    const-string v0, "mtu_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMtuSize:I

    goto/16 :goto_6

    :cond_55
    const-string v0, "inter_frame_interval"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mInterFrameInterval:I

    goto/16 :goto_6

    :cond_56
    const-string v0, "dl_tdoa_block_striding"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto/16 :goto_6

    :cond_57
    const-string/jumbo v0, "ul_tdoa_tx_interval"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaTxIntervalMs:I

    goto :goto_6

    :cond_58
    const-string/jumbo v0, "ul_tdoa_random_window"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaRandomWindowMs:I

    goto :goto_6

    :cond_59
    const-string/jumbo v0, "ul_tdoa_device_id_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaDeviceIdType:I

    goto :goto_6

    :cond_5a
    const-string/jumbo v0, "ul_tdoa_tx_timestamp_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mUlTdoaTxTimestampType:I

    goto :goto_6

    :cond_5b
    const-string v0, "filter_type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mFilterType:I

    goto :goto_6

    :cond_5c
    const-string v0, "max_number_of_measurements"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mMaxNumberOfMeasurements:I

    goto :goto_6

    :cond_5d
    const-string/jumbo p0, "session_data_transfer_status_ntf_config"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5e

    goto :goto_6

    :cond_5e
    const-string/jumbo p0, "reference_time_base"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    goto :goto_6

    :cond_5f
    const-string/jumbo p0, "reference_session_handle"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    goto :goto_6

    :cond_60
    const-string/jumbo p0, "session_offset_in_ms"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_61
    :goto_6
    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-void
.end method

.method public final updateBottomMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;->mContext:Landroid/content/Context;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController$4;-><init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraTestFragmentController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
